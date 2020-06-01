#!/usr/bin/env python
# coding: utf-8

# ## DOE_LanguagesSimilarity: Gathering results & Analysis

import pandas as pd


def main():
    
# 1) Read in experiments run for Language Similarity


    experiments = pd.read_csv('LANSimilarities_Distances.csv', sep=',')
    number_of_experiments = experiments['DIST'].value_counts().sort_index()


# 2) DOE: Designpoints of experiment


    d1 = number_of_experiments.index[0]
    d2 = number_of_experiments.index[1]
    d3 = number_of_experiments.index[-3]
    d4 = number_of_experiments.index[-1]
    d5 = number_of_experiments.index[-2]
    d6 = number_of_experiments.index[5]

    #designpoints = [d1,d2]
    designpoints = [d1,d2,d3,d4,d5, d6]

    #filter dataframe for designpoints (dist 2.24 reduced on 20 experiments):
    undertaken_experiments = experiments[experiments['DIST'].isin(designpoints)]
    #undertaken_experiments_2 = pd.read_csv('Designpoints_2.24.csv', sep=',')
    #undertaken_experiments = pd.concat([undertaken_experiments_rest, undertaken_experiments_2])


# 3) Gather f1 scores and loss_eval


    # each language pair
    results = pd.DataFrame(columns=['DIST','LAN_1','LAN_2','f1_1','f1_2','f1_3','f1_4','f1_avg',
                                    'eval_loss_1','eval_loss_2','eval_loss_3','eval_loss_4','eval_loss_avg',
                                    'prec_1','prec_2','prec_3','prec_4','prec_avg',
                                    'rec_1','rec_2','rec_3','rec_4','rec_avg',
                                    ])
    list_of_Series = []

    for index, row in undertaken_experiments.iterrows():
    
        results_lanPair = {}
    
        # each iteration in cross-validation
        for i in range(1,5):
    
            path_to_result ="results_XLM_RoBERTa/results_" + str(round(row['DIST'],2)) + "/output_" + str(round(row['DIST'],2)) + "/" + str(row['LAN_1']) + "_" + str(row['LAN_2']) + "_" + str(i) + "/eval_results.txt"
        
            

            #read in txt-file with results
            try:
                result_designpoint = open(path_to_result, "r")
                lines = result_designpoint.readlines()
                eval_loss = float(lines[9].split(" ")[2][:-2])
                f1_score = float(lines[10].split(" ")[2][:-2])
                precision = float(lines[11].split(" ")[2][:-2])
                recall = float(lines[12].split(" ")[2][:-2])
                result_designpoint.close()
            except FileNotFoundError:
                eval_loss = 0
                f1_score = 0
                precision = 0
                recall = 0
            
                
            results_lanPair[i] = [eval_loss, f1_score, precision, recall]

            
      
        average_f1_score = (results_lanPair[1][1] + results_lanPair[2][1] + results_lanPair[3][1] + results_lanPair[4][1])/4
        average_eval_score = (results_lanPair[1][0] + [2][0] + results_lanPair[3][0] + results_lanPair[4][0])/4
        average_pre_score = (results_lanPair[1][2] + results_lanPair[2][2] + results_lanPair[3][2] + results_lanPair[4][2])/4
        average_rec_score = (results_lanPair[1][3] + results_lanPair[2][3] + results_lanPair[3][3] + results_lanPair[4][3])/4
    

        list_of_Series += [pd.Series([row['DIST'],row['LAN_1'], row['LAN_2'],results_lanPair[1][1],results_lanPair[2][1],results_lanPair[3][1],results_lanPair[4][1], average_f1_score,
                                     results_lanPair[1][0],results_lanPair[2][0],results_lanPair[3][0],results_lanPair[4][0], average_eval_score,
                                     results_lanPair[1][2],results_lanPair[2][2],results_lanPair[3][2],results_lanPair[4][2], average_pre_score,
                                     results_lanPair[1][3],results_lanPair[2][3],results_lanPair[3][3],results_lanPair[4][3], average_rec_score,], index=results.columns)]
    
    
    results = results.append(list_of_Series, ignore_index=True)
    results.to_csv('LanSimilarity_results_XLMR.csv', index=False)


if __name__ == "__main__":

    main()


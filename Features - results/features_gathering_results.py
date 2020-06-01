#!/usr/bin/env python
# coding: utf-8

# ## DOE_LanguagesSimilarity: Gathering results & Analysis

import pandas as pd


def main():

    # Gather f1 scores and loss_eval


    # each language pair
    results = pd.DataFrame(columns=['FEATURE','DATASET','EXPERIMENT','FINE_TUNING','eval_loss','f1 score'
                                    ])
    list_of_Series = []

    #'results/output_f1/dataset_1/exp1/fine_tuning_1'

    #iterate through 13 features
    for i in range(1,14):
        # iterate through 4 datasets
        for j in range (1,5):
            # iterate  through each exp : exp1 and exp2
            for experiment in range (1,3):
                # fine_tuning_1 and fine_tuning_2
                for fine_tuning in range(1,3):

                    path_to_result ="results/output_f"+str(i)+"/dataset_" +str(j)+"/exp"+str(experiment)+"/fine_tuning_"+str(fine_tuning)+"/eval_results.txt"

                    result_designpoint = open(path_to_result, "r")
                    lines = result_designpoint.readlines()
                    eval_loss = float(lines[9].split(" ")[2][:-2])
                    f1_score = float(lines[10].split(" ")[2][:-2])
                    precision = float(lines[11].split(" ")[2][:-2])
                    recall = float(lines[12].split(" ")[2][:-2])
                    result_designpoint.close()

                    result = [eval_loss, f1_score, precision, recall]
                    #results_list.append(result)



                    list_of_Series += [pd.Series(["Feature "+  str(i), j, experiment, "fine_tuning "+str(fine_tuning), eval_loss, f1_score], index=results.columns)]


    results = results.append(list_of_Series, ignore_index=True)
    results.to_csv('features_gathering_results.csv', index=False)


if __name__ == "__main__":

    main()


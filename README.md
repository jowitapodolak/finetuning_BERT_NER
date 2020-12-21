 

# Finetuning mBERT and XLM-R on NER task with WikiANN datasets

This is a repository containing experiments for our master's thesis: *Developing a Cross-Lingual Named Entity Recognition Model*.
It contains scripts to rerun our experiments as well as overviews and analysis of our results.

We are using **SimpleTransformers** library for our NER model, which is built on top of HuggingFace (API: https://simpletransformers.ai). The experiments are undertaken with transformer models: mBERT and XLM-RoBERTa (by setting model in main-method SimpleTransformer.py to 'bert-base-multilingual-cased' or 'xlm-roberta-base'; see more information here https://huggingface.co/transformers/pretrained_models.html)

Unlike most other research we utilize **WikiANN** datasets derived from Wikipedia for 31 languages (accessible here: https://elisa-ie.github.io/wikiann/). 



### Prerequisites

1. Install Anaconda or Miniconda Package Manager
2. Create a new virtual environment and install the required packages. Commands to do so below. 

conda create -n transformers python pandas tqdm\
conda activate transformers\
If using cuda:\
conda install pytorch cudatoolkit=10.0 -c pytorch\
else:\
conda install pytorch cpuonly -c pytorch\
conda install -c anaconda scipy\
conda install -c anaconda scikit-learn\
pip install transformers\
pip install tensorboardx\
Install simpletransformers:\
pip install simpletransformers

Look for details: https://towardsdatascience.com/simple-transformers-introducing-the-easiest-bert-roberta-xlnet-and-xlm-library-58bf8c59b2a3 (Installation) 


###  Languages

Folder **languages** does not contain WikiANN files as they are too large for GitHub. To reproduce its contents go on WikiANN website or google drive from 'Cross-lingual Name Tagging and Linking for 282 Languages' paper: https://drive.google.com/drive/folders/1Q-xdT99SeaCghihGa7nRkcXGwRGUIsKN and choose data/name_tagging.\
We ran our tests on 31 languages (languages with datasets above 100 000 lines): en,sv,de,ru,fr,es,pl,it,nl,uk,cs,hu,no,sr/ hr,fi,tr,pt,bg,ro,eu,el,lt,sl,et,tt,lv,ka,cy,sq,hy,br  (abbrieviation corresponding to WikiANN).\
Drag WikiANN datasets into languages folder in the following structure:   
languages:  
 en\
  &nbsp;  wikiann-en.bio\
 pl\
 &nbsp;   wikiann-pl.bio\
    ...\
Mac users should use a command tar -xvf ro.tar when unpacking the romanian language - the default encoding is not working correctly for the romanian alphabet.\

Languages folder also contains empty folders (f1,f2,f3,...) where datasets for each feature will be stored after creation (see Feature Experiment).\




## Settings/Parameters 

Parameters correspond to mBERT parameters (https://arxiv.org/pdf/1906.01502.pdf) with the number of epochs being the only difference - we used 1 instead of 3 from the paper. 

To keep mBERT's settings, we leave the attributes in the args dictionary, i.e., model hyperparameters, mostly unchanged (only changing the model and evaluation results saving settings).

model = NERModel('bert', 
                    'bert-base-multilingual-cased',
                    labels=["O",
                    "B-MISC",
                    "I-MISC",
                    "B-PER",
                    "I-PER",
                    "B-ORG",
                    "I-ORG",
                    "B-LOC",
                    "I-LOC"],
                    #use_cuda=False,
                    args={...}


## Description  

The main code is in a file **SimpleTransformers.py**. Features experiment uses a file from **experiments** folder while Language-pairs experiment uses file from the root folder (they are essentially the same - just a different design in the execution scripts).

All scripts are run from the root folder.  

small_en_txt contains a very small chunk of the English dataset (around 16 first sentences) for 'naked-eye testing'. 

Folder **preprocessing** contains code and scripts for trimming datasets and train/tests splits.  

After downloading WikiANN into the following structure:

languages -> uk -> wikiann-uk.bio

We trim datasets. Thee are 3 ways of doing it:

After running,

1 % preprocessing/run_limit_and_split_datasets.sh  you will get:
languages
    uk -> wikiann-uk.bio,   train_output.txt,  test_output.txt
train_output.txt

2 % preprocessing/run_limit_datasets.sh  you will get:
languages
    uk ->    dataset.txt 
        
3 % preprocessing/run_limit_datasets_loop.sh  you will get:
languages
    uk. -> dataset_1.txt, dataset_2.txt, dataset_3.txt, dataset_4.txt 
 
 The first command is shuffling and limiting the dataset to 17,003 sentences (the size of the smallest dataset - for Breton language) and splitting it into train and test in proportion 80/20. 
 The second is just shuffling and reducing the size (also to 17,003 sentences). 
 The third one is done for better evaluation (cross-validation) - we randomly pick sentences for four datasets (each having 17,003  sentences) to later take the average of their F1 score and therefore have a better evaluation. To reproduce our experiments we need this option (we need 4 datasets, each with 17,003 sentences).
 
  
 ## Language-Pair Experiments
 ### run
 to run this experiment, move for the wished distance, i.e. 1.0 the script file from /DOE:script_generator to root directory and run ./run_transformer_1.0.sh and continue for each of distances or run move all the scripts to root folder and run simply: 
 ./run_transformer_all_languages.sh  (recommended) 
 
 run_transformer_all_languages.sh contains on the one hand the experiments run from Language-Pair Experiments and also the follow-up experiments we did after Features-Experiment (see thesis for more explanation)
 
 ### language pairs for experiments: 
 
Number of language pairs (number_of_experiments) and overview with pairs(df_euclidean_dist) in: DOE:script_generator/DOE_LanguageSimilarity.ipynb
 
 
 ### scripts description 
  Scripts were generated with DOE_LanguageSimilarity.ipynb based on the distance measurement.
 
 
 
 ## Features Experiments
 ### run
 to run this experiment call experiments/feature1/run_transformer.sh and continue for each of 13 features or run simply: 
 experiments/run_transformer_all_features.sh  (recommended) 
 
 ### language groups for experiments: 
 ![Language groups for feature1](https://github.com/jowitapodolak/finetuning_BERT_NER/blob/master/experiments/feature_experiment_doe.png)
 
 
 ### scripts description 
  Scripts were generated with DOE_Features.ipynb - it takes the excel (DOE:script_generator/doe_features_overview_wiki.xlsx) file with languages divided into groups of fine_tuning_1, fine_tuning_2, exaluation based on groups of languages TRUE, FALSE. There are two experiments in which we change the which TRUE languages we evaluate on and which we. add to training in fine_tuning_2. 
 
 Summary:
 Groups of languages are in  DOE:script_generator/doe_features_overview_wiki.xlsx 
 In exp1  we do fine_tune_1 on false languages column and fine_tune_2 is half true no eval and half false. 
 In exp2 we exchange true bo eval with eval -> we just swap them. 
 
 Code for script generation is in DOE_Features.ipynb <-run it if you want to reproduce scripts for each feature.
 
 Scripts are then generated into experiments/feature_(feature number)/run_transformers.sh files

 Code for gathering results is in Features results/features_gathering_results.py. For each of the 13 features (feature 13 is not from European Sprachbund - WO feature), for each of the 4 datasets (cross-validation), for two experiments, and 2 fine_tunings (in total 208 design points). Results (after running features_gathering_results.py) are in features_gathering_results.csv. 
 
 
 
 ## Results 
 ### for feature expriments
 Models and full results are saved in **results** folder.
 
 This is an exemplary line (chunk of it) from the experiment script for feature 1: 
 ```bash
 python3 experiments/SimpleTransformers.py .... 'results/output_f1/dataset_4/exp1/fine_tuning_1'
 ```
 
 which presents the hierarchy of the results folder after running. For each feature, we have an output folder. Each output folder has a further four folders (for four cross-validation datasets). Then, each dataset has 2 experiments and each experiment had two fine-tunings.
 
Each model we run is saved in the folder results as pytorch_model.bin file. The evaluation over labels is in eval_results.txt (from here we take F1 scores for our thesis)   

### for language-pair experiment
Models and full results are saved in **results_lan** folder. 
An exemplary path, to results for the distance 1.0, between Ukraininan and Latvian:
```bash
 results_lan/results_1.0/output_1.0/Ukr_Ltv_1
 ```
 
After running all experiments, there are in /LanSimilarity - results, /LanSim_FiltFeat - results and /Features - results, executable python-files collecting F1 score, precision and recall results and gather them in a results-csv file.

The three directories also contain:
- our results for /mBERT and /XLMR in a csv file including:
    - a jupyter notebook with several analyses (documentation within the notebooks)
    - further generated csv-files and png-files storing calculations and visualisations generated with the notebook
- a jupyter notebook comparing the results from mBERT and XLM-R (documentation within the notebook)




## Authors

* **Jowita Podolak** 
* **Philine Zeinert** 


## Acknowledgments

 We would like to express our deep gratitude to our thesis supervision, Professor Leon Derczynski. 





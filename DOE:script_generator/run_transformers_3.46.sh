# Experiments for distance: 3.4641016151377544

# Experiment design: 
# (Finetuned language, Evaluated language) - Split(80/20)
# Number of language pairs: 2

# @author: jopo, phze 
# @date: 2020-04-30 09:32:26.399892


#!/bin/bash

# Cross-validation on different subset-reduction of datasets (preprocessed):
 for j in {1..4}
 do


# Experiments:
# 30 - Language pair: (Fr,Tat)
    python3 preprocessing/take_sentences.py "languages/fr/dataset_$j.txt" "languages/fr/dataset_train.txt" "languages/fr/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/tt/dataset_$j.txt" "languages/tt/dataset_train.txt" "languages/tt/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/fr/dataset_train.txt" "languages/tt/dataset_eval.txt" "results_lan/results_3.46/output_3.46/Fr_Tat_$j"

# 930 - Language pair: (Tat,Fr)
    python3 preprocessing/take_sentences.py "languages/tt/dataset_$j.txt" "languages/tt/dataset_train.txt" "languages/tt/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/fr/dataset_$j.txt" "languages/fr/dataset_train.txt" "languages/fr/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/tt/dataset_train.txt" "languages/fr/dataset_eval.txt" "results_lan/results_3.46/output_3.46/Tat_Fr_$j"

 done
# Experiments for CoNLL languages:

# Experiment design: 
# (Finetuned language, Evaluated language) - Split(80/20)
# Number of language pairs: 4

# @author: jopo, phze 
# @date: 2020-04-30 08:22:07.846046


#!/bin/bash

# Cross-validation on different subset-reduction of datasets (preprocessed):
 for j in {1..4}
 do


# Experiments:
# 1 - Language pair: (Eng,Dut)
    python3 preprocessing/take_sentences.py "languages/en/dataset_$j.txt" "languages/en/dataset_train.txt" "languages/en/dataset_eval.txt" 0 1225
    python3 preprocessing/take_sentences.py "languages/nl/dataset_$j.txt" "languages/nl/dataset_train.txt" "languages/nl/dataset_eval.txt" 0 1225
    python3 SimpleTransformers.py "languages/en/dataset_train.txt" "languages/nl/dataset_eval.txt" "results_lan/results_CoNLL/output_CoNLL/Eng_Dut_$j"

# 2 - Language pair: (Dut,Eng)
    python3 preprocessing/take_sentences.py "languages/nl/dataset_$j.txt" "languages/nl/dataset_train.txt" "languages/nl/dataset_eval.txt" 0 1225
    python3 preprocessing/take_sentences.py "languages/en/dataset_$j.txt" "languages/en/dataset_train.txt" "languages/en/dataset_eval.txt" 0 1225
    python3 SimpleTransformers.py "languages/nl/dataset_train.txt" "languages/en/dataset_eval.txt" "results_lan/results_CoNLL/output_CoNLL/Dut_Eng_$j"

# 3 - Language pair: (Spn,Eng)
    python3 preprocessing/take_sentences.py "languages/es/dataset_$j.txt" "languages/es/dataset_train.txt" "languages/es/dataset_eval.txt" 0 1225
    python3 preprocessing/take_sentences.py "languages/en/dataset_$j.txt" "languages/en/dataset_train.txt" "languages/en/dataset_eval.txt" 0 1225
    python3 SimpleTransformers.py "languages/es/dataset_train.txt" "languages/en/dataset_eval.txt" "results_lan/results_CoNLL/output_CoNLL/Spn_Eng_$j"

# 4 - Language pair: (Eng,Spn)
    python3 preprocessing/take_sentences.py "languages/en/dataset_$j.txt" "languages/en/dataset_train.txt" "languages/en/dataset_eval.txt" 0 1225
    python3 preprocessing/take_sentences.py "languages/es/dataset_$j.txt" "languages/es/dataset_train.txt" "languages/es/dataset_eval.txt" 0 1225
    python3 SimpleTransformers.py "languages/en/dataset_train.txt" "languages/es/dataset_eval.txt" "results_lan/results_CoNLL/output_CoNLL/Eng_Spn_$j"

# 5 - Language pair: (Spn,Dut)
    python3 preprocessing/take_sentences.py "languages/es/dataset_$j.txt" "languages/es/dataset_train.txt" "languages/es/dataset_eval.txt" 0 1225
    python3 preprocessing/take_sentences.py "languages/nl/dataset_$j.txt" "languages/nl/dataset_train.txt" "languages/nl/dataset_eval.txt" 0 1225
    python3 SimpleTransformers.py "languages/es/dataset_train.txt" "languages/nl/dataset_eval.txt" "results_lan/results_CoNLL/output_CoNLL/Spn_Dut_$j"

# 6 - Language pair: (Dut,Spn)
    python3 preprocessing/take_sentences.py "languages/nl/dataset_$j.txt" "languages/nl/dataset_train.txt" "languages/nl/dataset_eval.txt" 0 1225
    python3 preprocessing/take_sentences.py "languages/es/dataset_$j.txt" "languages/es/dataset_train.txt" "languages/es/dataset_eval.txt" 0 1225
    python3 SimpleTransformers.py "languages/nl/dataset_train.txt" "languages/es/dataset_eval.txt" "results_lan/results_CoNLL/output_CoNLL/Dut_Spn_$j"


 done
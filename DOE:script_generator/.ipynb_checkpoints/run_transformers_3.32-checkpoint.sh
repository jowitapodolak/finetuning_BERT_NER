# Experiments for distance: 3.3166247903554

# Experiment design: 
# (Finetuned language, Evaluated language) - Split(80/20)
# Number of language pairs: 12

# @author: jopo, phze 
# @date: 2020-05-01 08:44:16.205973


#!/bin/bash

# Cross-validation on different subset-reduction of datasets (preprocessed):
 for j in {1..4}
 do


# Experiments:
# 899 - Language pair: (Trk,Fr)
    python3 preprocessing/take_sentences.py "languages/tr/dataset_$j.txt" "languages/tr/dataset_train.txt" "languages/tr/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/fr/dataset_$j.txt" "languages/fr/dataset_train.txt" "languages/fr/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/tr/dataset_train.txt" "languages/fr/dataset_eval.txt" "results_lan/results_3.32/output_3.32/Trk_Fr_$j"

# 29 - Language pair: (Fr,Trk)
    python3 preprocessing/take_sentences.py "languages/fr/dataset_$j.txt" "languages/fr/dataset_train.txt" "languages/fr/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/tr/dataset_$j.txt" "languages/tr/dataset_train.txt" "languages/tr/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/fr/dataset_train.txt" "languages/tr/dataset_eval.txt" "results_lan/results_3.32/output_3.32/Fr_Trk_$j"

# 810 - Language pair: (Wel,Grk)
    python3 preprocessing/take_sentences.py "languages/cy/dataset_$j.txt" "languages/cy/dataset_train.txt" "languages/cy/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/el/dataset_$j.txt" "languages/el/dataset_train.txt" "languages/el/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/cy/dataset_train.txt" "languages/el/dataset_eval.txt" "results_lan/results_3.32/output_3.32/Wel_Grk_$j"

# 61 - Language pair: (Grm,Tat)
    python3 preprocessing/take_sentences.py "languages/de/dataset_$j.txt" "languages/de/dataset_train.txt" "languages/de/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/tt/dataset_$j.txt" "languages/tt/dataset_train.txt" "languages/tt/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/de/dataset_train.txt" "languages/tt/dataset_eval.txt" "results_lan/results_3.32/output_3.32/Grm_Tat_$j"

# 28 - Language pair: (Fr,Arm)
    python3 preprocessing/take_sentences.py "languages/fr/dataset_$j.txt" "languages/fr/dataset_train.txt" "languages/fr/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/hy/dataset_$j.txt" "languages/hy/dataset_train.txt" "languages/hy/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/fr/dataset_train.txt" "languages/hy/dataset_eval.txt" "results_lan/results_3.32/output_3.32/Fr_Arm_$j"

# 26 - Language pair: (Fr,Wel)
    python3 preprocessing/take_sentences.py "languages/fr/dataset_$j.txt" "languages/fr/dataset_train.txt" "languages/fr/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/cy/dataset_$j.txt" "languages/cy/dataset_train.txt" "languages/cy/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/fr/dataset_train.txt" "languages/cy/dataset_eval.txt" "results_lan/results_3.32/output_3.32/Fr_Wel_$j"

# 837 - Language pair: (Est,Fr)
    python3 preprocessing/take_sentences.py "languages/et/dataset_$j.txt" "languages/et/dataset_train.txt" "languages/et/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/fr/dataset_$j.txt" "languages/fr/dataset_train.txt" "languages/fr/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/et/dataset_train.txt" "languages/fr/dataset_eval.txt" "results_lan/results_3.32/output_3.32/Est_Fr_$j"

# 868 - Language pair: (Arm,Fr)
    python3 preprocessing/take_sentences.py "languages/hy/dataset_$j.txt" "languages/hy/dataset_train.txt" "languages/hy/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/fr/dataset_$j.txt" "languages/fr/dataset_train.txt" "languages/fr/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/hy/dataset_train.txt" "languages/fr/dataset_eval.txt" "results_lan/results_3.32/output_3.32/Arm_Fr_$j"

# 806 - Language pair: (Wel,Fr)
    python3 preprocessing/take_sentences.py "languages/cy/dataset_$j.txt" "languages/cy/dataset_train.txt" "languages/cy/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/fr/dataset_$j.txt" "languages/fr/dataset_train.txt" "languages/fr/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/cy/dataset_train.txt" "languages/fr/dataset_eval.txt" "results_lan/results_3.32/output_3.32/Wel_Fr_$j"

# 27 - Language pair: (Fr,Est)
    python3 preprocessing/take_sentences.py "languages/fr/dataset_$j.txt" "languages/fr/dataset_train.txt" "languages/fr/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/et/dataset_$j.txt" "languages/et/dataset_train.txt" "languages/et/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/fr/dataset_train.txt" "languages/et/dataset_eval.txt" "results_lan/results_3.32/output_3.32/Fr_Est_$j"

# 931 - Language pair: (Tat,Grm)
    python3 preprocessing/take_sentences.py "languages/tt/dataset_$j.txt" "languages/tt/dataset_train.txt" "languages/tt/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/de/dataset_$j.txt" "languages/de/dataset_train.txt" "languages/de/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/tt/dataset_train.txt" "languages/de/dataset_eval.txt" "results_lan/results_3.32/output_3.32/Tat_Grm_$j"

# 150 - Language pair: (Grk,Wel)
    python3 preprocessing/take_sentences.py "languages/el/dataset_$j.txt" "languages/el/dataset_train.txt" "languages/el/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/cy/dataset_$j.txt" "languages/cy/dataset_train.txt" "languages/cy/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/el/dataset_train.txt" "languages/cy/dataset_eval.txt" "results_lan/results_3.32/output_3.32/Grk_Wel_$j"

 done
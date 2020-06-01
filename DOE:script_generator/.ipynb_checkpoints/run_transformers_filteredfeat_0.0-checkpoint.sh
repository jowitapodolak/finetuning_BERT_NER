# Experiments for distance: 0.0

# Experiment design: 
# (Finetuned language, Evaluated language) - Split(80/20)
# Number of language pairs: 20

# @author: jopo, phze 
# @date: 2020-05-03 09:48:35.049131


#!/bin/bash

# Cross-validation on different subset-reduction of datasets (preprocessed):
 for j in {1..4}
 do


# Experiments:
# 0 - Language pair: (Fr,Fr)
    python3 preprocessing/take_sentences.py "languages/fr/dataset_$j.txt" "languages/fr/dataset_train.txt" "languages/fr/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/fr/dataset_$j.txt" "languages/fr/dataset_train.txt" "languages/fr/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/fr/dataset_train.txt" "languages/fr/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Fr_Fr_$j"

# 481 - Language pair: (Ltv,Lit)
    python3 preprocessing/take_sentences.py "languages/lv/dataset_$j.txt" "languages/lv/dataset_train.txt" "languages/lv/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/lt/dataset_$j.txt" "languages/lt/dataset_train.txt" "languages/lt/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/lv/dataset_train.txt" "languages/lt/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Ltv_Lit_$j"

# 959 - Language pair: (Tat,Trk)
    python3 preprocessing/take_sentences.py "languages/tt/dataset_$j.txt" "languages/tt/dataset_train.txt" "languages/tt/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/tr/dataset_$j.txt" "languages/tr/dataset_train.txt" "languages/tr/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/tt/dataset_train.txt" "languages/tr/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Tat_Trk_$j"

# 479 - Language pair: (Ltv,Cz)
    python3 preprocessing/take_sentences.py "languages/lv/dataset_$j.txt" "languages/lv/dataset_train.txt" "languages/lv/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/cs/dataset_$j.txt" "languages/cs/dataset_train.txt" "languages/cs/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/lv/dataset_train.txt" "languages/cs/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Ltv_Cz_$j"

# 475 - Language pair: (Ltv,Rus)
    python3 preprocessing/take_sentences.py "languages/lv/dataset_$j.txt" "languages/lv/dataset_train.txt" "languages/lv/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/ru/dataset_$j.txt" "languages/ru/dataset_train.txt" "languages/ru/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/lv/dataset_train.txt" "languages/ru/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Ltv_Rus_$j"

# 474 - Language pair: (Ltv,Rom)
    python3 preprocessing/take_sentences.py "languages/lv/dataset_$j.txt" "languages/lv/dataset_train.txt" "languages/lv/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/ro/dataset_$j.txt" "languages/ro/dataset_train.txt" "languages/ro/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/lv/dataset_train.txt" "languages/ro/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Ltv_Rom_$j"

# 469 - Language pair: (Ltv,Grk)
    python3 preprocessing/take_sentences.py "languages/lv/dataset_$j.txt" "languages/lv/dataset_train.txt" "languages/lv/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/el/dataset_$j.txt" "languages/el/dataset_train.txt" "languages/el/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/lv/dataset_train.txt" "languages/el/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Ltv_Grk_$j"

# 455 - Language pair: (Cz,Ukr)
    python3 preprocessing/take_sentences.py "languages/cs/dataset_$j.txt" "languages/cs/dataset_train.txt" "languages/cs/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/uk/dataset_$j.txt" "languages/uk/dataset_train.txt" "languages/uk/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/cs/dataset_train.txt" "languages/uk/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Cz_Ukr_$j"

# 454 - Language pair: (Cz,Sln)
    python3 preprocessing/take_sentences.py "languages/cs/dataset_$j.txt" "languages/cs/dataset_train.txt" "languages/cs/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/sl/dataset_$j.txt" "languages/sl/dataset_train.txt" "languages/sl/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/cs/dataset_train.txt" "languages/sl/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Cz_Sln_$j"

# 453 - Language pair: (Cz,Pol)
    python3 preprocessing/take_sentences.py "languages/cs/dataset_$j.txt" "languages/cs/dataset_train.txt" "languages/cs/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/pl/dataset_$j.txt" "languages/pl/dataset_train.txt" "languages/pl/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/cs/dataset_train.txt" "languages/pl/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Cz_Pol_$j"

# 452 - Language pair: (Cz,Blg)
    python3 preprocessing/take_sentences.py "languages/cs/dataset_$j.txt" "languages/cs/dataset_train.txt" "languages/cs/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/bg/dataset_$j.txt" "languages/bg/dataset_train.txt" "languages/bg/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/cs/dataset_train.txt" "languages/bg/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Cz_Blg_$j"

# 451 - Language pair: (Cz,SCr)
    python3 preprocessing/take_sentences.py "languages/cs/dataset_$j.txt" "languages/cs/dataset_train.txt" "languages/cs/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/sr/dataset_$j.txt" "languages/sr/dataset_train.txt" "languages/sr/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/cs/dataset_train.txt" "languages/sr/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Cz_SCr_$j"

# 450 - Language pair: (Cz,Lit)
    python3 preprocessing/take_sentences.py "languages/cs/dataset_$j.txt" "languages/cs/dataset_train.txt" "languages/cs/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/lt/dataset_$j.txt" "languages/lt/dataset_train.txt" "languages/lt/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/cs/dataset_train.txt" "languages/lt/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Cz_Lit_$j"

# 449 - Language pair: (Cz,Ltv)
    python3 preprocessing/take_sentences.py "languages/cs/dataset_$j.txt" "languages/cs/dataset_train.txt" "languages/cs/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/lv/dataset_$j.txt" "languages/lv/dataset_train.txt" "languages/lv/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/cs/dataset_train.txt" "languages/lv/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Cz_Ltv_$j"

# 448 - Language pair: (Cz,Cz)
    python3 preprocessing/take_sentences.py "languages/cs/dataset_$j.txt" "languages/cs/dataset_train.txt" "languages/cs/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/cs/dataset_$j.txt" "languages/cs/dataset_train.txt" "languages/cs/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/cs/dataset_train.txt" "languages/cs/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Cz_Cz_$j"

# 444 - Language pair: (Cz,Rus)
    python3 preprocessing/take_sentences.py "languages/cs/dataset_$j.txt" "languages/cs/dataset_train.txt" "languages/cs/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/ru/dataset_$j.txt" "languages/ru/dataset_train.txt" "languages/ru/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/cs/dataset_train.txt" "languages/ru/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Cz_Rus_$j"

# 443 - Language pair: (Cz,Rom)
    python3 preprocessing/take_sentences.py "languages/cs/dataset_$j.txt" "languages/cs/dataset_train.txt" "languages/cs/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/ro/dataset_$j.txt" "languages/ro/dataset_train.txt" "languages/ro/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/cs/dataset_train.txt" "languages/ro/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Cz_Rom_$j"

# 438 - Language pair: (Cz,Grk)
    python3 preprocessing/take_sentences.py "languages/cs/dataset_$j.txt" "languages/cs/dataset_train.txt" "languages/cs/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/el/dataset_$j.txt" "languages/el/dataset_train.txt" "languages/el/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/cs/dataset_train.txt" "languages/el/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Cz_Grk_$j"

# 482 - Language pair: (Ltv,SCr)
    python3 preprocessing/take_sentences.py "languages/lv/dataset_$j.txt" "languages/lv/dataset_train.txt" "languages/lv/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/sr/dataset_$j.txt" "languages/sr/dataset_train.txt" "languages/sr/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/lv/dataset_train.txt" "languages/sr/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Ltv_SCr_$j"

# 483 - Language pair: (Ltv,Blg)
    python3 preprocessing/take_sentences.py "languages/lv/dataset_$j.txt" "languages/lv/dataset_train.txt" "languages/lv/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/bg/dataset_$j.txt" "languages/bg/dataset_train.txt" "languages/bg/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/lv/dataset_train.txt" "languages/bg/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Ltv_Blg_$j"

 done
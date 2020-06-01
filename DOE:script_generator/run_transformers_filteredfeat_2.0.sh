# Experiments for distance: 2.0

# Experiment design: 
# (Finetuned language, Evaluated language) - Split(80/20)
# Number of language pairs: 20

# @author: jopo, phze 
# @date: 2020-05-04 08:41:35.100802


#!/bin/bash

# Cross-validation on different subset-reduction of datasets (preprocessed):
 for j in {1..4}
 do


# Experiments:
# 521 - Language pair: (Lit,Grg)
    python3 preprocessing/take_sentences.py "languages/lt/dataset_$j.txt" "languages/lt/dataset_train.txt" "languages/lt/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/ka/dataset_$j.txt" "languages/ka/dataset_train.txt" "languages/ka/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/lt/dataset_train.txt" "languages/ka/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Lit_Grg_$j"

# 583 - Language pair: (Blg,Grg)
    python3 preprocessing/take_sentences.py "languages/bg/dataset_$j.txt" "languages/bg/dataset_train.txt" "languages/bg/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/ka/dataset_$j.txt" "languages/ka/dataset_train.txt" "languages/ka/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/bg/dataset_train.txt" "languages/ka/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Blg_Grg_$j"

# 685 - Language pair: (Bsq,Eng)
    python3 preprocessing/take_sentences.py "languages/eu/dataset_$j.txt" "languages/eu/dataset_train.txt" "languages/eu/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/en/dataset_$j.txt" "languages/en/dataset_train.txt" "languages/en/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/eu/dataset_train.txt" "languages/en/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Bsq_Eng_$j"

# 784 - Language pair: (Grg,Rom)
    python3 preprocessing/take_sentences.py "languages/ka/dataset_$j.txt" "languages/ka/dataset_train.txt" "languages/ka/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/ro/dataset_$j.txt" "languages/ro/dataset_train.txt" "languages/ro/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/ka/dataset_train.txt" "languages/ro/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Grg_Rom_$j"

# 785 - Language pair: (Grg,Rus)
    python3 preprocessing/take_sentences.py "languages/ka/dataset_$j.txt" "languages/ka/dataset_train.txt" "languages/ka/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/ru/dataset_$j.txt" "languages/ru/dataset_train.txt" "languages/ru/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/ka/dataset_train.txt" "languages/ru/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Grg_Rus_$j"

# 335 - Language pair: (Rus,Grg)
    python3 preprocessing/take_sentences.py "languages/ru/dataset_$j.txt" "languages/ru/dataset_train.txt" "languages/ru/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/ka/dataset_$j.txt" "languages/ka/dataset_train.txt" "languages/ka/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/ru/dataset_train.txt" "languages/ka/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Rus_Grg_$j"

# 907 - Language pair: (Trk,Alb)
    python3 preprocessing/take_sentences.py "languages/tr/dataset_$j.txt" "languages/tr/dataset_train.txt" "languages/tr/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/sq/dataset_$j.txt" "languages/sq/dataset_train.txt" "languages/sq/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/tr/dataset_train.txt" "languages/sq/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Trk_Alb_$j"

# 906 - Language pair: (Trk,It)
    python3 preprocessing/take_sentences.py "languages/tr/dataset_$j.txt" "languages/tr/dataset_train.txt" "languages/tr/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/it/dataset_$j.txt" "languages/it/dataset_train.txt" "languages/it/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/tr/dataset_train.txt" "languages/it/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Trk_It_$j"

# 905 - Language pair: (Trk,Prt)
    python3 preprocessing/take_sentences.py "languages/tr/dataset_$j.txt" "languages/tr/dataset_train.txt" "languages/tr/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/pt/dataset_$j.txt" "languages/pt/dataset_train.txt" "languages/pt/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/tr/dataset_train.txt" "languages/pt/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Trk_Prt_$j"

# 904 - Language pair: (Trk,Spn)
    python3 preprocessing/take_sentences.py "languages/tr/dataset_$j.txt" "languages/tr/dataset_train.txt" "languages/tr/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/es/dataset_$j.txt" "languages/es/dataset_train.txt" "languages/es/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/tr/dataset_train.txt" "languages/es/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Trk_Spn_$j"

# 779 - Language pair: (Grg,Grk)
    python3 preprocessing/take_sentences.py "languages/ka/dataset_$j.txt" "languages/ka/dataset_train.txt" "languages/ka/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/el/dataset_$j.txt" "languages/el/dataset_train.txt" "languages/el/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/ka/dataset_train.txt" "languages/el/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Grg_Grk_$j"

# 185 - Language pair: (Spn,Tat)
    python3 preprocessing/take_sentences.py "languages/es/dataset_$j.txt" "languages/es/dataset_train.txt" "languages/es/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/tt/dataset_$j.txt" "languages/tt/dataset_train.txt" "languages/tt/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/es/dataset_train.txt" "languages/tt/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Spn_Tat_$j"

# 216 - Language pair: (Prt,Tat)
    python3 preprocessing/take_sentences.py "languages/pt/dataset_$j.txt" "languages/pt/dataset_train.txt" "languages/pt/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/tt/dataset_$j.txt" "languages/tt/dataset_train.txt" "languages/tt/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/pt/dataset_train.txt" "languages/tt/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Prt_Tat_$j"

# 183 - Language pair: (Spn,Arm)
    python3 preprocessing/take_sentences.py "languages/es/dataset_$j.txt" "languages/es/dataset_train.txt" "languages/es/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/hy/dataset_$j.txt" "languages/hy/dataset_train.txt" "languages/hy/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/es/dataset_train.txt" "languages/hy/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Spn_Arm_$j"

# 751 - Language pair: (Fin,It)
    python3 preprocessing/take_sentences.py "languages/fi/dataset_$j.txt" "languages/fi/dataset_train.txt" "languages/fi/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/it/dataset_$j.txt" "languages/it/dataset_train.txt" "languages/it/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/fi/dataset_train.txt" "languages/it/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Fin_It_$j"

# 84 - Language pair: (Dut,Bsq)
    python3 preprocessing/take_sentences.py "languages/nl/dataset_$j.txt" "languages/nl/dataset_train.txt" "languages/nl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/eu/dataset_$j.txt" "languages/eu/dataset_train.txt" "languages/eu/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/nl/dataset_train.txt" "languages/eu/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Dut_Bsq_$j"

# 750 - Language pair: (Fin,Prt)
    python3 preprocessing/take_sentences.py "languages/fi/dataset_$j.txt" "languages/fi/dataset_train.txt" "languages/fi/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/pt/dataset_$j.txt" "languages/pt/dataset_train.txt" "languages/pt/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/fi/dataset_train.txt" "languages/pt/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Fin_Prt_$j"

# 749 - Language pair: (Fin,Spn)
    python3 preprocessing/take_sentences.py "languages/fi/dataset_$j.txt" "languages/fi/dataset_train.txt" "languages/fi/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/es/dataset_$j.txt" "languages/es/dataset_train.txt" "languages/es/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/fi/dataset_train.txt" "languages/es/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Fin_Spn_$j"

# 552 - Language pair: (SCr,Grg)
    python3 preprocessing/take_sentences.py "languages/sr/dataset_$j.txt" "languages/sr/dataset_train.txt" "languages/sr/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/ka/dataset_$j.txt" "languages/ka/dataset_train.txt" "languages/ka/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/sr/dataset_train.txt" "languages/ka/dataset_eval.txt" "results_filt/results_2.0/output_2.0/SCr_Grg_$j"

# 179 - Language pair: (Spn,Fin)
    python3 preprocessing/take_sentences.py "languages/es/dataset_$j.txt" "languages/es/dataset_train.txt" "languages/es/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/fi/dataset_$j.txt" "languages/fi/dataset_train.txt" "languages/fi/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/es/dataset_train.txt" "languages/fi/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Spn_Fin_$j"

 done
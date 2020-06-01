# Experiments for distance: 3.1622776601683795

# Experiment design: 
# (Finetuned language, Evaluated language) - Split(80/20)
# Number of language pairs: 32

# @author: jopo, phze 
# @date: 2020-05-01 08:44:16.251219


#!/bin/bash

# Cross-validation on different subset-reduction of datasets (preprocessed):
 for j in {1..4}
 do


# Experiments:
# 277 - Language pair: (Alb,Trk)
    python3 preprocessing/take_sentences.py "languages/sq/dataset_$j.txt" "languages/sq/dataset_train.txt" "languages/sq/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/tr/dataset_$j.txt" "languages/tr/dataset_train.txt" "languages/tr/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/sq/dataset_train.txt" "languages/tr/dataset_eval.txt" "results_lan/results_3.16/output_3.16/Alb_Trk_$j"

# 933 - Language pair: (Tat,Eng)
    python3 preprocessing/take_sentences.py "languages/tt/dataset_$j.txt" "languages/tt/dataset_train.txt" "languages/tt/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/en/dataset_$j.txt" "languages/en/dataset_train.txt" "languages/en/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/tt/dataset_train.txt" "languages/en/dataset_eval.txt" "results_lan/results_3.16/output_3.16/Tat_Eng_$j"

# 934 - Language pair: (Tat,Grk)
    python3 preprocessing/take_sentences.py "languages/tt/dataset_$j.txt" "languages/tt/dataset_train.txt" "languages/tt/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/el/dataset_$j.txt" "languages/el/dataset_train.txt" "languages/el/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/tt/dataset_train.txt" "languages/el/dataset_eval.txt" "results_lan/results_3.16/output_3.16/Tat_Grk_$j"

# 775 - Language pair: (Grg,Fr)
    python3 preprocessing/take_sentences.py "languages/ka/dataset_$j.txt" "languages/ka/dataset_train.txt" "languages/ka/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/fr/dataset_$j.txt" "languages/fr/dataset_train.txt" "languages/fr/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/ka/dataset_train.txt" "languages/fr/dataset_eval.txt" "results_lan/results_3.16/output_3.16/Grg_Fr_$j"

# 745 - Language pair: (Fin,Grm)
    python3 preprocessing/take_sentences.py "languages/fi/dataset_$j.txt" "languages/fi/dataset_train.txt" "languages/fi/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/de/dataset_$j.txt" "languages/de/dataset_train.txt" "languages/de/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/fi/dataset_train.txt" "languages/de/dataset_eval.txt" "results_lan/results_3.16/output_3.16/Fin_Grm_$j"

# 243 - Language pair: (It,Wel)
    python3 preprocessing/take_sentences.py "languages/it/dataset_$j.txt" "languages/it/dataset_train.txt" "languages/it/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/cy/dataset_$j.txt" "languages/cy/dataset_train.txt" "languages/cy/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/it/dataset_train.txt" "languages/cy/dataset_eval.txt" "results_lan/results_3.16/output_3.16/It_Wel_$j"

# 123 - Language pair: (Eng,Tat)
    python3 preprocessing/take_sentences.py "languages/en/dataset_$j.txt" "languages/en/dataset_train.txt" "languages/en/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/tt/dataset_$j.txt" "languages/tt/dataset_train.txt" "languages/tt/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/en/dataset_train.txt" "languages/tt/dataset_eval.txt" "results_lan/results_3.16/output_3.16/Eng_Tat_$j"

# 932 - Language pair: (Tat,Dut)
    python3 preprocessing/take_sentences.py "languages/tt/dataset_$j.txt" "languages/tt/dataset_train.txt" "languages/tt/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/nl/dataset_$j.txt" "languages/nl/dataset_train.txt" "languages/nl/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/tt/dataset_train.txt" "languages/nl/dataset_eval.txt" "results_lan/results_3.16/output_3.16/Tat_Dut_$j"

# 212 - Language pair: (Prt,Wel)
    python3 preprocessing/take_sentences.py "languages/pt/dataset_$j.txt" "languages/pt/dataset_train.txt" "languages/pt/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/cy/dataset_$j.txt" "languages/cy/dataset_train.txt" "languages/cy/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/pt/dataset_train.txt" "languages/cy/dataset_eval.txt" "results_lan/results_3.16/output_3.16/Prt_Wel_$j"

# 57 - Language pair: (Grm,Wel)
    python3 preprocessing/take_sentences.py "languages/de/dataset_$j.txt" "languages/de/dataset_train.txt" "languages/de/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/cy/dataset_$j.txt" "languages/cy/dataset_train.txt" "languages/cy/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/de/dataset_train.txt" "languages/cy/dataset_eval.txt" "results_lan/results_3.16/output_3.16/Grm_Wel_$j"

# 55 - Language pair: (Grm,Fin)
    python3 preprocessing/take_sentences.py "languages/de/dataset_$j.txt" "languages/de/dataset_train.txt" "languages/de/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/fi/dataset_$j.txt" "languages/fi/dataset_train.txt" "languages/fi/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/de/dataset_train.txt" "languages/fi/dataset_eval.txt" "results_lan/results_3.16/output_3.16/Grm_Fin_$j"

# 149 - Language pair: (Grk,Grg)
    python3 preprocessing/take_sentences.py "languages/el/dataset_$j.txt" "languages/el/dataset_train.txt" "languages/el/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/ka/dataset_$j.txt" "languages/ka/dataset_train.txt" "languages/ka/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/el/dataset_train.txt" "languages/ka/dataset_eval.txt" "results_lan/results_3.16/output_3.16/Grk_Grg_$j"

# 869 - Language pair: (Arm,Grm)
    python3 preprocessing/take_sentences.py "languages/hy/dataset_$j.txt" "languages/hy/dataset_train.txt" "languages/hy/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/de/dataset_$j.txt" "languages/de/dataset_train.txt" "languages/de/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/hy/dataset_train.txt" "languages/de/dataset_eval.txt" "results_lan/results_3.16/output_3.16/Arm_Grm_$j"

# 58 - Language pair: (Grm,Est)
    python3 preprocessing/take_sentences.py "languages/de/dataset_$j.txt" "languages/de/dataset_train.txt" "languages/de/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/et/dataset_$j.txt" "languages/et/dataset_train.txt" "languages/et/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/de/dataset_train.txt" "languages/et/dataset_eval.txt" "results_lan/results_3.16/output_3.16/Grm_Est_$j"

# 907 - Language pair: (Trk,Alb)
    python3 preprocessing/take_sentences.py "languages/tr/dataset_$j.txt" "languages/tr/dataset_train.txt" "languages/tr/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/sq/dataset_$j.txt" "languages/sq/dataset_train.txt" "languages/sq/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/tr/dataset_train.txt" "languages/sq/dataset_eval.txt" "results_lan/results_3.16/output_3.16/Trk_Alb_$j"

# 779 - Language pair: (Grg,Grk)
    python3 preprocessing/take_sentences.py "languages/ka/dataset_$j.txt" "languages/ka/dataset_train.txt" "languages/ka/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/el/dataset_$j.txt" "languages/el/dataset_train.txt" "languages/el/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/ka/dataset_train.txt" "languages/el/dataset_eval.txt" "results_lan/results_3.16/output_3.16/Grg_Grk_$j"

# 92 - Language pair: (Dut,Tat)
    python3 preprocessing/take_sentences.py "languages/nl/dataset_$j.txt" "languages/nl/dataset_train.txt" "languages/nl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/tt/dataset_$j.txt" "languages/tt/dataset_train.txt" "languages/tt/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/nl/dataset_train.txt" "languages/tt/dataset_eval.txt" "results_lan/results_3.16/output_3.16/Dut_Tat_$j"

# 900 - Language pair: (Trk,Grm)
    python3 preprocessing/take_sentences.py "languages/tr/dataset_$j.txt" "languages/tr/dataset_train.txt" "languages/tr/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/de/dataset_$j.txt" "languages/de/dataset_train.txt" "languages/de/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/tr/dataset_train.txt" "languages/de/dataset_eval.txt" "results_lan/results_3.16/output_3.16/Trk_Grm_$j"

# 59 - Language pair: (Grm,Arm)
    python3 preprocessing/take_sentences.py "languages/de/dataset_$j.txt" "languages/de/dataset_train.txt" "languages/de/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/hy/dataset_$j.txt" "languages/hy/dataset_train.txt" "languages/hy/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/de/dataset_train.txt" "languages/hy/dataset_eval.txt" "results_lan/results_3.16/output_3.16/Grm_Arm_$j"

# 838 - Language pair: (Est,Grm)
    python3 preprocessing/take_sentences.py "languages/et/dataset_$j.txt" "languages/et/dataset_train.txt" "languages/et/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/de/dataset_$j.txt" "languages/de/dataset_train.txt" "languages/de/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/et/dataset_train.txt" "languages/de/dataset_eval.txt" "results_lan/results_3.16/output_3.16/Est_Grm_$j"

# 274 - Language pair: (Alb,Wel)
    python3 preprocessing/take_sentences.py "languages/sq/dataset_$j.txt" "languages/sq/dataset_train.txt" "languages/sq/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/cy/dataset_$j.txt" "languages/cy/dataset_train.txt" "languages/cy/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/sq/dataset_train.txt" "languages/cy/dataset_eval.txt" "results_lan/results_3.16/output_3.16/Alb_Wel_$j"

# 812 - Language pair: (Wel,Prt)
    python3 preprocessing/take_sentences.py "languages/cy/dataset_$j.txt" "languages/cy/dataset_train.txt" "languages/cy/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/pt/dataset_$j.txt" "languages/pt/dataset_train.txt" "languages/pt/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/cy/dataset_train.txt" "languages/pt/dataset_eval.txt" "results_lan/results_3.16/output_3.16/Wel_Prt_$j"

# 181 - Language pair: (Spn,Wel)
    python3 preprocessing/take_sentences.py "languages/es/dataset_$j.txt" "languages/es/dataset_train.txt" "languages/es/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/cy/dataset_$j.txt" "languages/cy/dataset_train.txt" "languages/cy/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/es/dataset_train.txt" "languages/cy/dataset_eval.txt" "results_lan/results_3.16/output_3.16/Spn_Wel_$j"

# 115 - Language pair: (Eng,Bsq)
    python3 preprocessing/take_sentences.py "languages/en/dataset_$j.txt" "languages/en/dataset_train.txt" "languages/en/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/eu/dataset_$j.txt" "languages/eu/dataset_train.txt" "languages/eu/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/en/dataset_train.txt" "languages/eu/dataset_eval.txt" "results_lan/results_3.16/output_3.16/Eng_Bsq_$j"

# 807 - Language pair: (Wel,Grm)
    python3 preprocessing/take_sentences.py "languages/cy/dataset_$j.txt" "languages/cy/dataset_train.txt" "languages/cy/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/de/dataset_$j.txt" "languages/de/dataset_train.txt" "languages/de/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/cy/dataset_train.txt" "languages/de/dataset_eval.txt" "results_lan/results_3.16/output_3.16/Wel_Grm_$j"

# 814 - Language pair: (Wel,Alb)
    python3 preprocessing/take_sentences.py "languages/cy/dataset_$j.txt" "languages/cy/dataset_train.txt" "languages/cy/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/sq/dataset_$j.txt" "languages/sq/dataset_train.txt" "languages/sq/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/cy/dataset_train.txt" "languages/sq/dataset_eval.txt" "results_lan/results_3.16/output_3.16/Wel_Alb_$j"

# 811 - Language pair: (Wel,Spn)
    python3 preprocessing/take_sentences.py "languages/cy/dataset_$j.txt" "languages/cy/dataset_train.txt" "languages/cy/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/es/dataset_$j.txt" "languages/es/dataset_train.txt" "languages/es/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/cy/dataset_train.txt" "languages/es/dataset_eval.txt" "results_lan/results_3.16/output_3.16/Wel_Spn_$j"

# 25 - Language pair: (Fr,Grg)
    python3 preprocessing/take_sentences.py "languages/fr/dataset_$j.txt" "languages/fr/dataset_train.txt" "languages/fr/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/ka/dataset_$j.txt" "languages/ka/dataset_train.txt" "languages/ka/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/fr/dataset_train.txt" "languages/ka/dataset_eval.txt" "results_lan/results_3.16/output_3.16/Fr_Grg_$j"

# 60 - Language pair: (Grm,Trk)
    python3 preprocessing/take_sentences.py "languages/de/dataset_$j.txt" "languages/de/dataset_train.txt" "languages/de/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/tr/dataset_$j.txt" "languages/tr/dataset_train.txt" "languages/tr/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/de/dataset_train.txt" "languages/tr/dataset_eval.txt" "results_lan/results_3.16/output_3.16/Grm_Trk_$j"

# 154 - Language pair: (Grk,Tat)
    python3 preprocessing/take_sentences.py "languages/el/dataset_$j.txt" "languages/el/dataset_train.txt" "languages/el/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/tt/dataset_$j.txt" "languages/tt/dataset_train.txt" "languages/tt/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/el/dataset_train.txt" "languages/tt/dataset_eval.txt" "results_lan/results_3.16/output_3.16/Grk_Tat_$j"

# 813 - Language pair: (Wel,It)
    python3 preprocessing/take_sentences.py "languages/cy/dataset_$j.txt" "languages/cy/dataset_train.txt" "languages/cy/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/it/dataset_$j.txt" "languages/it/dataset_train.txt" "languages/it/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/cy/dataset_train.txt" "languages/it/dataset_eval.txt" "results_lan/results_3.16/output_3.16/Wel_It_$j"

# 685 - Language pair: (Bsq,Eng)
    python3 preprocessing/take_sentences.py "languages/eu/dataset_$j.txt" "languages/eu/dataset_train.txt" "languages/eu/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/en/dataset_$j.txt" "languages/en/dataset_train.txt" "languages/en/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/eu/dataset_train.txt" "languages/en/dataset_eval.txt" "results_lan/results_3.16/output_3.16/Bsq_Eng_$j"

 done
# Experiments for distance: 0.0

# Experiment design: 
# (Finetuned language, Evaluated language) - Split(80/20)
# Number of language pairs: 40

# @author: jopo, phze 
# @date: 2020-05-01 08:44:16.145290


#!/bin/bash

# Cross-validation on different subset-reduction of datasets (preprocessed):
 for j in {1..4}
 do


# Experiments:
# 0 - Language pair: (Fr,Fr)
    python3 preprocessing/take_sentences.py "languages/fr/dataset_$j.txt" "languages/fr/dataset_train.txt" "languages/fr/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/fr/dataset_$j.txt" "languages/fr/dataset_train.txt" "languages/fr/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/fr/dataset_train.txt" "languages/fr/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Fr_Fr_$j"

# 448 - Language pair: (Cz,Cz)
    python3 preprocessing/take_sentences.py "languages/cs/dataset_$j.txt" "languages/cs/dataset_train.txt" "languages/cs/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/cs/dataset_$j.txt" "languages/cs/dataset_train.txt" "languages/cs/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/cs/dataset_train.txt" "languages/cs/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Cz_Cz_$j"

# 416 - Language pair: (Hng,Hng)
    python3 preprocessing/take_sentences.py "languages/hu/dataset_$j.txt" "languages/hu/dataset_train.txt" "languages/hu/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/hu/dataset_$j.txt" "languages/hu/dataset_train.txt" "languages/hu/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/hu/dataset_train.txt" "languages/hu/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Hng_Hng_$j"

# 384 - Language pair: (Swd,Swd)
    python3 preprocessing/take_sentences.py "languages/sv/dataset_$j.txt" "languages/sv/dataset_train.txt" "languages/sv/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/sv/dataset_$j.txt" "languages/sv/dataset_train.txt" "languages/sv/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/sv/dataset_train.txt" "languages/sv/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Swd_Swd_$j"

# 383 - Language pair: (Swd,Nor)
    python3 preprocessing/take_sentences.py "languages/sv/dataset_$j.txt" "languages/sv/dataset_train.txt" "languages/sv/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/no/dataset_$j.txt" "languages/no/dataset_train.txt" "languages/no/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/sv/dataset_train.txt" "languages/no/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Swd_Nor_$j"

# 353 - Language pair: (Nor,Swd)
    python3 preprocessing/take_sentences.py "languages/no/dataset_$j.txt" "languages/no/dataset_train.txt" "languages/no/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/sv/dataset_$j.txt" "languages/sv/dataset_train.txt" "languages/sv/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/no/dataset_train.txt" "languages/sv/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Nor_Swd_$j"

# 352 - Language pair: (Nor,Nor)
    python3 preprocessing/take_sentences.py "languages/no/dataset_$j.txt" "languages/no/dataset_train.txt" "languages/no/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/no/dataset_$j.txt" "languages/no/dataset_train.txt" "languages/no/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/no/dataset_train.txt" "languages/no/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Nor_Nor_$j"

# 320 - Language pair: (Rus,Rus)
    python3 preprocessing/take_sentences.py "languages/ru/dataset_$j.txt" "languages/ru/dataset_train.txt" "languages/ru/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/ru/dataset_$j.txt" "languages/ru/dataset_train.txt" "languages/ru/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/ru/dataset_train.txt" "languages/ru/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Rus_Rus_$j"

# 288 - Language pair: (Rom,Rom)
    python3 preprocessing/take_sentences.py "languages/ro/dataset_$j.txt" "languages/ro/dataset_train.txt" "languages/ro/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/ro/dataset_$j.txt" "languages/ro/dataset_train.txt" "languages/ro/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/ro/dataset_train.txt" "languages/ro/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Rom_Rom_$j"

# 256 - Language pair: (Alb,Alb)
    python3 preprocessing/take_sentences.py "languages/sq/dataset_$j.txt" "languages/sq/dataset_train.txt" "languages/sq/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/sq/dataset_$j.txt" "languages/sq/dataset_train.txt" "languages/sq/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/sq/dataset_train.txt" "languages/sq/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Alb_Alb_$j"

# 224 - Language pair: (It,It)
    python3 preprocessing/take_sentences.py "languages/it/dataset_$j.txt" "languages/it/dataset_train.txt" "languages/it/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/it/dataset_$j.txt" "languages/it/dataset_train.txt" "languages/it/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/it/dataset_train.txt" "languages/it/dataset_eval.txt" "results_lan/results_0.0/output_0.0/It_It_$j"

# 223 - Language pair: (It,Prt)
    python3 preprocessing/take_sentences.py "languages/it/dataset_$j.txt" "languages/it/dataset_train.txt" "languages/it/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/pt/dataset_$j.txt" "languages/pt/dataset_train.txt" "languages/pt/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/it/dataset_train.txt" "languages/pt/dataset_eval.txt" "results_lan/results_0.0/output_0.0/It_Prt_$j"

# 222 - Language pair: (It,Spn)
    python3 preprocessing/take_sentences.py "languages/it/dataset_$j.txt" "languages/it/dataset_train.txt" "languages/it/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/es/dataset_$j.txt" "languages/es/dataset_train.txt" "languages/es/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/it/dataset_train.txt" "languages/es/dataset_eval.txt" "results_lan/results_0.0/output_0.0/It_Spn_$j"

# 193 - Language pair: (Prt,It)
    python3 preprocessing/take_sentences.py "languages/pt/dataset_$j.txt" "languages/pt/dataset_train.txt" "languages/pt/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/it/dataset_$j.txt" "languages/it/dataset_train.txt" "languages/it/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/pt/dataset_train.txt" "languages/it/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Prt_It_$j"

# 192 - Language pair: (Prt,Prt)
    python3 preprocessing/take_sentences.py "languages/pt/dataset_$j.txt" "languages/pt/dataset_train.txt" "languages/pt/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/pt/dataset_$j.txt" "languages/pt/dataset_train.txt" "languages/pt/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/pt/dataset_train.txt" "languages/pt/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Prt_Prt_$j"

# 191 - Language pair: (Prt,Spn)
    python3 preprocessing/take_sentences.py "languages/pt/dataset_$j.txt" "languages/pt/dataset_train.txt" "languages/pt/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/es/dataset_$j.txt" "languages/es/dataset_train.txt" "languages/es/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/pt/dataset_train.txt" "languages/es/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Prt_Spn_$j"

# 162 - Language pair: (Spn,It)
    python3 preprocessing/take_sentences.py "languages/es/dataset_$j.txt" "languages/es/dataset_train.txt" "languages/es/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/it/dataset_$j.txt" "languages/it/dataset_train.txt" "languages/it/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/es/dataset_train.txt" "languages/it/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Spn_It_$j"

# 161 - Language pair: (Spn,Prt)
    python3 preprocessing/take_sentences.py "languages/es/dataset_$j.txt" "languages/es/dataset_train.txt" "languages/es/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/pt/dataset_$j.txt" "languages/pt/dataset_train.txt" "languages/pt/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/es/dataset_train.txt" "languages/pt/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Spn_Prt_$j"

# 160 - Language pair: (Spn,Spn)
    python3 preprocessing/take_sentences.py "languages/es/dataset_$j.txt" "languages/es/dataset_train.txt" "languages/es/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/es/dataset_$j.txt" "languages/es/dataset_train.txt" "languages/es/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/es/dataset_train.txt" "languages/es/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Spn_Spn_$j"

# 128 - Language pair: (Grk,Grk)
    python3 preprocessing/take_sentences.py "languages/el/dataset_$j.txt" "languages/el/dataset_train.txt" "languages/el/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/el/dataset_$j.txt" "languages/el/dataset_train.txt" "languages/el/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/el/dataset_train.txt" "languages/el/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Grk_Grk_$j"

# 512 - Language pair: (Lit,Lit)
    python3 preprocessing/take_sentences.py "languages/lt/dataset_$j.txt" "languages/lt/dataset_train.txt" "languages/lt/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/lt/dataset_$j.txt" "languages/lt/dataset_train.txt" "languages/lt/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/lt/dataset_train.txt" "languages/lt/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Lit_Lit_$j"

# 544 - Language pair: (SCr,SCr)
    python3 preprocessing/take_sentences.py "languages/sr/dataset_$j.txt" "languages/sr/dataset_train.txt" "languages/sr/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/sr/dataset_$j.txt" "languages/sr/dataset_train.txt" "languages/sr/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/sr/dataset_train.txt" "languages/sr/dataset_eval.txt" "results_lan/results_0.0/output_0.0/SCr_SCr_$j"

# 545 - Language pair: (SCr,Blg)
    python3 preprocessing/take_sentences.py "languages/sr/dataset_$j.txt" "languages/sr/dataset_train.txt" "languages/sr/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/bg/dataset_$j.txt" "languages/bg/dataset_train.txt" "languages/bg/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/sr/dataset_train.txt" "languages/bg/dataset_eval.txt" "results_lan/results_0.0/output_0.0/SCr_Blg_$j"

# 575 - Language pair: (Blg,SCr)
    python3 preprocessing/take_sentences.py "languages/bg/dataset_$j.txt" "languages/bg/dataset_train.txt" "languages/bg/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/sr/dataset_$j.txt" "languages/sr/dataset_train.txt" "languages/sr/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/bg/dataset_train.txt" "languages/sr/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Blg_SCr_$j"

# 928 - Language pair: (Trk,Trk)
    python3 preprocessing/take_sentences.py "languages/tr/dataset_$j.txt" "languages/tr/dataset_train.txt" "languages/tr/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/tr/dataset_$j.txt" "languages/tr/dataset_train.txt" "languages/tr/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/tr/dataset_train.txt" "languages/tr/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Trk_Trk_$j"

# 896 - Language pair: (Arm,Arm)
    python3 preprocessing/take_sentences.py "languages/hy/dataset_$j.txt" "languages/hy/dataset_train.txt" "languages/hy/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/hy/dataset_$j.txt" "languages/hy/dataset_train.txt" "languages/hy/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/hy/dataset_train.txt" "languages/hy/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Arm_Arm_$j"

# 895 - Language pair: (Arm,Est)
    python3 preprocessing/take_sentences.py "languages/hy/dataset_$j.txt" "languages/hy/dataset_train.txt" "languages/hy/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/et/dataset_$j.txt" "languages/et/dataset_train.txt" "languages/et/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/hy/dataset_train.txt" "languages/et/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Arm_Est_$j"

# 865 - Language pair: (Est,Arm)
    python3 preprocessing/take_sentences.py "languages/et/dataset_$j.txt" "languages/et/dataset_train.txt" "languages/et/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/hy/dataset_$j.txt" "languages/hy/dataset_train.txt" "languages/hy/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/et/dataset_train.txt" "languages/hy/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Est_Arm_$j"

# 864 - Language pair: (Est,Est)
    python3 preprocessing/take_sentences.py "languages/et/dataset_$j.txt" "languages/et/dataset_train.txt" "languages/et/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/et/dataset_$j.txt" "languages/et/dataset_train.txt" "languages/et/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/et/dataset_train.txt" "languages/et/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Est_Est_$j"

# 832 - Language pair: (Wel,Wel)
    python3 preprocessing/take_sentences.py "languages/cy/dataset_$j.txt" "languages/cy/dataset_train.txt" "languages/cy/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/cy/dataset_$j.txt" "languages/cy/dataset_train.txt" "languages/cy/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/cy/dataset_train.txt" "languages/cy/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Wel_Wel_$j"

# 800 - Language pair: (Grg,Grg)
    python3 preprocessing/take_sentences.py "languages/ka/dataset_$j.txt" "languages/ka/dataset_train.txt" "languages/ka/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/ka/dataset_$j.txt" "languages/ka/dataset_train.txt" "languages/ka/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/ka/dataset_train.txt" "languages/ka/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Grg_Grg_$j"

# 768 - Language pair: (Fin,Fin)
    python3 preprocessing/take_sentences.py "languages/fi/dataset_$j.txt" "languages/fi/dataset_train.txt" "languages/fi/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/fi/dataset_$j.txt" "languages/fi/dataset_train.txt" "languages/fi/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/fi/dataset_train.txt" "languages/fi/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Fin_Fin_$j"

# 736 - Language pair: (Brt,Brt)
    python3 preprocessing/take_sentences.py "languages/br/dataset_$j.txt" "languages/br/dataset_train.txt" "languages/br/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/br/dataset_$j.txt" "languages/br/dataset_train.txt" "languages/br/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/br/dataset_train.txt" "languages/br/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Brt_Brt_$j"

# 96 - Language pair: (Eng,Eng)
    python3 preprocessing/take_sentences.py "languages/en/dataset_$j.txt" "languages/en/dataset_train.txt" "languages/en/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/en/dataset_$j.txt" "languages/en/dataset_train.txt" "languages/en/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/en/dataset_train.txt" "languages/en/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Eng_Eng_$j"

# 704 - Language pair: (Bsq,Bsq)
    python3 preprocessing/take_sentences.py "languages/eu/dataset_$j.txt" "languages/eu/dataset_train.txt" "languages/eu/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/eu/dataset_$j.txt" "languages/eu/dataset_train.txt" "languages/eu/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/eu/dataset_train.txt" "languages/eu/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Bsq_Bsq_$j"

# 671 - Language pair: (Ukr,Sln)
    python3 preprocessing/take_sentences.py "languages/uk/dataset_$j.txt" "languages/uk/dataset_train.txt" "languages/uk/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/sl/dataset_$j.txt" "languages/sl/dataset_train.txt" "languages/sl/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/uk/dataset_train.txt" "languages/sl/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Ukr_Sln_$j"

# 670 - Language pair: (Ukr,Pol)
    python3 preprocessing/take_sentences.py "languages/uk/dataset_$j.txt" "languages/uk/dataset_train.txt" "languages/uk/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/pl/dataset_$j.txt" "languages/pl/dataset_train.txt" "languages/pl/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/uk/dataset_train.txt" "languages/pl/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Ukr_Pol_$j"

# 641 - Language pair: (Sln,Ukr)
    python3 preprocessing/take_sentences.py "languages/sl/dataset_$j.txt" "languages/sl/dataset_train.txt" "languages/sl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/uk/dataset_$j.txt" "languages/uk/dataset_train.txt" "languages/uk/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/sl/dataset_train.txt" "languages/uk/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Sln_Ukr_$j"

# 640 - Language pair: (Sln,Sln)
    python3 preprocessing/take_sentences.py "languages/sl/dataset_$j.txt" "languages/sl/dataset_train.txt" "languages/sl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/sl/dataset_$j.txt" "languages/sl/dataset_train.txt" "languages/sl/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/sl/dataset_train.txt" "languages/sl/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Sln_Sln_$j"

# 639 - Language pair: (Sln,Pol)
    python3 preprocessing/take_sentences.py "languages/sl/dataset_$j.txt" "languages/sl/dataset_train.txt" "languages/sl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/pl/dataset_$j.txt" "languages/pl/dataset_train.txt" "languages/pl/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/sl/dataset_train.txt" "languages/pl/dataset_eval.txt" "results_lan/results_0.0/output_0.0/Sln_Pol_$j"

 done
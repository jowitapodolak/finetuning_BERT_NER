# Experiments for distance: 1.0

# Experiment design: 
# (Finetuned language, Evaluated language) - Split(80/20)
# Number of language pairs: 40

# @author: jopo, phze 
# @date: 2020-05-01 08:44:16.179234


#!/bin/bash

# Cross-validation on different subset-reduction of datasets (preprocessed):
 for j in {1..4}
 do


# Experiments:
# 836 - Language pair: (Wel,Tat)
    python3 preprocessing/take_sentences.py "languages/cy/dataset_$j.txt" "languages/cy/dataset_train.txt" "languages/cy/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/tt/dataset_$j.txt" "languages/tt/dataset_train.txt" "languages/tt/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/cy/dataset_train.txt" "languages/tt/dataset_eval.txt" "results_lan/results_1.0/output_1.0/Wel_Tat_$j"

# 803 - Language pair: (Grg,Arm)
    python3 preprocessing/take_sentences.py "languages/ka/dataset_$j.txt" "languages/ka/dataset_train.txt" "languages/ka/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/hy/dataset_$j.txt" "languages/hy/dataset_train.txt" "languages/hy/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/ka/dataset_train.txt" "languages/hy/dataset_eval.txt" "results_lan/results_1.0/output_1.0/Grg_Arm_$j"

# 802 - Language pair: (Grg,Est)
    python3 preprocessing/take_sentences.py "languages/ka/dataset_$j.txt" "languages/ka/dataset_train.txt" "languages/ka/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/et/dataset_$j.txt" "languages/et/dataset_train.txt" "languages/et/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/ka/dataset_train.txt" "languages/et/dataset_eval.txt" "results_lan/results_1.0/output_1.0/Grg_Est_$j"

# 484 - Language pair: (Ltv,Pol)
    python3 preprocessing/take_sentences.py "languages/lv/dataset_$j.txt" "languages/lv/dataset_train.txt" "languages/lv/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/pl/dataset_$j.txt" "languages/pl/dataset_train.txt" "languages/pl/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/lv/dataset_train.txt" "languages/pl/dataset_eval.txt" "results_lan/results_1.0/output_1.0/Ltv_Pol_$j"

# 669 - Language pair: (Ukr,Blg)
    python3 preprocessing/take_sentences.py "languages/uk/dataset_$j.txt" "languages/uk/dataset_train.txt" "languages/uk/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/bg/dataset_$j.txt" "languages/bg/dataset_train.txt" "languages/bg/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/uk/dataset_train.txt" "languages/bg/dataset_eval.txt" "results_lan/results_1.0/output_1.0/Ukr_Blg_$j"

# 668 - Language pair: (Ukr,SCr)
    python3 preprocessing/take_sentences.py "languages/uk/dataset_$j.txt" "languages/uk/dataset_train.txt" "languages/uk/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/sr/dataset_$j.txt" "languages/sr/dataset_train.txt" "languages/sr/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/uk/dataset_train.txt" "languages/sr/dataset_eval.txt" "results_lan/results_1.0/output_1.0/Ukr_SCr_$j"

# 607 - Language pair: (Pol,Blg)
    python3 preprocessing/take_sentences.py "languages/pl/dataset_$j.txt" "languages/pl/dataset_train.txt" "languages/pl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/bg/dataset_$j.txt" "languages/bg/dataset_train.txt" "languages/bg/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/pl/dataset_train.txt" "languages/bg/dataset_eval.txt" "results_lan/results_1.0/output_1.0/Pol_Blg_$j"

# 667 - Language pair: (Ukr,Lit)
    python3 preprocessing/take_sentences.py "languages/uk/dataset_$j.txt" "languages/uk/dataset_train.txt" "languages/uk/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/lt/dataset_$j.txt" "languages/lt/dataset_train.txt" "languages/lt/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/uk/dataset_train.txt" "languages/lt/dataset_eval.txt" "results_lan/results_1.0/output_1.0/Ukr_Lit_$j"

# 666 - Language pair: (Ukr,Ltv)
    python3 preprocessing/take_sentences.py "languages/uk/dataset_$j.txt" "languages/uk/dataset_train.txt" "languages/uk/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/lv/dataset_$j.txt" "languages/lv/dataset_train.txt" "languages/lv/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/uk/dataset_train.txt" "languages/lv/dataset_eval.txt" "results_lan/results_1.0/output_1.0/Ukr_Ltv_$j"

# 638 - Language pair: (Sln,Blg)
    python3 preprocessing/take_sentences.py "languages/sl/dataset_$j.txt" "languages/sl/dataset_train.txt" "languages/sl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/bg/dataset_$j.txt" "languages/bg/dataset_train.txt" "languages/bg/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/sl/dataset_train.txt" "languages/bg/dataset_eval.txt" "results_lan/results_1.0/output_1.0/Sln_Blg_$j"

# 31 - Language pair: (Grm,Fr)
    python3 preprocessing/take_sentences.py "languages/de/dataset_$j.txt" "languages/de/dataset_train.txt" "languages/de/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/fr/dataset_$j.txt" "languages/fr/dataset_train.txt" "languages/fr/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/de/dataset_train.txt" "languages/fr/dataset_eval.txt" "results_lan/results_1.0/output_1.0/Grm_Fr_$j"

# 637 - Language pair: (Sln,SCr)
    python3 preprocessing/take_sentences.py "languages/sl/dataset_$j.txt" "languages/sl/dataset_train.txt" "languages/sl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/sr/dataset_$j.txt" "languages/sr/dataset_train.txt" "languages/sr/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/sl/dataset_train.txt" "languages/sr/dataset_eval.txt" "results_lan/results_1.0/output_1.0/Sln_SCr_$j"

# 636 - Language pair: (Sln,Lit)
    python3 preprocessing/take_sentences.py "languages/sl/dataset_$j.txt" "languages/sl/dataset_train.txt" "languages/sl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/lt/dataset_$j.txt" "languages/lt/dataset_train.txt" "languages/lt/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/sl/dataset_train.txt" "languages/lt/dataset_eval.txt" "results_lan/results_1.0/output_1.0/Sln_Lit_$j"

# 635 - Language pair: (Sln,Ltv)
    python3 preprocessing/take_sentences.py "languages/sl/dataset_$j.txt" "languages/sl/dataset_train.txt" "languages/sl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/lv/dataset_$j.txt" "languages/lv/dataset_train.txt" "languages/lv/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/sl/dataset_train.txt" "languages/lv/dataset_eval.txt" "results_lan/results_1.0/output_1.0/Sln_Ltv_$j"

# 862 - Language pair: (Est,Grg)
    python3 preprocessing/take_sentences.py "languages/et/dataset_$j.txt" "languages/et/dataset_train.txt" "languages/et/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/ka/dataset_$j.txt" "languages/ka/dataset_train.txt" "languages/ka/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/et/dataset_train.txt" "languages/ka/dataset_eval.txt" "results_lan/results_1.0/output_1.0/Est_Grg_$j"

# 867 - Language pair: (Est,Tat)
    python3 preprocessing/take_sentences.py "languages/et/dataset_$j.txt" "languages/et/dataset_train.txt" "languages/et/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/tt/dataset_$j.txt" "languages/tt/dataset_train.txt" "languages/tt/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/et/dataset_train.txt" "languages/tt/dataset_eval.txt" "results_lan/results_1.0/output_1.0/Est_Tat_$j"

# 606 - Language pair: (Pol,SCr)
    python3 preprocessing/take_sentences.py "languages/pl/dataset_$j.txt" "languages/pl/dataset_train.txt" "languages/pl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/sr/dataset_$j.txt" "languages/sr/dataset_train.txt" "languages/sr/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/pl/dataset_train.txt" "languages/sr/dataset_eval.txt" "results_lan/results_1.0/output_1.0/Pol_SCr_$j"

# 604 - Language pair: (Pol,Ltv)
    python3 preprocessing/take_sentences.py "languages/pl/dataset_$j.txt" "languages/pl/dataset_train.txt" "languages/pl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/lv/dataset_$j.txt" "languages/lv/dataset_train.txt" "languages/lv/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/pl/dataset_train.txt" "languages/lv/dataset_eval.txt" "results_lan/results_1.0/output_1.0/Pol_Ltv_$j"

# 959 - Language pair: (Tat,Trk)
    python3 preprocessing/take_sentences.py "languages/tt/dataset_$j.txt" "languages/tt/dataset_train.txt" "languages/tt/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/tr/dataset_$j.txt" "languages/tr/dataset_train.txt" "languages/tr/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/tt/dataset_train.txt" "languages/tr/dataset_eval.txt" "results_lan/results_1.0/output_1.0/Tat_Trk_$j"

# 486 - Language pair: (Ltv,Ukr)
    python3 preprocessing/take_sentences.py "languages/lv/dataset_$j.txt" "languages/lv/dataset_train.txt" "languages/lv/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/uk/dataset_$j.txt" "languages/uk/dataset_train.txt" "languages/uk/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/lv/dataset_train.txt" "languages/uk/dataset_eval.txt" "results_lan/results_1.0/output_1.0/Ltv_Ukr_$j"

# 515 - Language pair: (Lit,Pol)
    python3 preprocessing/take_sentences.py "languages/lt/dataset_$j.txt" "languages/lt/dataset_train.txt" "languages/lt/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/pl/dataset_$j.txt" "languages/pl/dataset_train.txt" "languages/pl/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/lt/dataset_train.txt" "languages/pl/dataset_eval.txt" "results_lan/results_1.0/output_1.0/Lit_Pol_$j"

# 452 - Language pair: (Cz,Blg)
    python3 preprocessing/take_sentences.py "languages/cs/dataset_$j.txt" "languages/cs/dataset_train.txt" "languages/cs/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/bg/dataset_$j.txt" "languages/bg/dataset_train.txt" "languages/bg/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/cs/dataset_train.txt" "languages/bg/dataset_eval.txt" "results_lan/results_1.0/output_1.0/Cz_Blg_$j"

# 451 - Language pair: (Cz,SCr)
    python3 preprocessing/take_sentences.py "languages/cs/dataset_$j.txt" "languages/cs/dataset_train.txt" "languages/cs/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/sr/dataset_$j.txt" "languages/sr/dataset_train.txt" "languages/sr/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/cs/dataset_train.txt" "languages/sr/dataset_eval.txt" "results_lan/results_1.0/output_1.0/Cz_SCr_$j"

# 516 - Language pair: (Lit,Sln)
    python3 preprocessing/take_sentences.py "languages/lt/dataset_$j.txt" "languages/lt/dataset_train.txt" "languages/lt/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/sl/dataset_$j.txt" "languages/sl/dataset_train.txt" "languages/sl/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/lt/dataset_train.txt" "languages/sl/dataset_eval.txt" "results_lan/results_1.0/output_1.0/Lit_Sln_$j"

# 517 - Language pair: (Lit,Ukr)
    python3 preprocessing/take_sentences.py "languages/lt/dataset_$j.txt" "languages/lt/dataset_train.txt" "languages/lt/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/uk/dataset_$j.txt" "languages/uk/dataset_train.txt" "languages/uk/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/lt/dataset_train.txt" "languages/uk/dataset_eval.txt" "results_lan/results_1.0/output_1.0/Lit_Ukr_$j"

# 541 - Language pair: (SCr,Cz)
    python3 preprocessing/take_sentences.py "languages/sr/dataset_$j.txt" "languages/sr/dataset_train.txt" "languages/sr/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/cs/dataset_$j.txt" "languages/cs/dataset_train.txt" "languages/cs/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/sr/dataset_train.txt" "languages/cs/dataset_eval.txt" "results_lan/results_1.0/output_1.0/SCr_Cz_$j"

# 546 - Language pair: (SCr,Pol)
    python3 preprocessing/take_sentences.py "languages/sr/dataset_$j.txt" "languages/sr/dataset_train.txt" "languages/sr/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/pl/dataset_$j.txt" "languages/pl/dataset_train.txt" "languages/pl/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/sr/dataset_train.txt" "languages/pl/dataset_eval.txt" "results_lan/results_1.0/output_1.0/SCr_Pol_$j"

# 547 - Language pair: (SCr,Sln)
    python3 preprocessing/take_sentences.py "languages/sr/dataset_$j.txt" "languages/sr/dataset_train.txt" "languages/sr/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/sl/dataset_$j.txt" "languages/sl/dataset_train.txt" "languages/sl/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/sr/dataset_train.txt" "languages/sl/dataset_eval.txt" "results_lan/results_1.0/output_1.0/SCr_Sln_$j"

# 548 - Language pair: (SCr,Ukr)
    python3 preprocessing/take_sentences.py "languages/sr/dataset_$j.txt" "languages/sr/dataset_train.txt" "languages/sr/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/uk/dataset_$j.txt" "languages/uk/dataset_train.txt" "languages/uk/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/sr/dataset_train.txt" "languages/uk/dataset_eval.txt" "results_lan/results_1.0/output_1.0/SCr_Ukr_$j"

# 572 - Language pair: (Blg,Cz)
    python3 preprocessing/take_sentences.py "languages/bg/dataset_$j.txt" "languages/bg/dataset_train.txt" "languages/bg/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/cs/dataset_$j.txt" "languages/cs/dataset_train.txt" "languages/cs/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/bg/dataset_train.txt" "languages/cs/dataset_eval.txt" "results_lan/results_1.0/output_1.0/Blg_Cz_$j"

# 577 - Language pair: (Blg,Pol)
    python3 preprocessing/take_sentences.py "languages/bg/dataset_$j.txt" "languages/bg/dataset_train.txt" "languages/bg/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/pl/dataset_$j.txt" "languages/pl/dataset_train.txt" "languages/pl/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/bg/dataset_train.txt" "languages/pl/dataset_eval.txt" "results_lan/results_1.0/output_1.0/Blg_Pol_$j"

# 578 - Language pair: (Blg,Sln)
    python3 preprocessing/take_sentences.py "languages/bg/dataset_$j.txt" "languages/bg/dataset_train.txt" "languages/bg/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/sl/dataset_$j.txt" "languages/sl/dataset_train.txt" "languages/sl/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/bg/dataset_train.txt" "languages/sl/dataset_eval.txt" "results_lan/results_1.0/output_1.0/Blg_Sln_$j"

# 579 - Language pair: (Blg,Ukr)
    python3 preprocessing/take_sentences.py "languages/bg/dataset_$j.txt" "languages/bg/dataset_train.txt" "languages/bg/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/uk/dataset_$j.txt" "languages/uk/dataset_train.txt" "languages/uk/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/bg/dataset_train.txt" "languages/uk/dataset_eval.txt" "results_lan/results_1.0/output_1.0/Blg_Ukr_$j"

# 605 - Language pair: (Pol,Lit)
    python3 preprocessing/take_sentences.py "languages/pl/dataset_$j.txt" "languages/pl/dataset_train.txt" "languages/pl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/lt/dataset_$j.txt" "languages/lt/dataset_train.txt" "languages/lt/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/pl/dataset_train.txt" "languages/lt/dataset_eval.txt" "results_lan/results_1.0/output_1.0/Pol_Lit_$j"

# 893 - Language pair: (Arm,Grg)
    python3 preprocessing/take_sentences.py "languages/hy/dataset_$j.txt" "languages/hy/dataset_train.txt" "languages/hy/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/ka/dataset_$j.txt" "languages/ka/dataset_train.txt" "languages/ka/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/hy/dataset_train.txt" "languages/ka/dataset_eval.txt" "results_lan/results_1.0/output_1.0/Arm_Grg_$j"

# 485 - Language pair: (Ltv,Sln)
    python3 preprocessing/take_sentences.py "languages/lv/dataset_$j.txt" "languages/lv/dataset_train.txt" "languages/lv/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/sl/dataset_$j.txt" "languages/sl/dataset_train.txt" "languages/sl/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/lv/dataset_train.txt" "languages/sl/dataset_eval.txt" "results_lan/results_1.0/output_1.0/Ltv_Sln_$j"

# 929 - Language pair: (Trk,Tat)
    python3 preprocessing/take_sentences.py "languages/tr/dataset_$j.txt" "languages/tr/dataset_train.txt" "languages/tr/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/tt/dataset_$j.txt" "languages/tt/dataset_train.txt" "languages/tt/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/tr/dataset_train.txt" "languages/tt/dataset_eval.txt" "results_lan/results_1.0/output_1.0/Trk_Tat_$j"

# 898 - Language pair: (Arm,Tat)
    python3 preprocessing/take_sentences.py "languages/hy/dataset_$j.txt" "languages/hy/dataset_train.txt" "languages/hy/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/tt/dataset_$j.txt" "languages/tt/dataset_train.txt" "languages/tt/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/hy/dataset_train.txt" "languages/tt/dataset_eval.txt" "results_lan/results_1.0/output_1.0/Arm_Tat_$j"

# 1 - Language pair: (Fr,Grm)
    python3 preprocessing/take_sentences.py "languages/fr/dataset_$j.txt" "languages/fr/dataset_train.txt" "languages/fr/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/de/dataset_$j.txt" "languages/de/dataset_train.txt" "languages/de/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/fr/dataset_train.txt" "languages/de/dataset_eval.txt" "results_lan/results_1.0/output_1.0/Fr_Grm_$j"

# 958 - Language pair: (Tat,Arm)
    python3 preprocessing/take_sentences.py "languages/tt/dataset_$j.txt" "languages/tt/dataset_train.txt" "languages/tt/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/hy/dataset_$j.txt" "languages/hy/dataset_train.txt" "languages/hy/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/tt/dataset_train.txt" "languages/hy/dataset_eval.txt" "results_lan/results_1.0/output_1.0/Tat_Arm_$j"

 done
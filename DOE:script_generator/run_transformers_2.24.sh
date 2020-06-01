# Experiments for distance: 2.23606797749979

# Experiment design: 
# (Finetuned language, Evaluated language) - Split(80/20)
# Number of language pairs: 40

# @author: jopo, phze 
# @date: 2020-05-01 08:44:16.216363


#!/bin/bash

# Cross-validation on different subset-reduction of datasets (preprocessed):
 for j in {1..4}
 do


# Experiments:
# 696 - Language pair: (Bsq,Cz)
    python3 preprocessing/take_sentences.py "languages/eu/dataset_$j.txt" "languages/eu/dataset_train.txt" "languages/eu/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/cs/dataset_$j.txt" "languages/cs/dataset_train.txt" "languages/cs/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/eu/dataset_train.txt" "languages/cs/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Bsq_Cz_$j"

# 735 - Language pair: (Brt,Bsq)
    python3 preprocessing/take_sentences.py "languages/br/dataset_$j.txt" "languages/br/dataset_train.txt" "languages/br/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/eu/dataset_$j.txt" "languages/eu/dataset_train.txt" "languages/eu/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/br/dataset_train.txt" "languages/eu/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Brt_Bsq_$j"

# 738 - Language pair: (Brt,Grg)
    python3 preprocessing/take_sentences.py "languages/br/dataset_$j.txt" "languages/br/dataset_train.txt" "languages/br/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/ka/dataset_$j.txt" "languages/ka/dataset_train.txt" "languages/ka/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/br/dataset_train.txt" "languages/ka/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Brt_Grg_$j"

# 828 - Language pair: (Wel,Bsq)
    python3 preprocessing/take_sentences.py "languages/cy/dataset_$j.txt" "languages/cy/dataset_train.txt" "languages/cy/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/eu/dataset_$j.txt" "languages/eu/dataset_train.txt" "languages/eu/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/cy/dataset_train.txt" "languages/eu/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Wel_Bsq_$j"

# 624 - Language pair: (Sln,Grk)
    python3 preprocessing/take_sentences.py "languages/sl/dataset_$j.txt" "languages/sl/dataset_train.txt" "languages/sl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/el/dataset_$j.txt" "languages/el/dataset_train.txt" "languages/el/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/sl/dataset_train.txt" "languages/el/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Sln_Grk_$j"

# 730 - Language pair: (Brt,SCr)
    python3 preprocessing/take_sentences.py "languages/br/dataset_$j.txt" "languages/br/dataset_train.txt" "languages/br/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/sr/dataset_$j.txt" "languages/sr/dataset_train.txt" "languages/sr/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/br/dataset_train.txt" "languages/sr/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Brt_SCr_$j"

# 890 - Language pair: (Arm,Bsq)
    python3 preprocessing/take_sentences.py "languages/hy/dataset_$j.txt" "languages/hy/dataset_train.txt" "languages/hy/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/eu/dataset_$j.txt" "languages/eu/dataset_train.txt" "languages/eu/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/hy/dataset_train.txt" "languages/eu/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Arm_Bsq_$j"

# 886 - Language pair: (Arm,Blg)
    python3 preprocessing/take_sentences.py "languages/hy/dataset_$j.txt" "languages/hy/dataset_train.txt" "languages/hy/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/bg/dataset_$j.txt" "languages/bg/dataset_train.txt" "languages/bg/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/hy/dataset_train.txt" "languages/bg/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Arm_Blg_$j"

# 885 - Language pair: (Arm,SCr)
    python3 preprocessing/take_sentences.py "languages/hy/dataset_$j.txt" "languages/hy/dataset_train.txt" "languages/hy/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/sr/dataset_$j.txt" "languages/sr/dataset_train.txt" "languages/sr/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/hy/dataset_train.txt" "languages/sr/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Arm_SCr_$j"

# 710 - Language pair: (Bsq,Arm)
    python3 preprocessing/take_sentences.py "languages/eu/dataset_$j.txt" "languages/eu/dataset_train.txt" "languages/eu/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/hy/dataset_$j.txt" "languages/hy/dataset_train.txt" "languages/hy/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/eu/dataset_train.txt" "languages/hy/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Bsq_Arm_$j"

# 709 - Language pair: (Bsq,Est)
    python3 preprocessing/take_sentences.py "languages/eu/dataset_$j.txt" "languages/eu/dataset_train.txt" "languages/eu/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/et/dataset_$j.txt" "languages/et/dataset_train.txt" "languages/et/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/eu/dataset_train.txt" "languages/et/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Bsq_Est_$j"

# 708 - Language pair: (Bsq,Wel)
    python3 preprocessing/take_sentences.py "languages/eu/dataset_$j.txt" "languages/eu/dataset_train.txt" "languages/eu/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/cy/dataset_$j.txt" "languages/cy/dataset_train.txt" "languages/cy/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/eu/dataset_train.txt" "languages/cy/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Bsq_Wel_$j"

# 884 - Language pair: (Arm,Lit)
    python3 preprocessing/take_sentences.py "languages/hy/dataset_$j.txt" "languages/hy/dataset_train.txt" "languages/hy/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/lt/dataset_$j.txt" "languages/lt/dataset_train.txt" "languages/lt/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/hy/dataset_train.txt" "languages/lt/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Arm_Lit_$j"

# 705 - Language pair: (Bsq,Brt)
    python3 preprocessing/take_sentences.py "languages/eu/dataset_$j.txt" "languages/eu/dataset_train.txt" "languages/eu/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/br/dataset_$j.txt" "languages/br/dataset_train.txt" "languages/br/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/eu/dataset_train.txt" "languages/br/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Bsq_Brt_$j"

# 492 - Language pair: (Ltv,Est)
    python3 preprocessing/take_sentences.py "languages/lv/dataset_$j.txt" "languages/lv/dataset_train.txt" "languages/lv/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/et/dataset_$j.txt" "languages/et/dataset_train.txt" "languages/et/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/lv/dataset_train.txt" "languages/et/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Ltv_Est_$j"

# 493 - Language pair: (Ltv,Arm)
    python3 preprocessing/take_sentences.py "languages/lv/dataset_$j.txt" "languages/lv/dataset_train.txt" "languages/lv/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/hy/dataset_$j.txt" "languages/hy/dataset_train.txt" "languages/hy/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/lv/dataset_train.txt" "languages/hy/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Ltv_Arm_$j"

# 497 - Language pair: (Lit,Grm)
    python3 preprocessing/take_sentences.py "languages/lt/dataset_$j.txt" "languages/lt/dataset_train.txt" "languages/lt/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/de/dataset_$j.txt" "languages/de/dataset_train.txt" "languages/de/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/lt/dataset_train.txt" "languages/de/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Lit_Grm_$j"

# 703 - Language pair: (Bsq,Ukr)
    python3 preprocessing/take_sentences.py "languages/eu/dataset_$j.txt" "languages/eu/dataset_train.txt" "languages/eu/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/uk/dataset_$j.txt" "languages/uk/dataset_train.txt" "languages/uk/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/eu/dataset_train.txt" "languages/uk/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Bsq_Ukr_$j"

# 501 - Language pair: (Lit,Spn)
    python3 preprocessing/take_sentences.py "languages/lt/dataset_$j.txt" "languages/lt/dataset_train.txt" "languages/lt/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/es/dataset_$j.txt" "languages/es/dataset_train.txt" "languages/es/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/lt/dataset_train.txt" "languages/es/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Lit_Spn_$j"

# 502 - Language pair: (Lit,Prt)
    python3 preprocessing/take_sentences.py "languages/lt/dataset_$j.txt" "languages/lt/dataset_train.txt" "languages/lt/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/pt/dataset_$j.txt" "languages/pt/dataset_train.txt" "languages/pt/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/lt/dataset_train.txt" "languages/pt/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Lit_Prt_$j"

# 504 - Language pair: (Lit,Alb)
    python3 preprocessing/take_sentences.py "languages/lt/dataset_$j.txt" "languages/lt/dataset_train.txt" "languages/lt/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/sq/dataset_$j.txt" "languages/sq/dataset_train.txt" "languages/sq/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/lt/dataset_train.txt" "languages/sq/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Lit_Alb_$j"

# 883 - Language pair: (Arm,Ltv)
    python3 preprocessing/take_sentences.py "languages/hy/dataset_$j.txt" "languages/hy/dataset_train.txt" "languages/hy/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/lv/dataset_$j.txt" "languages/lv/dataset_train.txt" "languages/lv/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/hy/dataset_train.txt" "languages/lv/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Arm_Ltv_$j"

# 702 - Language pair: (Bsq,Sln)
    python3 preprocessing/take_sentences.py "languages/eu/dataset_$j.txt" "languages/eu/dataset_train.txt" "languages/eu/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/sl/dataset_$j.txt" "languages/sl/dataset_train.txt" "languages/sl/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/eu/dataset_train.txt" "languages/sl/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Bsq_Sln_$j"

# 509 - Language pair: (Lit,Hng)
    python3 preprocessing/take_sentences.py "languages/lt/dataset_$j.txt" "languages/lt/dataset_train.txt" "languages/lt/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/hu/dataset_$j.txt" "languages/hu/dataset_train.txt" "languages/hu/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/lt/dataset_train.txt" "languages/hu/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Lit_Hng_$j"

# 701 - Language pair: (Bsq,Pol)
    python3 preprocessing/take_sentences.py "languages/eu/dataset_$j.txt" "languages/eu/dataset_train.txt" "languages/eu/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/pl/dataset_$j.txt" "languages/pl/dataset_train.txt" "languages/pl/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/eu/dataset_train.txt" "languages/pl/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Bsq_Pol_$j"

# 520 - Language pair: (Lit,Fin)
    python3 preprocessing/take_sentences.py "languages/lt/dataset_$j.txt" "languages/lt/dataset_train.txt" "languages/lt/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/fi/dataset_$j.txt" "languages/fi/dataset_train.txt" "languages/fi/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/lt/dataset_train.txt" "languages/fi/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Lit_Fin_$j"

# 859 - Language pair: (Est,Bsq)
    python3 preprocessing/take_sentences.py "languages/et/dataset_$j.txt" "languages/et/dataset_train.txt" "languages/et/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/eu/dataset_$j.txt" "languages/eu/dataset_train.txt" "languages/eu/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/et/dataset_train.txt" "languages/eu/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Est_Bsq_$j"

# 855 - Language pair: (Est,Blg)
    python3 preprocessing/take_sentences.py "languages/et/dataset_$j.txt" "languages/et/dataset_train.txt" "languages/et/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/bg/dataset_$j.txt" "languages/bg/dataset_train.txt" "languages/bg/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/et/dataset_train.txt" "languages/bg/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Est_Blg_$j"

# 854 - Language pair: (Est,SCr)
    python3 preprocessing/take_sentences.py "languages/et/dataset_$j.txt" "languages/et/dataset_train.txt" "languages/et/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/sr/dataset_$j.txt" "languages/sr/dataset_train.txt" "languages/sr/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/et/dataset_train.txt" "languages/sr/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Est_SCr_$j"

# 853 - Language pair: (Est,Lit)
    python3 preprocessing/take_sentences.py "languages/et/dataset_$j.txt" "languages/et/dataset_train.txt" "languages/et/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/lt/dataset_$j.txt" "languages/lt/dataset_train.txt" "languages/lt/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/et/dataset_train.txt" "languages/lt/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Est_Lit_$j"

# 852 - Language pair: (Est,Ltv)
    python3 preprocessing/take_sentences.py "languages/et/dataset_$j.txt" "languages/et/dataset_train.txt" "languages/et/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/lv/dataset_$j.txt" "languages/lv/dataset_train.txt" "languages/lv/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/et/dataset_train.txt" "languages/lv/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Est_Ltv_$j"

# 731 - Language pair: (Brt,Blg)
    python3 preprocessing/take_sentences.py "languages/br/dataset_$j.txt" "languages/br/dataset_train.txt" "languages/br/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/bg/dataset_$j.txt" "languages/bg/dataset_train.txt" "languages/bg/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/br/dataset_train.txt" "languages/bg/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Brt_Blg_$j"

# 523 - Language pair: (Lit,Est)
    python3 preprocessing/take_sentences.py "languages/lt/dataset_$j.txt" "languages/lt/dataset_train.txt" "languages/lt/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/et/dataset_$j.txt" "languages/et/dataset_train.txt" "languages/et/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/lt/dataset_train.txt" "languages/et/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Lit_Est_$j"

# 951 - Language pair: (Tat,Ukr)
    python3 preprocessing/take_sentences.py "languages/tt/dataset_$j.txt" "languages/tt/dataset_train.txt" "languages/tt/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/uk/dataset_$j.txt" "languages/uk/dataset_train.txt" "languages/uk/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/tt/dataset_train.txt" "languages/uk/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Tat_Ukr_$j"

# 524 - Language pair: (Lit,Arm)
    python3 preprocessing/take_sentences.py "languages/lt/dataset_$j.txt" "languages/lt/dataset_train.txt" "languages/lt/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/hy/dataset_$j.txt" "languages/hy/dataset_train.txt" "languages/hy/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/lt/dataset_train.txt" "languages/hy/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Lit_Arm_$j"

# 798 - Language pair: (Grg,Brt)
    python3 preprocessing/take_sentences.py "languages/ka/dataset_$j.txt" "languages/ka/dataset_train.txt" "languages/ka/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/br/dataset_$j.txt" "languages/br/dataset_train.txt" "languages/br/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/ka/dataset_train.txt" "languages/br/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Grg_Brt_$j"

# 796 - Language pair: (Grg,Ukr)
    python3 preprocessing/take_sentences.py "languages/ka/dataset_$j.txt" "languages/ka/dataset_train.txt" "languages/ka/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/uk/dataset_$j.txt" "languages/uk/dataset_train.txt" "languages/uk/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/ka/dataset_train.txt" "languages/uk/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Grg_Ukr_$j"

# 650 - Language pair: (Sln,Tat)
    python3 preprocessing/take_sentences.py "languages/sl/dataset_$j.txt" "languages/sl/dataset_train.txt" "languages/sl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/tt/dataset_$j.txt" "languages/tt/dataset_train.txt" "languages/tt/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/sl/dataset_train.txt" "languages/tt/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Sln_Tat_$j"

# 795 - Language pair: (Grg,Sln)
    python3 preprocessing/take_sentences.py "languages/ka/dataset_$j.txt" "languages/ka/dataset_train.txt" "languages/ka/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/sl/dataset_$j.txt" "languages/sl/dataset_train.txt" "languages/sl/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/ka/dataset_train.txt" "languages/sl/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Grg_Sln_$j"

# 794 - Language pair: (Grg,Pol)
    python3 preprocessing/take_sentences.py "languages/ka/dataset_$j.txt" "languages/ka/dataset_train.txt" "languages/ka/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/pl/dataset_$j.txt" "languages/pl/dataset_train.txt" "languages/pl/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/ka/dataset_train.txt" "languages/pl/dataset_eval.txt" "results_lan/results_2.24/output_2.24/Grg_Pol_$j"

 done
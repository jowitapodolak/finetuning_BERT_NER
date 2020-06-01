# Experiments for distance: 2.6457513110645907

# Experiment design: 
# (Finetuned language, Evaluated language) - Split(80/20)
# Number of language pairs: 40

# @author: jopo, phze 
# @date: 2020-05-27 15:45:28.862364


#!/bin/bash

# Cross-validation on different subset-reduction of datasets (preprocessed):
 for j in {1..4}
 do


# Experiments:
# 781 - Language pair: (Grg,Prt)
    python3 preprocessing/take_sentences.py "languages/ka/dataset_$j.txt" "languages/ka/dataset_train.txt" "languages/ka/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/pt/dataset_$j.txt" "languages/pt/dataset_train.txt" "languages/pt/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/ka/dataset_train.txt" "languages/pt/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Grg_Prt_$j"

# 746 - Language pair: (Fin,Dut)
    python3 preprocessing/take_sentences.py "languages/fi/dataset_$j.txt" "languages/fi/dataset_train.txt" "languages/fi/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/nl/dataset_$j.txt" "languages/nl/dataset_train.txt" "languages/nl/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/fi/dataset_train.txt" "languages/nl/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Fin_Dut_$j"

# 789 - Language pair: (Grg,Cz)
    python3 preprocessing/take_sentences.py "languages/ka/dataset_$j.txt" "languages/ka/dataset_train.txt" "languages/ka/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/cs/dataset_$j.txt" "languages/cs/dataset_train.txt" "languages/cs/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/ka/dataset_train.txt" "languages/cs/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Grg_Cz_$j"

# 208 - Language pair: (Prt,Bsq)
    python3 preprocessing/take_sentences.py "languages/pt/dataset_$j.txt" "languages/pt/dataset_train.txt" "languages/pt/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/eu/dataset_$j.txt" "languages/eu/dataset_train.txt" "languages/eu/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/pt/dataset_train.txt" "languages/eu/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Prt_Bsq_$j"

# 211 - Language pair: (Prt,Grg)
    python3 preprocessing/take_sentences.py "languages/pt/dataset_$j.txt" "languages/pt/dataset_train.txt" "languages/pt/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/ka/dataset_$j.txt" "languages/ka/dataset_train.txt" "languages/ka/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/pt/dataset_train.txt" "languages/ka/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Prt_Grg_$j"

# 824 - Language pair: (Wel,Blg)
    python3 preprocessing/take_sentences.py "languages/cy/dataset_$j.txt" "languages/cy/dataset_train.txt" "languages/cy/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/bg/dataset_$j.txt" "languages/bg/dataset_train.txt" "languages/bg/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/cy/dataset_train.txt" "languages/bg/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Wel_Blg_$j"

# 147 - Language pair: (Grk,Brt)
    python3 preprocessing/take_sentences.py "languages/el/dataset_$j.txt" "languages/el/dataset_train.txt" "languages/el/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/br/dataset_$j.txt" "languages/br/dataset_train.txt" "languages/br/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/el/dataset_train.txt" "languages/br/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Grk_Brt_$j"

# 148 - Language pair: (Grk,Fin)
    python3 preprocessing/take_sentences.py "languages/el/dataset_$j.txt" "languages/el/dataset_train.txt" "languages/el/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/fi/dataset_$j.txt" "languages/fi/dataset_train.txt" "languages/fi/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/el/dataset_train.txt" "languages/fi/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Grk_Fin_$j"

# 878 - Language pair: (Arm,Rus)
    python3 preprocessing/take_sentences.py "languages/hy/dataset_$j.txt" "languages/hy/dataset_train.txt" "languages/hy/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/ru/dataset_$j.txt" "languages/ru/dataset_train.txt" "languages/ru/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/hy/dataset_train.txt" "languages/ru/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Arm_Rus_$j"

# 116 - Language pair: (Eng,Brt)
    python3 preprocessing/take_sentences.py "languages/en/dataset_$j.txt" "languages/en/dataset_train.txt" "languages/en/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/br/dataset_$j.txt" "languages/br/dataset_train.txt" "languages/br/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/en/dataset_train.txt" "languages/br/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Eng_Brt_$j"

# 729 - Language pair: (Brt,Lit)
    python3 preprocessing/take_sentences.py "languages/br/dataset_$j.txt" "languages/br/dataset_train.txt" "languages/br/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/lt/dataset_$j.txt" "languages/lt/dataset_train.txt" "languages/lt/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/br/dataset_train.txt" "languages/lt/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Brt_Lit_$j"

# 846 - Language pair: (Est,Rom)
    python3 preprocessing/take_sentences.py "languages/et/dataset_$j.txt" "languages/et/dataset_train.txt" "languages/et/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/ro/dataset_$j.txt" "languages/ro/dataset_train.txt" "languages/ro/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/et/dataset_train.txt" "languages/ro/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Est_Rom_$j"

# 847 - Language pair: (Est,Rus)
    python3 preprocessing/take_sentences.py "languages/et/dataset_$j.txt" "languages/et/dataset_train.txt" "languages/et/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/ru/dataset_$j.txt" "languages/ru/dataset_train.txt" "languages/ru/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/et/dataset_train.txt" "languages/ru/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Est_Rus_$j"

# 914 - Language pair: (Trk,Ltv)
    python3 preprocessing/take_sentences.py "languages/tr/dataset_$j.txt" "languages/tr/dataset_train.txt" "languages/tr/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/lv/dataset_$j.txt" "languages/lv/dataset_train.txt" "languages/lv/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/tr/dataset_train.txt" "languages/lv/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Trk_Ltv_$j"

# 728 - Language pair: (Brt,Ltv)
    python3 preprocessing/take_sentences.py "languages/br/dataset_$j.txt" "languages/br/dataset_train.txt" "languages/br/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/lv/dataset_$j.txt" "languages/lv/dataset_train.txt" "languages/lv/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/br/dataset_train.txt" "languages/lv/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Brt_Ltv_$j"

# 748 - Language pair: (Fin,Grk)
    python3 preprocessing/take_sentences.py "languages/fi/dataset_$j.txt" "languages/fi/dataset_train.txt" "languages/fi/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/el/dataset_$j.txt" "languages/el/dataset_train.txt" "languages/el/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/fi/dataset_train.txt" "languages/el/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Fin_Grk_$j"

# 81 - Language pair: (Dut,Pol)
    python3 preprocessing/take_sentences.py "languages/nl/dataset_$j.txt" "languages/nl/dataset_train.txt" "languages/nl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/pl/dataset_$j.txt" "languages/pl/dataset_train.txt" "languages/pl/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/nl/dataset_train.txt" "languages/pl/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Dut_Pol_$j"

# 823 - Language pair: (Wel,SCr)
    python3 preprocessing/take_sentences.py "languages/cy/dataset_$j.txt" "languages/cy/dataset_train.txt" "languages/cy/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/sr/dataset_$j.txt" "languages/sr/dataset_train.txt" "languages/sr/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/cy/dataset_train.txt" "languages/sr/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Wel_SCr_$j"

# 82 - Language pair: (Dut,Sln)
    python3 preprocessing/take_sentences.py "languages/nl/dataset_$j.txt" "languages/nl/dataset_train.txt" "languages/nl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/sl/dataset_$j.txt" "languages/sl/dataset_train.txt" "languages/sl/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/nl/dataset_train.txt" "languages/sl/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Dut_Sln_$j"

# 943 - Language pair: (Tat,Hng)
    python3 preprocessing/take_sentences.py "languages/tt/dataset_$j.txt" "languages/tt/dataset_train.txt" "languages/tt/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/hu/dataset_$j.txt" "languages/hu/dataset_train.txt" "languages/hu/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/tt/dataset_train.txt" "languages/hu/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Tat_Hng_$j"

# 782 - Language pair: (Grg,It)
    python3 preprocessing/take_sentences.py "languages/ka/dataset_$j.txt" "languages/ka/dataset_train.txt" "languages/ka/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/it/dataset_$j.txt" "languages/it/dataset_train.txt" "languages/it/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/ka/dataset_train.txt" "languages/it/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Grg_It_$j"

# 944 - Language pair: (Tat,Cz)
    python3 preprocessing/take_sentences.py "languages/tt/dataset_$j.txt" "languages/tt/dataset_train.txt" "languages/tt/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/cs/dataset_$j.txt" "languages/cs/dataset_train.txt" "languages/cs/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/tt/dataset_train.txt" "languages/cs/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Tat_Cz_$j"

# 165 - Language pair: (Spn,Rus)
    python3 preprocessing/take_sentences.py "languages/es/dataset_$j.txt" "languages/es/dataset_train.txt" "languages/es/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/ru/dataset_$j.txt" "languages/ru/dataset_train.txt" "languages/ru/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/es/dataset_train.txt" "languages/ru/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Spn_Rus_$j"

# 942 - Language pair: (Tat,Swd)
    python3 preprocessing/take_sentences.py "languages/tt/dataset_$j.txt" "languages/tt/dataset_train.txt" "languages/tt/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/sv/dataset_$j.txt" "languages/sv/dataset_train.txt" "languages/sv/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/tt/dataset_train.txt" "languages/sv/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Tat_Swd_$j"

# 788 - Language pair: (Grg,Hng)
    python3 preprocessing/take_sentences.py "languages/ka/dataset_$j.txt" "languages/ka/dataset_train.txt" "languages/ka/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/hu/dataset_$j.txt" "languages/hu/dataset_train.txt" "languages/hu/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/ka/dataset_train.txt" "languages/hu/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Grg_Hng_$j"

# 177 - Language pair: (Spn,Bsq)
    python3 preprocessing/take_sentences.py "languages/es/dataset_$j.txt" "languages/es/dataset_train.txt" "languages/es/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/eu/dataset_$j.txt" "languages/eu/dataset_train.txt" "languages/eu/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/es/dataset_train.txt" "languages/eu/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Spn_Bsq_$j"

# 816 - Language pair: (Wel,Rus)
    python3 preprocessing/take_sentences.py "languages/cy/dataset_$j.txt" "languages/cy/dataset_train.txt" "languages/cy/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/ru/dataset_$j.txt" "languages/ru/dataset_train.txt" "languages/ru/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/cy/dataset_train.txt" "languages/ru/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Wel_Rus_$j"

# 86 - Language pair: (Dut,Fin)
    python3 preprocessing/take_sentences.py "languages/nl/dataset_$j.txt" "languages/nl/dataset_train.txt" "languages/nl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/fi/dataset_$j.txt" "languages/fi/dataset_train.txt" "languages/fi/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/nl/dataset_train.txt" "languages/fi/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Dut_Fin_$j"

# 780 - Language pair: (Grg,Spn)
    python3 preprocessing/take_sentences.py "languages/ka/dataset_$j.txt" "languages/ka/dataset_train.txt" "languages/ka/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/es/dataset_$j.txt" "languages/es/dataset_train.txt" "languages/es/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/ka/dataset_train.txt" "languages/es/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Grg_Spn_$j"

# 821 - Language pair: (Wel,Ltv)
    python3 preprocessing/take_sentences.py "languages/cy/dataset_$j.txt" "languages/cy/dataset_train.txt" "languages/cy/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/lv/dataset_$j.txt" "languages/lv/dataset_train.txt" "languages/lv/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/cy/dataset_train.txt" "languages/lv/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Wel_Ltv_$j"

# 85 - Language pair: (Dut,Brt)
    python3 preprocessing/take_sentences.py "languages/nl/dataset_$j.txt" "languages/nl/dataset_train.txt" "languages/nl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/br/dataset_$j.txt" "languages/br/dataset_train.txt" "languages/br/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/nl/dataset_train.txt" "languages/br/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Dut_Brt_$j"

# 83 - Language pair: (Dut,Ukr)
    python3 preprocessing/take_sentences.py "languages/nl/dataset_$j.txt" "languages/nl/dataset_train.txt" "languages/nl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/uk/dataset_$j.txt" "languages/uk/dataset_train.txt" "languages/uk/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/nl/dataset_train.txt" "languages/uk/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Dut_Ukr_$j"

# 877 - Language pair: (Arm,Rom)
    python3 preprocessing/take_sentences.py "languages/hy/dataset_$j.txt" "languages/hy/dataset_train.txt" "languages/hy/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/ro/dataset_$j.txt" "languages/ro/dataset_train.txt" "languages/ro/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/hy/dataset_train.txt" "languages/ro/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Arm_Rom_$j"

# 196 - Language pair: (Prt,Rus)
    python3 preprocessing/take_sentences.py "languages/pt/dataset_$j.txt" "languages/pt/dataset_train.txt" "languages/pt/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/ru/dataset_$j.txt" "languages/ru/dataset_train.txt" "languages/ru/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/pt/dataset_train.txt" "languages/ru/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Prt_Rus_$j"

# 753 - Language pair: (Fin,Rom)
    python3 preprocessing/take_sentences.py "languages/fi/dataset_$j.txt" "languages/fi/dataset_train.txt" "languages/fi/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/ro/dataset_$j.txt" "languages/ro/dataset_train.txt" "languages/ro/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/fi/dataset_train.txt" "languages/ro/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Fin_Rom_$j"

# 915 - Language pair: (Trk,Lit)
    python3 preprocessing/take_sentences.py "languages/tr/dataset_$j.txt" "languages/tr/dataset_train.txt" "languages/tr/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/lt/dataset_$j.txt" "languages/lt/dataset_train.txt" "languages/lt/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/tr/dataset_train.txt" "languages/lt/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Trk_Lit_$j"

# 107 - Language pair: (Eng,Cz)
    python3 preprocessing/take_sentences.py "languages/en/dataset_$j.txt" "languages/en/dataset_train.txt" "languages/en/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/cs/dataset_$j.txt" "languages/cs/dataset_train.txt" "languages/cs/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/en/dataset_train.txt" "languages/cs/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Eng_Cz_$j"

# 941 - Language pair: (Tat,Nor)
    python3 preprocessing/take_sentences.py "languages/tt/dataset_$j.txt" "languages/tt/dataset_train.txt" "languages/tt/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/no/dataset_$j.txt" "languages/no/dataset_train.txt" "languages/no/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/tt/dataset_train.txt" "languages/no/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Tat_Nor_$j"

# 822 - Language pair: (Wel,Lit)
    python3 preprocessing/take_sentences.py "languages/cy/dataset_$j.txt" "languages/cy/dataset_train.txt" "languages/cy/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/lt/dataset_$j.txt" "languages/lt/dataset_train.txt" "languages/lt/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/cy/dataset_train.txt" "languages/lt/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Wel_Lit_$j"

# 180 - Language pair: (Spn,Grg)
    python3 preprocessing/take_sentences.py "languages/es/dataset_$j.txt" "languages/es/dataset_train.txt" "languages/es/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/ka/dataset_$j.txt" "languages/ka/dataset_train.txt" "languages/ka/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/es/dataset_train.txt" "languages/ka/dataset_eval.txt" "results_filt/results_2.65/output_2.65/Spn_Grg_$j"

 done
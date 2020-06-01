# Experiments for distance: 1.4142135623730951

# Experiment design: 
# (Finetuned language, Evaluated language) - Split(80/20)
# Number of language pairs: 20

# @author: jopo, phze 
# @date: 2020-05-04 08:41:35.084916


#!/bin/bash

# Cross-validation on different subset-reduction of datasets (preprocessed):
 for j in {1..4}
 do


# Experiments:
# 73 - Language pair: (Dut,Nor)
    python3 preprocessing/take_sentences.py "languages/nl/dataset_$j.txt" "languages/nl/dataset_train.txt" "languages/nl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/no/dataset_$j.txt" "languages/no/dataset_train.txt" "languages/no/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/nl/dataset_train.txt" "languages/no/dataset_eval.txt" "results_filt/results_1.41/output_1.41/Dut_Nor_$j"

# 631 - Language pair: (Sln,Nor)
    python3 preprocessing/take_sentences.py "languages/sl/dataset_$j.txt" "languages/sl/dataset_train.txt" "languages/sl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/no/dataset_$j.txt" "languages/no/dataset_train.txt" "languages/no/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/sl/dataset_train.txt" "languages/no/dataset_eval.txt" "results_filt/results_1.41/output_1.41/Sln_Nor_$j"

# 74 - Language pair: (Dut,Swd)
    python3 preprocessing/take_sentences.py "languages/nl/dataset_$j.txt" "languages/nl/dataset_train.txt" "languages/nl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/sv/dataset_$j.txt" "languages/sv/dataset_train.txt" "languages/sv/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/nl/dataset_train.txt" "languages/sv/dataset_eval.txt" "results_filt/results_1.41/output_1.41/Dut_Swd_$j"

# 632 - Language pair: (Sln,Swd)
    python3 preprocessing/take_sentences.py "languages/sl/dataset_$j.txt" "languages/sl/dataset_train.txt" "languages/sl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/sv/dataset_$j.txt" "languages/sv/dataset_train.txt" "languages/sv/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/sl/dataset_train.txt" "languages/sv/dataset_eval.txt" "results_filt/results_1.41/output_1.41/Sln_Swd_$j"

# 550 - Language pair: (SCr,Brt)
    python3 preprocessing/take_sentences.py "languages/sr/dataset_$j.txt" "languages/sr/dataset_train.txt" "languages/sr/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/br/dataset_$j.txt" "languages/br/dataset_train.txt" "languages/br/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/sr/dataset_train.txt" "languages/br/dataset_eval.txt" "results_filt/results_1.41/output_1.41/SCr_Brt_$j"

# 549 - Language pair: (SCr,Bsq)
    python3 preprocessing/take_sentences.py "languages/sr/dataset_$j.txt" "languages/sr/dataset_train.txt" "languages/sr/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/eu/dataset_$j.txt" "languages/eu/dataset_train.txt" "languages/eu/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/sr/dataset_train.txt" "languages/eu/dataset_eval.txt" "results_filt/results_1.41/output_1.41/SCr_Bsq_$j"

# 82 - Language pair: (Dut,Sln)
    python3 preprocessing/take_sentences.py "languages/nl/dataset_$j.txt" "languages/nl/dataset_train.txt" "languages/nl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/sl/dataset_$j.txt" "languages/sl/dataset_train.txt" "languages/sl/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/nl/dataset_train.txt" "languages/sl/dataset_eval.txt" "results_filt/results_1.41/output_1.41/Dut_Sln_$j"

# 78 - Language pair: (Dut,Lit)
    python3 preprocessing/take_sentences.py "languages/nl/dataset_$j.txt" "languages/nl/dataset_train.txt" "languages/nl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/lt/dataset_$j.txt" "languages/lt/dataset_train.txt" "languages/lt/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/nl/dataset_train.txt" "languages/lt/dataset_eval.txt" "results_filt/results_1.41/output_1.41/Dut_Lit_$j"

# 76 - Language pair: (Dut,Cz)
    python3 preprocessing/take_sentences.py "languages/nl/dataset_$j.txt" "languages/nl/dataset_train.txt" "languages/nl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/cs/dataset_$j.txt" "languages/cs/dataset_train.txt" "languages/cs/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/nl/dataset_train.txt" "languages/cs/dataset_eval.txt" "results_filt/results_1.41/output_1.41/Dut_Cz_$j"

# 77 - Language pair: (Dut,Ltv)
    python3 preprocessing/take_sentences.py "languages/nl/dataset_$j.txt" "languages/nl/dataset_train.txt" "languages/nl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/lv/dataset_$j.txt" "languages/lv/dataset_train.txt" "languages/lv/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/nl/dataset_train.txt" "languages/lv/dataset_eval.txt" "results_filt/results_1.41/output_1.41/Dut_Ltv_$j"

# 261 - Language pair: (Alb,Hng)
    python3 preprocessing/take_sentences.py "languages/sq/dataset_$j.txt" "languages/sq/dataset_train.txt" "languages/sq/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/hu/dataset_$j.txt" "languages/hu/dataset_train.txt" "languages/hu/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/sq/dataset_train.txt" "languages/hu/dataset_eval.txt" "results_filt/results_1.41/output_1.41/Alb_Hng_$j"

# 72 - Language pair: (Dut,Rus)
    python3 preprocessing/take_sentences.py "languages/nl/dataset_$j.txt" "languages/nl/dataset_train.txt" "languages/nl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/ru/dataset_$j.txt" "languages/ru/dataset_train.txt" "languages/ru/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/nl/dataset_train.txt" "languages/ru/dataset_eval.txt" "results_filt/results_1.41/output_1.41/Dut_Rus_$j"

# 291 - Language pair: (Rom,Swd)
    python3 preprocessing/take_sentences.py "languages/ro/dataset_$j.txt" "languages/ro/dataset_train.txt" "languages/ro/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/sv/dataset_$j.txt" "languages/sv/dataset_train.txt" "languages/sv/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/ro/dataset_train.txt" "languages/sv/dataset_eval.txt" "results_filt/results_1.41/output_1.41/Rom_Swd_$j"

# 281 - Language pair: (Rom,Dut)
    python3 preprocessing/take_sentences.py "languages/ro/dataset_$j.txt" "languages/ro/dataset_train.txt" "languages/ro/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/nl/dataset_$j.txt" "languages/nl/dataset_train.txt" "languages/nl/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/ro/dataset_train.txt" "languages/nl/dataset_eval.txt" "results_filt/results_1.41/output_1.41/Rom_Dut_$j"

# 623 - Language pair: (Sln,Eng)
    python3 preprocessing/take_sentences.py "languages/sl/dataset_$j.txt" "languages/sl/dataset_train.txt" "languages/sl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/en/dataset_$j.txt" "languages/en/dataset_train.txt" "languages/en/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/sl/dataset_train.txt" "languages/en/dataset_eval.txt" "results_filt/results_1.41/output_1.41/Sln_Eng_$j"

# 282 - Language pair: (Rom,Eng)
    python3 preprocessing/take_sentences.py "languages/ro/dataset_$j.txt" "languages/ro/dataset_train.txt" "languages/ro/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/en/dataset_$j.txt" "languages/en/dataset_train.txt" "languages/en/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/ro/dataset_train.txt" "languages/en/dataset_eval.txt" "results_filt/results_1.41/output_1.41/Rom_Eng_$j"

# 592 - Language pair: (Pol,Eng)
    python3 preprocessing/take_sentences.py "languages/pl/dataset_$j.txt" "languages/pl/dataset_train.txt" "languages/pl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/en/dataset_$j.txt" "languages/en/dataset_train.txt" "languages/en/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/pl/dataset_train.txt" "languages/en/dataset_eval.txt" "results_filt/results_1.41/output_1.41/Pol_Eng_$j"

# 81 - Language pair: (Dut,Pol)
    python3 preprocessing/take_sentences.py "languages/nl/dataset_$j.txt" "languages/nl/dataset_train.txt" "languages/nl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/pl/dataset_$j.txt" "languages/pl/dataset_train.txt" "languages/pl/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/nl/dataset_train.txt" "languages/pl/dataset_eval.txt" "results_filt/results_1.41/output_1.41/Dut_Pol_$j"

# 591 - Language pair: (Pol,Dut)
    python3 preprocessing/take_sentences.py "languages/pl/dataset_$j.txt" "languages/pl/dataset_train.txt" "languages/pl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/nl/dataset_$j.txt" "languages/nl/dataset_train.txt" "languages/nl/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/pl/dataset_train.txt" "languages/nl/dataset_eval.txt" "results_filt/results_1.41/output_1.41/Pol_Dut_$j"

# 290 - Language pair: (Rom,Nor)
    python3 preprocessing/take_sentences.py "languages/ro/dataset_$j.txt" "languages/ro/dataset_train.txt" "languages/ro/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/no/dataset_$j.txt" "languages/no/dataset_train.txt" "languages/no/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/ro/dataset_train.txt" "languages/no/dataset_eval.txt" "results_filt/results_1.41/output_1.41/Rom_Nor_$j"

 done
# Experiments for distance: 2.0

# Experiment design: 
# (Finetuned language, Evaluated language) - Split(80/20)
# Number of language pairs: 20

# @author: jopo, phze 
# @date: 2020-05-20 08:57:31.039816


#!/bin/bash

# Cross-validation on different subset-reduction of datasets (preprocessed):
 for j in {1..4}
 do


# Experiments:
# 568 - Language pair: (Blg,Rus)
    python3 preprocessing/take_sentences.py "languages/bg/dataset_$j.txt" "languages/bg/dataset_train.txt" "languages/bg/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/ru/dataset_$j.txt" "languages/ru/dataset_train.txt" "languages/ru/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/bg/dataset_train.txt" "languages/ru/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Blg_Rus_$j"

# 386 - Language pair: (Swd,Cz)
    python3 preprocessing/take_sentences.py "languages/sv/dataset_$j.txt" "languages/sv/dataset_train.txt" "languages/sv/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/cs/dataset_$j.txt" "languages/cs/dataset_train.txt" "languages/cs/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/sv/dataset_train.txt" "languages/cs/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Swd_Cz_$j"

# 562 - Language pair: (Blg,Grk)
    python3 preprocessing/take_sentences.py "languages/bg/dataset_$j.txt" "languages/bg/dataset_train.txt" "languages/bg/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/el/dataset_$j.txt" "languages/el/dataset_train.txt" "languages/el/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/bg/dataset_train.txt" "languages/el/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Blg_Grk_$j"

# 567 - Language pair: (Blg,Rom)
    python3 preprocessing/take_sentences.py "languages/bg/dataset_$j.txt" "languages/bg/dataset_train.txt" "languages/bg/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/ro/dataset_$j.txt" "languages/ro/dataset_train.txt" "languages/ro/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/bg/dataset_train.txt" "languages/ro/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Blg_Rom_$j"

# 596 - Language pair: (Pol,It)
    python3 preprocessing/take_sentences.py "languages/pl/dataset_$j.txt" "languages/pl/dataset_train.txt" "languages/pl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/it/dataset_$j.txt" "languages/it/dataset_train.txt" "languages/it/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/pl/dataset_train.txt" "languages/it/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Pol_It_$j"

# 373 - Language pair: (Swd,Grm)
    python3 preprocessing/take_sentences.py "languages/sv/dataset_$j.txt" "languages/sv/dataset_train.txt" "languages/sv/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/de/dataset_$j.txt" "languages/de/dataset_train.txt" "languages/de/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/sv/dataset_train.txt" "languages/de/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Swd_Grm_$j"

# 616 - Language pair: (Pol,Est)
    python3 preprocessing/take_sentences.py "languages/pl/dataset_$j.txt" "languages/pl/dataset_train.txt" "languages/pl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/et/dataset_$j.txt" "languages/et/dataset_train.txt" "languages/et/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/pl/dataset_train.txt" "languages/et/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Pol_Est_$j"

# 613 - Language pair: (Pol,Fin)
    python3 preprocessing/take_sentences.py "languages/pl/dataset_$j.txt" "languages/pl/dataset_train.txt" "languages/pl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/fi/dataset_$j.txt" "languages/fi/dataset_train.txt" "languages/fi/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/pl/dataset_train.txt" "languages/fi/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Pol_Fin_$j"

# 770 - Language pair: (Fin,Wel)
    python3 preprocessing/take_sentences.py "languages/fi/dataset_$j.txt" "languages/fi/dataset_train.txt" "languages/fi/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/cy/dataset_$j.txt" "languages/cy/dataset_train.txt" "languages/cy/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/fi/dataset_train.txt" "languages/cy/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Fin_Wel_$j"

# 168 - Language pair: (Spn,Hng)
    python3 preprocessing/take_sentences.py "languages/es/dataset_$j.txt" "languages/es/dataset_train.txt" "languages/es/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/hu/dataset_$j.txt" "languages/hu/dataset_train.txt" "languages/hu/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/es/dataset_train.txt" "languages/hu/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Spn_Hng_$j"

# 349 - Language pair: (Nor,Alb)
    python3 preprocessing/take_sentences.py "languages/no/dataset_$j.txt" "languages/no/dataset_train.txt" "languages/no/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/sq/dataset_$j.txt" "languages/sq/dataset_train.txt" "languages/sq/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/no/dataset_train.txt" "languages/sq/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Nor_Alb_$j"

# 66 - Language pair: (Dut,Grk)
    python3 preprocessing/take_sentences.py "languages/nl/dataset_$j.txt" "languages/nl/dataset_train.txt" "languages/nl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/el/dataset_$j.txt" "languages/el/dataset_train.txt" "languages/el/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/nl/dataset_train.txt" "languages/el/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Dut_Grk_$j"

# 45 - Language pair: (Grm,Cz)
    python3 preprocessing/take_sentences.py "languages/de/dataset_$j.txt" "languages/de/dataset_train.txt" "languages/de/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/cs/dataset_$j.txt" "languages/cs/dataset_train.txt" "languages/cs/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/de/dataset_train.txt" "languages/cs/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Grm_Cz_$j"

# 355 - Language pair: (Nor,Cz)
    python3 preprocessing/take_sentences.py "languages/no/dataset_$j.txt" "languages/no/dataset_train.txt" "languages/no/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/cs/dataset_$j.txt" "languages/cs/dataset_train.txt" "languages/cs/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/no/dataset_train.txt" "languages/cs/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Nor_Cz_$j"

# 42 - Language pair: (Grm,Nor)
    python3 preprocessing/take_sentences.py "languages/de/dataset_$j.txt" "languages/de/dataset_train.txt" "languages/de/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/no/dataset_$j.txt" "languages/no/dataset_train.txt" "languages/no/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/de/dataset_train.txt" "languages/no/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Grm_Nor_$j"

# 602 - Language pair: (Pol,Hng)
    python3 preprocessing/take_sentences.py "languages/pl/dataset_$j.txt" "languages/pl/dataset_train.txt" "languages/pl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/hu/dataset_$j.txt" "languages/hu/dataset_train.txt" "languages/hu/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/pl/dataset_train.txt" "languages/hu/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Pol_Hng_$j"

# 230 - Language pair: (It,Hng)
    python3 preprocessing/take_sentences.py "languages/it/dataset_$j.txt" "languages/it/dataset_train.txt" "languages/it/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/hu/dataset_$j.txt" "languages/hu/dataset_train.txt" "languages/hu/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/it/dataset_train.txt" "languages/hu/dataset_eval.txt" "results_filt/results_2.0/output_2.0/It_Hng_$j"

# 773 - Language pair: (Fin,Trk)
    python3 preprocessing/take_sentences.py "languages/fi/dataset_$j.txt" "languages/fi/dataset_train.txt" "languages/fi/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/tr/dataset_$j.txt" "languages/tr/dataset_train.txt" "languages/tr/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/fi/dataset_train.txt" "languages/tr/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Fin_Trk_$j"

# 597 - Language pair: (Pol,Alb)
    python3 preprocessing/take_sentences.py "languages/pl/dataset_$j.txt" "languages/pl/dataset_train.txt" "languages/pl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/sq/dataset_$j.txt" "languages/sq/dataset_train.txt" "languages/sq/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/pl/dataset_train.txt" "languages/sq/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Pol_Alb_$j"

# 595 - Language pair: (Pol,Prt)
    python3 preprocessing/take_sentences.py "languages/pl/dataset_$j.txt" "languages/pl/dataset_train.txt" "languages/pl/dataset_eval.txt" "0"
    python3 preprocessing/take_sentences.py "languages/pt/dataset_$j.txt" "languages/pt/dataset_train.txt" "languages/pt/dataset_eval.txt" "0"
    python3 SimpleTransformers.py "languages/pl/dataset_train.txt" "languages/pt/dataset_eval.txt" "results_filt/results_2.0/output_2.0/Pol_Prt_$j"

 done
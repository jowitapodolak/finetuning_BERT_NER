# @author: jopo, phze 
# @date: 2020-04-29 13:44:09.949654




# Experiment1

cat 'languages/es/dataset_1.txt' 'languages/pt/dataset_1.txt' 'languages/it/dataset_1.txt' 'languages/sq/dataset_1.txt' 'languages/no/dataset_1.txt' 'languages/sv/dataset_1.txt' 'languages/cs/dataset_1.txt'> 'languages/f11/dataset_false_lan.txt'
cat 'languages/de/dataset_1.txt' 'languages/fr/dataset_1.txt'> 'languages/f11/dataset_eval.txt'
cat 'languages/nl/dataset_1.txt' 'languages/en/dataset_1.txt'> 'languages/f11/dataset_true_no_eval.txt'

# Experiment 1: fine tune 2 on all false languages. Fin tune 2 half false half true no eval. Eval on eval_lan
# Experiment 2: fine tune 2 on all false languages. Fin tune 2 half false half lan from eval_lan in experiment 1. Eval on previous 'true_no_eval'
python3 preprocessing/take_sentences.py  'languages/f11/dataset_false_lan.txt' 'languages/f11/dataset_false_lan.txt' '17003'
python3 preprocessing/take_sentences.py  'languages/f11/dataset_false_lan.txt' 'languages/f11/dataset_false_lan_half.txt' '8502'
python3 preprocessing/take_sentences.py  'languages/f11/dataset_true_no_eval.txt' 'languages/f11/dataset_true_lan_half_1.txt' '8502'
cat 'languages/f11/dataset_false_lan_half.txt' 'languages/f11/dataset_true_lan_half_1.txt' > 'languages/f11/dataset_fin_tun_2_1.txt'
python3 preprocessing/take_sentences.py 'languages/f11/dataset_fin_tun_2_1.txt' 'languages/f11/dataset_fin_tun_2_1.txt' '17003'
python3 preprocessing/take_sentences.py 'languages/f11/dataset_eval.txt' 'languages/f11/dataset_eval_1.txt' '4350'
python3 preprocessing/take_sentences.py  'languages/f11/dataset_eval.txt' 'languages/f11/dataset_true_lan_half_2.txt' '8502'
cat 'languages/f11/dataset_false_lan_half.txt' 'languages/f11/dataset_true_lan_half_2.txt' > 'languages/f11/dataset_fin_tun_2_2.txt'
python3 preprocessing/take_sentences.py 'languages/f11/dataset_fin_tun_2_2.txt' 'languages/f11/dataset_fin_tun_2_2.txt' '17003'
python3 preprocessing/take_sentences.py 'languages/f11/dataset_true_no_eval.txt' 'languages/f11/dataset_eval_2.txt' '4350'

python3 experiments/SimpleTransformers.py 'languages/f11/dataset_false_lan.txt' 'languages/f11/dataset_eval_1.txt' 'results/output_f11/dataset_1/exp1/fine_tuning_1'
python3 experiments/SimpleTransformers.py 'languages/f11/dataset_fin_tun_2_1.txt' 'languages/f11/dataset_eval_1.txt' 'results/output_f11/dataset_1/exp1/fine_tuning_2'
python3 experiments/SimpleTransformers.py 'languages/f11/dataset_false_lan.txt' 'languages/f11/dataset_eval_2.txt' 'results/output_f11/dataset_1/exp2/fine_tuning_1'
python3 experiments/SimpleTransformers.py 'languages/f11/dataset_fin_tun_2_2.txt' 'languages/f11/dataset_eval_2.txt' 'results/output_f11/dataset_1/exp2/fine_tuning_2'


# Experiment2

cat 'languages/es/dataset_2.txt' 'languages/pt/dataset_2.txt' 'languages/it/dataset_2.txt' 'languages/sq/dataset_2.txt' 'languages/no/dataset_2.txt' 'languages/sv/dataset_2.txt' 'languages/cs/dataset_2.txt'> 'languages/f11/dataset_false_lan.txt'
cat 'languages/de/dataset_2.txt' 'languages/fr/dataset_2.txt'> 'languages/f11/dataset_eval.txt'
cat 'languages/nl/dataset_2.txt' 'languages/en/dataset_2.txt'> 'languages/f11/dataset_true_no_eval.txt'

# Experiment 1: fine tune 2 on all false languages. Fin tune 2 half false half true no eval. Eval on eval_lan
# Experiment 2: fine tune 2 on all false languages. Fin tune 2 half false half lan from eval_lan in experiment 1. Eval on previous 'true_no_eval'
python3 preprocessing/take_sentences.py  'languages/f11/dataset_false_lan.txt' 'languages/f11/dataset_false_lan.txt' '17003'
python3 preprocessing/take_sentences.py  'languages/f11/dataset_false_lan.txt' 'languages/f11/dataset_false_lan_half.txt' '8502'
python3 preprocessing/take_sentences.py  'languages/f11/dataset_true_no_eval.txt' 'languages/f11/dataset_true_lan_half_1.txt' '8502'
cat 'languages/f11/dataset_false_lan_half.txt' 'languages/f11/dataset_true_lan_half_1.txt' > 'languages/f11/dataset_fin_tun_2_1.txt'
python3 preprocessing/take_sentences.py 'languages/f11/dataset_fin_tun_2_1.txt' 'languages/f11/dataset_fin_tun_2_1.txt' '17003'
python3 preprocessing/take_sentences.py 'languages/f11/dataset_eval.txt' 'languages/f11/dataset_eval_1.txt' '4350'
python3 preprocessing/take_sentences.py  'languages/f11/dataset_eval.txt' 'languages/f11/dataset_true_lan_half_2.txt' '8502'
cat 'languages/f11/dataset_false_lan_half.txt' 'languages/f11/dataset_true_lan_half_2.txt' > 'languages/f11/dataset_fin_tun_2_2.txt'
python3 preprocessing/take_sentences.py 'languages/f11/dataset_fin_tun_2_2.txt' 'languages/f11/dataset_fin_tun_2_2.txt' '17003'
python3 preprocessing/take_sentences.py 'languages/f11/dataset_true_no_eval.txt' 'languages/f11/dataset_eval_2.txt' '4350'

python3 experiments/SimpleTransformers.py 'languages/f11/dataset_false_lan.txt' 'languages/f11/dataset_eval_1.txt' 'results/output_f11/dataset_2/exp1/fine_tuning_1'
python3 experiments/SimpleTransformers.py 'languages/f11/dataset_fin_tun_2_1.txt' 'languages/f11/dataset_eval_1.txt' 'results/output_f11/dataset_2/exp1/fine_tuning_2'
python3 experiments/SimpleTransformers.py 'languages/f11/dataset_false_lan.txt' 'languages/f11/dataset_eval_2.txt' 'results/output_f11/dataset_2/exp2/fine_tuning_1'
python3 experiments/SimpleTransformers.py 'languages/f11/dataset_fin_tun_2_2.txt' 'languages/f11/dataset_eval_2.txt' 'results/output_f11/dataset_2/exp2/fine_tuning_2'


# Experiment3

cat 'languages/es/dataset_3.txt' 'languages/pt/dataset_3.txt' 'languages/it/dataset_3.txt' 'languages/sq/dataset_3.txt' 'languages/no/dataset_3.txt' 'languages/sv/dataset_3.txt' 'languages/cs/dataset_3.txt'> 'languages/f11/dataset_false_lan.txt'
cat 'languages/de/dataset_3.txt' 'languages/fr/dataset_3.txt'> 'languages/f11/dataset_eval.txt'
cat 'languages/nl/dataset_3.txt' 'languages/en/dataset_3.txt'> 'languages/f11/dataset_true_no_eval.txt'

# Experiment 1: fine tune 2 on all false languages. Fin tune 2 half false half true no eval. Eval on eval_lan
# Experiment 2: fine tune 2 on all false languages. Fin tune 2 half false half lan from eval_lan in experiment 1. Eval on previous 'true_no_eval'
python3 preprocessing/take_sentences.py  'languages/f11/dataset_false_lan.txt' 'languages/f11/dataset_false_lan.txt' '17003'
python3 preprocessing/take_sentences.py  'languages/f11/dataset_false_lan.txt' 'languages/f11/dataset_false_lan_half.txt' '8502'
python3 preprocessing/take_sentences.py  'languages/f11/dataset_true_no_eval.txt' 'languages/f11/dataset_true_lan_half_1.txt' '8502'
cat 'languages/f11/dataset_false_lan_half.txt' 'languages/f11/dataset_true_lan_half_1.txt' > 'languages/f11/dataset_fin_tun_2_1.txt'
python3 preprocessing/take_sentences.py 'languages/f11/dataset_fin_tun_2_1.txt' 'languages/f11/dataset_fin_tun_2_1.txt' '17003'
python3 preprocessing/take_sentences.py 'languages/f11/dataset_eval.txt' 'languages/f11/dataset_eval_1.txt' '4350'
python3 preprocessing/take_sentences.py  'languages/f11/dataset_eval.txt' 'languages/f11/dataset_true_lan_half_2.txt' '8502'
cat 'languages/f11/dataset_false_lan_half.txt' 'languages/f11/dataset_true_lan_half_2.txt' > 'languages/f11/dataset_fin_tun_2_2.txt'
python3 preprocessing/take_sentences.py 'languages/f11/dataset_fin_tun_2_2.txt' 'languages/f11/dataset_fin_tun_2_2.txt' '17003'
python3 preprocessing/take_sentences.py 'languages/f11/dataset_true_no_eval.txt' 'languages/f11/dataset_eval_2.txt' '4350'

python3 experiments/SimpleTransformers.py 'languages/f11/dataset_false_lan.txt' 'languages/f11/dataset_eval_1.txt' 'results/output_f11/dataset_3/exp1/fine_tuning_1'
python3 experiments/SimpleTransformers.py 'languages/f11/dataset_fin_tun_2_1.txt' 'languages/f11/dataset_eval_1.txt' 'results/output_f11/dataset_3/exp1/fine_tuning_2'
python3 experiments/SimpleTransformers.py 'languages/f11/dataset_false_lan.txt' 'languages/f11/dataset_eval_2.txt' 'results/output_f11/dataset_3/exp2/fine_tuning_1'
python3 experiments/SimpleTransformers.py 'languages/f11/dataset_fin_tun_2_2.txt' 'languages/f11/dataset_eval_2.txt' 'results/output_f11/dataset_3/exp2/fine_tuning_2'


# Experiment4

cat 'languages/es/dataset_4.txt' 'languages/pt/dataset_4.txt' 'languages/it/dataset_4.txt' 'languages/sq/dataset_4.txt' 'languages/no/dataset_4.txt' 'languages/sv/dataset_4.txt' 'languages/cs/dataset_4.txt'> 'languages/f11/dataset_false_lan.txt'
cat 'languages/de/dataset_4.txt' 'languages/fr/dataset_4.txt'> 'languages/f11/dataset_eval.txt'
cat 'languages/nl/dataset_4.txt' 'languages/en/dataset_4.txt'> 'languages/f11/dataset_true_no_eval.txt'

# Experiment 1: fine tune 2 on all false languages. Fin tune 2 half false half true no eval. Eval on eval_lan
# Experiment 2: fine tune 2 on all false languages. Fin tune 2 half false half lan from eval_lan in experiment 1. Eval on previous 'true_no_eval'
python3 preprocessing/take_sentences.py  'languages/f11/dataset_false_lan.txt' 'languages/f11/dataset_false_lan.txt' '17003'
python3 preprocessing/take_sentences.py  'languages/f11/dataset_false_lan.txt' 'languages/f11/dataset_false_lan_half.txt' '8502'
python3 preprocessing/take_sentences.py  'languages/f11/dataset_true_no_eval.txt' 'languages/f11/dataset_true_lan_half_1.txt' '8502'
cat 'languages/f11/dataset_false_lan_half.txt' 'languages/f11/dataset_true_lan_half_1.txt' > 'languages/f11/dataset_fin_tun_2_1.txt'
python3 preprocessing/take_sentences.py 'languages/f11/dataset_fin_tun_2_1.txt' 'languages/f11/dataset_fin_tun_2_1.txt' '17003'
python3 preprocessing/take_sentences.py 'languages/f11/dataset_eval.txt' 'languages/f11/dataset_eval_1.txt' '4350'
python3 preprocessing/take_sentences.py  'languages/f11/dataset_eval.txt' 'languages/f11/dataset_true_lan_half_2.txt' '8502'
cat 'languages/f11/dataset_false_lan_half.txt' 'languages/f11/dataset_true_lan_half_2.txt' > 'languages/f11/dataset_fin_tun_2_2.txt'
python3 preprocessing/take_sentences.py 'languages/f11/dataset_fin_tun_2_2.txt' 'languages/f11/dataset_fin_tun_2_2.txt' '17003'
python3 preprocessing/take_sentences.py 'languages/f11/dataset_true_no_eval.txt' 'languages/f11/dataset_eval_2.txt' '4350'

python3 experiments/SimpleTransformers.py 'languages/f11/dataset_false_lan.txt' 'languages/f11/dataset_eval_1.txt' 'results/output_f11/dataset_4/exp1/fine_tuning_1'
python3 experiments/SimpleTransformers.py 'languages/f11/dataset_fin_tun_2_1.txt' 'languages/f11/dataset_eval_1.txt' 'results/output_f11/dataset_4/exp1/fine_tuning_2'
python3 experiments/SimpleTransformers.py 'languages/f11/dataset_false_lan.txt' 'languages/f11/dataset_eval_2.txt' 'results/output_f11/dataset_4/exp2/fine_tuning_1'
python3 experiments/SimpleTransformers.py 'languages/f11/dataset_fin_tun_2_2.txt' 'languages/f11/dataset_eval_2.txt' 'results/output_f11/dataset_4/exp2/fine_tuning_2'

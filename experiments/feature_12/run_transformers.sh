# @author: jopo, phze 
# @date: 2020-04-29 13:44:09.953443




# Experiment1

cat 'languages/hu/dataset_1.txt' 'languages/fi/dataset_1.txt' 'languages/et/dataset_1.txt' 'languages/hy/dataset_1.txt'> 'languages/f12/dataset_false_lan.txt'
cat 'languages/pl/dataset_1.txt' 'languages/sl/dataset_1.txt' 'languages/uk/dataset_1.txt'> 'languages/f12/dataset_eval.txt'
cat 'languages/lv/dataset_1.txt' 'languages/lt/dataset_1.txt' 'languages/sr/dataset_1.txt' 'languages/bg/dataset_1.txt'> 'languages/f12/dataset_true_no_eval.txt'

# Experiment 1: fine tune 2 on all false languages. Fin tune 2 half false half true no eval. Eval on eval_lan
# Experiment 2: fine tune 2 on all false languages. Fin tune 2 half false half lan from eval_lan in experiment 1. Eval on previous 'true_no_eval'
python3 preprocessing/take_sentences.py  'languages/f12/dataset_false_lan.txt' 'languages/f12/dataset_false_lan.txt' '17003'
python3 preprocessing/take_sentences.py  'languages/f12/dataset_false_lan.txt' 'languages/f12/dataset_false_lan_half.txt' '8502'
python3 preprocessing/take_sentences.py  'languages/f12/dataset_true_no_eval.txt' 'languages/f12/dataset_true_lan_half_1.txt' '8502'
cat 'languages/f12/dataset_false_lan_half.txt' 'languages/f12/dataset_true_lan_half_1.txt' > 'languages/f12/dataset_fin_tun_2_1.txt'
python3 preprocessing/take_sentences.py 'languages/f12/dataset_fin_tun_2_1.txt' 'languages/f12/dataset_fin_tun_2_1.txt' '17003'
python3 preprocessing/take_sentences.py 'languages/f12/dataset_eval.txt' 'languages/f12/dataset_eval_1.txt' '4350'
python3 preprocessing/take_sentences.py  'languages/f12/dataset_eval.txt' 'languages/f12/dataset_true_lan_half_2.txt' '8502'
cat 'languages/f12/dataset_false_lan_half.txt' 'languages/f12/dataset_true_lan_half_2.txt' > 'languages/f12/dataset_fin_tun_2_2.txt'
python3 preprocessing/take_sentences.py 'languages/f12/dataset_fin_tun_2_2.txt' 'languages/f12/dataset_fin_tun_2_2.txt' '17003'
python3 preprocessing/take_sentences.py 'languages/f12/dataset_true_no_eval.txt' 'languages/f12/dataset_eval_2.txt' '4350'

python3 experiments/SimpleTransformers.py 'languages/f12/dataset_false_lan.txt' 'languages/f12/dataset_eval_1.txt' 'results/output_f12/dataset_1/exp1/fine_tuning_1'
python3 experiments/SimpleTransformers.py 'languages/f12/dataset_fin_tun_2_1.txt' 'languages/f12/dataset_eval_1.txt' 'results/output_f12/dataset_1/exp1/fine_tuning_2'
python3 experiments/SimpleTransformers.py 'languages/f12/dataset_false_lan.txt' 'languages/f12/dataset_eval_2.txt' 'results/output_f12/dataset_1/exp2/fine_tuning_1'
python3 experiments/SimpleTransformers.py 'languages/f12/dataset_fin_tun_2_2.txt' 'languages/f12/dataset_eval_2.txt' 'results/output_f12/dataset_1/exp2/fine_tuning_2'


# Experiment2

cat 'languages/hu/dataset_2.txt' 'languages/fi/dataset_2.txt' 'languages/et/dataset_2.txt' 'languages/hy/dataset_2.txt'> 'languages/f12/dataset_false_lan.txt'
cat 'languages/pl/dataset_2.txt' 'languages/sl/dataset_2.txt' 'languages/uk/dataset_2.txt'> 'languages/f12/dataset_eval.txt'
cat 'languages/lv/dataset_2.txt' 'languages/lt/dataset_2.txt' 'languages/sr/dataset_2.txt' 'languages/bg/dataset_2.txt'> 'languages/f12/dataset_true_no_eval.txt'

# Experiment 1: fine tune 2 on all false languages. Fin tune 2 half false half true no eval. Eval on eval_lan
# Experiment 2: fine tune 2 on all false languages. Fin tune 2 half false half lan from eval_lan in experiment 1. Eval on previous 'true_no_eval'
python3 preprocessing/take_sentences.py  'languages/f12/dataset_false_lan.txt' 'languages/f12/dataset_false_lan.txt' '17003'
python3 preprocessing/take_sentences.py  'languages/f12/dataset_false_lan.txt' 'languages/f12/dataset_false_lan_half.txt' '8502'
python3 preprocessing/take_sentences.py  'languages/f12/dataset_true_no_eval.txt' 'languages/f12/dataset_true_lan_half_1.txt' '8502'
cat 'languages/f12/dataset_false_lan_half.txt' 'languages/f12/dataset_true_lan_half_1.txt' > 'languages/f12/dataset_fin_tun_2_1.txt'
python3 preprocessing/take_sentences.py 'languages/f12/dataset_fin_tun_2_1.txt' 'languages/f12/dataset_fin_tun_2_1.txt' '17003'
python3 preprocessing/take_sentences.py 'languages/f12/dataset_eval.txt' 'languages/f12/dataset_eval_1.txt' '4350'
python3 preprocessing/take_sentences.py  'languages/f12/dataset_eval.txt' 'languages/f12/dataset_true_lan_half_2.txt' '8502'
cat 'languages/f12/dataset_false_lan_half.txt' 'languages/f12/dataset_true_lan_half_2.txt' > 'languages/f12/dataset_fin_tun_2_2.txt'
python3 preprocessing/take_sentences.py 'languages/f12/dataset_fin_tun_2_2.txt' 'languages/f12/dataset_fin_tun_2_2.txt' '17003'
python3 preprocessing/take_sentences.py 'languages/f12/dataset_true_no_eval.txt' 'languages/f12/dataset_eval_2.txt' '4350'

python3 experiments/SimpleTransformers.py 'languages/f12/dataset_false_lan.txt' 'languages/f12/dataset_eval_1.txt' 'results/output_f12/dataset_2/exp1/fine_tuning_1'
python3 experiments/SimpleTransformers.py 'languages/f12/dataset_fin_tun_2_1.txt' 'languages/f12/dataset_eval_1.txt' 'results/output_f12/dataset_2/exp1/fine_tuning_2'
python3 experiments/SimpleTransformers.py 'languages/f12/dataset_false_lan.txt' 'languages/f12/dataset_eval_2.txt' 'results/output_f12/dataset_2/exp2/fine_tuning_1'
python3 experiments/SimpleTransformers.py 'languages/f12/dataset_fin_tun_2_2.txt' 'languages/f12/dataset_eval_2.txt' 'results/output_f12/dataset_2/exp2/fine_tuning_2'


# Experiment3

cat 'languages/hu/dataset_3.txt' 'languages/fi/dataset_3.txt' 'languages/et/dataset_3.txt' 'languages/hy/dataset_3.txt'> 'languages/f12/dataset_false_lan.txt'
cat 'languages/pl/dataset_3.txt' 'languages/sl/dataset_3.txt' 'languages/uk/dataset_3.txt'> 'languages/f12/dataset_eval.txt'
cat 'languages/lv/dataset_3.txt' 'languages/lt/dataset_3.txt' 'languages/sr/dataset_3.txt' 'languages/bg/dataset_3.txt'> 'languages/f12/dataset_true_no_eval.txt'

# Experiment 1: fine tune 2 on all false languages. Fin tune 2 half false half true no eval. Eval on eval_lan
# Experiment 2: fine tune 2 on all false languages. Fin tune 2 half false half lan from eval_lan in experiment 1. Eval on previous 'true_no_eval'
python3 preprocessing/take_sentences.py  'languages/f12/dataset_false_lan.txt' 'languages/f12/dataset_false_lan.txt' '17003'
python3 preprocessing/take_sentences.py  'languages/f12/dataset_false_lan.txt' 'languages/f12/dataset_false_lan_half.txt' '8502'
python3 preprocessing/take_sentences.py  'languages/f12/dataset_true_no_eval.txt' 'languages/f12/dataset_true_lan_half_1.txt' '8502'
cat 'languages/f12/dataset_false_lan_half.txt' 'languages/f12/dataset_true_lan_half_1.txt' > 'languages/f12/dataset_fin_tun_2_1.txt'
python3 preprocessing/take_sentences.py 'languages/f12/dataset_fin_tun_2_1.txt' 'languages/f12/dataset_fin_tun_2_1.txt' '17003'
python3 preprocessing/take_sentences.py 'languages/f12/dataset_eval.txt' 'languages/f12/dataset_eval_1.txt' '4350'
python3 preprocessing/take_sentences.py  'languages/f12/dataset_eval.txt' 'languages/f12/dataset_true_lan_half_2.txt' '8502'
cat 'languages/f12/dataset_false_lan_half.txt' 'languages/f12/dataset_true_lan_half_2.txt' > 'languages/f12/dataset_fin_tun_2_2.txt'
python3 preprocessing/take_sentences.py 'languages/f12/dataset_fin_tun_2_2.txt' 'languages/f12/dataset_fin_tun_2_2.txt' '17003'
python3 preprocessing/take_sentences.py 'languages/f12/dataset_true_no_eval.txt' 'languages/f12/dataset_eval_2.txt' '4350'

python3 experiments/SimpleTransformers.py 'languages/f12/dataset_false_lan.txt' 'languages/f12/dataset_eval_1.txt' 'results/output_f12/dataset_3/exp1/fine_tuning_1'
python3 experiments/SimpleTransformers.py 'languages/f12/dataset_fin_tun_2_1.txt' 'languages/f12/dataset_eval_1.txt' 'results/output_f12/dataset_3/exp1/fine_tuning_2'
python3 experiments/SimpleTransformers.py 'languages/f12/dataset_false_lan.txt' 'languages/f12/dataset_eval_2.txt' 'results/output_f12/dataset_3/exp2/fine_tuning_1'
python3 experiments/SimpleTransformers.py 'languages/f12/dataset_fin_tun_2_2.txt' 'languages/f12/dataset_eval_2.txt' 'results/output_f12/dataset_3/exp2/fine_tuning_2'


# Experiment4

cat 'languages/hu/dataset_4.txt' 'languages/fi/dataset_4.txt' 'languages/et/dataset_4.txt' 'languages/hy/dataset_4.txt'> 'languages/f12/dataset_false_lan.txt'
cat 'languages/pl/dataset_4.txt' 'languages/sl/dataset_4.txt' 'languages/uk/dataset_4.txt'> 'languages/f12/dataset_eval.txt'
cat 'languages/lv/dataset_4.txt' 'languages/lt/dataset_4.txt' 'languages/sr/dataset_4.txt' 'languages/bg/dataset_4.txt'> 'languages/f12/dataset_true_no_eval.txt'

# Experiment 1: fine tune 2 on all false languages. Fin tune 2 half false half true no eval. Eval on eval_lan
# Experiment 2: fine tune 2 on all false languages. Fin tune 2 half false half lan from eval_lan in experiment 1. Eval on previous 'true_no_eval'
python3 preprocessing/take_sentences.py  'languages/f12/dataset_false_lan.txt' 'languages/f12/dataset_false_lan.txt' '17003'
python3 preprocessing/take_sentences.py  'languages/f12/dataset_false_lan.txt' 'languages/f12/dataset_false_lan_half.txt' '8502'
python3 preprocessing/take_sentences.py  'languages/f12/dataset_true_no_eval.txt' 'languages/f12/dataset_true_lan_half_1.txt' '8502'
cat 'languages/f12/dataset_false_lan_half.txt' 'languages/f12/dataset_true_lan_half_1.txt' > 'languages/f12/dataset_fin_tun_2_1.txt'
python3 preprocessing/take_sentences.py 'languages/f12/dataset_fin_tun_2_1.txt' 'languages/f12/dataset_fin_tun_2_1.txt' '17003'
python3 preprocessing/take_sentences.py 'languages/f12/dataset_eval.txt' 'languages/f12/dataset_eval_1.txt' '4350'
python3 preprocessing/take_sentences.py  'languages/f12/dataset_eval.txt' 'languages/f12/dataset_true_lan_half_2.txt' '8502'
cat 'languages/f12/dataset_false_lan_half.txt' 'languages/f12/dataset_true_lan_half_2.txt' > 'languages/f12/dataset_fin_tun_2_2.txt'
python3 preprocessing/take_sentences.py 'languages/f12/dataset_fin_tun_2_2.txt' 'languages/f12/dataset_fin_tun_2_2.txt' '17003'
python3 preprocessing/take_sentences.py 'languages/f12/dataset_true_no_eval.txt' 'languages/f12/dataset_eval_2.txt' '4350'

python3 experiments/SimpleTransformers.py 'languages/f12/dataset_false_lan.txt' 'languages/f12/dataset_eval_1.txt' 'results/output_f12/dataset_4/exp1/fine_tuning_1'
python3 experiments/SimpleTransformers.py 'languages/f12/dataset_fin_tun_2_1.txt' 'languages/f12/dataset_eval_1.txt' 'results/output_f12/dataset_4/exp1/fine_tuning_2'
python3 experiments/SimpleTransformers.py 'languages/f12/dataset_false_lan.txt' 'languages/f12/dataset_eval_2.txt' 'results/output_f12/dataset_4/exp2/fine_tuning_1'
python3 experiments/SimpleTransformers.py 'languages/f12/dataset_fin_tun_2_2.txt' 'languages/f12/dataset_eval_2.txt' 'results/output_f12/dataset_4/exp2/fine_tuning_2'

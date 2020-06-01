#!/bin/bash
# if we want to use KFOLD technique

#for i in $(seq "$1")
#do
#    echo "FOLD" $i "/" $1
#    echo
#python3 SimpleTransformers.py 'data_CoNLL/en.train.txt' 'dataCoNLL/en.test.txt' './outputTest' #$1 $i
#done

# will this run ?

bash experiments/feature_1/run_transformers.sh
bash experiments/feature_2/run_transformers.sh
bash experiments/feature_3/run_transformers.sh
bash experiments/feature_4/run_transformers.sh
bash experiments/feature_5/run_transformers.sh
bash experiments/feature_6/run_transformers.sh
bash experiments/feature_7/run_transformers.sh
bash experiments/feature_8/run_transformers.sh
bash experiments/feature_9/run_transformers.sh
bash experiments/feature_10/run_transformers.sh
bash experiments/feature_11/run_transformers.sh
bash experiments/feature_12/run_transformers.sh
bash experiments/feature_13/run_transformers.sh

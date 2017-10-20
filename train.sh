#! /bin/bash 
###########################################
#
###########################################

# constants
baseDir=$(cd `dirname "$0"`;pwd)
# functions

# main 
[ -z "${BASH_SOURCE[0]}" -o "${BASH_SOURCE[0]}" = "$0" ] || return
# source /root/venv-py3/bin/activate
cd $baseDir
python neural_conversation_model.py \
    --train_dir ubuntu/ \
    --en_vocab_size 60000 \
    --size 512 \
    --data_path ubuntu/train.tsv \
    --dev_data ubuntu/valid.tsv  \
    --vocab_path ubuntu/60_chat_vocab.en \
    --attention \

# Neural_Conversation_Models
=================================
This implementation contains an extension of seq2seq tutorial for conversation models in Tensorflow:

1. Option to use Beam Search and Beam Size for decoding
    
2. Currently, it supports
    - Simple seq2seq  models
    - Attention based seq2seq models
    
3. To get better results use beam search during decoding / inference 

Examples of basic model can be found in this paper.

https://arxiv.org/abs/1702.05512


Prerequisites
-------------

- Python Python 3.3+
- [NLTK](http://www.nltk.org/)
- [TensorFlow](https://www.tensorflow.org/) 0.12.1

Installations
-----

* Mac
```
virtualenv --no-site-packages -p /usr/local/bin/python3.6 ~/venv-py3
source ~/venv-py3/bin/activate
pip3 install --upgrade \
 https://storage.googleapis.com/tensorflow/mac/cpu/tensorflow-0.12.1-py3-none-any.whl # for CPU Usage
```

* Linux with GPU Driver
```
virtualenv --no-site-packages -p /usr/local/bin/python3.6 ~/venv-py3
source ~/venv-py3/bin/activate
pip3 install --upgrade \ https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-0.12.1-cp34-cp34m-linux_x86_64.whl
```

Data
-----
Data accepted is in the tsv format where first component is the context and second is the reply

TSV format Ubuntu Dialog Data can be found [here](https://drive.google.com/file/d/0BwPa9lrosQKdSTZxZ0tydUFGWE0/view) or [Git repo](http://git.oschina.net/ubiware/neural_conversation_models_ubuntu_corpus).
 
example :-
1. What are you doing ? \t Writing seq2seq model . 

Usage
-----

To train a model with Ubuntu dataset:

    $ python neural_conversation_model.py --train_dir ubuntu/ --en_vocab_size 60000 --size 512 --data_path ubuntu/train.tsv --dev_data ubuntu/valid.tsv  --vocab_path ubuntu/60k_vocan.en --attention

To test an existing model:

    $ python neural_conversation_model.py --train_dir ubuntu/ --en_vocab_size 60000 --size 512 --data_path ubuntu/train.tsv --dev_data ubuntu/valid.tsv  --vocab_path ubuntu/60k_vocan.en --attention --decode --beam_search --beam_size 25

Todo
-----
1. Add other state of art neural models. 
2. Adding layer normalization( in progress )

https://github.com/pbhatia243/tf-layer-norm

## Contact
Parminder Bhatia, parminder.bhatia243@gmail.com

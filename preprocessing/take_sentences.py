#!/usr/bin/python
from __future__ import print_function
import sys
import io
import codecs
import random


"""
Returns an array of sentences(each sentence is an array of its words with annotations)
make_array_of_sentences takes a NER annotated dataset and puts it into
an array of sentences with each sentence being it's own array of words.
(array of arrays). It  is shuffled.
"""
def make_array_of_senteces(dataset_file, rand_seed=None):
    in_file = codecs.open(dataset_file,'r')
    lines_list = in_file.readlines()
    sentences_list = []
    sentence = []
    for line in lines_list:
        if not line.strip() == '':  # if line is not an empty line
            sentence.append(line)
        else:  # if line IS an empty line - add to list a ful sentence
            sentences_list.append(sentence)
            sentence = []
    if rand_seed is not None:
        random.Random(rand_seed).shuffle(sentences_list)
    else:
        random.shuffle(sentences_list)
    return sentences_list


"""
Check the number of sentences within a file (not lines)
"""


def return_no_of_senteces(dataset_file):
    #return len(make_array_of_senteces(dataset_file))
    print(len(make_array_of_senteces(dataset_file)))


"""
Second argument is a number of sentences you want to have in a file.
"""


def limit_file(array_of_sentences, n_of_sentences):
    n_of_sentences = int(n_of_sentences)
    sliced = array_of_sentences[:n_of_sentences]
    return sliced


"""
Main method that splits the limited array of sentences into train and test with
proportion 0.8 train 0.2 test.  It write the resuts into train_ouptut_file and test_output_file
respecitvely.
no_of_sentences by default is 4906 - the size of the smallest dataset
"""


def split(dataset_file, train_output_file, test_output_file, n_of_sentences, random_state=None):

    array_of_sentences = make_array_of_senteces(dataset_file, random_state)
    if int(n_of_sentences) != 0:
        array_of_sentences = limit_file(array_of_sentences, n_of_sentences)
        print("you shouldn't go in here")
    # train test split manually - by taking first 80% of shuffled dataset as train and the rest as test
    size = len(array_of_sentences)
    x_train = array_of_sentences[:int(size * 0.8)]
    x_test = array_of_sentences[int(size * 0.8):]

    # write to train file
    output_train = open(train_output_file, 'w')
    for sentence in x_train:
        for line in sentence:
            output_train.write(line)
        output_train.write('\n')  # after each sentence an empty line.
    output_train.close()

    # write to test file
    output_test = open(test_output_file, 'w')
    # iterate through x_train and write it to a file
    for sentence in x_test:
        for line in sentence:
            output_test.write(line)
        output_test.write('\n')  # after each sentence an empty line.
    output_test.close()


def limit(dataset_file, output_file, n_of_sentences, random_state=None):
    array_of_sentences = make_array_of_senteces(dataset_file, random_state)
    limited_array = limit_file(array_of_sentences, n_of_sentences)
    output = open(output_file, 'w')
    for sentence in limited_array:
        for line in sentence:
            output.write(line)
        output.write('\n')  # after each sentence an empty line.
    output.close()


# def k_fold(dataset, output_file,)

if __name__ == '__main__':

    '''
    TEST SIZE in(SECOND ARGUMENT) - default split 80/20 (test_split =0.2)
    First argument is NER dataset, followed by output names for train data and test data and
    the number of sentences.
     If just returning  the number of sentences in a dataset:
    1)      python3 take_sentences.py wikiann-en.bio
     If just limiting to given number of senteces
    2)      python3 take_sentences.py wikiann-en.bio dataset.txt 17003

    1)      python3 take_sentences.py wikiann-en.bio train-en.bio test-en.bio 100
        Input data format is the standard CoNLL 2003 data format.

    If you want to take full dataset (without specifying the number of sentences):
            python3 take_sentences.py wikiann-en.bio train-en.bio test-en.bio 0


    For making experiments reproducible, introduce a seed to shuffling and train_test splitting:
    4)      python3 take_sentences.py wikiann-en.bio train-en.bio test-en.bio 100(no of sentences) 12234(seed)

    For making experiments reproducible, introduce a seed to shuffle (without train_test splitting):
    5)      python3 take_sentences.py wikiann-en.bio dataset.bio 100(no of sentences) 12234(seed)




    '''
    # just for limitting the dataset to a given number of sentences (given as last argument)
    if len(sys.argv) == 2:
        return_no_of_senteces(sys.argv[1])
    elif len(sys.argv) == 4:
        limit(sys.argv[1], sys.argv[2], sys.argv[3])
    # if you don't want to limit type  0 as number  of sentences (last argument)
    elif len(sys.argv) == 5:
        limit(sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4])
        # split(sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4])

    elif len(sys.argv) == 6:
        split(sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4], sys.argv[5])

    else:
        print("Error: incorrect number of  arguments!")

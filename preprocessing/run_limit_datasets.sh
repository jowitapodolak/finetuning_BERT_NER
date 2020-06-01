# if we want to use KFOLD technique

#for i in $(seq "$1")
#do
#    echo "FOLD" $i "/" $1
#    echo
#python3 take_sentences.py

#AT SOME POINT NEED TO WRITE  IN ALL THE LANGUAGES THAT ARE USED
# arguments: trainingset, outputdir, number_of_sentences
# in other file called limit_datasets :python3 'languages/cs/wikiaan-cs.bio' 'languages/cs/dataset.txt' '17003'

python3 preprocessing/take_sentences.py 'languages/fr/wikiann-fr.bio' 'languages/fr/dataset.txt' '17003'

python3 preprocessing/take_sentences.py 'languages/de/wikiann-de.bio' 'languages/de/dataset.txt' '17003'

python3 preprocessing/take_sentences.py 'languages/el/wikiann-el.bio' 'languages/el/dataset.txt' '17003'

python3 preprocessing/take_sentences.py 'languages/nl/wikiann-nl.bio' 'languages/nl/dataset.txt' '17003'

python3 preprocessing/take_sentences.py 'languages/en/wikiann-en.bio' 'languages/en/dataset.txt' '17003'

python3 preprocessing/take_sentences.py 'languages/et/wikiann-et.bio' 'languages/et/dataset.txt' '17003'

python3 preprocessing/take_sentences.py 'languages/hy/wikiann-hy.bio' 'languages/hy/dataset.txt' '17003'

python3 preprocessing/take_sentences.py 'languages/tr/wikiann-tr.bio' 'languages/tr/dataset.txt' '17003'

python3 preprocessing/take_sentences.py 'languages/sl/wikiann-sl.bio' 'languages/sl/dataset.txt' '17003'

python3 preprocessing/take_sentences.py 'languages/uk/wikiann-uk.bio' 'languages/uk/dataset.txt' '17003'

python3 preprocessing/take_sentences.py 'languages/lt/wikiann-lt.bio' 'languages/lt/dataset.txt' '17003'

python3 preprocessing/take_sentences.py 'languages/pl/wikiann-pl.bio' 'languages/pl/dataset.txt' '17003'

python3 preprocessing/take_sentences.py 'languages/cs/wikiann-cs.bio' 'languages/cs/dataset.txt' '17003'

python3 preprocessing/take_sentences.py 'languages/lv/wikiann-lv.bio' 'languages/lv/dataset.txt' '17003'

python3 preprocessing/take_sentences.py 'languages/sr/wikiann-sr.bio' 'languages/sr/dataset.txt' '17003'

python3 preprocessing/take_sentences.py 'languages/pt/wikiann-pt.bio' 'languages/pt/dataset.txt' '17003'

python3 preprocessing/take_sentences.py 'languages/es/wikiann-es.bio' 'languages/es/dataset.txt' '17003'

python3 preprocessing/take_sentences.py 'languages/it/wikiann-it.bio' 'languages/it/dataset.txt' '17003'

python3 preprocessing/take_sentences.py 'languages/sq/wikiann-sq.bio' 'languages/sq/dataset.txt' '17003'

python3 preprocessing/take_sentences.py 'languages/ro/wikiann-ro.bio' 'languages/ro/dataset.txt' '17003'

python3 preprocessing/take_sentences.py 'languages/ru/wikiann-ru.bio' 'languages/ru/dataset.txt' '17003'

python3 preprocessing/take_sentences.py 'languages/no/wikiann-no.bio' 'languages/no/dataset.txt' '17003'

python3 preprocessing/take_sentences.py 'languages/sv/wikiann-sv.bio' 'languages/sv/dataset.txt' '17003'

python3 preprocessing/take_sentences.py 'languages/hu/wikiann-hu.bio' 'languages/hu/dataset.txt' '17003'

python3 preprocessing/take_sentences.py 'languages/bg/wikiann-bg.bio' 'languages/bg/dataset.txt' '17003'

python3 preprocessing/take_sentences.py 'languages/eu/wikiann-eu.bio' 'languages/eu/dataset.txt' '17003'

python3 preprocessing/take_sentences.py 'languages/br/wikiann-br.bio' 'languages/br/dataset.txt' '17003'

python3 preprocessing/take_sentences.py 'languages/fi/wikiann-fi.bio' 'languages/fi/dataset.txt' '17003'

python3 preprocessing/take_sentences.py 'languages/ka/wikiann-ka.bio' 'languages/ka/dataset.txt' '17003'

python3 preprocessing/take_sentences.py 'languages/cy/wikiann-cy.bio' 'languages/cy/dataset.txt' '17003'

python3 preprocessing/take_sentences.py 'languages/tt/wikiann-tt.bio' 'languages/tt/dataset.txt' '17003'

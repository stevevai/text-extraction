make
#if [ ! -e text8 ]; then
#  wget http://mattmahoney.net/dc/text8.zip -O text8.gz
#  gzip -d text8.gz -f
#fi
time ./word2vec -train ./data/test_1/training-1.txt -output ./data/test_1/training-1_2000classes.txt -cbow 1 -size 200 -window 8 -negative 25 -hs 0 -sample 1e-4 -threads 20 -iter 15 -classes 2000
sort ./data/test_1/training-1_2000classes.txt -k 2 -n > ./data/test_1/training-1_2000classes.sorted.txt
echo The word classes were saved to file training-1_1000classes.sorted.txt

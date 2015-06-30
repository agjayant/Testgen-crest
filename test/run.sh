


#removing previous results
rm resultAfter.txt
rm resultBefore.txt
rm coverage
rm level.txt
rm maxLevel.txt
rm branches_to_map

#running
../bin/crestc $1.c 
python ../src/run_crest/levelGen.py
../bin/run_crest ./$1 $2 -$3 $4

#to save the results in a spreadsheet
python ../src/results/results.py $1 $2 $3 $4

# source ~/.zshrc
# conda activate logevaluate

cd evaluation
for technique in Drain IPLoM LFA LogCluster
do
    for complex in 1 2 3
    do
        echo ${technique}
        python ${technique}_eval.py -full --complex $complex
    done
done

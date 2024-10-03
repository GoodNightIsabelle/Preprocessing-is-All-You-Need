# source ~/.zshrc
# conda activate logevaluate

cd evaluation
for technique in Drain IPLoM LFA LogCluster
do
    for frequent in 10 -10
    do
        echo ${technique}
        python ${technique}_eval.py -full --frequent $frequent
    done
done

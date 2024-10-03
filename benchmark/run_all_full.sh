# source ~/.zshrc
# conda activate logevaluate

cd evaluation
for technique in Drain IPLoM LFA LogCluster
do
    echo ${technique}
    python ${technique}_eval.py -full
done

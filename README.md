# Preprocessing is All You Need
### The repository contains the replication package for the paper "Preprocessing is All You Need: Boosting the Performance of Log Parsers With a General Preprocessing Framework".

## Introduction
The overview of our study is shown in the following graph:

**Variable Extraction:**

**Regular Expression Matching:**

**Non-matchable Variable Categorization:**

**Preprocessing Framework Development:**

**Performance Comparison:**

## Know Your Targets (the variables)

## Dataset
We used the smaller-scale dataset ``Loghub-2k`` for variable extraction and categorization; the framework is developed based on the findings in this dataset. To replicate the log parsing process and test the generalizability of our findings, we used the ``Loghub 2.0`` dataset for framework impact evaluation. The two datasets contain labeled log messages from 14 different systems. Both 2k and the full 2.0 version log data, along with their detailed introductions, can be found at https://github.com/logpai/loghub-2.0.

## Parsing Tools
Our work focuses on improving the performance of statistic-based parsers with **manageable, interpretable, and generalizable** knowledge provided in the preprocessing stage. According to the Loghub 2.0 results, only four statistic-based log parsers (i.e., Drain, IPLoM, LFA, and LogCluster) can parse all the full-sized log files in 12 hours. Considering the applicability of these four tools in real-life usage, we only evaluated them in our study. 

## Replicate the Results
Result replication is made easy! 
### Overall Performance
Run the following commands to obtain the parsing result and evaluations (GA, PA, FGA, FTA) on all log messages:

```
cd benchmark/
./run_all_full.sh
```

To obtain a graphical report, run ``plotting_full.py`` after successfully parsing all the files with all the tools. An example of the graphical report:

![image](./plots/comparison_full.png?raw=true)

### Performance on Different Complexity Subgroups
The log messages are divided into three subgroups according to the number of variables in the message: ``#Param=0 (complexity=1)``, ``0<#Param<5 (complexity=2)``, and ``#Param>=5 (complexity=3)``. Run the following commands to obtain the parsing result and evaluations (GA, PA, FGA, FTA) on log messages in different subgroups:

```
cd benchmark/
./run_complexity_full.sh
```

Run ``plotting_complexity.py`` to get the graphical report:

![image](./plots/complexity_full_all.png?raw=true)

### Performance on Different Frequency Subgroups
We extract the messages with the most frequent 10\% and the least frequent 10\% templates and evaluate the impact brought by our framework. Run the following commands to obtain the parsing result and evaluations (GA, PA, FGA, FTA) on log messages in different subgroups:

```
cd benchmark/
./run_frequency_full.sh
```

Run ``plotting_frequency.py`` to get the graphical report:

![image](./plots/frequency_full_all.png?raw=true)

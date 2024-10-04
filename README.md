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

## Replicate the Results
Result replication is made easy! 
### Overall Performance
Run the following command:
```
cd benchmark/
./demo.sh
```


### Performance on Different Complexity Subgroups

### Performance on Different Frequency Subgroups

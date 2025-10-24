# Multiplexers and Demultiplexers

In this lab you have learned about multiplexers and demultiplexers.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

## Lab Summary
In this lab we designed both a multiplexer and a demultiplexer, in order to simulate a very primitive version of an internet router. Essentially, depending on the two input combination of the selectors, a different "building" will recieve the selected data, which is meant to simulate which house has their switch enabled. This only allows one house's data to be sent to one of the buildings at once, thus the use of a multiplexer to decide on the house, and a demultiplexer to decide on the building it is to be sent to.

### In plain English describe the function and use of a multiplexer.

### In plain English describe the function and use of a demultiplexer.
A demultiplexer takes a single input, and basically decodes into one of however many outputs, depending on how large your input is. Also, only one of your outputs will ever be active, and the idea is to choose which of those outputs is to be active.

### What other uses might these circuits have? (Think Shannon’s)
Well, as learned in lecture, you can use multiplexers to create any circuit, with fewer transitors. Also, a multiplexer and demultiplexer can be used in combination to encode and decode messages.

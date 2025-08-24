# telugu-nlp-tools

## Overview
This repository contains tools to analyze Telugu news articles. It extracts unique words and their frequencies from multiple CSVs, helping in Telugu NLP tasks like text analysis and LLM training.

The main script processes CSV files, removes English words, and outputs word counts and top words.

---

## Folder Structure

telugu-nlp-tools/
  data/
    raw/          # Place all input CSVs here
  results/        # Output CSVs will be saved here automatically
  scripts/
    words_data.R  # The R script
  README.md       # Project description and usage

---

## Dependencies
You need R installed. Then install the required packages by running:

install.packages(c("dplyr", "tidyverse", "tidytext"))

---

## Usage
1. Place all your CSV files in the data/raw/ folder.
2. Run the script:

source("scripts/words_data.R")

---

## Outputs
The script saves the following CSV files in the results/ folder:

- unique_word_counts.csv → all words with their counts  
- non_english_words.csv → removes words with only English letters  
- top_50_telugu_words.csv → top 50 Telugu words by frequency  

It also prints in the R console:

- Total unique words  
- Total English words  
- Total Telugu words  
- Top 50 Telugu words

---

## Notes
- Ensure each CSV has a body column containing the text.  
- The results/ folder is created automatically if it does not exist.

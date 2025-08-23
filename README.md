<<<<<<< HEAD
\# Telugu Word Analysis for LLM Training

This repository contains an \*\*R script\*\* to process and analyze
Telugu news text data, specifically for preparing training data for a
custom LLM (Large Language Model) aimed at \*\*generating or translating
Telugu news in Eenadu style\*\*.

\## Overview

\- \*\*Data Source:\*\* \~10,000 scraped Telugu news stories from
Eenadu.  - \*\*Purpose:\*\* Extract unique words, count word
frequencies, and clean the dataset by removing English words.  -
\*\*Outcome:\*\*  - Total unique words in the dataset.  - Top 50 most
frequent Telugu words.  - A clean list of non-English words for LLM
training.

\## Script Features

1\. Merge multiple CSV files containing scraped news stories. 2.
Tokenize text into individual words using \`tidytext\`. 3. Count unique
word frequencies. 4. Identify and remove English words from the dataset.
5. Generate summary statistics:  - Total unique words  - Total English
words removed  - Top 50 Telugu words 6. Save cleaned word lists to CSV
for further LLM training.

\## Usage

1\. Place all your CSV files in a folder and update the \`folder_path\`
variable in the script. 2. Run the script in R or RStudio. 3. The script
outputs:  - \`unique_word_counts.csv\` → All words with counts  -
\`non_english_words.csv\` → Telugu words only  -
\`top_50_telugu_words.csv\` → Most frequent Telugu words

\## Purpose for LLM Training

This cleaned and structured word dataset is intended to \*\*train or
fine-tune an LLM\*\* for:  - Writing Telugu news in Eenadu style.  -
Translating news into Telugu while maintaining the editorial tone and
style.
=======
# Telugu_word_analysis_for_train_LLM
This repository contains an R script to process and analyze Telugu news text data, specifically for preparing training data for a custom LLM (Large Language Model) aimed at generating or translating Telugu news in Eenadu style.
>>>>>>> a7efa39fe20b0bd5c1930e12e92f5f8a83dcc8f6

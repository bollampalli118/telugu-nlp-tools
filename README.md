# telugu-nlp-tools

## Overview
This repository contains tools to analyze Telugu news articles. It extracts unique words and their frequencies from multiple CSVs, helping in Telugu NLP tasks like text analysis and LLM training.

The main script processes CSV files, removes English words, and outputs word counts and top words.

---

## Folder Structure

telugu-nlp-tools/
│
├── CSV files placed on Desktop or any folder (as per folder_path in script)
├── scripts/
│ └── words_data.R # The R script
└── README.md # Project description and usage

yaml
Copy
Edit

---

## Dependencies
You need R installed. Install required packages:

```r
install.packages(c("dplyr", "tidyverse", "tidytext"))
Usage
Place all your CSV files in a folder (currently the script uses Desktop path):

r
Copy
Edit
"C:/Users/DELL/OneDrive - Asianxt Digital Technologies Pvt Ltd/Desktop/EXAMPLES"
Run the script:

r
Copy
Edit
source("scripts/words_data.R")
Outputs
The script saves the following CSV files on your Desktop:

unique_word_counts.csv → all words with their counts

non_english_words.csv → removes words with only English letters

top_50_telugu_words.csv → top 50 Telugu words by frequency

It also prints in the R console:

Total unique words

Total English words

Total Telugu words

Top 50 Telugu words

Notes
Ensure each CSV has a body column containing the text.

The script currently uses a fixed Desktop path; change folder_path in words_data.R if needed.

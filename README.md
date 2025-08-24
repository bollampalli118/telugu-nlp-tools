# telugu-nlp-tools

## Overview
This repository contains tools to analyze Telugu news articles. It extracts unique words and their frequencies from multiple news CSVs, helping in Telugu NLP tasks like text analysis and LLM training.

The main script processes CSV files, removes English words, and outputs word counts and top words.

---

## Folder Structure

telugu-nlp-tools/
│
├── data/
│ ├── raw/ # Original CSVs by category
│ └── processed/ # Optional: cleaned/intermediate outputs
│
├── results/ # Final analysis outputs (e.g., top words)
├── scripts/ # R scripts (words_data.R)
└── README.md # Project description and usage

yaml
Copy
Edit

---

## Dependencies
You need R installed. Install required packages:

```r
install.packages(c("tidyverse", "tidytext"))
Usage
Run the main script:

r
Copy
Edit
source("scripts/words_data.R")
This will generate output files in the results/ folder such as:

unique_word_counts.csv

top_50_telugu_words.csv

non_english_words.csv

Example Output
arduino
Copy
Edit
# unique_word_counts.csv
word,count
తెలుగు,1200
క్రికెట్,950
న్యూస్,870
Notes
Place all original CSVs inside data/raw/ before running the script.

Results will automatically go into the results/ folder.

Suggested GitHub Topics
Telugu-NLP, R, text-mining, word-frequency

vbnet
Copy
Edit

✅ This is clean, professional, and ready to add to your repo.  

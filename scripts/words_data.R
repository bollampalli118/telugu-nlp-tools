# ============================
# Merge CSVs & Unique Word Counts (Fixed)
# ============================

library(dplyr)
library(tidyverse)
library(tidytext)

# Folder path
folder_path <- "C:/Users/DELL/Desktop/EXAMPLES"

# Get all CSV file paths
files <- list.files(folder_path, pattern = "*.csv", full.names = TRUE)

# Function to safely read CSVs (skip blank lines)
safe_read <- function(f) {
  tryCatch(
    read.csv(f, stringsAsFactors = FALSE, blank.lines.skip = TRUE),
    error = function(e) NULL   # return NULL if file is problematic
  )
}

# Read & merge (skip empty/invalid files)
all_data <- files %>%
  lapply(safe_read) %>%
  bind_rows()

# Tokenize and count unique words
word_counts <- all_data %>%
  filter(!is.na(body)) %>%   # ensure body column has text
  select(body) %>%
  unnest_tokens(word, body, token = "words") %>%
  group_by(word) %>%
  summarise(count = n(), .groups = "drop") %>%
  arrange(desc(count))

# Save all unique words with counts
write.csv(word_counts, "C:/Users/DELL/OneDrive - Asianxt Digital Technologies Pvt Ltd/Desktop/unique_word_counts.csv", row.names = FALSE)

# Preview
head(word_counts, 20)

head(word_counts)

library(dplyr)

total_unique <- nrow(word_counts)
cat("Total unique words:", total_unique, "\n")

head(word_counts, 100)  # Shows first 100 rows (words)

library(dplyr)

# Count rows where the word is only English letters
english_words <- word_counts %>% 
  filter(grepl("^[A-Za-z]+$", word))

# Total number of English words
total_english <- nrow(english_words)
cat("Total English words:", total_english, "\n")

# Optional: see first 20 English words
head(english_words, 20)

library(dplyr)

# Remove all English words (words with only A-Z or a-z)
non_english_words <- word_counts %>%
  filter(!grepl("^[A-Za-z]+$", word))

# Optional: check first 20 words after removal
head(non_english_words, 20)

# Optional: save the cleaned list to a file
write.csv(non_english_words, "C:/Users/DELL/OneDrive - Asianxt Digital Technologies Pvt Ltd/Desktop/non_english_words.csv", row.names = FALSE)


library(dplyr)

# Load the cleaned file
non_english_words <- read.csv("C:/Users/DELL/OneDrive - Asianxt Digital Technologies Pvt Ltd/Desktop/non_english_words.csv")

# Total number of Telugu words
total_telugu <- nrow(non_english_words)
cat("Total Telugu words:", total_telugu, "\n")

# Top 50 most frequent Telugu words
top_50_telugu <- non_english_words %>%
  arrange(desc(count)) %>%  # sort by frequency
  head(50)

# View top 50 words
top_50_telugu

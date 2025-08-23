# =========================
# SHEET-BY-SHEET PROCESSING
# =========================

# Install packages if needed
install.packages(c("readxl", "dplyr", "tidyverse", "stringr", "tidytext", "janitor"))

# Load libraries
library(readxl)
library(dplyr)
library(tidyverse)
library(stringr)
library(tidytext)
library(janitor)

# Set folder path
folder_path <- "C:/Users/DELL/OneDrive - Asianxt Digital Technologies Pvt Ltd/Desktop/EXAMPLES"

# List all Excel files
files <- list.files(path = folder_path, pattern = "*.xlsx", full.names = TRUE)

# Function to process one sheet
process_sheet <- function(file, sheet) {
  df <- read_excel(file, sheet = sheet, col_types = "text") %>%
    clean_names()
  
  # Ensure columns exist
  if (!("headline" %in% names(df)) | !("body" %in% names(df))) {
    return(NULL)  # skip sheets without these columns
  }
  
  df <- df %>%
    mutate(full_text = paste(as.character(.data$headline), as.character(.data$body), sep = " ")) %>%
    unnest_tokens(word, full_text)
  
  # Remove English stopwords
  data("stop_words")
  df <- df %>%
    anti_join(stop_words, by = "word")
  
  df %>%
    count(word, sort = TRUE) %>%
    mutate(file = basename(file), sheet = sheet)
}

# Loop through all files & sheets
all_counts <- list()

for (f in files) {
  sheets <- excel_sheets(f)
  for (s in sheets) {
    message("Processing: ", basename(f), " - ", s)
    result <- process_sheet(f, s)
    if (!is.null(result)) {
      all_counts[[length(all_counts) + 1]] <- result
    }
  }
}

# Combine all word counts
final_counts <- bind_rows(all_counts)

# Save output
write.csv(final_counts, file = paste0(folder_path, "/unique_word_counts_all_sheets.csv"), row.names = FALSE)

# =========================
# DONE: Output saved in EXAMPLES/unique_word_counts_all_sheets.csv
# =========================

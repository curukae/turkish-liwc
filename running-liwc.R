# Necessary Libraries

library("quanteda")
library(tm)

# Creating a Corpus
# Run the analysis with all txt files

src <- DirSource("corpus/allfiles")
corpus <- Corpus(src)

# Importing the LIWC dictionary
dictliwc <- dictionary(file = "datasets/turkish-liwc-dictionary.dic", format = "LIWC")

# Running the analysis
liwc_output <- dfm(tokens(corpus[]$content), dictionary = dictliwc)

# Save the LIWC output on a CSV
write.csv(bahceli_output, "deneme.csv")
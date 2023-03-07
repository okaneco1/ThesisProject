#Lake Trout and Rainbow Trout distance

library(ape)

all.seqs <- read.dna("FishOnly_12S_align_JK_072821.fas", format="fasta")

###### Finding all lake trout and rainbow trout sequences #########

#reference for names
labels(all.seqs)

### find lake trout sequences
target_title <- "namaycush"
target_seq <- NULL
lt_seq_num_list <- c()

for (i in 1:length(labels(all.seqs))) {
  if (grepl(target_title, labels(all.seqs)[i])) {
    lt_seq_num_list <- append(lt_seq_num_list, i)
  }
}

### find rainbow trout sequences
target_title <- "mykiss"
target_seq <- NULL
rt_seq_num_list <- c()

for (i in 1:length(labels(all.seqs))) {
  if (grepl(target_title, labels(all.seqs)[i])) {
    rt_seq_num_list <- append(rt_seq_num_list, i)
  }
}

#sequence row numbers
lt_seq_num_list 
rt_seq_num_list 

##### distance matrix ####

#create full matrix
dist.matrix <- dist.dna(all.seqs,model="N", as.matrix=TRUE)
View(dist.matrix)

#just rt and lt
View(dist.matrix[147:148,134:136])


### percentage difference

all.seqs
#all sequences of length: 156
(1/156)*100 #0.64% difference
(2/156)*100 #1.28% difference

#depends on the strain whether there is enough difference between the two. 







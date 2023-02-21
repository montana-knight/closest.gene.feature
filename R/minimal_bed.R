
minimal_bed <- function(gtf_annotation){
  human_annotation <- read.table(gtf_annotation, fill = TRUE)
  human_genes <- human_annotation[human_annotation[,3]=="gene",]
  human_bed <- human_genes[,c(1,4,5)]
  human_bed <- human_bed[order(human_bed[,1]),]
  human_bed <- human_bed[grep("chr",human_bed[,1]),]
  return(human_bed)
}

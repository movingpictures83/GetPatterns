### R code from vignette source 'EBSeq_Vignette.Rnw'

###################################################
### code chunk number 1: EBSeq_Vignette.Rnw:172-173
###################################################
library(EBSeq)


input <- function(inputfile) {
   Conditions <<- readLines(inputfile)
}

run <- function() {}

output <- function(outputfile) {
PosParti=GetPatterns(Conditions)
if ("C4" %in% Conditions) {
  Parti = PosParti[c(1,2,3,8,15),]
}
else {
Parti=PosParti[-3,]
}
write.table(Parti, outputfile, sep=",")
}

# Loading Iris DB
library(medicaldata)
head(polyps)

# Codebook
codebook<-function(data, varlist){
  cat("****************************************************\n")
  cat("CODEBOOK\n")
  for(j in 1:ncol(data)){
    cat("****************************************************\n")
    cat(paste0("Variable name: ", colnames(data)[j]),"\n")
    cat("Column number: ", j, "\n")
    cat("Description: ",varlist[j], "\n")
    cat(paste0("Variable type: ", class(data[,j])),"\n")
    if(class(data[,j])=="factor"){
      cat("Levels : ")
      for(i in 1:c(length(levels(data[,j]))-1)){
        cat(paste0(levels(data[,j])[i],", "))
      }
      cat(paste0(levels(data[,j])[length(levels(data[,j]))],"\n"))
    }
  }
}

# Print codebook
codebook(polyps, varlist=c("Participant ID",
                           "Sex",
                           "Age",
                           "Number of Polyps at Baseline",
                           "Treatment Assigned",
                           "Number of Polyps at 3 Months",
                           "Number of Polyps at 12 Months"))

gettingnames <- function(filename, species){
    # a R function to extract the proportion of the mapped pangenome across the species 
    # taking into account the species comparison after the orthology runs
    readfile <- read.csv("filename", sep = "\t", stringAsFactors = FALSE)
    species <- species
    readfile[which(readfile[2] == "species"),]
    tableprop <- prop.table(table(readfile[which(readfile[2] == "species")]))
    return(as.dataframe(tableprop))
}


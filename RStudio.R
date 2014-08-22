pollutantmean <- function(directory, pollutant, id = 1:332) {
  if(pollutant=="sulfate"){
    col<- ncol(1)  
  }
  else if(pollutant=="nitrate"){
    col<- ncol(2)
  }
  Data_List <- list()
  for(j in id){
    if(j<10){
      ID_CSV<- paste("00", j, ".csv", sep="")
    }
    else if(j>=10 && j <100){
      ID_CSV<-paste("0", j, ".csv", sep="")
    }
    else {
      ID_CSV<- paste(j, ".csv", sep="")
    }
    
    Read_file<- paste("/Users/ndjoli.EVACO/Documents/R/", directory,"/", ID_CSV, sep="")
    con <- read.csv(Read_file)
    Data_List<- list(Data_List,con[,col])
  
  mean <- means(Data_List, na.rm=True)
  means
}
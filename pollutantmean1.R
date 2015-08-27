
pollutantmean1 = function(directory, pollutant, id = 1:332)
{	
  ##directory = "/home/raghav/Desktop/Rlanguage/specdata/"
  files = list.files(path=directory, pattern="*.csv")
  meanMatrix = matrix(nrow=332, ncol=1, dimnames=list(c(1:332),c("meanValue")))
  {
  for(i in id)
  {
    name=c(directory,files[i])
    path=paste(name , collapse ="/")#Directory from where we read the CSV file
    csvFile=read.csv(file=path)#read and store the file in csvFile table
    if(pollutant == "sulfate")
    {
      valueMean=mean(csvFile$sulfate, na.rm=T)
      meanMatrix[i,1]=valueMean
      print(valueMean)
    }
    if(pollutant == "nitrate")
    {
      valueMean=mean(csvFile$nitrate, na.rm=T)
      meanMatrix[i,1]=valueMean
      print(valueMean)
    }
  }
  mv=mean(meanMatrix,na.rm = T)
  print("This is final mean value:")
  print(mv)
  }
}

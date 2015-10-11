plot1 <- function(){
#Read only the data needed
     data_file<-read.csv2("household_power_consumption.txt",
                              skip = 66637,nrow=2878)
     col_tit<-read.csv2("household_power_consumption.txt",nrow=1)
#Because skipping 66637 Lines will skip the title line
#col_tit was created to recapture the tile line of 
#original data file ("household_power_consumption.txt)
     colnames(data_file)<-colnames(col_tit)
     png("plot1.png")
     hist(as.numeric(data_file$Global_active_power), 
          main = "Global Active Power",
          xlab="Global Active Power(kilowats)",col="Red")
     dev.off()
     
}
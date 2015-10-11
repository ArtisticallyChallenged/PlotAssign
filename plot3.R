plot3 <- function(){
     #Read in only data need instead of entire file.
     #setwd("C:/Users/Karen/Desktop/Cousera/R Working Directory")
     data_file<-read.csv2("household_power_consumption.txt",skip = 66637,nrow=2878)
     #Skipping the 66637 line also skipped title row
     #Created col_title to get tile row back
     col_tit<-read.csv2("household_power_consumption.txt",nrow=1)
     colnames(data_file)<-colnames(col_tit)
     #Open png device
     png("plot3.png")
     plot(as.numeric(data_file$Sub_metering_1),type="l",
          xlab ="", ylab = "Energy Sub Metering",
          xaxt="n",yaxt = "n")
     lines(as.numeric(data_file$Sub_metering_2),type = "l",
          xlab ="", ylab = "Energy Sub Metering",
          xaxt="n",yaxt = "n",,col = "Red",ylim=20)
     lines(as.numeric(data_file$Sub_metering_3),type = "l",
          xlab ="", ylab = "Energy Sub Metering",
          xaxt="n",yaxt = "n",col = "Blue")
     #Set Up graph criteria.
     axis(side=1, at = c(1,1439,2878),labels = 
               c("Thur","Fri","Sat"))
     axis(side=2,at =c(0,2,4,6,8),labels=c(0,10,20,30," "))
     legend("topright",names(data_file)[6:8],lty = 1,
            col=c("Black","Red","Blue"),cex = .5)
     par(mar=c(4.1,3.1,3.1,1.1))
     #Closed graphic device
     dev.off()
   
     
}
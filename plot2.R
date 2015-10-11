plot2 <- function(){
     #Read in only data need instead of entire file.
     #setwd("C:/Users/Karen/Desktop/Cousera/R Working Directory")
     data_file<-read.csv2("household_power_consumption.txt",skip = 66637,nrow=2878)
     #Skipping the 66637 line also skipped title row
     #Created col_title to get tile row back
     col_tit<-read.csv2("household_power_consumption.txt",nrow=1)
     colnames(data_file)<-colnames(col_tit)
     #Open png device
     png("plot2.png")
     
     plot(as.numeric(data_file$Global_active_power),type="l",
          xlab ="",ylab="Global Active Power(kilowats)",xaxt="n",yaxt="n")
     #Set Up graph criteria.
     axis(side=1, at = c(1,1439,2878),labels = 
               c("Thur","Fri","Sat"))
     axis(side=2,at =c(0,200,400,600),labels=c(0,2,4,6))
     #Closed graphic device
     dev.off()
   
     
}
plot2 <- function(){
#Read in only data need instead of entire file.
     file_path <-"C:\Users\Karen\Desktop\Cousera\
               R Working Directory\household_power_consumption.txt"
     data_file<-read.csv2(file_path,skip = 66637,nrow=2878)
#Skipping the 66637 line also skipped title row
#Created col_title to get tile row back
     col_tit<-read.csv2(file_path,nrow=1)
     colnames(data_file)<-colnames(col_tit)
#Open png device
    # png("plot1.png")
#Set Up graph criteria.
     lines(as.numeric(data_file$Global_active_power), 
          main = "Global Active Power")
#Closed graphic device
    # dev.off()
     
}
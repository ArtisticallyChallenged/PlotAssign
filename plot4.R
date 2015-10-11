plot4 <- function(){
     source("plot1.R")
     source("plot2.R")
     source("plot3b.R")
     source("plot3c.R")
     source("plot3.R")
     png("plot4.png")
     par(mfrow=c(2,2))
     plot2()
     plot3c()
     plot3()
     plot3b()
     dev.off()
}

fileUrl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./data/Human_Activity.zip")
dateDownloaded <- date()
dateDownloaded
## To decompress the files, I copied the files X_train and X_test. They are in txt format.
## I continue reading and putting them in a R object.
xtr <- scan("./data/X_train.txt", what = double(),sep = "",na.strings = "NA")
xte <- scan("./data/X_test.txt", what = double(), sep = "", na.strings = "NA")
fet <- scan("./data/features.txt", what = character(), sep = "-",na.strings = "NA",nlines = 561, fill = TRUE)
## to clean the features file, read it in a Notepad, add dashes to have rows with three character variables.
4124472/561
1653267/561
## To calculate the number of rows in each file
dim(fet) <- c(3,561)
dim(xte)<- c(561,2947)  ## The register come by row, we put them by column
dim(xtr)<- c(561,7352)
xtet <- t(xte)
xtrt <- t(xtr)
xt <- rbind(xtrt,xtet)  ## this is the answer of point 1
xt<- data.frame(xt)
                 ## these are the answers of point 3 and 4
names(xt)<-c(fet[1,])     ## to add the names of the comlumns
s <- c(fet[2,] == "std()")  ##wich columns calculates the std function
m <- c(fet[2,] == "mean()")  ## the same for the mean
                  ## this is the answer of point 2
xs <- xt[s]    ##it extract the columns with the std function
xm <- xt[m]     ## it extract the columns with the mean function
                ## this is the answer of point 5
xsm <- cbind(xs,xm)   ## It presents the answer in one data.frame
write.table(xsm,"./quiz2/xsm.csv", sep ="")
xtmeans <- lapply(xt,mean) ## data set whith the average of each variable,for each activity
                           ## and each subject.
write.table(xtmeans,"./quiz2/xtmeans.csv",sep="") 
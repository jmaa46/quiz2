CodeBook.md
1. I downloaded the file from the website showed by the assignment. I supress the "s" in the Url "https://..."
2. The file was zipped. I openned the file and copy its contened to a working area called "data".
3. The file "features.txt" has the names of the columns in a character format. Each name has three 
   parts: the name, the fuction and the dimension (X, Y, Z).
4. The parts have an hyphen in between. But it doesn't occur in all the cases. I charged the file in a Notpad and worked to
   include a hyphen where it didn't appeared. First, I included a hyphen after a "()" simbol. Second, I eliminated a hyphen 
   when it was duplicated. 
5. The file obtained was chargen in a matrix  called fet (to simplify the features name), with dimension = (3,561)
6  The X_train file and X_test file were charged in the matrices xtr and xte (to simplify the names). The first one with 
   dimension(561,7352), and the other one with dimension (561,2947).
7. As we need the data with the caracteristics in the columns and the cases in the rows, I take the transpose matrices
   and put them in xtrt and xtet.
8. Then I merged, using rbind() function, both matrices in xt.
9. I converted this matrix in a data.frame and added the names of the columas from the first row of the features matrix (fet).
10. Using the second row of the features matrix I captured the columns that calculates the mean(), and the columns that 
    calculates the std(). I put the results in logical vectors m and s ("m" for mean and "s" for std).
11 With these vectors I extracted the columns from the  xt matrix. I put them in xm and xs matrices, both with (10299,33)
   dimension. 
12. I merged both matrices, using cbind() function,  in xsm matrix with dimension (10299,66). This is the matrix we were looking for.
13. In the last point of the assignment, I created a data set using the lapply function, and put the result in xtmen matrix. 
14. I wrote xsm andd xtmen matrices in the workin area. I wrote them as "txt files".
   
   	
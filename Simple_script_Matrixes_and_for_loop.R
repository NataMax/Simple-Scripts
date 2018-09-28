                  # 1. Create a matrix
# 1st way to create a matrix
x <- matrix(1:16, nrow = 4, dimnames = list(c("G1","G2","G3","G4"), c("A","B","C","D")))
colnames(x)
rownames(x)
dim(x)
nrow(x)
ncol(x)

#2nd way to create a matrix
y=cbind(c(1,2,3,4),c(4,5,6,7),c(8,9,10,11),c(12,13,14,15,16))
z=rbind(c(1,2,3),c(4,5,6),c(7,8,9))

#3rd way to create a matrix
a <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,16,16)
class(a)
dim(a) <- c(4,4)
class(a)

#4th way 
# Create a 30 x 30 matrix (of 30 rows and 30 columns)
mymat <- matrix(nrow=30, ncol=30)

# For each row and for each column, assign values based on position: product of two indexes
for(i in 1:dim(mymat)[1]) {
  for(j in 1:dim(mymat)[2]) {
    mymat[i,j] = i*j
  }
}
# Just show the upper left 10x10 chunk
mymat[1:10, 1:10]


                # 2. How to access Elements of a matrix?
x
#first row of matrix a
b <- x[c(1),c(1,2,3,4)] #select 1st row and all columns of matrix x
b
#or
b <- x[c(1),] # select 1st row and all columns of matrix x
b
#
b <- x[c("G1","G2","G3"),] # select by names
b
x[2,2] 




                 # 3. Create a data a frame 
A <- data.frame(A = 1:10, B = 26:35, C = 101:110, D = 1001:1010)
A[c(2,4,7),"A"] <- 10
A[c(1,5,8),"B"] <- -7
A

                

                # 4. Mean
r1 <- mean(x[c(1),]) # mean of all elements in first row of matrix x

r1
r2 <- mean(x[c(2),]) # mean of all elements in second row of matrix x
r2

c1 <- mean(x[,c(1)])  # mean of all elements in first column of matrix x
c1

                # 5. "For" loop
# for (val in sequence)
# {
# statement
# }

M <- matrix(nrow=nrow(x), ncol=1)
k=nrow(x)
for (j in 1:k)
{
M[j,1] <- mean(x[c(j),])
}
M

               # 6. RowMeans Function
M1 <- rowMeans(x)
M1




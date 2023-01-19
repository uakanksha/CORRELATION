#MATHEMATICAL OPERATIONS

  #creation of vectors a and b
    a <- c(2,4,6,8)
    b <- c (1,2,3,4)
  #vector addition
    q <- (a+b)
  #vector substration
    w <- (a-b)
  #vector multiplication with a scalar
    e <- 2* a
  #vector multiplication with another vector (DOT PRODUCT) function = dot
  #import a library GEOMETRY
    library(geometry)
    r <- dot(a,b)
  #find the magnitute ofthe vector
    norm(a , type = "2")
  #unit vector (funcation = norm)
    t <- a / norm(a , type = "2")
  #theta (in radian) (to get theta we need to take 1/cos) function = acos
    theta <- acos(dot(a,b)/(norm(a , type = "2")*norm(b , type = "2")))

#MATRIX

#create a vector
d <- c ( 1:25)
#Create a matrix [function = matrix]
  ## one created vector broken down into a matrix [byrow = T]
    M <- matrix(d , nrow = 5 , ncol = 5 , byrow = T)
  ### many vectors joined to create a matrix [function = cbind] i.e to bind by columns
    f <- cbind(a,b)
  ### many vectors joined to create a matrix [function = rbind] i.e bind by rows
    g <- rbind(a,b)
# convert data frame to matrix
  #get the BOD dataset from the R datasets
    z <- BOD
  #check the class  
    class(z)
  #convert into matrix [function data.matrix]
  m <- data.matrix(z)  
  class(m) #class=matrix
  #remove the column name of the dataset/matrix
  colnames(m) <- NULL
  View(m)
  #TRANSPOSE the matrix
  n <- t(m)
  #MATRIX-MATRIX MULTIPLICATION
  mm <- n %*% m
  #element by element multiplication i.e A1*B1 and A2*B2 and A3*B3 )
  mn <- mm * n
  #determinant of the matrix
  det(mm)
  #Eign value and eign vector
  ev <- eigen(M) # provide both eign value and vector
  #get eign value
  value <- ev$values
  #get eigh vector
  vector <- ev$vectors

#LINEAR EQUATIONS
  # example x+y=6 ; -3x+y=2 find x and y 
  # form matrics with the equations i.e A and B with function = solve
    A<- rbind(c(1,1),c(-3,1))
    B <-c (6,2)  
    sol <- solve(A,B)    
    print(sol)    
    
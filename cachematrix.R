## Following are the two functions for matrix inversion

# The makeCacheMatrix function creates a special "matrix" object that can
# Set and get value of a matrix
# set and get the value of inverse of a matrix

cacheSolve <- function(x, ...) { 
  inv <- x$getinverse() 
  if(!is.null(inv)) { 
    message("Processing..please wait")
    return(inv) 
  } 
  data <- x$get() 
  inv <- solve(data) 
  x$setinverse(inv) 
  inv 
} 


# The cacheSolve function computes the inverse of the special "matrix" returned by makeCacheMatrix function above

cacheSolve <- function(x, ...) { 
  invrt <- x$getinverse() 
  if(!is.null(invrt)) { 
    message("Processing..please wait")
    return(invrt) 
  } 
  data <- x$get() 
  invrt <- solve(data) 
  x$setinverse(invrt) 
  invrt 
}

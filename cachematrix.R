## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## this function is creating a matrix that contain a list that contain functions to 
## set the matrix & the inverse & get the same  
## the function create a matrix to pass to the cash_solve funcation 



makeCacheMatrix <- function(x = matrix()) {

  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
  
}


## Write a short comment describing this function
## this function take the above function as argument to return the inverse of the matrix x
## which created by teh above function & make sure that the returned value is from cashed or not    


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
  
  
}






## Put comments here that give an overall description of what your
## functions do 
##Testingdcd

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) i <<- inverse
  getInverse <- function() i
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)

  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  i <- x$getInverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }else{
  data <- x$get()
  
  
  i <- solve(data)
  
  x$setInverse(i)
  return(i)
  }
}
#Here

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
invr <- NULL
set <- function(y) {
  x <<- y
  invr <<- NULL
}
get <- function() x
set_invr <- function(inverse) invr <<- inverse
get_invr <- function() invr
list(set=set, get=get, set_invr=set_invr, get_invr=get_invr)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  invr <- x$get_invr()
  if (!is.null(invr)){
    message("take cache")
    return(invr)
  }
  data <- x$get()
  invr <- solve(data)
  x$set_invr(invr)
  invr
        ## Return a matrix that is the inverse of 'x'
}

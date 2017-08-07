## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function() {
  set <- function(y) {
    x <<- y
    r <<- NULL
  }

  get <- function() x
  list(set = set, get = get)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  if(!is.null(r)) {
     message("getting cached data")
     return(r)
  }
  my_matrix <- x$get()
  r <<- solve(my_matrix, ...)
  r
}

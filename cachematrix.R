## Put comments here that give an overall description of what your
## functions do

## 'makeCacheMatrix' is used to set and get a square matrix, it's "matrix(1:4,nrow=2,ncol=2)" in the example:

## 'cacheSolve' is used to get the inverse of the matrix that 'makeCacheMatrix' generates. If the inverse of the matrix (r) has already been computed (r is not NULL), then just return it, if not, then calculate the inverse of the matrix and show it. If 'cacheSolve' runs once, then the inverse of the matrix is saved in the cache. Next time run 'cacheSolve', the inverse of the matrix (r) will be returned from cache immediately.

## > source('F:/Education/Git & R/R/Sources/cachematrix.R')
## > makeCacheMatrix()$set(matrix(1:4,nrow=2,ncol=2))
## > cacheSolve(makeCacheMatrix())
##      [,1] [,2]
## [1,]   -2  1.5
## [2,]    1 -0.5
## > cacheSolve(makeCacheMatrix())
## getting cached data
##      [,1] [,2]
## [1,]   -2  1.5
## [2,]    1 -0.5
## > cacheSolve(makeCacheMatrix())
## getting cached data
##      [,1] [,2]
## [1,]   -2  1.5
## [2,]    1 -0.5

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

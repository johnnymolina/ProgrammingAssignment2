# Assignment: Caching the Inverse of a Matrixless 
# Matrix inversion is usually a costly computation and there may be some benefit to caching
# the inverse of a matrix rather than compute it repeatedly 
# Write a pair of functions that cache the inverse of a matrix.
#
# Part 1
# This function creates a special matrix object that can cache its inverse
#
#
makeCacheMatrix <- function(x = matrix()) {
dmy <- NULL
  set <- function(y){
  x <<- y
  dmy <<- NULL
  }
  # Calculate inverse of matrix 'x'        
  get <- function()x
  setInverse <- function(inverse) dmy <<- inverse
  getInverse <- function() dmy 
  list(set = set, get = get, 
  setInverse = setInverse, 
  getInverse = getInverse)
        
}


# Part 2
# This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
# If the inverse has already been calculated (and the matrix has not changed),
# then the cachesolve should retrieve the inverse from the cache. 
#
#
cacheSolve <- function(x, ...) {
  # Return a matrix that is the inverse of 'x'
  dmy <- x$getInverse()
  if(!is.null(dmy)){
  message(" Matrix already calculated. Getting cached data .....")
  return(dmyj)
  }
  mat <- x$get()
  dmy <- solve(mat,...)
  x$setInverse(dmy)
  dmy        
        
}

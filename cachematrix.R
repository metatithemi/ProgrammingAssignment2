## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Creates a list containing functions
## which can cache a matrix and get/set
## the inverse of the cached matrix

makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL
    set <- function(y) {
        x <<- y
        inverse <<- NULL
    }
    get <- function() x
    setinverse <- function(solve) inverse <<- solve
    getinverse <- function() inverse
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)

}


## Write a short comment describing this function
## Uses the solve function to calculate the inverse of
## the entered matrix.

cacheSolve <- function(x, ...) {
    inverse <- x$getinverse()
    if(!is.null(inverse)) {
        message("getting cached data")
        return(inverse)
    }
    mtx <- x$get()
    inverse <- solve(mtx)
    x$setinverse(inverse)
    inverse
    
        ## Return a matrix that is the inverse of 'x'.
        ## Note: I still am a little fuzzy on the <<- operator.
}

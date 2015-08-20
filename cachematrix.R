## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(sqrMat = matrix()) {
        if (ncol(sqrMat)!=nrow(sqrMat)){
        message("getting cached data")
        return(m)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setmean(m)
        m
}


## Write a short comment describing this function

cacheSolve <- function(cachedMat, ...) {
        invMat <-cacheMat$getInv()
        if (!is.null(invMat)){
        message('Getting cached inversed Matrix!')
        return(invMat)
        ## Return a matrix that is the inverse of 'x'
}

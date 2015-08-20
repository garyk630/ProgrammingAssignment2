## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(sqrMat = matrix()) {
        if (ncol(sqrMat)!=nrow(sqrMat)){
        message("getting cached data")
        return(0)
        }
        invMat <- NULL
	get <- function() sqrMat
	setInv <- function(solved) invMat <<- solved
	getInv <- function() invMat
	list(get = get, 
		 setInv = setInv, 
		 getInv = getInv)
}


## Write a short comment describing this function

cacheSolve <- function(cachedMat, ...) {
        invMat <-cacheMat$getInv()
        if (!is.null(invMat)){
        message('Getting cached inversed Matrix!')
        return(invMat)
        }
        sqrMat <- cachedMat$get()
	invMat <- solve(sqrMat,...)
	cachedMat$setInv(invMat)
	return(invMat)
        ## Return a matrix that is the inverse of 'x'
}

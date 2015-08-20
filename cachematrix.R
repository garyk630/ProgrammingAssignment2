## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCachedMatrix <- function(sqrMat = matrix()){
	if (ncol(sqrMat)!=nrow(sqrMat)){
		message("Bad matrix: not square!!")
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

cacheSolve <- function(cachedMat, ...){
	invMat <- cachedMat$getInv()
	if (!is.null(invMat)){
		message('Getting cahced inversed Matrix!')
		return(invMat)
	}
	sqrMat <- cachedMat$get()
	invMat <- solve(sqrMat,...)
	cachedMat$setInv(invMat)
	return(invMat)
}

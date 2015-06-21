## makeCacheMatrix is a function that returns a list of four functions (setmatrix,getmatrix,setinverse and getinverse)
## cachesolve is a function that first checks if the inverse of a particular function is already in the cache. If yes, it returns the cached inverse, otherwise, it computes a new inverse and caches the result.

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inverse <- NULL
setmatrix <- function(y){
x <<- y
inverse <<- NULL}
getmatrix <- function() x
setinverse <- function(inv2){
inverse <<- inv2}
getinverse <-function()inverse
list(setmatrix = setmatrix, getmatrix = getmatrix, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {m  <- x$getinverse()
if (!is.null(m)){
message("getting cached data")
return(m)}
data<- x$getmatrix()
m <- solve(data, ...)
x$setmatrix(m)
m
        ## Return a matrix that is the inverse of 'x'
}

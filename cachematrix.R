##The below code consists of two functions, makeCacheMatrix and cachesolve
##

## (1) MakeCacheMatrix is a function that returns a list of 4 functions(setmatrix,getmatrix,setinverse and getinverse)

makeCacheMatrix <- function(x = matrix()) {inverse <- NULL
setmatrix <- function(y){
x <<- y
inverse <<- NULL}
getmatrix <- function() x
setinverse <- function(inv2){
inverse <<- inv2}
getinverse <-function() inverse
list(setmatrix = setmatrix, getmatrix = getmatrix, setmean = setmean, getmean = getmean)


}


## (2) cachesolve is a function that first checks if the inverse of a matrix is present in the cache.
##If yes, the inverse is fetched from the cache using the getinverse function. 
##If not, the new inverse is computed and the result is stored in the cache.

cacheSolve <- function(x, ...) {m  <- x$getinverse()
if (!is.null(m)){
message("getting cached data")
return(m)}
data<- x$getmatrix()
m <- solve(data, ...)
x$setmatrix(m)
m       ## Return a matrix that is the inverse of 'x'
}

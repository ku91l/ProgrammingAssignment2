## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
seq1=seq(1:6)
y<-matrix(seq1,2)
makeCacheMatrix <- function(x = matrix()) {
i <- NULL
set <- function(y){
x <<- y
i <<- NULL}
get <- function() x
setInverse <- function(solve) i<<-solve(x)
getInverse <- function() i
list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)


}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
i<-x$getInverse()
if(!is.NULL(i))
{message("Getting Cached")
return(i)
}
data<-x$get()
m<-(data,...)
x$setInverse(i)
i}
        ## Return a matrix that is the inverse of 'x'
}

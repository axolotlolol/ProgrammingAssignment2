## Programming Assignment Week 3 

## makeCacheMatrix: create 'matrix' object which can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        se <- function(y){
                x <<- y
                inv <- NULL
                }
        ge <- function()x
        seinv <- function(solve) inv <<- solve
        geinv <- function () inv
        list(se = se, ge = ge, seinv = seinv, geinv = geinv)
}


## cacheSolve: retrieve the inverse from 'matrix' object

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$geinv()
        if(!is.null(inv){
                message("getting cached data")
                return(inv)
                }
           dat <- x$ge()
           inv <- solve(dat)
           x$seinv(inv)
           inv
}

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    I <- NULL
    
    get <- function(){ x }
    set <- function(a){
        I <<- NULL
        x <<- a
    }
    getinv <- function(){ I }
    setinv <- function(inverse){ I <<- inverse }
    return(list(get = get, set = set, getinv = getinv, setinv = setinv))
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$get()
    inv <- x$getinv()
    if(is.null(inv)){
        print("Inverse matrix is solved!")
        x$setinv(solve(m))
        inv <- x$getinv()
    }
    return(inv)
}

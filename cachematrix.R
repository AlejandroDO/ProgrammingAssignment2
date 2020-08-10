## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y){
        x <<- y     ##Remove data from x
        m <<- NULL  ##Remove data from m
    } 
    get <- function() x
    setInverse <- function(inverse) m <<- inverse
    getInverse <- function() m
    list(set = set,
         get = get, 
         setInverse = setInverse, 
         getInverse = getInverse )
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse()
    if(!is.null(m)){
        message("Getting cache data")
        return(m)
    }
    data <- x$get()        ##Get the matrix
    m <- solve(data, ...) ##Calculate the inverse 
    x$setInverse(m)
    m
}

## These functions create, cache and calculate the inverse of a matrix


## Write a short comment describing this function: The first part of this program is setting up to create the "special"
##matrix. Once we set up the matrix, we set up the function to be able to set(or cache) the matrix.

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
            x <<- y
            m <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) m <<- inverse
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
    }



## The second part of this function is pulling the inverse of the matrix with the solve function. 

cacheSolve <- function(x, ...) {
    m <- x$getinverse()
    if(!is.null(m)) {
        message("Getting cached data...")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m   
}

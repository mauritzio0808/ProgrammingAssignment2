## Mauricio Escalera

## The following assigment tends to create a function that get the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
  
}

m <- NULL
set <- function(y)
{
  x <<- y
  m <<- NULL
}
get <- function() x
setinverse <- function(inverse) m <<- inverse
getinverse <- function() m
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}



## On the on hand the pair of functions is used in order to cache the inverse of a matrix.
## On the other hand the next function first sets a special matrix object to allow it to be cached for the inverse

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m  ## Return a matrix that is the inverse of 'x'
}

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = numeric()) {
  inver <- NULL
  set <- function(y) {
    x <<- y
    Invert <<- NULL
  }
  get <- function() x
  setinver <- function(inverse) inver <<- inverse
  getinver <- function() inver
  list(set = set, get = get,
       setinver = setinver,
       getinver = getinver)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inver <- x$getinver()
  if(!is.null(inver)) {
    message("getting cached data")
    return(inver)
  }
  mat.data <- x$get()
  inver <- solve(mat.data, ...)
  x$setinver(inver)
  return(inver)
}




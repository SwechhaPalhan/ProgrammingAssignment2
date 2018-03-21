## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
      x <<- y
      i <<- NULL
  }
    
  get <- function(){x}
  getInverse <- function(x) {i}
  setInverse <- function(z) {i <<- z}

  list( get = get,
        set = set,
	getInverse = getInverse,
	setInverse = setInverse )

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  i <- x$getInverse()
  
  if (!is.null(i)) {
      print("Getting cached inverse")
      return(i)
  }
  
  data_matrix <- x$get()
  i <- inv(data_matrix)
  x$setInverse(i)
  i
}

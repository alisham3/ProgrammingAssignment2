## This function makes a matrix that can be inverted without issues.
## Using the function prints the inverse. If already inverted, it will notify
## the user and print the laready inverted matrix.

## makeCacheMatrix makes a matrix object that can cache itself. 

makeCacheMatrix <- function(x = matrix()) {
  a<-NULL
  set <function(y){
  x <<- y
  a <<- NULL
  }
  get<- function () x
  set_inverse <- fucntion(solve) a <<- solve
  get_inverse<- function() a 
  list (set = set, get = get, 
        set_inverse = set_inverse,
        get_inverse = get_inverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

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
  set_inverse <- function(solve) a <<- solve
  get_inverse<- function() a 
  list (set = set, get = get, 
        set_inverse = set_inverse,
        get_inverse = get_inverse)
}

## cacheSolve makes the invert of makecacheMatrix. If already inverted and matrix
## has not changed, then cacheSolve makes the inverse of the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        a<- x$get_inverse()
        if(!is.null(a)){
        message("retrieving cached inverse matrix")
        return(a)
        }
        else{
        a<- solve(x$get(),...)
        x$set_inverse(a)
        return(a)
      }
      

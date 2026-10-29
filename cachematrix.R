
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## first, i made cache and i call it empty box then i started making set function which sets the matrix (name on it)
## then  made get function which read,gets the x matrix
##then the setInverse function which adds the cache the box the inverse code so now m is the inverse of it
##getInverse function check if the matrix has inverse or not
## at the end we have to give them as a list so i gave it adn if you ask though,i made such as set = set to give them name for using it in the future section
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x<<- y
    m <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) m<<- inverse
  getInverse <- function() m
  
  list(set = set,get = get,setInverse = setInverse,getInverse = getInverse)
}


## Write a short comment describing this function
## first i get the inverse of matrix then i checked if it is null or not
##adn i saved x's get as data then i find th einverse of matrix 
##and  i saved it then returned the result
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  if(!is.null(m)) {
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setInverse(m)
  m
  
  
}

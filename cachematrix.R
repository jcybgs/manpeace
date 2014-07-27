## Put comments here that give an overall description of what your
## functions do

##function 1: This function creates a special "matrix" object and cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL 
  set <- function(y) {  
    x <<- y   
    #m <<- NULL 
  }
  get <- function() x  
  setmean <- function(mean)  m <<- mean         
  getmean <- function() m    
  allist<<-list(set = set, get = get,setmean = setmean, getmean = getmean) 
  x
}


## function 2:  This function computes the inverse of the special "matrix" returned by makeCacheMatrix 

cacheSolve <- function(x, ...) {
  m <- allist$getmean()         
  if(!is.null(m)) {   
    message("getting cached data")      
    return(m)        
  }    
  data <- allist$get()   
  m <- solve(data)     
  allist$setmean(m)        
  m 
}

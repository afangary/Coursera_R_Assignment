## Create a square matrix and cache value of it's inverse.

## function makeCacheMatrix sets / Gets the value of the matrix. Set / Gets the value of solved matrix

makeCacheMatrix <- function(OrgMat = matrix()) {
  InvMat <- NULL
  
  set <- function(y = matrix) {
    OrgMat <<- y
    InvMat <<- NULL
  }
  get <- function() OrgMat
  setsolve <- function(solvematrix) Invmat <<- solvematrix
  getsolve <- function() InvMat
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve
       )
}

## function returns value of cached matrix  created from MakeCacheMatrix. if the matrix is not cached then
##it inverse the matrix and save it to cahe

cacheSolve <- function(x, ...) {
 
  
  InvMat <- x$getsolve()
  if(!is.null(InvMat)) {
    message("getting cached data")
    return(InvMat)
  }
  data <- x$get()
  InvMat <- solve(data, ...)
  x$setsolve(InvMat)
  InvMat
  
}

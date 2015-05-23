## This function is used to get cached inverse matrix from the original matrix
## 

## getting the values of rows and columns of a matrix
makeCacheMatrix <- function(x = matrix()) {
 m<-NULL
  set<-function(y){
  x<<-y
  m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)

}


## Inverting the matrix and getting cached data

cacheSolve <- function(x, ...) {
 m<-x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    datos<-x$get()
    m<-solve(datos, ...)
    x$setmatrix(m)
    m
        ## Return a matrix that is the inverse of 'x'
}

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	inv<-NULL
	set<-function(m){
		x<<-m
		inv<<-NULL
	}
	get<-function() x

	setInv<-function(invert){
		inv<<-invert
	}
	getInv<-function() inv

	list(set=set,get=get,setInv=setInv,getInv=getInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse<-x$getInv()
	if(!is.null(inverse)){
		message("getting cached data")
		return(inverse)
	}

	data<-x$get()
	inverse<-solve(data)
	x$setInv(inverse)
	inverse
}

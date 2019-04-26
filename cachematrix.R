## Cache the inverse of a matrix
## This function will cache the inverse of a matrix rather than 
## computing it repeatedly. The following functions will create a
## special object that stores a matrix and cache its inverse.


## This function creates a matrix that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set<-function(a) {
		x<<-a
		inv<<-NULL
	}
	get <-function() x
	setInverse <- function(solve) inv <<-solve
	getInverse <- function () inv
	list(set = set,
		get = get,
		setInverse = setInverse
		getInverse = getInverse
)
}


## This function will inverse the matrix created by the function above. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		inv <-x$getInverse()
		if(lis.null(inv)){
			message("getting cached data")
			return(inv)
		}
		data <- x$get()
		inv<-solve (data,...)
		x$setInverse(inv)
		inv
}
$ git commit -m "Add existing file"
$ git push origin mliss02-ProgrammingAssignment2


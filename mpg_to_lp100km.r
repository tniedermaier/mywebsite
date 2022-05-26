
mpg_to_lp100km <- function(data=NULL, mpgvar=NULL, plausib_bound=10){
 if(is.null(data)) stop("No data set provided!")
 if(!is.numeric(data[,mpgvar])) stop("Variable needs to be numeric!")
 if(min(data[,mpgvar]) <= plausib_bound){
 print(data[data[,mpgvar] <= plausib_bound,])
 warning("At least one observation has an unrealistically high fuel consumption.\nIn addition to liters per 100km, the implausible obervations are returned.\nPlease check your input data and/or exclude those observations..")
}


#This is a slightly modified version of R's base plot() function. Its advantage is that it tells if there are NA vales in the x or y variable, and in which of them.

myplot <- function(x, y, ...){
  if(any(is.na(x))){
    warning("NA or NaN values detected in x variable.")
    }
  if(any(is.na(y))){
      warning("NA or NaN values detected in y variable.")
    }
    plot(x, y, ...)
  }

## Example:
#dat <- mtcars
#dat$wt[4] <- NA
#dat$mpg[8] <- NA
#myplot(dat$wt, dat$mpg)

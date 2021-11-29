bmi <- function(weight, height){
 weight_tmp <- gsub(",", ".", weight) #Allow for decimal comma instead of decimal point as input
 weight <- as.numeric(weight_tmp)
 if(weight<20 | weight>200) print(noquote("Please check your input."))

 bmi <- weight / (height^2)*10000
 bmi_rounded <- round(weight / (height^2)*10000, 1)

 print(noquote(paste("Your BMI is", bmi_rounded, "kg/m2.")), collapse=TRUE)

 if(bmi<18.5) print(noquote("You are underweight.")) else
 if(bmi>=18.5 & bmi<25) print(noquote("You are normal weight.")) else
 if(bmi>=25 & bmi<30) print(noquote("You are overweight.")) else
 print(noquote("You are obese."))

#In case of overweight, how much weight would one need to lose to become normal weight?
 weight_old <- weight
 bmi_old <- bmi
 while(bmi>25){
  weight <- weight-1
  bmi <- weight / (height^2)*10000
}
#alternatively: repeat{weight <- weight-1; bmi <- weight / (height^2)*10000; if (bmi<=25){break}}

 delta_weight <- abs(weight_old - weight)

 if(bmi_old>25) print(noquote(paste0("You would need to lose ", delta_weight, " kg to achieve normal weight.")), collapse=TRUE)
 if(bmi_old<=25) print(noquote(c("You don't need to lose weight.")), collapse=TRUE)

#In case of underweight, how much weight would one need to gain to become normal weight?
 weight_old <- weight
 bmi_old <- bmi
 while(bmi<18.5){
  weight <- weight+1
  bmi <- weight / (height^2)*10000
}

delta_weight <- abs(weight_old - weight)

if(bmi_old<18.5) print(noquote(paste0("You would need to gain ", delta_weight, " kg to acheive normal weight.")), collapse=TRUE)
if(bmi_old>=18.5 & bmi_old<25) print(noquote(c("You don't need to gain weight.")), collapse=TRUE)

print(noquote(c("Press q() to quit.")), collapse=TRUE)
}
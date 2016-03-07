# 
cpu <- c(55,56,98,100,15,12,33,45,32,67,82,19,25)

# png("")
cpubusy <- 100-cpu
# Plot the Data
plot(cpubusy,type="b",main="CPU Idle Time", xlab="TimeStep",ylab="% Idle")
# dev.off()
print(summary(cpu))

# linear model
# Independent Variable
x<-c(rep(1:13))

y<-lm(cpubusy ~ x)

abline(y, col="green",lwd = 6)

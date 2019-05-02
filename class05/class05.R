#' ---
#' title: "Class 5: R Graphics"
#' author: "Suzanna Kwak"
#' date: "April 18th, 2019"
#' ---

#Class 5 R graphics

#2A. Line plot
weight <- read.table("bimm143_05_rstats/weight_chart.txt",
                     header=TRUE)

plot(weight$Age, weight$Weight,xlab="Age (months)",
     ylab="Weight (kg)", main="Baby Weight with Age",
     pch=15, cex=1.5,ylim=c(2,10),type = "b",lwd=2)

#2B. Bar plot
feat <- read.table("bimm143_05_rstats/feature_counts.txt",
                sep="\t", header=TRUE)

old.par <- par()$mar

par(mar=c(5,11,4,2))
barplot(feat$Count,horiz=TRUE, 
        names.arg=feat$Feature,las=1, 
        main="Number of Features in the Mouse GRCm38 Genome")

# Section 3: Using Color in Plots
# 3A. Providing Color Vectors
counts <- read.delim("bimm143_05_rstats/male_female_counts.txt")

barplot(counts$Count, names.arg=counts$Sample, las=3, 
        col=c("pink","lavender"))
par(mar=old.par)

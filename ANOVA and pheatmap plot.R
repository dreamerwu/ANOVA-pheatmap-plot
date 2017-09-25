############Using one-way ANOVA to screen potential biomarker for predicting TEAD2 dependency
data=read.delim("D:/demo/demo.txt",head=T,sep="\t")
y=data$Dependency_score
x=data$RBM15_MUT
ANOVA=aov(y~x,data=data)
summary(ANOVA)


######To plot mutation biomarkers
library("pheatmap")
data=read.delim("D:/demo/mutation_TEAD2_dependency.txt",head=T,sep="\t")
data2=data[,2:ncol(data)]
annotation=data$Name
rownames(data2)=annotation  #Define the row name
pheatmap(data2,cluster_cols=FALSE,cluster_rows=FALSE,color=colorRampPalette(c("white","black"))(50),border_color="gray",show_rownames=TRUE)


#####To plot CNV biomarkers
library("pheatmap")
data=read.delim("D:/demo/CNV_TEAD2_dependency.txt",head=T,sep="\t")
data2=data[,2:ncol(data)]
annotation=data$Cell_line_name
rownames(data2)=annotation  #Define the row name
pheatmap(data2,cluster_cols=FALSE,cluster_rows=FALSE,color=colorRampPalette(c("green","white","red"))(50),border_color="gray",show_rownames=TRUE)





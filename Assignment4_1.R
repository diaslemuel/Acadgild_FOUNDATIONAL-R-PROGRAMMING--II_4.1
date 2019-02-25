#1
# given data
df1 = data.frame(CustId = c(1:6), Product = c(rep("TV", 3), rep("Radio", 3)))
df2 = data.frame(CustId = c(2, 4, 6), State = c(rep("Texas", 2), rep("NYC", 1)))
df1 #left table
df2 #right table

#Return only the rows in which the left table have match.
df1<-merge(df1,df2,by='CustId')
df1

#Returns all rows from both tables, join records from the left which have matching keys
#in the right table.(new table)
all_rows<-merge(df1,df2,all=TRUE)
all_rows

#Return all rows from the left table, and any rows with matching keys from the right table
#(new table)
left_table_all<-merge(df1,df2,by='CustId',all.x = TRUE)
left_table_all

#Return all rows from the right table, and any rows with matching keys from the left table
#(new table)
right_table_all<-merge(df1,df2,by='CustId',all.y = TRUE)
right_table_all

#2
# given data
df1 = data.frame(CustId = c(1:6), Product = c(rep("TV", 3), rep("Radio", 3)))
df2 = data.frame(CustId = c(2, 4, 6), State = c(rep("Texas", 2), rep("NYC", 1)))
df1 #left table
df2 #right table

library(dplyr)

#Return a long format of the datasets without matching key.
LF<-merge(x=df1,y=df2,by=NULL)
LF
#or
right_join(df1,df2)

#Keep only observations in df1 that match in df2.
semi_join(df1,df2)

#Drop all observations in df1 that match in df2.
anti_join(df1,df2)

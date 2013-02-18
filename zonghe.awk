#awk '
#OFS=':'
#{
#printf("pt is %s,%s",$1,$2)
#}'
awk '{ n=split($1,t,":"); for (j = 1;j<=NR ;j++){ sum[j]=0; for (i = 1;i<=3; i++) sum[j]=sum[j]+t[i] } for (j=1;j<=NF;j++) if (sum[j]>0) print sum[j] }'|uniq|sort -r |uniq |awk 'BEGIN {a=b=c=0}{ i=int($1);print "i is" i; for (w=1;w<=37;w++){pinrt  "i= " i "\n" ; if ( i > 60) {a++} else if (i >30 ) {b++} else {c++} }}END { print a,"\t",b,"\t",c}'
#|awk '{ if ($1 > 60) {print "A is " $1 }else if ($1 >50){ print "B is " $1} else { print "C is "$1 } } '  

#awk -F"pids=|pid=|&area|&c" '{print $2}'

 #~/recomend.txt

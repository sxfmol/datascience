#awk '
#OFS=':'
#{
#printf("pt is %s,%s",$1,$2)
#}'
#awk '{ n=split($1,t,":"); for (j = 1;j<=NR ;j++){ sum[j]=0; for (i = 1;i<=3; i++) sum[j]=sum[j]+t[i] } for (j=1;j<=NF;j++) if (sum[j]>0) print sum[j] }'|uniq|sort -r |uniq |awk 'BEGIN {a=b=c=0}{ i=int($1);print "i is" i; for (w=1;w<=37;w++){pinrt  "i= " i "\n" ; if ( i > 60) {a++} else if (i >30 ) {b++} else {c++} }}END { print a,"\t",b,"\t",c}'
#|awk '{ if ($1 > 60) {print "A is " $1 }else if ($1 >50){ print "B is " $1} else { print "C is "$1 } } '  

#awk -F"pids=|pid=|&area|&c" '{print $2}'

 #~/recomend.txt
#分组求平均值

awk '{ n=split($1,t,":"); for (j = 1;j<=NR ;j++){ sum[j]=0; for (i = 1;i<=3; i++) sum[j]=sum[j]+t[i] } for (j=1;j<=NF;j++) if (sum[j]>0) print sum[j] }'|uniq|sort -r |uniq |awk 'BEGIN {w[c]=1}{ if ($1+0 > 60){ sum1+=$1;print $1,a++;} else if($1>30) { sum2+=$1; print $1,b++;}else { sum3+=$1;c++}} END {print "a class avg: "sum1/a," num "a"\n" "b calss avg "sum2/b," num "b "\n""c class " sum3/c " num " c}'





#awk 'BEGIN{读取文件前处理}{主程序一行一行的读入数据，每次读入系统变量行数NR加1,进行相关处理}END{主程序结束后的处理过程}'
#下面演示了每次读取后的过程
# awk '{for (i=1;i<=NR;i++) {print "NR is " NR"\t" "$1 =:" $1}}' < recomend.txt 

#awk读取一行处理一行，因此上面加for循环后实际执行的是对最后输入的变量值进行判断
awk '{ n=split($1,t,":"); for (j = 1;j<=NR ;j++){ sum[j]=0; for (i = 1;i<=3; i++) sum[j]=sum[j]+t[i] } for (j=1;j<=NF;j++) if (sum[j]>0) print sum[j] }'|uniq|sort -r |uniq |awk '{ i=$1;print "than i is" i; pinrt  "whe i= " i "\t a=" a+1 "\t b=" b"\t c=" c ; if ( i > 60) {a++} else if (i >30  ) {b++} else {c++} }END { print "> 60:num " a,"\t",">30 num:"b,"\t","<30 num:"c}'


linux 下新建脚本
vi factori.awk
编辑内容保存后修改权限 
chmod u+x factori.awk

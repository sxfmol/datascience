## ! /bin/bash
awk '#factorial
BEGIN {print "enter num"}

$1 ~ /^[0-9]+$/ { number = $1
print "num is "$1
if (number == 0)
      fact=1
else {printf("else is %d\n",number); 
fact = number}
for (x = number-1;x > 1;x--)
#{print "factor is "$fact
#	fact=fact*x}
printf("fact is %d,%d,%d\n",fact,x,fact *= x)
print "factori is f(n)=f(n-1)*f(n-2):"fact "\n"

exit
}
{print "enter num corr aging"}

#END {print "THE end\n"; exit}
' 

#!/bin/awk -f
BEGIN {
print "printing a and b values"
}
{
a=$1
b=$2
print "a="a,"b="b
}
END {
print "completed reading a and b values"
}

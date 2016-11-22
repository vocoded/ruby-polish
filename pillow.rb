#!/usr/bin/ruby

# Reference: http://codegolf.stackexchange.com/questions/98701/this-is-my-pillow
# /////\\\\\/////\\\\\/////\\\\\/////\\\\\/////\\\\\/////\\\\\
# \\\\\/////\\\\\/////\\\\\/////\\\\\/////\\\\\/////\\\\\/////

# Iterative - verbose!
puts (0..1439).to_a.map{|x|(y,z,w)=[x%10<5,x/240%2>0,(x+1)%60>0];(y&&z ?"\\":y ?"/":z ?"/":"\\")+(w ?"":"\n")}.join("")

# String concat - smaller!
puts ((((("/"*5)+("\\"*5))*6)+"\n")*4+(((("\\"*5)+("/"*5))*6)+"\n")*4)*3

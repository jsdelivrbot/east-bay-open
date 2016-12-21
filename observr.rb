#!/usr/bin/env observr

def printAndSend cmd
    puts cmd
    system(cmd)
end

watch('(.*)\.md') {|md| printAndSend("markdown #{md[0]} > #{md[1]}.html")}

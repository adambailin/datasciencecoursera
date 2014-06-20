con = url("http://biostat.jhsph.edu/~jleek/contact.html")
htmlCode = readLines(con)
close(con)
print(nchar(htmlCode[c(10,20,30,100)]))
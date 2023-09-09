f = open("library.lib", "r")
line = 0
labelDict = {}
for x in f:
    if x == "\n":
        continue
    if ":" in x:
        labelDict[x.split(":")[0]]=2*line
    line+=1
print(labelDict)
f.close()

src = open("library.lib", "r")
asm = open("library.xsm", "w")
for x in src:
    if x == "\n":
        continue
    if ":" in x:
        x=x.split(":")[1]
    for key in labelDict:
        if key in x:
            x=x.replace(key,str(labelDict[key]))
    asm.write(x)

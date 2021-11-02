import random, os
groups=[]
numGroup = input("How many groups?")
numGroup = int(numGroup)
numGroup = numGroup+1
for i in range(numGroup):
	groups.append(i)
del groups[0]
random.shuffle(groups)
print(groups)
#Add volunteer function
#Add copy to clipboard function

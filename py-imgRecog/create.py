from PIL import Image
import numpy as np
import matplotlib.pyplot as plt
import time
from functools import reduce

def createExamples():
	numberArrayExamples = open('numArEx.txt', 'a')
	numbersWeHave = range(0,10)
	versionsWeHave = range(1,10)

	for eachNum in numbersWeHave:
		for eachVer in versionsWeHave:
			imgFilePath = 'images/numbers/'+str(eachNum)+'.'+str(eachVer)+'.png'
			ei = Image.open(imgFilePath)
			eiar = np.array(ei)
			eiarl = str(eiar.tolist())

			print(eiarl)
			lineToWrite = str(eachNum)+'::'+eiarl+'\n'
			numberArrayExamples.write(lineToWrite)

createExamples()

function average(total, count) { #Function i will call later
	return total/count
}


BEGIN { FS="," } #setting delimeter to , as in example data file
{
        if (NR==1) #skipping header row
                next
        name = $2  
        total[name] += ($3 + $4 + $5) #creating the array, first log is the name second is the sum of all scores
	count[name] = 3

	if (total[name] > max_score || max_score == "") { #finding the topper
		max_score = total[name]
		topper = name
	 }
	if (total[name] < min_score || min_score == "") { #finding the failure
		min_score = total[name]
		failure = name
	}
}
END {
        for (a in total){ #for loop to go through each score and calcuate the average for each student
		avg = average(total[a], count[a]) #average fuction as defined above
		if (avg>=70) #passing guideline
			print a, ": Total is ", total[a], ". Average is ",  avg, ". Student is passing"
		else
			print a, ": Total is ", total[a], ". Average is ", avg,  ". Student is failing"
		
	}

	print "Topper is",  topper, ":" , max_score #printing topper and failure
	print "Failure is", failure, ":", min_score 


}

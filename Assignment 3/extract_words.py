import re

#Open full text
bookfile = open("Alice.txt","r")
#Open allwords
allwords = open("allwords.txt","w")
#Open uniquewords
unique = open("uniquewords.txt","w")

#Instantiate dictionaries
unique_dict = {}
freqs_dict = {}
pattern = re.compile("[a-z]+")

for line in bookfile:
    line = line.lower().split()
    for word in line:
        if( pattern.fullmatch(word) ):
            #If no punctuation, add to allwords
            allwords.write(word + "\n")
            if( word in unique_dict ):
                #If word already occurred, increase count of that word
                unique_dict[word] += 1
            else:
                #Else place word into unique_dict
                unique.write(word + "\n")
                unique_dict[word] = 1
        else:
            line.remove(word)

#Add up amounts of each frequency using dictionary
for frequency in unique_dict.values():
    if( frequency in freqs_dict ):
        freqs_dict[frequency] += 1
    else:
        freqs_dict[frequency] = 1

#Open wordfrequency
freqs = open("wordfrequency.txt","w")
max_key = max(freqs_dict.keys())

#For each frequency, write the amount of times that frequency occured to wordfrequency
for key in range(1,max_key+1):
    if( key in freqs_dict ):
        new_line = str(key) + ": " + str(freqs_dict[key]) + "\n"
        freqs.write(new_line)

#Close files
bookfile.close()
allwords.close()
unique.close()
freqs.close()

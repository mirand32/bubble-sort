#CREATE METHOD FOR SORTING ARRAY OF NUMBERS FROM SMALLEST TO LARGEST

def bubble_sort(arr)
  #create array and initial index
  array = arr
  index = 0

  #run while loop until at last item in array
  while (array.length - 1 > index )
    #if left is bigger than right update array with swap method
    if array[index] > array[index+1]
      swap_nums(array, index)
      #set index back to zero and restart current iteration of loop
      index=0 
      redo
    else
      #move to next item in array
      index+=1
    end
  end
  #display results
  puts array.to_s
end
#method for moving current item one to the right in the array
def swap_nums(array, index)
  bigger_num=array.slice!(index)
  array.insert(index+1, bigger_num)
end

#CREATE METHOD FOR SORTING ARRAY OF WORDS FROM SHORTEST TO LONGEST
def bubble_sort_by(arr)
  #set array and index variables
  words=arr
  index=0
  #set while loop to iterate until at last word of array
  while index < words.length - 1
    #if current word is bigger than next word swap_words
    if yield(words[index], words[index+1]) > 0
      swap_words(words, index)
      #reset index to zero and restart current iteration
      index=0
      redo
    else
      #move to next word in array
      index += 1
    end
  end
  puts words.to_s
end

#remove bigger word from array and insert it back at the next index position
def swap_words(array, current_index)
  bigger_word=array.slice!(current_index)
  array.insert(current_index + 1, bigger_word)
end

bubble_sort_by(["hi","hello","hey", "yo", "howdy", "i"]) do |left,right|
 left.length - right.length
end



bubble_sort([4,3,78,2,0,2])
#Build a method #bubble_sort that takes an array and returns a sorted array. 
#It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).
def bubble_sort(array)

    array.each do |value|
    i=0
    while i<array.count-1 
if array[i]>array[i+1]
array[i], array[i+1] = array[i+1], array[i]	
array	
end
   i+=1
    end
    end
array
end
p bubble_sort([4,3,78,2,0,2])
# stephens
def binary_search_stephen (array,target)
    low = 0
    high= array.length - 1

    while (low<=high)
      middle = low+((high-low)/2)
        if array[middle] == target
            return middle
        elsif array[middle] < target
            low=middle+1
        else
            high=middle-1
        end

    end

    return -1
end

puts binary_search_stephen([1,2,3,4,5,6], 1)



#solution when making as a class
def binary_search_recursive(array, search_val, low = 0, high=array.size - 1)
  return -1 if low > high
  mid = (high + low) / 2
  return mid if array[mid] ==  search_val
  if array[mid] < search_val
    low = mid + 1
  else
    high = mid - 1
  end
  binary_search_recursive(array, search_val, low, high)
end

puts binary_search_recursive([8,12,44,52,68,101],44)
puts binary_search_recursive([8,12,44,52,68,101],11)
puts binary_search_recursive([4,5,6,6,6,6,6,8,99],8)
puts binary_search_recursive([1],2)



#solution for making as a class
def binary_search_iterative(array, target)
    low = 0
    high = array.size - 1
    mid = array.size / 2

    while (low <= high)
        if array[mid] == target
            return mid
        elsif array[mid] < target
            low = mid +1
            mid = (low + high)/ 2
        else
            high = mid -1
            mid =(low + high)/ 2
        end
    end
        return -1
    end
    puts binary_search_iterative([99, 103, 177, 180, 194],180)
    puts binary_search_iterative([8, 7, 12, 18, 25, 77, 78, 120],78)
    puts binary_search_iterative([1, 1, 2, 3, 4, 5, 12, 13,15],5)
    puts binary_search_iterative([1, 1 , 1],1)

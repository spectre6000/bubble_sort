


#Bubble sort

def bubbleSortBy(array)
	(array.length-1).times do
		array.each_index do |x|
			if x!=0
				if array[x].length<array[x-1].length
					print yield 
					array[x], array[x-1] = array[x-1], array[x]
				end
			end
		end
	end
	print array
end

lR=Proc.new{|l,r|r.to_i-l.to_i}

bubbleSortBy(["hi","hello","hey","kalamazoo"], &lR)

#bubbleSortBy(["hi","hello","hey","kalamazoo"]) do |left, right| 
#	right.to_i - left.to_i
#end


def bubbleSort(array)
	(array.length).times do
		array.each_index do |x|
			if x!=0
				if array[x]<array[x-1]
					array[x], array[x-1] = array[x-1], array[x]
				end
			end
		end
	end
	array
end

#bubbleSort([4,3,78,2,0,2])

=begin
	
bubble sort iterations:
0: [ 4, 3, 78, 2, 0, 2 ]
1: [ 3, 4, 2, 0, 2, 78 ]
2: [ 3, 2, 0, 2, 4, 78 ]
3: [ 2, 0, 2, 3, 4, 78 ]
4: [ 0, 2, 2, 3, 4, 78 ]
5: [ 0, 2, 2, 3, 4, 78 ]
	
=end
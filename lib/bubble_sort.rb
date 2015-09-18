#Bubble sort

def bubbleSortBy ( array )
	( array.length - 1 ).times do
		array.each_index do | x |
			if x != 0
				if array[ x ].length < array[ x - 1 ].length
					array[ x ], array[ x - 1 ] = array[ x - 1 ], array[ x ]
					yield
				end
			end
		end
	end
	array
end

def bubbleSort ( array )
	( array.length ).times do
		array.each_index do |x|
			if x != 0
				if array[ x ] < array[ x - 1 ]
					array[ x ], array[ x - 1 ] = array[ x - 1 ], array[ x ]
				end
			end
		end
	end
	array
end
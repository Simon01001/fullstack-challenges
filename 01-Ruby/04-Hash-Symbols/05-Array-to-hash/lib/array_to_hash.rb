def array_to_hash(array)
  # TODO: implement the method :)
  x = {}
  array.each_with_index { |value, index| x[index.to_s] = value }
  (block_given? ? yield(index) : index)
  return x
end
array = ["a", "b", "c"]

array_to_hash(array) do |index|
  "key#{index}"
end


#if block_given?
#  yield (index)
#else
#  return x
#end

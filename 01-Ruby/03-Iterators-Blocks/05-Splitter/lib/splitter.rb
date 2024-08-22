def size_splitter(array, size)
  # TODO: Return an array of two arrays, the first containing
  #       words of length `size`, the second containing all the other words
  #       In addition to this split, each array should be *sorted*.
  word_size = []
  for word in array
    if word.length == size
      word_size << word
    end
  end
  word_remain = array - word_size
  return word_size.sort, word_remain.sort
end

def block_splitter(array)
  # TODO: Return an array of two arrays, the first containing
  #       elements for which the given block yields true,
  #       the second containing all the other elements.
  #       No sort needed this time.
  selected = array.select { |a| yield(a) }
  arr_remain = array - selected
  return [selected, arr_remain]
end

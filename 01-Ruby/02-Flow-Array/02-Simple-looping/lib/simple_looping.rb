def sum_with_for(min, max)
  total = 0
  if min > max
    return -1
  end
  for num in (min..max) do
    total += num
  end
  return total
end

def sum_with_while(min, max)
  total = 0
  if min > max
    return -1
  end
  while min <= max
    total += min
    min += 1
  end
  return total
end

# Your Code Here
def map(bleep)
  new = []
  i = 0
  while i < bleep.length
    new.push(yield(bleep[i]))
    i += 1
  end
  new
end

def reduce(s, spf=nil)
  if spf
    accum = spf
    i = 0
  else
    accum = s[0]
    i = 1
  end
  while i < s.length
    accum = yield(accum, s[i])
    i += 1
  end
  accum
end

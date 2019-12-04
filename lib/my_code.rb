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
    honk = spf
    i = 0
  else
    honk = s[0]
    i = 1
  end
  while i < s.length
    honk = yield(honk, s[i])
    i += 1
  end
  honk
end

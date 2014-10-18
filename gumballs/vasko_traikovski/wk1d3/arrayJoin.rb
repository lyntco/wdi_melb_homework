       # a = [ "a", "b", "c", "d", "e" ]
       #  a[2] +  a[0] + a[1]    #=> "cab"
       #  a[6]                   #=> nil
       #  a[1, 2]                #=> [ "b", "c" ]
       #  a[1..3]                #=> [ "b", "c", "d" ]
       #  a[4..7]                #=> [ "e" ]
       #  a[6..10]               #=> nil
       #  a[-3, 3]               #=> [ "c", "d", "e" ]
       #  # special cases
       #  a[5]                   #=> nil
       #  a[5, 1]                #=> []
       #  a[5..10]               #=> []
       #  [1, 2, 3].reduce(0) { |sum, x| sum + x } # => 10



a=[11,22,33,44,55,66,77]
# => [11, 22, 33, 44, 55, 66, 77]
p a[1  ..5]
p a[1  ...5]
p a[5...1]
# => [33, 44, 55]

a=[1,2,3,4]
a.cycle.take 12
 # [1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4]

a.index(33)
# =2

line  =["Grand", "33rd", "28th", "23rd",  "Union", "Astor" ]
linel =["8th",  "6th", "Union", "3rd", "1st" ]#grey

u = line.index('Union')
# =4

l1=line[0...u]
# =["Grand", "33rd", "28th", "23rd"]

l1.concat(l1)
# => [ "Grand", "33rd", "28th", "23rd",   "Grand", "33rd", "28th", "23rd" ]
p 'line'
p  line

p 'linel'
p  linel

p line[0...line.index('Union')+1] +
       linel[linel.index('Union')+1...linel.length]



#arr = a.sort_by(&:length)
#arr = a.sort_by {|x| x.length}
#p arr



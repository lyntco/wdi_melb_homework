# 0 to 999,999,999,999
  # # str.scan(/.{3}/)



def say_magnitudes num
  res= []
  words = %w(ones thousand million billion)

  arr = num.to_s.split("").reverse.each_slice(3)
  arr.each_slice(3) { |slice| res << slice.to_a.join }
  r = res.reverse.map!{ |x|x.reverse }
  w = words[ 0..r.length-1  ].reverse

  rr=r.zip(w).join(" ")
  rr.slice!("ones")
  rr
end



p say_magnitudes 1234567890
p say_magnitudes 1234567
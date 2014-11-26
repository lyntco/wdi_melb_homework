def convert(old_format)
  new_format = {}

  old_format.each do |k, v|
    old_format[k].each do |v|
      new_format[v.downcase] = k
    end
  end

  new_format
end
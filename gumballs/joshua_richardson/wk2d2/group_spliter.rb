require 'pry'

def arrange(list, groups_of)

  if list.length % groups_of != 0
    split_list = list.each_slice(groups_of).to_a
    new = split_list.last.pop

    binding.pry
    # # num = (split_list.length - 2)
    # split_list[0].push(new)
    # split_list
  else
    list.each_slice(groups_of).to_a
  end

end

list = ["Josh", "Rob", "Andre", "Bobbi", "Stephen", "Lolly", "mumbo", "Jumbo", "check"]

split_list = arrange(list, 6)
binding.pry


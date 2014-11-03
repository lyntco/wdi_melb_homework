







def leet_speak

a =["...",
 "LOL",
 "wut",
 "404",
 "NIMQ",
 "wut?",
 "Kthx",
 "WUF?",
 "no 1",
 "lulz",
 "wut?",
 "w00t!",
 "ROFL!",
 "TL;DR",
 "Kewl!",
 "wut 4",
 "d00d!",
 "2mjc u",
 "UR MUM",
 "wat???",
 "Lolwut?",
 "sw33t kat!",
 "4get it",
 "nvm... ",
 "jk, L8R",
 "*shrugs*",
 "kkthxbai",
 "Webtoobz",
 "ROTFLMAO",
 "WDI ftw!",
 "ur jst a nub",
 "Cool, bro",
 "OMGWTFBBQ",
 "ya ya w/e",
 "hy wats ^",
 "...is win.",
 "lol i liek",
 "*Shudders*",
 "lolkthxbai.",
 "LOL ur funy",
 "Zergrushed.",
 "I iz sig'd!",
 "lol wtfpwned",
 "Needs moar...",
 "soooo neway..",
 "lolomgbbtheq.",
 "so wut gm u gt",
 "GOogle s3a|2ch",
 "no u r konfusng",
 "i ges i ws rong",
 "*Om nom nom nom*",
 "...is SUPERIAH!!!",
 "o i gt wut u mean",
 "HEHEHEH C U 2MRW!!",
 "no i sed wut nt hu",
 "WUT IZ UR GM 4????",
 "Lolomgwtgdairyqueen",
 "Gotta leave *sigh*. ",
 "EyE Am ph33|1n6|u(ky",
 "omg i thot u wer kool",
 "ya... i gt a new gm 2dy",
 "thar b funy peoplez here.",
 "Collapses in failshards.",
 "'Dillygaf' (= DILLIGAF?)",
 "oooo i thot u sed 4 of dem LOLZ",
 "I cn haz moar being sig'd pleez?",
 "wut? o i gt wut u mean lolkthxbai.",
 "jst stp mking urself look liek a dum@$$",
 "ya ya w/e ur jst a nub tht cnt lern a thin",
 "Kewl! I iz sig'd! I cn haz moar being sig'd pleez?",
 "nvm... omg i thot u wer kool i ges i ws rong omgwtfbbq",
 "lulz dnt no wut ur tlkn but no1 tlkz in chtspk ths dyz.",
 "lol i liek this thred, thar b funy peoplez here. ne1 liek mudkips?",
 "ya ya w/e ur jst a nub tht cnt lern a thin jst stp mking urself look liek a dum@$$"]

#arr = a.sort_by(&:length)
#arr = a.sort_by {|x| x.length}
#p arr
  i = rand(a.length*6)
  if i>a.length
    i2=rand(a.length)
    i3=rand(a.length)
    if i2 == i3
      puts a[i2]
    else
      puts a[i3]+ " " +a[i2]
    end
  else
    #puts i
    puts a[i]
  end
end








i='0'
puts "hey bro, wassup?"
until i == ""
  #puts i
  i = gets.chomp
  last_letter = i.split(//).last(1).join
  if last_letter == "?"
    puts "Yeah whatever man"
  elsif i.upcase == i
    puts "WOAH, CHILL OUT MAN"
  else
    leet_speak
  end
end

#puts "Laterz bruh"
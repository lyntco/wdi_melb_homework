# Quiz - Decode this message!
# Write a program to decode this message:

message = "FRZDUGV GLH PDQB WLPHV EHIRUH WKHLU GHDWKV, WKH YDOLDQW QHYHU WDVWH RI GHDWK EXW RQFH."

abc = ("A".."Z").to_a

puts message.split("").map{ |letter| abc[ abc.index( letter )-3 ] rescue letter }.join

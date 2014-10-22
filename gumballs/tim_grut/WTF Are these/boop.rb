lines = {
  "n" =>
  "l" =>
  "6" =>
}

line_start
station_start "ts"



if index_end_station
line_start[index_end_station..index_start_station].reverse

else
line_start[index_start_station..index_end_station].reverse

end

else
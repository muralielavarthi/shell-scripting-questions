echo -n "enter the string:"  # -n: no new line, take input in same line, by default echo adds new line
read STRING

SUB_STRING=${STRING:2:9}  # no need of $to access STRING value
echo $SUB_STRING

#{string:start_index:total_length} - space is included in length
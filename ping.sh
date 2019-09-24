host="8.8.8.8"
return_code=$?
ping -c 1 $host > /dev/zero && echo "$host reacheble:)"


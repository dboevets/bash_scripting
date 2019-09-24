# comment test for git
host="1.1.1.1"
return_code=$?
ping -c 1 $host > /dev/zero && echo "$host reacheble:)"


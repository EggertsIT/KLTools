# One-liner to check KESL DB Update status
DBDate="$(kesl-control -E --query -n 500  | grep AVBasesDate | awk -F= 'END {if($2==""){print "2 January 1970 "} print $2}' )"; Timestamp=$( date --date "$DBDate" +'%s'); TimeVal=$( date --date "24 hours ago" +'%s'); if [ $Timestamp -lt $TimeVal ]; then echo "DB Out Of Date";else echo "DB up2date"; fi;

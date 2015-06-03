ACCESS_USR1=`cat /proc/sys/kernel/random/uuid | sed s/-//g`
SECRET_USR1=`cat /proc/sys/kernel/random/uuid | sed s/-//g`
curl https://identity.jiocloud.com:5000/v3/credentials \
-H "X-Auth-Token: $ADM1_TOKEN" \
-H "Content-Type: application/json" \
-d " 
{
   \"credential\": {
        \"blob\": \"{\\\"access\\\": \\\"$ACCESS_USR1\\\", \\\"secret\\\": \\\"$SECRET_USR1\\\"}\",
        \"type\": \"ec2\",
        \"user_id\": \"$ID_USR1\",
        \"project_id\": \"$ID_PRJ1\"
    }
}
"
echo
echo "================="
echo "access_usr1 is: $ACCESS_USR1"
echo "secret_usr1 is: $SECRET_USR1"
echo "================="

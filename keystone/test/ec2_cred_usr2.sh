ACCESS_USR2=`cat /proc/sys/kernel/random/uuid | sed s/-//g`
SECRET_USR2=`cat /proc/sys/kernel/random/uuid | sed s/-//g`
curl https://identity.jiocloud.com:5000/v3/credentials \
-H "X-Auth-Token: $ADM1_TOKEN" \
-H "Content-Type: application/json" \
-d " 
{
   \"credential\": {
        \"blob\": \"{\\\"access\\\": \\\"$ACCESS_USR2\\\", \\\"secret\\\": \\\"$SECRET_USR2\\\"}\",
        \"type\": \"ec2\",
        \"user_id\": \"$ID_USR2\",
        \"project_id\": \"$ID_PRJ1\"
    }
}
"
echo
echo "================="
echo "access_usr2 is: $ACCESS_USR2"
echo "secret_usr2 is: $SECRET_USR2"
echo "================="

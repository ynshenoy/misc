ACCESS_USR3=`cat /proc/sys/kernel/random/uuid | sed s/-//g`
SECRET_USR3=`cat /proc/sys/kernel/random/uuid | sed s/-//g`
curl https://identity.jiocloud.com:5000/v3/credentials \
-H "X-Auth-Token: $ADM1_TOKEN" \
-H "Content-Type: application/json" \
-d " 
{
   \"credential\": {
        \"blob\": \"{\\\"access\\\": \\\"$ACCESS_USR3\\\", \\\"secret\\\": \\\"$SECRET_USR3\\\"}\",
        \"type\": \"ec2\",
        \"user_id\": \"$ID_USR3\",
        \"project_id\": \"$ID_PRJ2\"
    }
}
"
echo
echo "================="
echo "access_usr3 is: $ACCESS_USR3"
echo "secret_usr3 is: $SECRET_USR3"
echo "================="

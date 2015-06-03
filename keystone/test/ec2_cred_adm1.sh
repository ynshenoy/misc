ACCESS_ADM1=`cat /proc/sys/kernel/random/uuid | sed s/-//g`
SECRET_ADM1=`cat /proc/sys/kernel/random/uuid | sed s/-//g`
curl https://identity.jiocloud.com:5000/v3/credentials \
-H "X-Auth-Token: $ADM1_TOKEN" \
-H "Content-Type: application/json" \
-d " 
{
   \"credential\": {
        \"blob\": \"{\\\"access\\\": \\\"$ACCESS_ADM1\\\", \\\"secret\\\": \\\"$SECRET_ADM1\\\"}\",
        \"type\": \"ec2\",
        \"user_id\": \"$ID_ADM1\",
        \"project_id\": \"$ID_PRJ1\"
    }
}
"
echo
echo "================="
echo "access_adm1 is: $ACCESS_ADM1"
echo "secret_adm1 is: $SECRET_ADM1"
echo "================="

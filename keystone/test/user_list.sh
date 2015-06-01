curl -H "X-Auth-Token: $ADM1_TOKEN" http://localhost:5000/v3/users

echo "If not authorized then OKAY! :)"


curl -H "X-Auth-Token: $ADM1_TOKEN" http://localhost:5000/v3/users?domain_id=$ID_DOM1

echo "You should see a list of users!"


curl -H "X-Auth-Token: $ADM1_TOKEN" http://localhost:5000/v3/users?domain_id=$ID_DOM2

echo "If not authorized then OKAY! :)"

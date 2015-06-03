curl https://identity.jiocloud.com:5000/v2.0/tokens \
    -s \
    -i \
    -H "Content-Type: application/json" \
    -d '
{
    "auth": {
        "tenantName": "prj1",
        "passwordCredentials": {
            "username": "usr1",
            "password": "password"
        }
    }
}'

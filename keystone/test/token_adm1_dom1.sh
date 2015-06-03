ADM1_TOKEN=$(\
curl https://identity.jiocloud.com:5000/v3/auth/tokens \
    -s \
    -i \
    -H "Content-Type: application/json" \
    -d '
{
    "auth": {
        "identity": {
            "methods": [
                "password"
            ],
            "password": {
                "user": {
                    "domain": {
                        "name": "dom1"
                    },
                    "name": "adm1",
                    "password": "password"
                }
            }
        },
        "scope": {
            "domain": {
                "name": "dom1"
            }
        }
    }
}' | grep ^X-Subject-Token: | awk '{print $2}' )

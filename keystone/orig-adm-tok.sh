ADMIN_TOKEN=$(\
curl http://localhost:5000/v3/auth/tokens \
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
                        "name": "Default"
                    },
                    "name": "admin",
                    "password": "nova"
                }
            }
        },
        "scope": {
            "project": {
                "domain": {
                    "name": "Default"
                },
                "name": "admin"
            }
        }
    }
}' | grep ^X-Subject-Token: | awk '{print $2}' )

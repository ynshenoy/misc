CLOUD_ADMIN_TOKEN=$(\
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
                        "name": "admin_domain"
                    },
                    "name": "cloud_admin",
                    "password": "password"
                }
            }
        },
        "scope": {
                "domain": {
                    "name": "admin_domain"
                }
        }
    }
}' | grep ^X-Subject-Token: | awk '{print $2}' )

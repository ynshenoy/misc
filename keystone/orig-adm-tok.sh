ADMIN_TOKEN=$(\
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
                        "name": "Default"
                    },
                    "name": "admin",
                    "password": "Chang3M3"
                }
            }
        },
        "scope": {
            "project": {
                "domain": {
                    "name": "Default"
                },
                "name": "openstack"
            }
        }
    }
}' | grep ^X-Subject-Token: | awk '{print $2}' )

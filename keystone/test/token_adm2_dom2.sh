ADM2_TOKEN=$(\
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
                        "name": "dom2"
                    },
                    "name": "adm2",
                    "password": "password"
                }
            }
        },
        "scope": {
            "domain": {
                "name": "dom2"
            }
        }
    }
}' | grep ^X-Subject-Token: | awk '{print $2}' )

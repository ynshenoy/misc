ADM1_PRJ1_TOKEN=$(\
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
                        "name": "dom1"
                    },
                    "name": "adm1",
                    "password": "password"
                }
            }
        },
        "scope": {
            "project": {
                "domain": {
                    "name": "dom1"
                },
                "name": "prj1"
            }
        }
    }
}' | grep ^X-Subject-Token: | awk '{print $2}' )

echo "adm1 prj1 token is: $ADM1_PRJ1_TOKEN"

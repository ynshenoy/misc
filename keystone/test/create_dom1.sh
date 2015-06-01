ID_DOM1=$(\
curl http://localhost:5000/v3/domains \
    -s \
    -H "X-Auth-Token: $CLOUD_ADMIN_TOKEN" \
    -H "Content-Type: application/json" \
    -d '
{
    "domain": {
        "enabled": true,
        "name": "dom1"
    }
}' | jq .domain.id | tr -d '"')

echo "ID of dom1: $ID_DOM1"

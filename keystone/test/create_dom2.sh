ID_DOM2=$(\
curl https://identity.jiocloud.com:5000/v3/domains \
    -s \
    -H "X-Auth-Token: $CLOUD_ADMIN_TOKEN" \
    -H "Content-Type: application/json" \
    -d '
{
    "domain": {
        "enabled": true,
        "name": "dom2"
    }
}' | jq .domain.id | tr -d '"')

echo "ID of dom2: $ID_DOM2"

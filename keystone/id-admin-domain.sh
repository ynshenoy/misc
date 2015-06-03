ID_ADMIN_DOMAIN=$(\
curl https://identity.jiocloud.com:5000/v3/domains \
    -s \
    -H "X-Auth-Token: $ADMIN_TOKEN" \
    -H "Content-Type: application/json" \
    -d '
{
    "domain": {
    "enabled": true,
    "name": "admin_domain"
    }
}' | jq .domain.id | tr -d '"' )

echo "ID of domain cloud: $ID_ADMIN_DOMAIN"

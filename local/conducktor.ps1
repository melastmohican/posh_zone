
$creds = [System.Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes($ntidcreds))
$Token = Invoke-WebRequest 'https://api.conducktor.t-mobile.com/api/v3/login?provider=conducktor' -Method 'POST' -Headers @{ 'Authorization' = 'Basic ' + $creds } -Headers @{ 'claims: k8s'} -UseBasicParsing
kubectl config set-credentials developer --token $KubeToken


TOKEN=$(curl --insecure --user $NTID_CREDS-X POST  -H "")
echo $TOKEN
KUBE_TOKEN=$(echo $TOKEN | jq -r '.provider[0].token.jwt')


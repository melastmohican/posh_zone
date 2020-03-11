
$creds = [System.Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes($ntidcreds))
$KubeToken = (Invoke-WebRequest 'https://api.conducktor.t-mobile.com/api/v3/login?provider=conducktor' -Method 'POST' -Headers @{ 'Authorization' = 'Basic ' + $creds; 'claims' = 'k8s' } -UseBasicParsing | ConvertFrom-Json).provider.token.jwt
kubectl config set-credentials developer --token $KubeToken

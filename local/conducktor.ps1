
$creds = [System.Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes($corpcreds))
$KubeToken = Invoke-WebRequest 'https://api.conducktor.t-mobile.com/conducktor/v1/auth/login' -Method 'POST' -Headers @{ 'Authorization' = 'Basic ' + $creds } -UseBasicParsing
kubectl config set-credentials developer --token $KubeToken


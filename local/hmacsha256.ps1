# Powershell HMAC SHA 256

$message = '123'
$secret = 'uxoSpunBJ8MkkJkEQL9lYF4YAlDApPOGCA06yunjqc8x92mvkA'

$hmacsha = New-Object System.Security.Cryptography.HMACSHA256
$hmacsha.key = [Text.Encoding]::ASCII.GetBytes($secret)
$signature = $hmacsha.ComputeHash([Text.Encoding]::ASCII.GetBytes($message))
$signature = [Convert]::ToBase64String($signature)

echo $signature

# Do we get the expected signature?
echo ($signature -eq 'qnR8UCqJggD55PohusaBNviGoOJ67HC6Btry4qXLVZc=')
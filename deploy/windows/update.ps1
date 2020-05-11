(Get-Content .\environment) -cmatch '^[A-Z]' | ForEach-Object {
    Set-Item -path "env:$($_.split('=')[0])" -value $_.split('=')[1] -Force;
}

docker-compose -p kix pull
docker-compose -p kix up -d
docker-compose -p kix restart proxy

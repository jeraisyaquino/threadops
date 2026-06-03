# Auto-savepoint script — called by the Stop hook on session end / usage limit
$projectDir = "C:\Users\Jeraisy\Downloads\Claude Projects\threadops"
Set-Location $projectDir

$changes = git status --porcelain 2>$null
if ($changes) {
    git add -A
    $utcPlus8 = [System.TimeZoneInfo]::ConvertTimeBySystemTimeZoneId(
        (Get-Date), 'Singapore Standard Time'
    )
    $ts = $utcPlus8.ToString('yyyy-MM-dd HH:mm')
    git commit -m "Auto-savepoint: $ts (session end)" 2>$null
    git push origin master 2>$null
}

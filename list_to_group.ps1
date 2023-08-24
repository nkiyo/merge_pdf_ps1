$l = 1..313
$counter = [pscustomobject] @{ Value = 0 }
$groupSize = 100

$groups = $l | Group-Object -Property { [math]::Floor($counter.Value++ / $groupSize) }

# groups[N].Groupのリストをmapで？別の配列に変換する
#$groups.GetType()  # Object[]
#$groups[0].Group.GetType()  # Collection`1
# @($groups[0].Group)
# @($groups[0].Group).GetType()
#$groups[0] | Add-Member Huga 
#$files = @($groups[0].Group) | ForEach-Object { "$pwd\OutputDocument$_.pdf" } $x = $groups | ForEach-Object { $_.Group | ForEach-Object { "$pwd\OutputDocument$_.pdf" } }

# TODO 簡単に空のリストを作って、Addしていきたいんだが・・・
$a = New-Object System.Collections.ArrayList
foreach ($g in $groups) {
  $pdfs = @($g.Group) | ForEach-Object { "$pwd\OutputDocument$_.pdf" }
  $a.Add($pdfs)
}
$a.GetType()
$a[0]


#$groups[0] | Add-Member Hoge $files
#$groups[0]
#$groups[0].Hoge.GetType()

$FilePath1  = "C:\Users\Nakah\podman_in_action\OutputDocument1.pdf"
$FilePath2  = "C:\Users\Nakah\podman_in_action\OutputDocument2.pdf"
$FilePath3  = "C:\Users\Nakah\podman_in_action\OutputDocument3.pdf"
$FilePath4  = "C:\Users\Nakah\podman_in_action\OutputDocument4.pdf"
$FilePath5  = "C:\Users\Nakah\podman_in_action\OutputDocument5.pdf"
$FilePath6  = "C:\Users\Nakah\podman_in_action\OutputDocument6.pdf"
$FilePath7  = "C:\Users\Nakah\podman_in_action\OutputDocument7.pdf"
$FilePath8  = "C:\Users\Nakah\podman_in_action\OutputDocument8.pdf"
$FilePath9  = "C:\Users\Nakah\podman_in_action\OutputDocument9.pdf"
$FilePath10 = "C:\Users\Nakah\podman_in_action\OutputDocument10.pdf"
$FilePath11  = "C:\Users\Nakah\podman_in_action\OutputDocument11.pdf"
$FilePath12  = "C:\Users\Nakah\podman_in_action\OutputDocument12.pdf"
$FilePath13  = "C:\Users\Nakah\podman_in_action\OutputDocument13.pdf"
$FilePath14  = "C:\Users\Nakah\podman_in_action\OutputDocument14.pdf"
$FilePath15  = "C:\Users\Nakah\podman_in_action\OutputDocument15.pdf"
$FilePath16  = "C:\Users\Nakah\podman_in_action\OutputDocument16.pdf"
$FilePath17  = "C:\Users\Nakah\podman_in_action\OutputDocument17.pdf"
$FilePath18  = "C:\Users\Nakah\podman_in_action\OutputDocument18.pdf"
$FilePath19  = "C:\Users\Nakah\podman_in_action\OutputDocument19.pdf"
$FilePath = "C:\Users\Nakah\podman_in_action\OutputDocument1.pdf", "C:\Users\Nakah\podman_in_action\OutputDocument2.pdf", "C:\Users\Nakah\podman_in_action\OutputDocument3.pdf"

$FilePathList = @(1..101 | ForEach-Object { "C:\Users\Nakah\podman_in_action\OutputDocument$_.pdf" })
$FilePath.GetType()
$FilePathList.GetType()
$FilePath
$FilePathList
$OutputFile = "C:\Users\Nakah\podman_in_action\hoge.pdf"

# Merge-PDF -InputFile $FilePath1, $FilePath2, $FilePath3 -OutputFile $OutputFile
Merge-PDF -InputFile $FilePathList -OutputFile $OutputFile

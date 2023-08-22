# 事前条件：
# このスクリプトのディレクトリに処理対象PDFがされていること。
# 処理対象PDFとは、事前に Split-PDF --FilePath "/hoge/huga.pdf" 
# のようなコマンドで1ページ単位で分割されたPDFファイルのことを指す。
Set-Location -Path (Split-Path $MyInvocation.MyCommand.Path -Parent)

# PDFを100ページごとにマージする
$InputPdfs = @(1..101 | ForEach-Object { "$pwd\OutputDocument$_.pdf" })
$OutputFile = "$pwd\merged1.pdf"

Merge-PDF -InputFile $InputPdfs -OutputFile $OutputFile

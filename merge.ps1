# PSWritePDF (https://github.com/EvotecIT/PSWritePDF) を使って分割したPDFを、
# 指定したページ数ごとのPDFファイルにまとめる
# （DeepL Pro でファイル翻訳の10MB対策のため）
#
# 事前条件：
# このスクリプトのディレクトリに処理対象PDFがされていること。
# 処理対象PDFとは、事前に Split-PDF --FilePath "/hoge/huga.pdf" 
# のようなコマンドで1ページ単位で分割されたPDFファイルのことを指す。
# OutputDocument123.pdf みたいな名前の連番ファイルである。
Set-Location -Path (Split-Path $MyInvocation.MyCommand.Path -Parent)

# PDFを100ページごとにマージする
# TODO 1～313を与えたら、自動で3ファイルを作成したい
# 1～313を、1..100 101..200 201..313 に分割する
# N01..(N+1)00 => mergedN.pdf
#
# $start
# $end
# $([Math]::Floor($n / 100 + 1))
# 
# 分割する方法
# https://stackoverflow.com/a/26850233
# TODO 
# 1..313 を100ずつ分割
# 1..100 を pdfファイル名のリストに変換する
$start = 1
$end = 313

$InputPdfs = @(1..100 | ForEach-Object { "$pwd\OutputDocument$_.pdf" })
$OutputFile = "$pwd\merged$([Math]::Floor($start / 100 + 1)).pdf"

Merge-PDF -InputFile $InputPdfs -OutputFile $OutputFile

#makeコマンド設定
Set-Alias -Name make -Value mingw32-make.exe

# c++設定
function GPPCompile {
    $local:file_name = $Args[0]
    g++ -std=c++17 -Wall -include "$workspace\cpp\AtCoderSolutions\all.h" -o program $file_name
}
Set-Alias -Name cg++ -Value GPPCompile


function CopySubmitFormat {
    $local:file_name = $Args[0]
    $local:header = Get-Content "$workspace\cpp\AtCoderSolutions\all.h"
    $local:file = Get-Content $file_name
    Set-Clipboard -Value $header
    Set-Clipboard -Append -Value $file
}
Set-Alias -Name sf -Value CopySubmitFormat
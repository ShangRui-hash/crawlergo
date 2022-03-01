#!/bin/sh
# 接收命令行参数，如果第一个参数是-h或者--help，则打印帮助信息
if [ "$1" == "shell" ];then
    /bin/sh
elif [ "$1" == "-h" ];then 
    /crawlergo -h 
else 
    /crawlergo -c "/usr/lib/chromium/chrome" -f strict --robots-path --fuzz-path --custom-headers "{\"User-Agent\": \"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.0 Safari/537.36\"}"  $*

fi
    
#!/bin/bash

# Sonsuz döngü
while true; do
    # "Hello world" metni ile birlikte geçerli tarihi alıp hello.txt dosyasına ekler
    echo "$(date +'%Y-%m-%d %H:%M:%S') Hello world" >> hello.txt
    
    # 10 saniye bekle
    sleep 10
done

#Burada tarih eklenmesi isterler arasında değildi, daha şık olacağını düşündüğüm ve yazarken test etmesi kolay olacağı için ekledim.
#Tarihsiz olanı aşağıya ekliyorum.

#while true; do
#    echo "Hello world" >> hello.txt
#    sleep 10
#done

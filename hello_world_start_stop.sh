#!/bin/bash

while true; do
    count=$(wc -l < hello.txt)
    
    if [ $count -eq 10 ]; then
        # 10 satır varsa ilk sh'ı sonlandır, dosyayı sil ve tekrar başlat
        pkill -f hello_world_writer.sh  # İlk process i kill eder
        rm hello.txt              # Dosyayı siler
        bash hello_world_writer.sh &        # İlk sh'ı tekrar başlat (arka planda)
    fi

    sleep 5  # Her 5 saniyede bir kontrol et
done

#Burada hello_world_writer sh arka planda çalışıyor olarak kabul edilmiştir. Eğer çalışmıyor ise yeni satır eklenemeyeceği için yazdığımız sh boş yere çalışacaktır. İkincil bir kabul ise hello.txt dosyasının var olduğudur. Eğer dosya yoksa ilk satırdaki kontrol işlemi gerçekleşmeyeceğinden yazdığımız script çalışmayacaktır.

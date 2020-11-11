# Ubuntu-Script

[![Discord](https://discordapp.com/api/guilds/452971760275554304/widget.png?style=shield)](https://discord.gg/gMcmZZn)



## سكربت خاص لاصحاب سيرفرات VPS :

انسخ الامر التالي وقم بوضعه في الوحدة الطرفية :

`sudo wget https://git.io/fARE7 -O ubuntu_script.sh && chmod +x ubuntu_script.sh`


## لتشغيل السكربت :

فقط قم بنسخ الامر التالي والصقه بالوحدة الطرفيه :

`sh ubuntu_script.sh `

عند انتهاء التثبيت قم بكتابة الاوامر التالية لتفعيل phpMyAdmin :

`sudo mysql -u root `

`use mysql; `

`update user set plugin='' where User='root';`

`flush privileges; `

`exit;`

`service mysql restart `





## فيديو الشرح : 

<a href="https://www.youtube.com/watch?v=ptLtiTAfc_A">
<img alt="FirstTimeOnly" src="https://i.ytimg.com/vi/ptLtiTAfc_A/hqdefault.jpg?sqp=-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE=&rs=AOn4CLBKgN3q0qmToaRzY5v80LjgpprOtA" />
</a>



===========================================================




## Script for Ubuntu VPSs Users :


copy the command and paste it in the terminal :

`sudo wget https://git.io/fARE7 -O ubuntu_script.sh`


## to launch the script :


just copy this command and paste it in the terminal again : 

`sh ubuntu_script.sh `


After Finish installing add this commands to enable phpMyAdmin :

`sudo mysql -u root `

`use mysql; `

`update user set plugin='' where User='root';`

`flush privileges; `

`exit;`

`service mysql restart `



## video tutorial : 

<a href="https://www.youtube.com/watch?v=ptLtiTAfc_A">
<img alt="FirstTimeOnly" src="https://i.ytimg.com/vi/ptLtiTAfc_A/hqdefault.jpg?sqp=-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE=&rs=AOn4CLBKgN3q0qmToaRzY5v80LjgpprOtA" />
</a>

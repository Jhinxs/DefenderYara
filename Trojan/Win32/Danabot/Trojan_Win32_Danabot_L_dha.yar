
rule Trojan_Win32_Danabot_L_dha{
	meta:
		description = "Trojan:Win32/Danabot.L!dha,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 "
		
	strings :
		$a_01_0 = {5c 73 6f 75 72 63 65 5c 4e 65 77 5c 44 61 6e 42 6f 74 5c } //2 \source\New\DanBot\
		$a_01_1 = {69 00 70 00 63 00 6f 00 6e 00 66 00 69 00 67 00 20 00 2f 00 66 00 6c 00 75 00 73 00 68 00 64 00 6e 00 73 00 20 00 26 00 20 00 65 00 78 00 69 00 74 00 } //2 ipconfig /flushdns & exit
		$a_01_2 = {73 00 68 00 65 00 6c 00 6c 00 2e 00 52 00 75 00 6e 00 20 00 22 00 63 00 6d 00 64 00 20 00 2f 00 6b 00 20 00 56 00 4d 00 57 00 61 00 72 00 65 00 73 00 2e 00 62 00 61 00 74 00 22 00 2c 00 30 00 2c 00 54 00 72 00 75 00 65 00 } //2 shell.Run "cmd /k VMWares.bat",0,True
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2) >=6
 
}
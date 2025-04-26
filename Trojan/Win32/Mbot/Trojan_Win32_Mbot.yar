
rule Trojan_Win32_Mbot{
	meta:
		description = "Trojan:Win32/Mbot,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {6d 73 67 3d 25 73 26 25 73 } //1 msg=%s&%s
		$a_01_1 = {50 4f 53 54 20 2f 73 74 61 72 74 3f 72 63 73 3d 31 26 73 70 69 64 3d 20 48 54 54 50 2f 31 2e 31 } //1 POST /start?rcs=1&spid= HTTP/1.1
		$a_01_2 = {25 73 5c 77 6c 6d 73 6e 2e 65 78 65 } //1 %s\wlmsn.exe
		$a_01_3 = {65 63 68 6f 20 25 73 20 3e 20 25 25 74 65 6d 70 25 25 5c 76 6f 6c 75 6d 65 69 6e 66 6f 2e 64 61 74 } //1 echo %s > %%temp%%\volumeinfo.dat
		$a_01_4 = {72 65 63 61 70 74 63 68 61 52 65 71 75 69 72 65 64 } //1 recaptchaRequired
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
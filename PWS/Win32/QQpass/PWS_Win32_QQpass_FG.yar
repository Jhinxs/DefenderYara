
rule PWS_Win32_QQpass_FG{
	meta:
		description = "PWS:Win32/QQpass.FG,SIGNATURE_TYPE_PEHSTR_EXT,08 00 07 00 06 00 00 "
		
	strings :
		$a_01_0 = {46 69 6c 65 20 62 75 66 66 65 72 20 6c 65 6e 67 74 68 20 65 72 72 6f 72 2c 20 73 75 72 65 20 72 65 70 61 69 72 2e } //5 File buffer length error, sure repair.
		$a_01_1 = {57 69 6e 64 6f 77 73 20 6d 69 73 74 61 6b 65 73 } //1 Windows mistakes
		$a_01_2 = {26 71 71 70 61 73 73 77 6f 72 64 3d } //1 &qqpassword=
		$a_01_3 = {3f 71 71 6e 75 6d 62 65 72 3d } //1 ?qqnumber=
		$a_01_4 = {54 45 4e 43 45 4e 54 5c 51 51 32 30 30 39 5c 49 6e 73 74 61 6c 6c 00 5c 55 73 65 72 73 5c 41 6c 6c 20 55 73 65 72 73 } //1
		$a_01_5 = {74 61 73 6b 6b 69 6c 6c 20 2f 66 20 2f 69 6d 20 51 51 2e 65 78 65 } //1 taskkill /f /im QQ.exe
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=7
 
}
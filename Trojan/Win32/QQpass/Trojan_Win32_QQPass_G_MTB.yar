
rule Trojan_Win32_QQPass_G_MTB{
	meta:
		description = "Trojan:Win32/QQPass.G!MTB,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {2a 59 69 59 75 59 61 6e 57 6f 43 68 69 4c 65 2a 2e 68 74 6d } //1 *YiYuYanWoChiLe*.htm
		$a_01_1 = {53 79 73 71 61 6d 71 71 76 61 71 71 64 2e 65 78 65 } //1 Sysqamqqvaqqd.exe
		$a_01_2 = {71 70 61 74 68 2e 69 6e 69 } //1 qpath.ini
		$a_01_3 = {51 51 50 72 6f 74 65 63 74 2e 65 78 65 } //1 QQProtect.exe
		$a_01_4 = {51 51 41 70 70 2e 65 78 65 } //1 QQApp.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
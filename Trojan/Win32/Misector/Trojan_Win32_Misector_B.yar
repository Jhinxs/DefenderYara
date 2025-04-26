
rule Trojan_Win32_Misector_B{
	meta:
		description = "Trojan:Win32/Misector.B,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {3a 25 73 25 63 25 63 25 69 2e 25 69 2e 7a 69 70 } //1 :%s%c%c%i.%i.zip
		$a_01_1 = {66 72 6f 6e 74 65 6e 64 2e 65 78 65 } //1 frontend.exe
		$a_01_2 = {73 65 6e 64 73 70 61 63 65 2e 63 6f 6d } //1 sendspace.com
		$a_01_3 = {75 70 6c 6f 61 64 67 65 74 69 6e 66 6f 26 61 70 69 5f 6b 65 79 3d 25 73 } //1 uploadgetinfo&api_key=%s
		$a_01_4 = {76 61 6c 65 72 69 73 74 61 72 40 65 31 2e 72 75 } //1 valeristar@e1.ru
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
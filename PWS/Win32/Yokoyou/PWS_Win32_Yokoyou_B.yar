
rule PWS_Win32_Yokoyou_B{
	meta:
		description = "PWS:Win32/Yokoyou.B,SIGNATURE_TYPE_PEHSTR_EXT,18 00 14 00 06 00 00 "
		
	strings :
		$a_01_0 = {2f 64 64 6f 73 2e 6a 70 67 } //10 /ddos.jpg
		$a_01_1 = {38 38 36 36 2e 6f 72 67 } //10 8866.org
		$a_01_2 = {4d 69 6e 69 53 6e 69 66 66 65 72 } //1 MiniSniffer
		$a_01_3 = {47 61 6d 65 54 72 6f 79 48 6f 72 73 65 44 65 74 65 63 74 } //1 GameTroyHorseDetect
		$a_01_4 = {53 4f 46 54 57 41 52 45 5c 41 54 65 72 4d 69 6e 61 74 65 } //1 SOFTWARE\ATerMinate
		$a_01_5 = {41 63 74 69 76 65 25 63 25 63 25 63 25 63 2e } //1 Active%c%c%c%c.
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=20
 
}
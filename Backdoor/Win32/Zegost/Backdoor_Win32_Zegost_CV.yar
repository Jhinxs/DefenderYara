
rule Backdoor_Win32_Zegost_CV{
	meta:
		description = "Backdoor:Win32/Zegost.CV,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_03_0 = {8b 4d fc 03 4d f8 8a ?? 80 ea 86 8b 45 fc 03 45 f8 88 10 } //3
		$a_03_1 = {8b 4d fc 03 4d f8 8a ?? 80 f2 19 8b 45 fc 03 45 f8 88 10 } //3
		$a_03_2 = {83 c4 0c c6 45 ?? 53 c6 45 ?? 41 c6 45 ?? 4d c6 45 ?? 5c c6 45 ?? 53 c6 45 ?? 41 c6 45 ?? 4d c6 45 ?? 5c c6 45 ?? 44 c6 45 ?? 6f c6 45 ?? 6d } //1
		$a_01_3 = {63 6d 64 20 2f 63 20 70 69 6e 67 20 31 32 37 2e 30 2e 30 20 2e 31 20 2d 6e 20 31 26 64 65 6c 20 22 25 73 22 } //1 cmd /c ping 127.0.0 .1 -n 1&del "%s"
		$a_01_4 = {54 45 73 4c 4f 52 54 4e 4f 63 54 4e 45 52 52 55 63 5c 6d 65 74 73 79 73 } //1 TEsLORTNOcTNERRUc\metsys
		$a_00_5 = {44 4e 41 4d 4d 4f 43 5c 4e 45 50 4f 5c 4c 4c 45 48 53 5c 45 58 45 2e 45 52 4f 4c 50 58 45 49 5c } //1 DNAMMOC\NEPO\LLEHS\EXE.EROLPXEI\
		$a_01_6 = {00 57 48 4d 5f 53 65 72 76 65 72 5f 55 70 64 61 74 65 00 } //1
	condition:
		((#a_03_0  & 1)*3+(#a_03_1  & 1)*3+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_00_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}

rule Trojan_Win32_NetLoader_RPT_MTB{
	meta:
		description = "Trojan:Win32/NetLoader.RPT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 "
		
	strings :
		$a_01_0 = {31 30 31 2e 39 39 2e 39 30 2e 31 31 37 } //1 101.99.90.117
		$a_01_1 = {36 35 35 33 36 } //1 65536
		$a_01_2 = {50 4f 53 54 20 2f 63 6f 6e 74 61 63 74 73 20 48 54 54 50 2f 31 2e 31 } //1 POST /contacts HTTP/1.1
		$a_01_3 = {6d 61 6e 61 67 65 2e 70 79 } //1 manage.py
		$a_01_4 = {44 65 66 65 6e 64 65 72 } //1 Defender
		$a_01_5 = {74 65 6d 70 5c 6c 6f 67 2e 7a 69 70 } //1 temp\log.zip
		$a_01_6 = {70 79 74 68 6f 6e 5c 70 79 74 68 6f 6e 77 2e 65 78 65 } //1 python\pythonw.exe
		$a_01_7 = {68 65 61 74 68 65 6e 2e 70 64 62 } //1 heathen.pdb
		$a_01_8 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //1 CreateToolhelp32Snapshot
		$a_01_9 = {50 72 6f 63 65 73 73 33 32 4e 65 78 74 57 } //1 Process32NextW
		$a_01_10 = {65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //1 explorer.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1) >=11
 
}
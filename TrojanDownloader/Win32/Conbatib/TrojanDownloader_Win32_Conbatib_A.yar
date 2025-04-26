
rule TrojanDownloader_Win32_Conbatib_A{
	meta:
		description = "TrojanDownloader:Win32/Conbatib.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 06 00 00 "
		
	strings :
		$a_03_0 = {80 3e 68 0f 85 ?? 00 00 00 80 7e 01 74 0f 85 ?? 00 00 00 } //2
		$a_03_1 = {41 8b c1 33 c0 81 f9 df af ef ?? 75 f3 } //2
		$a_01_2 = {50 c6 06 30 c6 46 01 78 e8 } //2
		$a_01_3 = {56 64 a1 30 00 00 00 8b 40 0c 8b 70 1c ad 8b 40 08 } //2
		$a_01_4 = {25 73 5c 25 69 25 69 25 69 25 69 25 69 2e 65 78 65 } //1 %s\%i%i%i%i%i.exe
		$a_01_5 = {62 61 63 6f 6e 62 69 74 73 00 } //1 慢潣扮瑩s
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=8
 
}
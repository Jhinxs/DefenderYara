
rule Trojan_BAT_Tedy_AMBG_MTB{
	meta:
		description = "Trojan:BAT/Tedy.AMBG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 06 00 00 "
		
	strings :
		$a_03_0 = {0a 09 17 9a 28 ?? 00 00 0a 28 ?? 00 00 0a 08 17 8d ?? 00 00 01 16 17 6f ?? 00 00 0a 08 17 8d ?? 00 00 01 16 17 6f ?? 00 00 0a 38 ?? 01 00 00 09 17 9a 28 } //3
		$a_03_1 = {28 0c 00 00 0a 09 18 9a 6f ?? 00 00 0a 13 08 11 07 72 ?? 00 00 70 6f ?? 00 00 0a 11 07 09 19 9a 73 ?? 00 00 0a 6f ?? 00 00 0a 11 07 } //3
		$a_01_2 = {48 74 74 70 57 65 62 52 65 73 70 6f 6e 73 65 } //1 HttpWebResponse
		$a_01_3 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //1 DownloadData
		$a_01_4 = {57 72 69 74 65 41 6c 6c 42 79 74 65 73 } //1 WriteAllBytes
		$a_01_5 = {47 65 74 46 6f 6c 64 65 72 50 61 74 68 } //1 GetFolderPath
	condition:
		((#a_03_0  & 1)*3+(#a_03_1  & 1)*3+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=10
 
}
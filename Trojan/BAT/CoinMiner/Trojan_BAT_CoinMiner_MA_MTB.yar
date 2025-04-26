
rule Trojan_BAT_CoinMiner_MA_MTB{
	meta:
		description = "Trojan:BAT/CoinMiner.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_81_0 = {68 74 74 70 3a 2f 2f 31 38 35 2e 31 37 32 2e 31 32 38 2e 31 31 } //1 http://185.172.128.11
		$a_01_1 = {31 31 65 61 66 31 37 32 2d 31 31 64 63 2d 34 35 32 32 2d 62 33 61 65 2d 62 39 37 32 37 38 35 64 65 32 64 62 } //1 11eaf172-11dc-4522-b3ae-b972785de2db
	condition:
		((#a_81_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}
rule Trojan_BAT_CoinMiner_MA_MTB_2{
	meta:
		description = "Trojan:BAT/CoinMiner.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 "
		
	strings :
		$a_03_0 = {08 11 07 07 11 07 9a 1f 10 28 ?? ?? ?? 0a 9c 11 07 17 58 13 07 11 07 07 8e 69 fe 04 13 08 11 08 2d de } //5
		$a_01_1 = {4d 69 6e 65 73 77 65 65 70 65 72 5f 57 69 6e 64 6f 77 73 46 6f 72 6d 73 41 70 70 } //1 Minesweeper_WindowsFormsApp
		$a_01_2 = {67 65 74 5f 44 61 72 6b 52 65 64 } //1 get_DarkRed
		$a_01_3 = {67 65 74 5f 49 73 48 69 64 64 65 6e } //1 get_IsHidden
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=8
 
}
rule Trojan_BAT_CoinMiner_MA_MTB_3{
	meta:
		description = "Trojan:BAT/CoinMiner.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_03_0 = {70 07 1f 64 73 ?? ?? ?? 0a 0c 73 ?? ?? ?? 0a 0d 09 20 00 01 00 00 6f ?? ?? ?? 0a 09 17 6f ?? ?? ?? 0a 09 08 1f 10 6f ?? ?? ?? 0a 06 6f ?? ?? ?? 0a 13 04 73 ?? ?? ?? 0a 13 05 11 05 11 04 17 73 ?? ?? ?? 0a 13 06 11 06 02 16 02 8e 69 6f ?? ?? ?? 0a 11 06 6f ?? ?? ?? 0a de } //1
		$a_01_1 = {47 65 74 46 6f 6c 64 65 72 50 61 74 68 } //1 GetFolderPath
		$a_01_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_3 = {47 65 74 42 79 74 65 73 } //1 GetBytes
		$a_01_4 = {73 65 74 5f 4b 65 79 53 69 7a 65 } //1 set_KeySize
		$a_01_5 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
		$a_01_6 = {52 65 70 6c 61 63 65 } //1 Replace
		$a_01_7 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //1 MemoryStream
		$a_01_8 = {52 69 6a 6e 64 61 65 6c 4d 61 6e 61 67 65 64 } //1 RijndaelManaged
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=9
 
}
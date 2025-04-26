
rule TrojanDownloader_Win32_Rustock_A{
	meta:
		description = "TrojanDownloader:Win32/Rustock.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_03_0 = {30 0e 8a c1 c0 e0 04 32 c1 c0 e0 03 d0 e9 32 c1 b1 03 f6 e9 00 45 ?? 46 4f 75 e2 } //2
		$a_01_1 = {74 a1 8b 45 fc 3b 45 f8 75 99 } //1
		$a_01_2 = {8b f8 3b fe 74 24 39 75 0c 74 0b 56 } //1
		$a_01_3 = {67 6c 61 69 64 65 33 32 00 } //1
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}
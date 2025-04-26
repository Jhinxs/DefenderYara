
rule TrojanDownloader_Win32_Sujuho_A{
	meta:
		description = "TrojanDownloader:Win32/Sujuho.A,SIGNATURE_TYPE_PEHSTR,04 00 03 00 04 00 00 "
		
	strings :
		$a_01_0 = {48 6f 6a 75 74 73 75 2e 63 6f 6d 2f 69 6d 61 67 65 73 2f 63 6f 6c 74 5f 64 65 66 65 6e 73 65 2e 6a 70 67 } //1 Hojutsu.com/images/colt_defense.jpg
		$a_01_1 = {47 6f 76 64 4a 6c 44 53 6d 65 49 65 41 46 46 57 42 66 } //1 GovdJlDSmeIeAFFWBf
		$a_01_2 = {73 76 65 68 6f 73 74 2e 65 78 65 } //1 svehost.exe
		$a_01_3 = {64 6c 73 65 72 76 65 72 } //1 dlserver
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}
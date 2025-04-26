
rule TrojanDownloader_Win32_Dofoil_R{
	meta:
		description = "TrojanDownloader:Win32/Dofoil.R,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_01_0 = {81 c7 04 05 00 00 b8 43 6b 7e 0a ab b8 5a 3f 23 65 ab } //1
		$a_03_1 = {b0 68 aa 8b 45 ?? ab b0 c3 aa } //1
		$a_01_2 = {81 c7 00 12 00 00 66 c7 07 57 6f 66 c7 47 02 72 6b } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=2
 
}
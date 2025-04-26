
rule TrojanDownloader_Linux_Bogavert_gen_A{
	meta:
		description = "TrojanDownloader:Linux/Bogavert.gen!A,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {43 68 72 57 28 31 30 34 29 20 26 20 43 68 72 57 28 31 31 36 29 20 26 20 43 68 72 57 28 31 31 36 29 20 26 20 43 68 72 57 28 31 31 32 29 20 26 20 43 68 72 57 28 35 38 29 20 26 20 43 68 72 57 28 34 37 29 20 26 20 43 68 72 57 } //1 ChrW(104) & ChrW(116) & ChrW(116) & ChrW(112) & ChrW(58) & ChrW(47) & ChrW
		$a_01_1 = {2e 52 45 41 44 59 53 54 41 54 45 20 3c 3e 20 34 } //1 .READYSTATE <> 4
		$a_01_2 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 4d 53 58 4d 4c 32 2e 58 4d 4c 48 54 54 50 22 29 } //1 = CreateObject("MSXML2.XMLHTTP")
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
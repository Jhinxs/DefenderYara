
rule TrojanDownloader_BAT_Wisntes_B{
	meta:
		description = "TrojanDownloader:BAT/Wisntes.B,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 53 00 52 00 } //1 DisableSR
		$a_01_1 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 52 00 65 00 67 00 69 00 73 00 74 00 72 00 79 00 54 00 6f 00 6f 00 6c 00 73 00 } //1 DisableRegistryTools
		$a_01_2 = {44 6f 77 6e 6c 6f 61 64 46 69 6c 65 00 53 74 61 72 74 00 } //1
		$a_03_3 = {1f 1d 12 00 1a 28 ?? 00 00 06 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}
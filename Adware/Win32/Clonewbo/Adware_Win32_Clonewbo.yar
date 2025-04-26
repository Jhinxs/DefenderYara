
rule Adware_Win32_Clonewbo{
	meta:
		description = "Adware:Win32/Clonewbo,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 "
		
	strings :
		$a_00_0 = {74 6f 61 73 74 70 6f 70 2e 6e 65 74 2f 53 57 43 } //1 toastpop.net/SWC
		$a_00_1 = {74 6f 61 73 74 70 6f 70 2e 70 64 62 } //1 toastpop.pdb
		$a_80_2 = {4e 65 77 73 46 65 65 64 } //NewsFeed  1
		$a_00_3 = {62 79 62 6f 6f 74 } //1 byboot
		$a_80_4 = {57 69 6e 64 6f 77 20 6e 66 63 } //Window nfc  1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_80_2  & 1)*1+(#a_00_3  & 1)*1+(#a_80_4  & 1)*1) >=3
 
}
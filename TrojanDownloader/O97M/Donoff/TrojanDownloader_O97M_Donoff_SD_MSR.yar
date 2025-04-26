
rule TrojanDownloader_O97M_Donoff_SD_MSR{
	meta:
		description = "TrojanDownloader:O97M/Donoff.SD!MSR,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {2e 57 72 69 74 65 4c 69 6e 65 20 28 22 73 74 61 72 74 20 63 3a 5c 52 65 73 6f 75 72 63 65 73 5c [0-05] 2e 65 78 65 22 29 } //1
		$a_03_1 = {2e 43 72 65 61 74 65 54 65 78 74 46 69 6c 65 28 22 63 3a 5c 52 65 73 6f 75 72 63 65 73 5c [0-0f] 2e 63 6d 64 22 2c 20 54 72 75 65 29 } //1
		$a_03_2 = {43 72 65 61 74 65 50 72 6f 63 65 73 73 41 28 30 26 2c 20 22 63 3a 5c 52 65 73 6f 75 72 63 65 73 5c [0-0f] 2e 63 6d 64 22 2c } //1
		$a_01_3 = {3d 20 22 50 6c 65 61 73 65 20 72 65 73 74 61 72 74 20 79 6f 75 72 20 4f 66 66 69 63 65 20 61 70 6c 69 63 61 74 69 6f 6e 22 } //1 = "Please restart your Office aplication"
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
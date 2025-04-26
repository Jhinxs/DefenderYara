
rule Trojan_MacOS_PPMiner_A_MTB{
	meta:
		description = "Trojan:MacOS/PPMiner.A!MTB,SIGNATURE_TYPE_MACHOHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {73 61 66 65 74 79 63 72 65 77 2f 70 70 6c 61 75 6e 63 68 65 72 2f 70 70 6c 61 75 6e 63 68 65 72 2e 67 6f } //1 safetycrew/pplauncher/pplauncher.go
		$a_00_1 = {6d 61 69 6e 2e 6d 69 6e 65 72 43 6d 64 } //1 main.minerCmd
		$a_00_2 = {6d 61 69 6e 2e 63 6c 65 61 6e 75 70 4d 69 6e 65 72 44 69 72 65 63 74 6f 72 79 } //1 main.cleanupMinerDirectory
		$a_00_3 = {6d 61 69 6e 2e 64 61 74 61 4d 73 68 65 6c 70 65 72 } //1 main.dataMshelper
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}
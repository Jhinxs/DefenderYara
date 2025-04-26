
rule HackTool_MacOS_SusCryptoMiner_A{
	meta:
		description = "HackTool:MacOS/SusCryptoMiner.A,SIGNATURE_TYPE_CMDHSTR_EXT,ffffffc8 00 0a 00 04 00 00 "
		
	strings :
		$a_00_0 = {63 00 67 00 6d 00 69 00 6e 00 65 00 72 00 } //10 cgminer
		$a_00_1 = {62 00 66 00 67 00 6d 00 69 00 6e 00 65 00 72 00 } //10 bfgminer
		$a_00_2 = {6d 00 75 00 6c 00 74 00 69 00 6d 00 69 00 6e 00 65 00 72 00 } //10 multiminer
		$a_00_3 = {6d 00 61 00 63 00 6d 00 69 00 6e 00 65 00 72 00 } //10 macminer
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*10) >=10
 
}
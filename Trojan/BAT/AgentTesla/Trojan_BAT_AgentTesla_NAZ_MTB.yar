
rule Trojan_BAT_AgentTesla_NAZ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NAZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_81_0 = {65 78 65 2e 6f 6f 63 2f 61 63 2e 73 65 6d 6f 68 6e 65 6d 75 6c 2f 2f 3a 73 70 74 74 68 } //1 exe.ooc/ac.semohnemul//:sptth
		$a_01_1 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //1 DownloadData
		$a_01_2 = {52 65 76 65 72 73 65 } //1 Reverse
		$a_01_3 = {47 65 74 4d 65 74 68 6f 64 } //1 GetMethod
		$a_01_4 = {49 6e 76 6f 6b 65 } //1 Invoke
		$a_01_5 = {47 65 74 54 79 70 65 } //1 GetType
	condition:
		((#a_81_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}

rule Backdoor_MacOS_PostMerlin_MTB{
	meta:
		description = "Backdoor:MacOS/PostMerlin!MTB,SIGNATURE_TYPE_MACHOHSTR_EXT,04 00 04 00 03 00 00 "
		
	strings :
		$a_00_0 = {67 69 74 68 75 62 2e 63 6f 6d 2f 4e 65 30 6e 64 30 67 } //2 github.com/Ne0nd0g
		$a_00_1 = {45 78 65 63 75 74 65 53 68 65 6c 6c 63 6f 64 65 } //1 ExecuteShellcode
		$a_00_2 = {6d 65 72 6c 69 6e 2f 70 6b 67 2f 61 67 65 6e 74 2e } //1 merlin/pkg/agent.
	condition:
		((#a_00_0  & 1)*2+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1) >=4
 
}
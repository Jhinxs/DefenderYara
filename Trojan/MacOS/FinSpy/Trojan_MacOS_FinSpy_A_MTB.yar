
rule Trojan_MacOS_FinSpy_A_MTB{
	meta:
		description = "Trojan:MacOS/FinSpy.A!MTB,SIGNATURE_TYPE_MACHOHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_02_0 = {73 79 73 74 65 6d 5f 70 72 6f 66 69 6c 65 72 20 53 50 55 53 42 44 61 74 61 54 79 70 65 20 7c 20 65 67 72 65 70 20 2d 69 [0-05] 4d 61 6e 75 66 61 63 74 75 72 65 72 3a 20 28 70 61 72 61 6c 6c 65 6c 73 7c 76 6d 77 61 72 65 7c 76 69 72 74 75 61 6c 62 6f 78 29 } //1
		$a_00_1 = {47 49 46 69 6c 65 4f 70 73 20 75 6e 6c 6f 61 64 41 67 65 6e 74 3a } //1 GIFileOps unloadAgent:
		$a_00_2 = {61 72 63 68 2e 7a 69 70 } //1 arch.zip
		$a_00_3 = {6f 72 67 2e 6c 6f 67 69 6e 64 2e 63 74 70 2e 61 72 63 68 69 76 65 } //1 org.logind.ctp.archive
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}
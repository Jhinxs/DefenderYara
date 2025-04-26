
rule Trojan_Linux_IPStorm_B_MTB{
	meta:
		description = "Trojan:Linux/IPStorm.B!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {73 74 6f 72 6d 2f 73 74 6f 72 6d 5f 72 75 6e 74 69 6d 65 } //1 storm/storm_runtime
		$a_01_1 = {73 74 6f 72 6d 2f 6d 61 6c 77 61 72 65 2d 67 75 61 72 64 2f 6d 61 6c 77 61 72 65 2d 67 75 61 72 64 2e 67 6f } //1 storm/malware-guard/malware-guard.go
		$a_01_2 = {73 74 6f 72 6d 2f 72 65 71 75 65 5f 63 6c 69 65 6e 74 } //1 storm/reque_client
		$a_01_3 = {73 74 6f 72 6d 2f 64 64 62 } //1 storm/ddb
		$a_01_4 = {73 74 6f 72 6d 2f 62 61 63 6b 73 68 65 6c 6c } //1 storm/backshell
		$a_01_5 = {2f 73 74 6f 72 6d 2f 73 74 61 74 69 6b 2f 73 74 61 74 69 6b 2e 67 6f } //1 /storm/statik/statik.go
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}

rule Trojan_BAT_AgentTesla_KAAD_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.KAAD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 03 00 00 "
		
	strings :
		$a_01_0 = {00 09 11 04 e0 58 06 11 04 91 52 00 11 04 17 58 13 04 11 04 06 8e 69 fe 05 13 05 11 05 2d e1 } //10
		$a_01_1 = {57 00 72 00 69 00 74 00 69 00 6e 00 67 00 20 00 53 00 68 00 65 00 6c 00 6c 00 63 00 6f 00 64 00 65 00 20 00 69 00 6e 00 20 00 74 00 68 00 65 00 20 00 52 00 65 00 6d 00 6f 00 74 00 65 00 20 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 } //1 Writing Shellcode in the Remote Process
		$a_01_2 = {49 00 6e 00 6a 00 65 00 63 00 74 00 69 00 6e 00 67 00 20 00 69 00 6e 00 74 00 6f 00 20 00 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 20 00 77 00 69 00 74 00 68 00 20 00 50 00 49 00 44 00 } //1 Injecting into process with PID
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=12
 
}
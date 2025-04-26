
rule Trojan_BAT_Tiny_H_MTB{
	meta:
		description = "Trojan:BAT/Tiny.H!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_02_0 = {03 00 00 11 00 28 ?? ?? ?? ?? 0a 06 16 28 ?? ?? ?? ?? 26 72 ?? ?? ?? ?? 0b 07 28 ?? ?? ?? ?? 0c 72 ?? ?? ?? ?? 28 ?? ?? ?? ?? 00 08 28 ?? ?? ?? ?? 00 2a } //1
		$a_00_1 = {45 78 70 6c 6f 69 74 53 68 65 6c 6c 63 6f 64 65 45 78 65 63 } //1 ExploitShellcodeExec
		$a_00_2 = {65 00 78 00 63 00 75 00 74 00 61 00 6e 00 64 00 6f 00 } //1 excutando
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1) >=2
 
}
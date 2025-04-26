
rule Trojan_BAT_Dcstl_PSET_MTB{
	meta:
		description = "Trojan:BAT/Dcstl.PSET!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 03 00 00 "
		
	strings :
		$a_03_0 = {73 47 00 00 0a 13 04 72 c9 02 00 70 28 ?? ?? ?? 0a 13 05 11 04 11 05 16 11 05 8e 69 73 ?? ?? ?? 0a 72 df 02 00 70 72 c9 02 00 70 6f ?? ?? ?? 0a 09 7e 07 00 00 04 11 04 6f ?? ?? ?? 0a 6f ?? ?? ?? 0a 09 6f ?? ?? ?? 0a 72 c9 02 00 70 28 ?? ?? ?? 0a de 1c } //5
		$a_01_1 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //1 DebuggingModes
		$a_01_2 = {57 72 69 74 65 4c 69 6e 65 } //1 WriteLine
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=7
 
}
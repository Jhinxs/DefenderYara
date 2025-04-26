
rule Backdoor_Linux_Flashback_E_ldr{
	meta:
		description = "Backdoor:Linux/Flashback.E!ldr,SIGNATURE_TYPE_MACHOHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {5f 6b 73 79 6d 73 } //1 _ksyms
		$a_03_1 = {3c 53 75 24 80 ?? 01 61 75 46 80 ?? 02 66 75 40 80 ?? 03 61 75 3a 80 ?? 04 72 } //1
		$a_03_2 = {3c 57 75 24 80 ?? 01 65 75 1e 80 ?? 02 62 } //1
		$a_03_3 = {01 00 00 c7 45 ?? 01 00 00 00 c7 45 ?? 31 00 00 00 e8 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}
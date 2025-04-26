
rule Trojan_BAT_SnakeKeylogger_EK_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.EK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,18 00 18 00 05 00 00 "
		
	strings :
		$a_03_0 = {1b 0a 06 17 28 ?? ?? ?? 06 a2 06 18 72 ?? ?? ?? 70 a2 06 16 28 ?? ?? ?? 06 a2 02 7b ?? ?? ?? 04 06 28 ?? ?? ?? 0a 26 06 } //20
		$a_81_1 = {4f 5f 30 5f 30 5f 30 5f 30 5f 30 5f 30 5f 30 5f 30 5f 30 5f 30 5f 30 } //1 O_0_0_0_0_0_0_0_0_0_0_0
		$a_81_2 = {4f 5f 4f 5f 4f 5f 4f 5f 4f 5f 4f 5f 4f 5f 4f 5f 4f 5f 4f } //1 O_O_O_O_O_O_O_O_O_O
		$a_81_3 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_81_4 = {41 63 74 69 76 61 74 6f 72 } //1 Activator
	condition:
		((#a_03_0  & 1)*20+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1) >=24
 
}
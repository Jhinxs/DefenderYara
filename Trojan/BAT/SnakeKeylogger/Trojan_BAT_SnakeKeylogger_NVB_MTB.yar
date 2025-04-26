
rule Trojan_BAT_SnakeKeylogger_NVB_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.NVB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {06 11 04 17 da 6f ?? ?? ?? 0a 28 ?? ?? ?? 06 07 11 04 07 6f ?? ?? ?? 0a 5d 6f ?? ?? ?? 0a 28 ?? ?? ?? 06 da 13 05 08 11 05 28 ?? ?? ?? 0a 28 ?? ?? ?? 0a 28 ?? ?? ?? 0a 0c 11 04 17 d6 13 04 11 04 09 31 bc } //1
		$a_01_1 = {42 00 75 00 6e 00 69 00 66 00 75 00 5f 00 54 00 65 00 78 00 74 00 42 00 6f 00 78 00 } //1 Bunifu_TextBox
		$a_01_2 = {49 00 6e 00 76 00 69 00 73 00 63 00 65 00 } //1 Invisce
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
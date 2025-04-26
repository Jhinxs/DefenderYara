
rule Trojan_BAT_Nanocore_ABMR_MTB{
	meta:
		description = "Trojan:BAT/Nanocore.ABMR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 "
		
	strings :
		$a_03_0 = {06 13 01 38 ?? ?? ?? 00 28 ?? ?? ?? 0a 11 01 6f ?? ?? ?? 0a 72 ?? ?? ?? 70 7e ?? ?? ?? 0a 6f ?? ?? ?? 0a 28 ?? ?? ?? 0a 13 02 38 ?? ?? ?? 00 dd ?? ?? ?? ff 26 } //4
		$a_01_1 = {52 65 70 6c 61 63 65 } //1 Replace
		$a_01_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
	condition:
		((#a_03_0  & 1)*4+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=6
 
}
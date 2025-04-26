
rule Trojan_BAT_Redline_GCU_MTB{
	meta:
		description = "Trojan:BAT/Redline.GCU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 03 00 00 "
		
	strings :
		$a_03_0 = {13 63 11 62 6c 11 63 6c 28 ?? ?? ?? 0a 26 28 ?? ?? ?? 0a 26 28 ?? ?? ?? 0a 26 72 ?? ?? ?? ?? 28 ?? ?? ?? 0a 26 11 07 07 03 07 91 09 61 d2 9c } //10
		$a_01_1 = {41 72 61 5a 5a 61 68 41 61 61 41 75 68 61 61 5a 41 41 } //1 AraZZahAaaAuhaaZAA
		$a_01_2 = {41 75 61 61 61 68 41 68 72 61 61 61 5a 72 41 5a 72 } //1 AuaaahAhraaaZrAZr
	condition:
		((#a_03_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=11
 
}
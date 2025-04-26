
rule Trojan_BAT_Injuke_NNJ_MTB{
	meta:
		description = "Trojan:BAT/Injuke.NNJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {73 27 00 00 0a 13 04 11 04 11 04 6f ?? ?? 00 0a 6f ?? ?? 00 0a 13 05 72 ?? ?? 00 70 28 ?? ?? 00 0a 08 28 ?? ?? 00 0a 13 06 11 06 28 ?? ?? 00 0a 26 11 06 09 72 ?? ?? 00 70 28 ?? ?? 00 0a 13 07 11 07 28 ?? ?? 00 0a } //5
		$a_01_1 = {44 77 66 73 67 78 65 74 66 6e 7a } //1 Dwfsgxetfnz
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1) >=6
 
}
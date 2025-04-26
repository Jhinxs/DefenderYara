
rule Trojan_BAT_DarkTortilla_O_MTB{
	meta:
		description = "Trojan:BAT/DarkTortilla.O!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 03 00 00 "
		
	strings :
		$a_01_0 = {02 03 61 0b 07 0a 06 2a } //10 ̂ୡਇ⨆
		$a_03_1 = {00 00 01 25 16 16 8c ?? 00 00 01 a2 14 28 ?? 00 00 0a 14 14 } //5
		$a_03_2 = {00 00 01 25 17 16 8d ?? 00 00 01 a2 14 14 14 17 28 } //5
	condition:
		((#a_01_0  & 1)*10+(#a_03_1  & 1)*5+(#a_03_2  & 1)*5) >=10
 
}
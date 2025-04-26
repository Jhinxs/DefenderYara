
rule Trojan_Win32_Zenpak_GAD_MTB{
	meta:
		description = "Trojan:Win32/Zenpak.GAD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 02 00 00 "
		
	strings :
		$a_03_0 = {ff d1 83 ec ?? 8b 4c 24 ?? 81 c1 ?? ?? ?? ?? 81 f9 ?? ?? ?? ?? 89 44 24 ?? 89 4c 24 } //10
		$a_01_1 = {31 20 83 f0 05 48 e8 } //10
	condition:
		((#a_03_0  & 1)*10+(#a_01_1  & 1)*10) >=20
 
}
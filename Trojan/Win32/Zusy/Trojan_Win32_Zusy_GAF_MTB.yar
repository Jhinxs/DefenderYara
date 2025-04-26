
rule Trojan_Win32_Zusy_GAF_MTB{
	meta:
		description = "Trojan:Win32/Zusy.GAF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 02 00 00 "
		
	strings :
		$a_03_0 = {8b 07 80 f1 49 8a 4f 04 e9 ?? ?? ?? ?? 0c f1 80 24 23 9f 4c } //10
		$a_01_1 = {31 d1 13 fc 2a cf 96 } //10
	condition:
		((#a_03_0  & 1)*10+(#a_01_1  & 1)*10) >=20
 
}
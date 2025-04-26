
rule Trojan_Win32_CerberCrypt_E_MTB{
	meta:
		description = "Trojan:Win32/CerberCrypt.E!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 "
		
	strings :
		$a_01_0 = {8a 06 32 c2 88 07 } //2
		$a_01_1 = {42 90 46 90 } //2
		$a_01_2 = {47 90 49 83 f9 } //2
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2) >=6
 
}
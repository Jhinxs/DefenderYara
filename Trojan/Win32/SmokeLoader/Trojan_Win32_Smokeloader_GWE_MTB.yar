
rule Trojan_Win32_Smokeloader_GWE_MTB{
	meta:
		description = "Trojan:Win32/Smokeloader.GWE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 02 00 00 "
		
	strings :
		$a_01_0 = {8b 45 08 8b 4d 0c 31 08 c9 c2 08 00 55 8b ec 8b 4d 08 8b 01 89 45 08 } //10
		$a_03_1 = {8d 4d fc 51 90 0a 44 00 c6 05 ?? ?? ?? ?? 63 c6 05 ?? ?? ?? ?? 74 c6 05 ?? ?? ?? ?? 74 c6 05 ?? ?? ?? ?? 72 c6 05 ?? ?? ?? ?? 72 ff 15 } //10
	condition:
		((#a_01_0  & 1)*10+(#a_03_1  & 1)*10) >=20
 
}
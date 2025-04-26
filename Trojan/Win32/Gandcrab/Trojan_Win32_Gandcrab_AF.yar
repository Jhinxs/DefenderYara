
rule Trojan_Win32_Gandcrab_AF{
	meta:
		description = "Trojan:Win32/Gandcrab.AF,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 02 00 00 "
		
	strings :
		$a_03_0 = {eb 03 c2 0c 00 55 8b ec 81 ec 00 10 00 00 c7 45 ?? ?? ?? 00 00 c7 45 ?? 00 00 40 00 } //10
		$a_03_1 = {e8 04 00 00 00 00 00 00 00 58 89 [0-05] 8b 00 85 c0 74 03 c9 ff e0 } //10
	condition:
		((#a_03_0  & 1)*10+(#a_03_1  & 1)*10) >=20
 
}
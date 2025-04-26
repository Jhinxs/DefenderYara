
rule Trojan_Win64_Phorpiex_NP_MTB{
	meta:
		description = "Trojan:Win64/Phorpiex.NP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {0f 84 34 02 00 00 48 8b 44 24 ?? 8b 40 70 48 8b 4c 24 ?? 48 03 c8 48 8b c1 48 89 44 24 ?? c7 44 24 50 ?? ?? ?? ?? 48 8b 84 24 28 01 00 00 48 c1 e8 ?? 48 25 } //5
		$a_01_1 = {3a 00 2f 00 2f 00 31 00 38 00 35 00 2e 00 32 00 31 00 35 00 2e 00 31 00 31 00 33 00 2e 00 38 00 34 00 2f 00 70 00 70 00 2e 00 65 00 78 00 65 00 } //1 ://185.215.113.84/pp.exe
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1) >=6
 
}
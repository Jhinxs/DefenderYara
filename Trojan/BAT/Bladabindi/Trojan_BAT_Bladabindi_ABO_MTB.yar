
rule Trojan_BAT_Bladabindi_ABO_MTB{
	meta:
		description = "Trojan:BAT/Bladabindi.ABO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 04 00 00 "
		
	strings :
		$a_03_0 = {0a 14 72 17 ?? ?? 70 19 8d ?? ?? ?? 01 0a 06 16 72 ?? ?? ?? 70 a2 00 06 17 16 8c ?? ?? ?? 01 a2 00 06 18 17 8c ?? ?? ?? 01 a2 00 06 14 90 0a 3b 00 72 ?? ?? ?? 70 72 ?? ?? ?? 70 28 7e } //4
		$a_01_1 = {57 65 62 53 65 72 76 69 63 65 73 } //1 WebServices
		$a_01_2 = {4b 69 6c 6c 48 75 6e 67 50 72 6f 63 65 73 73 } //1 KillHungProcess
		$a_01_3 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 } //1 taskkill
	condition:
		((#a_03_0  & 1)*4+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=7
 
}

rule Trojan_Win32_Convagent_GMC_MTB{
	meta:
		description = "Trojan:Win32/Convagent.GMC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 03 00 00 "
		
	strings :
		$a_03_0 = {68 04 01 00 00 56 53 ff 15 ?? ?? ?? ?? a1 98 ?? 45 01 89 35 c0 ?? 45 01 8b fe 38 18 } //10
		$a_03_1 = {8b 45 fc 83 c4 14 48 89 35 a8 ?? 45 01 5f 5e a3 a4 ?? 45 01 5b } //10
		$a_80_2 = {53 74 65 61 6d 53 65 72 76 69 63 65 2e 65 78 65 } //SteamService.exe  1
	condition:
		((#a_03_0  & 1)*10+(#a_03_1  & 1)*10+(#a_80_2  & 1)*1) >=21
 
}
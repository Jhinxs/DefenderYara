
rule Trojan_BAT_RiseProStealer_ARA_MTB{
	meta:
		description = "Trojan:BAT/RiseProStealer.ARA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 "
		
	strings :
		$a_03_0 = {14 0a 02 16 3e ?? ?? ?? 00 28 ?? ?? ?? 0a 02 18 5d 3a 16 00 00 00 28 ?? ?? ?? 06 0a 28 ?? ?? ?? 0a 06 28 ?? ?? ?? 0a 38 05 00 00 00 } //2
		$a_80_1 = {57 76 71 7a 64 73 77 68 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //Wvqzdswh.Properties.Resources  2
		$a_80_2 = {55 73 70 64 61 63 61 66 78 72 } //Uspdacafxr  2
	condition:
		((#a_03_0  & 1)*2+(#a_80_1  & 1)*2+(#a_80_2  & 1)*2) >=6
 
}
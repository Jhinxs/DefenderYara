
rule Trojan_Win32_MysticStealer_AMC_MTB{
	meta:
		description = "Trojan:Win32/MysticStealer.AMC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8a 44 0c 38 34 f3 0f b6 c0 66 89 84 4c ?? ?? ?? ?? 41 83 f9 29 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
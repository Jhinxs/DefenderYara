
rule Trojan_Win32_Sirefef_BT{
	meta:
		description = "Trojan:Win32/Sirefef.BT,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_03_0 = {6a 09 47 56 c7 45 ?? a8 01 00 00 c7 45 ?? 00 00 00 60 89 7d ?? c7 45 ?? 40 00 00 00 ff 15 ?? ?? ?? ?? 85 c0 74 ?? ff 15 ?? ?? ?? ?? 85 c0 74 0a 9c 81 0c 24 00 01 00 00 9d } //1
		$a_01_1 = {38 30 30 30 30 30 63 62 2e 40 } //1 800000cb.@
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=1
 
}
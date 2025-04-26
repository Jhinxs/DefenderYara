
rule Trojan_Win32_Redline_GBV_MTB{
	meta:
		description = "Trojan:Win32/Redline.GBV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 02 00 00 "
		
	strings :
		$a_03_0 = {03 c1 33 d2 b9 00 01 00 00 f7 f1 89 15 ?? ?? ?? ?? a1 60 35 46 00 0f b6 88 ?? ?? ?? ?? 8b 15 ?? ?? ?? ?? 0f b6 82 ?? ?? ?? ?? 33 c1 8b 0d ?? ?? ?? ?? 88 81 } //10
		$a_01_1 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //1 VirtualProtect
	condition:
		((#a_03_0  & 1)*10+(#a_01_1  & 1)*1) >=11
 
}
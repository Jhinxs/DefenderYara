
rule Trojan_Win32_Ursnif_BL_MTB{
	meta:
		description = "Trojan:Win32/Ursnif.BL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {0f b7 fa 8b d8 2b d9 03 fe 83 eb 03 81 ff ?? ?? ?? ?? 8b 3d ?? ?? ?? ?? 89 1d ?? ?? ?? ?? 75 } //1
		$a_02_1 = {8b 6c 24 10 8b c2 2b c1 81 c6 ?? ?? ?? ?? 83 c0 ?? 89 75 00 83 c5 ?? ff 4c 24 14 8d 4c 00 ?? c7 05 ?? ?? ?? ?? 00 00 00 00 0f b7 d1 89 6c 24 10 0f 85 ?? ?? ff ff } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}
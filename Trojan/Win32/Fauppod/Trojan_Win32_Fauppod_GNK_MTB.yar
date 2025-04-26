
rule Trojan_Win32_Fauppod_GNK_MTB{
	meta:
		description = "Trojan:Win32/Fauppod.GNK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {8a 45 0c 8a 4d 08 8b 15 ?? ?? ?? ?? 30 c8 a2 ?? ?? ?? ?? 89 d6 81 c6 ?? ?? ?? ?? 89 35 ?? ?? ?? ?? 81 c2 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}
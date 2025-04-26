
rule Trojan_Win32_Dreidel_RKQ_MTB{
	meta:
		description = "Trojan:Win32/Dreidel.RKQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {c1 e9 05 c7 05 ?? ?? ?? ?? 84 10 d6 cb c7 05 ?? ?? ?? ?? ff ff ff ff 89 4c 24 ?? 8b 84 24 ?? ?? ?? ?? 01 44 24 ?? 8b 54 24 ?? 33 d7 33 d6 2b ea 81 3d ?? ?? ?? ?? 17 04 00 00 75 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}
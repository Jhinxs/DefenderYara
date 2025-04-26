
rule Trojan_Win32_Mokes_RTH_MTB{
	meta:
		description = "Trojan:Win32/Mokes.RTH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {c1 e8 05 c7 05 ?? ?? ?? ?? 84 10 d6 cb c7 05 ?? ?? ?? ?? ff ff ff ff 89 44 24 ?? 8b 84 24 ?? ?? ?? ?? 01 44 24 ?? 8b 54 24 ?? 8b 4c 24 ?? 33 d6 33 ca } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}
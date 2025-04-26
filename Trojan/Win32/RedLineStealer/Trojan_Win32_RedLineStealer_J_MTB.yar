
rule Trojan_Win32_RedLineStealer_J_MTB{
	meta:
		description = "Trojan:Win32/RedLineStealer.J!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {f7 e1 c1 ea ?? 6b c2 ?? 2b c8 8a 81 ?? ?? ?? ?? 8b 4c 24 ?? 88 44 0c ?? 41 89 4c 24 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}
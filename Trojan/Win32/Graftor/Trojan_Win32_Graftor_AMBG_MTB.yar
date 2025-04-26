
rule Trojan_Win32_Graftor_AMBG_MTB{
	meta:
		description = "Trojan:Win32/Graftor.AMBG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b c1 33 d2 f7 f7 8a 44 14 ?? 30 04 31 41 a1 ?? ?? ?? ?? 8b 35 ?? ?? ?? ?? 2b c6 3b c8 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}

rule Trojan_Win64_Cobaltstrike_HGF_MTB{
	meta:
		description = "Trojan:Win64/Cobaltstrike.HGF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {41 89 c9 45 31 c1 89 c2 44 31 c2 bd ?? ?? ?? ?? 45 89 ca 41 21 ea 81 e1 ?? ?? ?? ?? 44 09 d1 21 d5 25 ?? ?? ?? ?? 09 e8 31 c8 44 09 ca 44 31 c2 09 c2 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}
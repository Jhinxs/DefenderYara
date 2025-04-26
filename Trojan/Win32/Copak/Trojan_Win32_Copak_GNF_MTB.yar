
rule Trojan_Win32_Copak_GNF_MTB{
	meta:
		description = "Trojan:Win32/Copak.GNF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {31 32 01 d9 81 c2 04 ?? ?? ?? 81 c3 ?? ?? ?? ?? 39 c2 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}
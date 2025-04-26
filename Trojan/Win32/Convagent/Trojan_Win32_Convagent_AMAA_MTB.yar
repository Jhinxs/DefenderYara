
rule Trojan_Win32_Convagent_AMAA_MTB{
	meta:
		description = "Trojan:Win32/Convagent.AMAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 02 00 00 "
		
	strings :
		$a_03_0 = {33 eb 33 e8 2b f5 8b d6 c1 e2 04 89 54 24 ?? 8b 44 24 ?? 01 44 24 } //5
		$a_03_1 = {33 d3 31 54 24 14 c7 05 ?? ?? ?? ?? ?? ?? ?? ?? 8b 44 24 14 29 44 24 18 } //5
	condition:
		((#a_03_0  & 1)*5+(#a_03_1  & 1)*5) >=10
 
}
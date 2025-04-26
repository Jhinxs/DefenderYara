
rule Trojan_Win32_Dridex_DEL_MTB{
	meta:
		description = "Trojan:Win32/Dridex.DEL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {8b f0 2b f7 83 ee ?? 8b fe 8d 04 47 8d b4 10 ?? ?? ?? ?? eb 0e 8b c7 2b c2 48 a3 ?? ?? ?? ?? 8d 74 3f af 8b 6c 24 10 81 c3 ?? ?? ?? ?? 8d 84 0a ?? ?? ?? ?? 89 5d 00 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}
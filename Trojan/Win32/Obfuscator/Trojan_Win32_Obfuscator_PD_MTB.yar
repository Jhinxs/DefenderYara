
rule Trojan_Win32_Obfuscator_PD_MTB{
	meta:
		description = "Trojan:Win32/Obfuscator.PD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {8b 45 74 30 0c 30 b8 ?? ?? ?? ?? 83 f0 ?? 83 6d ?? ?? 83 7d ?? ?? ?? ?? ?? ?? ?? ?? 5e 83 c5 ?? c9 c3 55 8b ec 83 ec ?? 68 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}
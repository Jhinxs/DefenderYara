
rule Trojan_Win32_Obfuscator_TZ_MTB{
	meta:
		description = "Trojan:Win32/Obfuscator.TZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {2b c1 40 a3 ?? ?? ?? ?? 8a c3 2a c2 f6 eb 8a c8 0f b6 c1 81 c6 ?? ?? ?? ?? 8d 9c 18 ?? ?? ?? ?? 89 75 00 81 fb ?? ?? ?? ?? 72 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}
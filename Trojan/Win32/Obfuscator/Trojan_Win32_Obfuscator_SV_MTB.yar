
rule Trojan_Win32_Obfuscator_SV_MTB{
	meta:
		description = "Trojan:Win32/Obfuscator.SV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {8b 55 c8 3b 55 94 ?? ?? 8b 45 a0 03 45 c8 0f be 08 81 f1 ?? ?? ?? ?? 8b 55 a0 03 55 c8 88 0a 8b 45 c8 83 c0 01 89 45 c8 eb } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}
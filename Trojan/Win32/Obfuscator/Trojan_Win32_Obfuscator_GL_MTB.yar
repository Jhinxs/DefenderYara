
rule Trojan_Win32_Obfuscator_GL_MTB{
	meta:
		description = "Trojan:Win32/Obfuscator.GL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {50 53 ff 15 ?? ?? ?? ?? 53 ff 15 ?? ?? ?? ?? 3b f3 ?? ?? e8 ?? ?? ?? ?? 30 04 3e 4e 79 f5 8b 4d fc 5f 5e 33 cd 5b e8 ?? ?? ?? ?? c9 c3 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}
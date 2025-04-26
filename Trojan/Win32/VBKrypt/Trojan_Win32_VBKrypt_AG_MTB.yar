
rule Trojan_Win32_VBKrypt_AG_MTB{
	meta:
		description = "Trojan:Win32/VBKrypt.AG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {31 f1 85 c0 85 ff eb [0-ff] 66 ?? ?? ?? ?? 89 0b eb [0-6f] 83 c2 04 85 d2 66 ?? ?? ?? ?? eb [0-6f] 83 c7 04 66 ?? ?? ?? ?? 81 ff ?? ?? ?? ?? eb [0-6f] 81 fa ?? ?? 00 00 0f 85 ?? ?? ff ff } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}
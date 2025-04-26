
rule Trojan_Win32_NSISInject_NX_MTB{
	meta:
		description = "Trojan:Win32/NSISInject.NX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {83 c4 08 8b f0 6a 40 68 00 30 00 00 68 ?? ?? ?? ?? 57 ff 15 30 20 40 00 56 6a 01 8b d8 68 ?? ?? ?? ?? 53 ff 15 50 20 40 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
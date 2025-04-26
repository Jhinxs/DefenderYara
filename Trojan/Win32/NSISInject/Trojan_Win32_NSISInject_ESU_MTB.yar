
rule Trojan_Win32_NSISInject_ESU_MTB{
	meta:
		description = "Trojan:Win32/NSISInject.ESU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {59 59 6a 40 68 00 30 00 00 68 ?? ?? ?? ?? 57 8b f0 ff 15 ?? ?? ?? ?? 56 6a 01 be ?? ?? ?? ?? 8b d8 56 53 e8 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}

rule Trojan_Win32_ICLoader_GPQ_MTB{
	meta:
		description = "Trojan:Win32/ICLoader.GPQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 01 00 00 "
		
	strings :
		$a_03_0 = {72 44 6c 50 74 53 cd e6 d7 7b 0b 2a 01 00 00 00 ?? ?? ?? 00 ?? ?? ?? 00 00 64 0a 00 27 9e 49 2b } //4
	condition:
		((#a_03_0  & 1)*4) >=4
 
}
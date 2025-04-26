
rule Trojan_Win32_Netwire_GS_MTB{
	meta:
		description = "Trojan:Win32/Netwire.GS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {ff 55 f4 53 8b 5d f8 8b f8 53 57 e8 ?? ?? ff ff 8b 4d 08 33 d2 8b c6 f7 75 0c 8a 04 0a ba ?? ?? 00 00 30 04 37 46 3b f2 72 e9 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}
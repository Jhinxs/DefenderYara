
rule Trojan_Win32_Ekstak_ASER_MTB{
	meta:
		description = "Trojan:Win32/Ekstak.ASER!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {b9 64 08 00 00 51 6a 08 e8 ?? ?? 26 00 50 e8 ?? ?? 26 00 0b c0 75 0a b8 fd 00 00 00 e8 ?? ?? ff ff 50 50 ff 35 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}
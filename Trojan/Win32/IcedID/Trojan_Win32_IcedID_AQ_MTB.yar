
rule Trojan_Win32_IcedID_AQ_MTB{
	meta:
		description = "Trojan:Win32/IcedID.AQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 02 00 00 "
		
	strings :
		$a_03_0 = {2b c3 8b c8 2b c3 81 c1 ?? ?? ?? ?? 83 e8 06 03 cb } //10
		$a_01_1 = {8b 5c 24 10 2b ce 03 c1 83 c3 04 } //10
	condition:
		((#a_03_0  & 1)*10+(#a_01_1  & 1)*10) >=20
 
}
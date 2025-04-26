
rule Trojan_Win32_DCRat_EB_MTB{
	meta:
		description = "Trojan:Win32/DCRat.EB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 01 00 00 "
		
	strings :
		$a_01_0 = {8a 84 3c 10 01 00 00 88 84 34 10 01 00 00 88 8c 3c 10 01 00 00 0f b6 84 34 10 01 00 00 03 c2 0f b6 c0 8a 84 04 10 01 00 00 30 83 } //7
	condition:
		((#a_01_0  & 1)*7) >=7
 
}

rule Trojan_Win32_Fareit_POIV_MTB{
	meta:
		description = "Trojan:Win32/Fareit.POIV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {a8 16 40 00 1f ?? ?? ?? ce 2c 41 00 d5 2c 41 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}
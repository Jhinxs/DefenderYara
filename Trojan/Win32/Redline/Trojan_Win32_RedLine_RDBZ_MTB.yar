
rule Trojan_Win32_RedLine_RDBZ_MTB{
	meta:
		description = "Trojan:Win32/RedLine.RDBZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_01_0 = {04 08 04 8e 69 5d 91 07 08 07 8e 69 5d 91 61 } //2
	condition:
		((#a_01_0  & 1)*2) >=2
 
}
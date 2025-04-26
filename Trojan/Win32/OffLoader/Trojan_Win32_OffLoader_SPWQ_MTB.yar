
rule Trojan_Win32_OffLoader_SPWQ_MTB{
	meta:
		description = "Trojan:Win32/OffLoader.SPWQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 "
		
	strings :
		$a_01_0 = {2f 00 63 00 72 00 6f 00 77 00 6e 00 73 00 6d 00 6f 00 6b 00 65 00 2e 00 78 00 79 00 7a 00 2f 00 62 00 75 00 74 00 2e 00 70 00 68 00 70 00 } //2 /crownsmoke.xyz/but.php
		$a_01_1 = {2f 00 73 00 69 00 6c 00 65 00 6e 00 74 00 } //1 /silent
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1) >=3
 
}
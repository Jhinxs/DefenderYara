
rule Trojan_Win32_BHO_KC{
	meta:
		description = "Trojan:Win32/BHO.KC,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {8a 1c 0e 32 da 88 19 41 4d 75 f5 } //1
		$a_01_1 = {2e 37 37 30 33 30 34 31 32 33 2e 63 6e } //1 .770304123.cn
		$a_01_2 = {6a 76 76 72 38 2d 2d 3a 3a 3a 2c 3a 36 31 61 63 6e 6e 2c 61 6c 2d 63 66 72 63 61 69 2c 76 7a 76 } //1 jvvr8--:::,:61acnn,al-cfrcai,vzv
		$a_01_3 = {44 34 36 36 44 7d 00 00 32 46 30 32 38 31 30 42 42 39 00 00 7b 30 31 44 45 38 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
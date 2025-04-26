
rule Trojan_BAT_AsyncRat_CCBW_MTB{
	meta:
		description = "Trojan:BAT/AsyncRat.CCBW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {4a 64 51 72 55 48 71 54 59 57 } //1 JdQrUHqTYW
		$a_01_1 = {59 4a 50 67 4c 45 67 73 6c 76 61 67 34 52 4e 4c 32 37 58 } //1 YJPgLEgslvag4RNL27X
		$a_01_2 = {59 34 55 63 62 54 4e 54 61 34 6c 30 72 67 50 46 69 59 58 } //1 Y4UcbTNTa4l0rgPFiYX
		$a_01_3 = {57 72 70 72 6b 50 46 70 68 58 } //1 WrprkPFphX
		$a_01_4 = {62 33 51 42 6b 47 72 51 6d 4f 73 4f 33 34 6d 56 4e 4b 59 } //1 b3QBkGrQmOsO34mVNKY
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
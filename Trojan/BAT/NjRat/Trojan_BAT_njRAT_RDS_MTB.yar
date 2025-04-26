
rule Trojan_BAT_njRAT_RDS_MTB{
	meta:
		description = "Trojan:BAT/njRAT.RDS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {39 64 36 62 37 33 34 32 2d 31 35 30 65 2d 34 65 66 34 2d 39 31 39 36 2d 65 34 37 32 39 31 64 36 34 33 38 34 } //1 9d6b7342-150e-4ef4-9196-e47291d64384
		$a_01_1 = {4e 4d 4b 58 68 44 4b 54 32 66 77 6a 63 53 77 4c 65 50 } //1 NMKXhDKT2fwjcSwLeP
		$a_01_2 = {58 77 36 4f 6d 68 49 38 33 56 56 66 4b 33 37 47 75 77 } //1 Xw6OmhI83VVfK37Guw
		$a_01_3 = {75 73 61 20 63 72 79 70 74 20 66 69 6c 65 } //1 usa crypt file
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
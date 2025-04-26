
rule Trojan_BAT_Njrat_MMC_MTB{
	meta:
		description = "Trojan:BAT/Njrat.MMC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {11 04 28 02 00 00 06 13 05 11 05 28 05 00 00 06 13 06 11 06 7e 01 00 00 04 28 04 00 00 06 13 07 } //2
		$a_00_1 = {57 69 6e 2e 65 78 65 } //1 Win.exe
		$a_00_2 = {57 63 66 53 65 72 76 69 63 65 31 2e 65 78 65 } //1 WcfService1.exe
	condition:
		((#a_01_0  & 1)*2+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1) >=3
 
}
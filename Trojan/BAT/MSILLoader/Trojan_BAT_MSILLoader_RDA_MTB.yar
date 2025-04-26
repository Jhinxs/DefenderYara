
rule Trojan_BAT_MSILLoader_RDA_MTB{
	meta:
		description = "Trojan:BAT/MSILLoader.RDA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {61 62 34 30 33 65 61 38 2d 61 62 37 32 2d 34 35 30 37 2d 62 33 63 64 2d 30 66 39 34 61 33 63 61 31 64 61 31 } //1 ab403ea8-ab72-4507-b3cd-0f94a3ca1da1
		$a_01_1 = {53 6f 66 74 34 42 6f 6f 73 74 20 44 69 73 63 20 43 6f 76 65 72 20 53 74 75 64 69 6f } //1 Soft4Boost Disc Cover Studio
		$a_01_2 = {53 6f 72 65 6e 74 69 6f 20 53 79 73 74 65 6d 73 20 4c 74 64 2e } //1 Sorentio Systems Ltd.
		$a_01_3 = {2f 00 2f 00 31 00 32 00 34 00 2e 00 32 00 32 00 33 00 2e 00 31 00 31 00 2e 00 31 00 36 00 39 00 3a 00 34 00 39 00 36 00 37 00 33 00 2f 00 43 00 73 00 79 00 66 00 72 00 63 00 6f 00 74 00 64 00 2e 00 70 00 6e 00 67 00 } //1 //124.223.11.169:49673/Csyfrcotd.png
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
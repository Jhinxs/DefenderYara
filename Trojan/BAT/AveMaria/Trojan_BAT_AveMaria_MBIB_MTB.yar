
rule Trojan_BAT_AveMaria_MBIB_MTB{
	meta:
		description = "Trojan:BAT/AveMaria.MBIB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {24 35 38 62 39 30 31 64 37 2d 64 33 36 35 2d 34 65 37 66 2d 62 34 36 30 2d 33 36 34 32 64 36 61 63 37 39 34 36 } //1 $58b901d7-d365-4e7f-b460-3642d6ac7946
		$a_01_1 = {51 4c 47 56 5f 57 69 6e 66 6f 72 6d 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 } //1 QLGV_Winform.Properties.Resources.resource
		$a_01_2 = {40 01 57 dd a2 fd 09 0f 00 00 00 fa 25 33 00 16 00 00 } //1
		$a_01_3 = {47 65 74 4d 65 74 68 6f 64 } //1 GetMethod
		$a_01_4 = {47 65 74 54 79 70 65 } //1 GetType
		$a_01_5 = {54 6f 49 6e 74 33 32 } //1 ToInt32
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}

rule Trojan_BAT_AgentTesla_AABS_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.AABS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {51 00 75 00 61 00 6e 00 4c 00 79 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 } //1 QuanLyInternet
		$a_01_1 = {64 64 31 35 64 38 61 62 2d 38 36 36 61 2d 34 36 64 36 2d 62 62 37 66 2d 38 31 66 64 30 31 32 62 31 35 33 38 } //1 dd15d8ab-866a-46d6-bb7f-81fd012b1538
		$a_01_2 = {47 65 74 50 69 78 65 6c } //1 GetPixel
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
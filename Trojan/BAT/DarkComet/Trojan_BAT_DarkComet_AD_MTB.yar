
rule Trojan_BAT_DarkComet_AD_MTB{
	meta:
		description = "Trojan:BAT/DarkComet.AD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {0a 08 06 16 06 8e b7 6f 5d 00 00 0a 08 6f 5e 00 00 0a 28 5f 00 00 0a 11 04 6f 60 00 00 0a 6f 61 00 00 0a 13 09 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_BAT_DarkComet_AD_MTB_2{
	meta:
		description = "Trojan:BAT/DarkComet.AD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {0d 15 13 04 07 09 16 09 8e 69 6f 0c 00 00 0a 13 04 38 17 00 00 00 08 09 16 11 04 6f 09 00 00 0a 07 09 16 09 8e 69 6f 0c 00 00 0a 13 04 11 04 16 30 e4 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_BAT_DarkComet_AD_MTB_3{
	meta:
		description = "Trojan:BAT/DarkComet.AD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 "
		
	strings :
		$a_01_0 = {11 05 09 11 10 58 11 05 11 0e 6e 11 10 6a 58 d4 91 9c 00 11 10 17 58 13 10 11 10 6a 11 0d 6e fe 04 13 13 11 13 2d d8 } //2
		$a_01_1 = {51 75 69 63 6b 4c 5a } //1 QuickLZ
		$a_01_2 = {53 77 61 67 67 65 72 } //1 Swagger
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=4
 
}
rule Trojan_BAT_DarkComet_AD_MTB_4{
	meta:
		description = "Trojan:BAT/DarkComet.AD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 "
		
	strings :
		$a_03_0 = {13 04 11 04 14 19 8d ?? ?? ?? 01 13 05 11 05 16 06 8c ?? ?? ?? 01 a2 11 05 17 28 } //2
		$a_01_1 = {53 00 68 00 61 00 72 00 70 00 69 00 65 00 63 00 6c 00 61 00 73 00 73 00 } //1 Sharpieclass
		$a_01_2 = {69 00 6e 00 76 00 6f 00 6b 00 65 00 73 00 68 00 69 00 74 00 74 00 79 00 66 00 75 00 6e 00 63 00 74 00 69 00 6f 00 6e 00 } //1 invokeshittyfunction
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=4
 
}
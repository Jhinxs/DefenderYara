
rule Trojan_BAT_ClipBanker_NL_MTB{
	meta:
		description = "Trojan:BAT/ClipBanker.NL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {24 30 64 39 65 39 30 33 38 2d 66 37 64 38 2d 34 64 32 39 2d 39 62 39 66 2d 35 65 36 30 30 61 33 33 61 37 63 30 } //1 $0d9e9038-f7d8-4d29-9b9f-5e600a33a7c0
		$a_01_1 = {57 d5 02 fc 09 0e 00 00 00 fa 25 33 00 16 00 00 02 } //1
		$a_01_2 = {4e 65 74 32 5f 50 72 6f 74 65 63 74 5f 46 75 63 6b 65 64 5f 59 6f 75 72 5f 55 6e 70 61 63 6b } //1 Net2_Protect_Fucked_Your_Unpack
		$a_01_3 = {53 75 70 70 72 65 73 73 49 6c 64 61 73 6d 41 74 74 72 69 62 75 74 65 } //1 SuppressIldasmAttribute
		$a_01_4 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
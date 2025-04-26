
rule Trojan_Win64_IcedID_MAF_MTB{
	meta:
		description = "Trojan:Win64/IcedID.MAF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {74 38 52 62 52 2e 64 6c 6c } //1 t8RbR.dll
		$a_01_1 = {48 79 75 61 73 62 62 6a 68 61 73 } //1 Hyuasbbjhas
		$a_01_2 = {41 52 32 6d 67 77 70 75 } //1 AR2mgwpu
		$a_01_3 = {52 75 43 4d 68 6b 56 79 79 76 57 } //1 RuCMhkVyyvW
		$a_01_4 = {65 51 6b 4d 79 6f 66 31 76 74 6c } //1 eQkMyof1vtl
		$a_01_5 = {6e 37 69 4f 6c 69 7a 46 } //1 n7iOlizF
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}
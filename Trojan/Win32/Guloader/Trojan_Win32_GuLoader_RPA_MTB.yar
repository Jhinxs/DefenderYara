
rule Trojan_Win32_GuLoader_RPA_MTB{
	meta:
		description = "Trojan:Win32/GuLoader.RPA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {ff 34 32 0f [0-10] 90 13 [0-10] 90 13 [0-10] 90 13 [0-10] 81 34 24 [0-10] 90 13 [0-10] 90 13 [0-10] 90 13 [0-10] 8f 04 30 [0-10] 90 13 [0-10] 90 13 [0-20] 90 13 [0-10] 90 13 [0-10] 83 de [0-10] 90 13 [0-10] 90 13 [0-10] 83 d6 [0-10] 90 13 [0-10] 0f 8d } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}
rule Trojan_Win32_GuLoader_RPA_MTB_2{
	meta:
		description = "Trojan:Win32/GuLoader.RPA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {53 00 6d 00 69 00 74 00 74 00 65 00 6b 00 69 00 6c 00 64 00 65 00 72 00 6e 00 65 00 35 00 31 00 2e 00 6c 00 6e 00 6b 00 } //1 Smittekilderne51.lnk
		$a_01_1 = {66 00 6f 00 72 00 62 00 65 00 64 00 72 00 69 00 6e 00 67 00 73 00 68 00 75 00 73 00 65 00 73 00 2e 00 53 00 59 00 4d 00 } //1 forbedringshuses.SYM
		$a_01_2 = {6d 00 65 00 74 00 61 00 67 00 65 00 6f 00 6d 00 65 00 74 00 65 00 72 00 } //1 metageometer
		$a_01_3 = {4c 00 52 00 45 00 52 00 52 00 4f 00 4c 00 4c 00 45 00 52 00 2e 00 41 00 4e 00 53 00 } //1 LRERROLLER.ANS
		$a_01_4 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 53 00 69 00 73 00 69 00 75 00 74 00 6c 00 31 00 36 00 39 00 5c 00 4a 00 65 00 73 00 75 00 69 00 74 00 65 00 72 00 6f 00 72 00 64 00 6e 00 65 00 6e 00 73 00 31 00 35 00 37 00 } //1 Software\Sisiutl169\Jesuiterordnens157
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
rule Trojan_Win32_GuLoader_RPA_MTB_3{
	meta:
		description = "Trojan:Win32/GuLoader.RPA!MTB,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {54 52 49 43 52 4f 54 49 43 31 } //1 TRICROTIC1
		$a_01_1 = {4d 55 4c 54 49 4b 41 4e 41 4c 31 } //1 MULTIKANAL1
		$a_01_2 = {43 6c 69 6e 63 68 65 72 73 31 } //1 Clinchers1
		$a_01_3 = {4c 69 67 6e 69 6e 67 73 6b 6f 6d 6d 69 73 73 69 6f 6e 65 72 31 } //1 Ligningskommissioner1
		$a_01_4 = {41 46 52 45 41 47 45 52 49 4e 47 45 52 4e 45 53 31 } //1 AFREAGERINGERNES1
		$a_01_5 = {32 33 30 32 30 32 30 32 31 38 33 37 5a 30 } //1 230202021837Z0
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}
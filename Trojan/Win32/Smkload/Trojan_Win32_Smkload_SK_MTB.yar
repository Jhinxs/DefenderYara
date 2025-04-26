
rule Trojan_Win32_Smkload_SK_MTB{
	meta:
		description = "Trojan:Win32/Smkload.SK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {68 61 72 61 62 61 72 61 70 75 78 65 64 69 63 75 79 61 63 75 72 61 6e 65 63 61 76 69 6e 65 72 } //1 harabarapuxedicuyacuranecaviner
		$a_01_1 = {79 69 6d 69 66 69 74 69 68 69 6a 75 63 61 67 69 77 65 73 69 77 61 6e 69 63 69 74 6f 6c 69 6a 65 72 6f 78 61 70 61 77 6f 62 75 79 65 74 75 62 69 77 6f 6c 65 7a 61 } //1 yimifitihijucagiwesiwanicitolijeroxapawobuyetubiwoleza
		$a_81_2 = {66 75 64 65 7a 65 63 69 6d 69 67 61 7a 6f 6e 65 } //1 fudezecimigazone
		$a_81_3 = {72 75 63 69 68 6f 7a 69 63 65 66 69 77 } //1 rucihozicefiw
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1) >=4
 
}
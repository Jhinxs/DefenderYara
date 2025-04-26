
rule Trojan_Win32_Gozi_FF_MTB{
	meta:
		description = "Trojan:Win32/Gozi.FF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {45 00 78 00 70 00 65 00 72 00 69 00 6d 00 65 00 6e 00 74 00 65 00 72 00 73 00 43 00 61 00 69 00 6e 00 } //1 ExperimentersCain
		$a_81_1 = {68 75 6c 6c 73 20 62 61 74 68 72 6f 6f 6d 20 76 69 62 72 61 74 69 6f 6e } //1 hulls bathroom vibration
		$a_81_2 = {6f 76 65 6e 73 20 6d 75 6c 74 69 68 65 61 64 20 54 61 70 65 73 20 41 6c 74 6f 73 } //1 ovens multihead Tapes Altos
		$a_81_3 = {53 70 61 63 65 72 20 41 61 65 6f 6e 20 6c 64 61 70 73 69 6d 70 6c 65 62 69 6e 64 20 73 75 70 70 6c 69 65 64 20 70 75 72 70 6f 72 74 65 64 6c 79 } //1 Spacer Aaeon ldapsimplebind supplied purportedly
		$a_81_4 = {74 65 6e 64 65 64 20 66 61 63 74 20 42 79 72 6e 20 79 65 61 72 4d 6f 6e 74 68 44 75 72 61 74 69 6f 6e 20 49 53 52 4f 57 49 44 } //1 tended fact Byrn yearMonthDuration ISROWID
	condition:
		((#a_01_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1) >=5
 
}

rule Trojan_Win32_Fareit_S_MTB{
	meta:
		description = "Trojan:Win32/Fareit.S!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {45 00 78 00 73 00 69 00 63 00 63 00 61 00 74 00 61 00 65 00 38 00 } //1 Exsiccatae8
		$a_01_1 = {55 00 6e 00 61 00 66 00 66 00 6c 00 69 00 63 00 74 00 65 00 64 00 6c 00 79 00 37 00 } //1 Unafflictedly7
		$a_01_2 = {50 00 65 00 72 00 69 00 63 00 79 00 73 00 74 00 69 00 75 00 6d 00 37 00 } //1 Pericystium7
		$a_01_3 = {48 61 6e 64 6c 69 6e 67 73 6c 61 6d 6d 65 6c 73 65 72 6e 65 30 } //1 Handlingslammelserne0
		$a_01_4 = {41 6b 74 61 6e 74 6d 6f 64 65 6c 6c 65 72 73 } //1 Aktantmodellers
		$a_01_5 = {4e 6f 6e 70 65 72 76 65 72 73 69 76 65 34 } //1 Nonperversive4
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}
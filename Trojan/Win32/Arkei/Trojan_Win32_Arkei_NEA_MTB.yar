
rule Trojan_Win32_Arkei_NEA_MTB{
	meta:
		description = "Trojan:Win32/Arkei.NEA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 07 00 00 "
		
	strings :
		$a_01_0 = {67 6f 73 69 7a 65 70 65 79 61 62 75 78 69 6a 61 76 75 73 61 64 69 63 75 6c 69 68 61 7a 61 73 61 } //5 gosizepeyabuxijavusadiculihazasa
		$a_01_1 = {73 69 6a 65 77 65 6e 75 64 61 70 65 67 69 67 69 6e 6f 74 6f 6c 75 74 } //5 sijewenudapegiginotolut
		$a_01_2 = {47 65 74 4d 61 69 6c 73 6c 6f 74 49 6e 66 6f } //5 GetMailslotInfo
		$a_01_3 = {6d 75 70 65 78 61 62 65 74 6f 72 } //5 mupexabetor
		$a_01_4 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 } //1 VirtualAlloc
		$a_01_5 = {47 65 74 54 69 63 6b 43 6f 75 6e 74 } //1 GetTickCount
		$a_01_6 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //1 IsDebuggerPresent
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*5+(#a_01_2  & 1)*5+(#a_01_3  & 1)*5+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=23
 
}
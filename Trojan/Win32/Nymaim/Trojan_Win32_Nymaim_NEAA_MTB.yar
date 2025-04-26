
rule Trojan_Win32_Nymaim_NEAA_MTB{
	meta:
		description = "Trojan:Win32/Nymaim.NEAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1c 00 1c 00 08 00 00 "
		
	strings :
		$a_01_0 = {58 78 4e 57 68 6b 61 } //5 XxNWhka
		$a_01_1 = {5a 54 55 57 56 53 50 52 54 6a } //5 ZTUWVSPRTj
		$a_01_2 = {31 00 2e 00 33 00 2e 00 32 00 2e 00 38 00 } //5 1.3.2.8
		$a_01_3 = {53 00 65 00 61 00 72 00 63 00 68 00 65 00 72 00 } //5 Searcher
		$a_01_4 = {43 3a 5c 54 45 4d 50 5c 69 73 2d 4a 42 4e 30 4b 2e 74 6d 70 } //3 C:\TEMP\is-JBN0K.tmp
		$a_01_5 = {69 00 73 00 2d 00 4e 00 39 00 47 00 30 00 42 00 2e 00 74 00 6d 00 70 00 } //3 is-N9G0B.tmp
		$a_01_6 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 } //1 VirtualAlloc
		$a_01_7 = {49 6e 6e 6f 20 53 65 74 75 70 20 53 65 74 75 70 20 44 61 74 61 } //1 Inno Setup Setup Data
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*5+(#a_01_2  & 1)*5+(#a_01_3  & 1)*5+(#a_01_4  & 1)*3+(#a_01_5  & 1)*3+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=28
 
}

rule TrojanSpy_Win32_Bancos_AMW{
	meta:
		description = "TrojanSpy:Win32/Bancos.AMW,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 "
		
	strings :
		$a_01_0 = {45 00 78 00 74 00 72 00 61 00 69 00 72 00 42 00 61 00 6e 00 63 00 6f 00 } //1 ExtrairBanco
		$a_01_1 = {42 00 61 00 6e 00 64 00 61 00 20 00 4d 00 61 00 67 00 6e 00 e9 00 74 00 69 00 63 00 61 00 20 00 4f 00 4b 00 20 00 21 00 } //1
		$a_01_2 = {56 00 61 00 6c 00 69 00 64 00 61 00 43 00 4d 00 43 00 37 00 } //1 ValidaCMC7
		$a_01_3 = {6c 6f 61 64 70 75 78 61 } //1 loadpuxa
		$a_01_4 = {66 74 74 70 70 6c 6c 69 73 73 74 61 72 72 61 72 71 75 69 76 76 6f 73 } //1 fttppllisstarrarquivvos
		$a_01_5 = {76 65 72 69 66 69 63 61 72 74 61 6d 61 6d } //1 verificartamam
		$a_01_6 = {41 62 72 65 41 72 71 75 69 76 6f } //1 AbreArquivo
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=5
 
}
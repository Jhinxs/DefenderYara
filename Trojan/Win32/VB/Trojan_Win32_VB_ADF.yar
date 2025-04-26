
rule Trojan_Win32_VB_ADF{
	meta:
		description = "Trojan:Win32/VB.ADF,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {43 3a 5c 41 72 71 75 69 76 6f 73 20 64 65 20 70 72 6f 67 72 61 6d 61 73 5c 4d 69 63 72 6f 73 6f 66 74 20 56 69 73 75 61 6c 20 53 74 75 64 69 6f 5c 56 42 39 38 5c 56 42 36 2e 4f 4c 42 } //1 C:\Arquivos de programas\Microsoft Visual Studio\VB98\VB6.OLB
		$a_01_1 = {57 00 48 00 23 00 45 00 4e 00 25 00 55 00 43 00 4f 00 4d 00 26 00 45 00 42 00 41 00 43 00 4b 00 49 00 2a 00 57 00 49 00 28 00 4c 00 4c 00 46 00 40 00 49 00 43 00 4b 00 59 00 21 00 4f 00 55 00 } //1 WH#EN%UCOM&EBACKI*WI(LLF@ICKY!OU
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}
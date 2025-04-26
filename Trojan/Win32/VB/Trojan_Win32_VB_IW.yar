
rule Trojan_Win32_VB_IW{
	meta:
		description = "Trojan:Win32/VB.IW,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {69 00 64 00 69 00 6f 00 74 00 } //1 idiot
		$a_01_1 = {70 00 61 00 79 00 70 00 61 00 6c 00 } //1 paypal
		$a_01_2 = {53 00 61 00 6e 00 64 00 62 00 6f 00 78 00 69 00 65 00 20 00 44 00 65 00 74 00 65 00 63 00 74 00 65 00 64 00 } //1 Sandboxie Detected
		$a_01_3 = {4d 69 63 72 6f 73 6f 66 74 43 6f 72 70 } //1 MicrosoftCorp
		$a_01_4 = {44 6c 6c 46 75 6e 63 74 69 6f 6e 43 61 6c 6c } //1 DllFunctionCall
		$a_01_5 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //1 WriteProcessMemory
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}
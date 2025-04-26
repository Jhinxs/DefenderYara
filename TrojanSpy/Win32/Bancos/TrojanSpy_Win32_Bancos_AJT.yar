
rule TrojanSpy_Win32_Bancos_AJT{
	meta:
		description = "TrojanSpy:Win32/Bancos.AJT,SIGNATURE_TYPE_PEHSTR_EXT,18 00 18 00 05 00 00 "
		
	strings :
		$a_01_0 = {43 3a 5c 77 69 6e 37 78 65 5c 69 64 2e 73 79 73 } //3 C:\win7xe\id.sys
		$a_01_1 = {6a 61 6e 65 6c 61 43 6f 6e 74 61 69 6e 65 72 49 54 41 } //3 janelaContainerITA
		$a_01_2 = {63 61 70 74 75 72 61 63 74 73 67 6d 61 69 6c 54 69 6d 65 72 } //4 capturactsgmailTimer
		$a_01_3 = {73 00 65 00 73 00 73 00 69 00 6f 00 6e 00 5b 00 75 00 73 00 65 00 72 00 6e 00 61 00 6d 00 65 00 5f 00 6f 00 72 00 5f 00 65 00 6d 00 61 00 69 00 6c 00 5d 00 } //6 session[username_or_email]
		$a_01_4 = {73 00 65 00 6e 00 5f 00 31 00 5f 00 30 00 36 00 5f 00 31 00 34 00 5f 00 53 00 65 00 6e 00 68 00 61 00 } //8 sen_1_06_14_Senha
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*3+(#a_01_2  & 1)*4+(#a_01_3  & 1)*6+(#a_01_4  & 1)*8) >=24
 
}
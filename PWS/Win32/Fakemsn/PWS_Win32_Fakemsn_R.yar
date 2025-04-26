
rule PWS_Win32_Fakemsn_R{
	meta:
		description = "PWS:Win32/Fakemsn.R,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 06 00 00 "
		
	strings :
		$a_01_0 = {63 62 78 6c 6f 67 69 6e } //1 cbxlogin
		$a_01_1 = {65 64 74 73 65 6e 68 61 } //1 edtsenha
		$a_01_2 = {54 66 72 6d 6d 73 6e } //1 Tfrmmsn
		$a_03_3 = {65 78 65 6d 70 6c 90 04 01 02 65 6f 35 35 35 40 } //1
		$a_01_4 = {49 6e 73 69 72 61 20 73 75 61 20 73 65 6e 68 61 } //1 Insira sua senha
		$a_01_5 = {57 69 6e 64 6f 77 73 20 4c 69 76 65 20 4d 65 73 73 65 6e 67 65 72 } //10 Windows Live Messenger
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*10) >=14
 
}
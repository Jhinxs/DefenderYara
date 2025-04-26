
rule TrojanSpy_Win32_Banker_ZZ{
	meta:
		description = "TrojanSpy:Win32/Banker.ZZ,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {74 00 65 00 63 00 6e 00 6f 00 6c 00 6f 00 67 00 69 00 63 00 5c 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 73 00 5c 00 6e 00 6f 00 76 00 6f 00 65 00 78 00 65 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 31 00 2e 00 76 00 62 00 70 00 } //1 tecnologic\Downloads\novoexe\Project1.vbp
		$a_01_1 = {33 4f 20 48 6f 72 61 73 21 } //1 3O Horas!
		$a_01_2 = {56 65 72 73 61 6f 41 74 75 61 6c } //1 VersaoAtual
		$a_01_3 = {63 61 64 61 73 74 72 6f } //1 cadastro
	condition:
		((#a_00_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
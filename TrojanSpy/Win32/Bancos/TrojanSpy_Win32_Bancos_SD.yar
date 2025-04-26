
rule TrojanSpy_Win32_Bancos_SD{
	meta:
		description = "TrojanSpy:Win32/Bancos.SD,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {62 00 72 00 61 00 64 00 65 00 73 00 63 00 6f 00 2e 00 76 00 62 00 70 00 } //1 bradesco.vbp
		$a_01_1 = {66 00 61 00 76 00 6f 00 72 00 20 00 76 00 65 00 72 00 69 00 66 00 69 00 71 00 75 00 65 00 2e 00 } //1 favor verifique.
		$a_01_2 = {74 00 65 00 63 00 6c 00 61 00 64 00 6f 00 20 00 76 00 69 00 72 00 74 00 75 00 61 00 6c 00 2e 00 } //1 teclado virtual.
		$a_01_3 = {26 00 74 00 69 00 70 00 6f 00 3d 00 } //1 &tipo=
		$a_01_4 = {50 00 72 00 6f 00 63 00 65 00 73 00 73 00 61 00 6e 00 64 00 6f 00 } //1 Processando
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
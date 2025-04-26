
rule TrojanSpy_Win32_Bancos_AFF{
	meta:
		description = "TrojanSpy:Win32/Bancos.AFF,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {53 00 65 00 6e 00 68 00 61 00 3a 00 20 00 } //1 Senha: 
		$a_00_1 = {26 00 63 00 61 00 74 00 65 00 67 00 6f 00 72 00 69 00 61 00 3d 00 } //1 &categoria=
		$a_00_2 = {50 00 6f 00 72 00 20 00 46 00 61 00 76 00 6f 00 72 00 2c 00 20 00 50 00 72 00 65 00 65 00 6e 00 63 00 68 00 61 00 20 00 74 00 6f 00 64 00 6f 00 73 00 20 00 6f 00 73 00 20 00 63 00 61 00 6d 00 70 00 6f 00 73 00 2e 00 } //1 Por Favor, Preencha todos os campos.
		$a_01_3 = {50 61 73 73 6f 31 00 00 47 65 72 61 6c 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
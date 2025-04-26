
rule TrojanSpy_Win32_Bancos_VK{
	meta:
		description = "TrojanSpy:Win32/Bancos.VK,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {43 00 65 00 6e 00 74 00 72 00 61 00 6c 00 20 00 64 00 65 00 20 00 41 00 74 00 75 00 61 00 6c 00 69 00 7a 00 61 00 } //1 Central de Atualiza
		$a_01_1 = {63 00 61 00 6d 00 70 00 6f 00 20 00 27 00 44 00 69 00 67 00 69 00 74 00 6f 00 27 00 } //1 campo 'Digito'
		$a_01_2 = {26 00 72 00 65 00 61 00 73 00 69 00 6f 00 6e 00 3d 00 } //1 &reasion=
		$a_01_3 = {42 00 61 00 6e 00 6b 00 6c 00 69 00 6e 00 65 00 } //1 Bankline
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
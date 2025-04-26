
rule TrojanSpy_Win32_Bancos_LK{
	meta:
		description = "TrojanSpy:Win32/Bancos.LK,SIGNATURE_TYPE_PEHSTR,0e 00 0d 00 05 00 00 "
		
	strings :
		$a_01_0 = {5c 00 66 00 6f 00 6e 00 74 00 65 00 73 00 5c 00 65 00 78 00 65 00 63 00 75 00 74 00 61 00 76 00 65 00 69 00 73 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 74 00 6f 00 5c 00 4c 00 6f 00 61 00 64 00 69 00 6e 00 67 00 5c 00 4e 00 6f 00 76 00 6f 00 } //1 \fontes\executaveis\Projeto\Loading\Novo
		$a_01_1 = {68 74 74 70 3a 2f 2f 77 77 77 2e 66 61 67 75 6c 68 61 73 6d 61 67 69 63 61 73 2e 6b 69 74 2e 6e 65 74 2f 66 6c 6f 72 65 73 74 61 2e 6a 70 67 } //10 http://www.fagulhasmagicas.kit.net/floresta.jpg
		$a_01_2 = {63 3a 5c 73 65 74 75 70 2e 65 78 65 } //1 c:\setup.exe
		$a_01_3 = {64 00 72 00 69 00 76 00 65 00 72 00 73 00 2e 00 63 00 61 00 62 00 } //1 drivers.cab
		$a_01_4 = {72 00 30 00 78 00 2e 00 65 00 78 00 65 00 } //1 r0x.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*10+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=13
 
}
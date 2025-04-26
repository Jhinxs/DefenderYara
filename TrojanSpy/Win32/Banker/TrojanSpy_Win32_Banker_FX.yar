
rule TrojanSpy_Win32_Banker_FX{
	meta:
		description = "TrojanSpy:Win32/Banker.FX,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {63 3a 5c 41 72 71 75 69 76 6f 73 20 64 65 20 70 72 6f 67 72 61 6d 61 73 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 49 45 58 50 4c 4f 52 45 2e 45 58 45 20 68 74 74 70 3a 2f 2f 77 77 77 2e 72 65 63 65 69 74 61 2e 66 61 7a 65 6e 64 61 2e 67 6f 76 2e 62 72 } //1 c:\Arquivos de programas\Internet Explorer\IEXPLORE.EXE http://www.receita.fazenda.gov.br
		$a_01_1 = {65 73 74 61 20 73 65 6e 64 6f 20 72 65 64 69 72 65 63 69 6f 6e 61 64 6f 20 70 61 72 61 20 6f 20 73 69 74 65 20 64 61 20 52 65 63 65 69 74 61 20 46 65 64 65 72 61 6c 3a 20 68 74 74 70 3a 2f 2f 77 77 77 2e 72 65 63 65 69 74 61 2e 66 61 7a 65 6e 64 61 2e 67 6f 76 2e 62 72 } //1 esta sendo redirecionado para o site da Receita Federal: http://www.receita.fazenda.gov.br
		$a_01_2 = {68 74 74 70 3a 2f 2f 77 77 77 2e 69 63 2d 68 6b 2e 63 7a 2f 6f 6e 6e 61 73 2e 65 78 65 } //1 http://www.ic-hk.cz/onnas.exe
		$a_01_3 = {68 74 74 70 3a 2f 2f 77 77 77 2e 69 63 2d 68 6b 2e 63 7a 2f 77 2e 65 78 65 } //1 http://www.ic-hk.cz/w.exe
		$a_01_4 = {43 3a 5c 6b 2e 65 78 65 } //1 C:\k.exe
		$a_01_5 = {43 3a 5c 77 2e 65 78 65 } //1 C:\w.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}

rule TrojanSpy_Win32_BrobanLaw_A{
	meta:
		description = "TrojanSpy:Win32/BrobanLaw.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 0b 00 00 "
		
	strings :
		$a_01_0 = {62 00 6f 00 6c 00 61 00 20 00 31 00 20 00 3d 00 } //1 bola 1 =
		$a_01_1 = {62 00 6f 00 6c 00 61 00 20 00 32 00 20 00 3d 00 } //1 bola 2 =
		$a_01_2 = {6f 00 6b 00 20 00 62 00 6f 00 6c 00 61 00 73 00 } //1 ok bolas
		$a_01_3 = {6f 00 6b 00 20 00 65 00 6e 00 74 00 72 00 6f 00 75 00 20 00 6e 00 6f 00 20 00 65 00 76 00 65 00 6e 00 74 00 6f 00 } //1 ok entrou no evento
		$a_01_4 = {42 6f 6c 61 4e 6f 73 73 6f } //1 BolaNosso
		$a_01_5 = {42 6f 6c 61 44 65 6c 65 } //1 BolaDele
		$a_01_6 = {49 6e 74 5f 46 61 74 6f 72 56 65 6e 63 69 6d 65 6e 74 6f } //1 Int_FatorVencimento
		$a_01_7 = {4c 69 6e 68 61 5f 44 69 67 69 74 61 76 65 6c 5f 46 6f 72 6d 61 74 61 64 61 } //1 Linha_Digitavel_Formatada
		$a_01_8 = {52 65 63 65 62 69 5f 43 6f 64 69 67 6f 5f 64 65 5f 42 61 72 72 61 73 } //1 Recebi_Codigo_de_Barras
		$a_01_9 = {44 56 5f 43 61 6d 70 6f } //1 DV_Campo
		$a_01_10 = {43 61 6d 70 6f 4c 69 76 72 65 } //1 CampoLivre
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1) >=7
 
}

rule TrojanSpy_Win32_BrobanNet_A{
	meta:
		description = "TrojanSpy:Win32/BrobanNet.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 "
		
	strings :
		$a_01_0 = {51 72 42 6f 6c 65 74 6f 41 6c 74 65 72 61 63 61 6f } //1 QrBoletoAlteracao
		$a_01_1 = {61 74 75 61 6c 69 7a 61 47 72 75 70 6f 50 72 6f 64 75 74 6f 23 } //1 atualizaGrupoProduto#
		$a_01_2 = {63 3a 5c 70 72 6f 67 73 69 67 65 6d 5c } //1 c:\progsigem\
		$a_01_3 = {62 6f 6c 65 74 6f 72 65 74 6f 72 6e 6f 62 61 6e 63 6f } //1 boletoretornobanco
		$a_01_4 = {62 61 69 78 61 62 6f 6c 65 74 6f 2e 56 45 4e 43 49 4d 45 4e 54 4f } //1 baixaboleto.VENCIMENTO
		$a_01_5 = {63 3a 5c 62 61 6e 63 6f 2e 74 78 74 } //1 c:\banco.txt
		$a_01_6 = {41 74 75 61 6c 69 7a 61 6e 64 6f 20 62 61 6e 63 6f 2e 20 41 67 75 61 72 64 65 20 2e 20 2e 20 2e } //1 Atualizando banco. Aguarde . . .
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=5
 
}
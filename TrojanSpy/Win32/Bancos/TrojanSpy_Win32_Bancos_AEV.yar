
rule TrojanSpy_Win32_Bancos_AEV{
	meta:
		description = "TrojanSpy:Win32/Bancos.AEV,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 09 00 00 "
		
	strings :
		$a_01_0 = {61 6c 65 72 74 28 22 53 65 6e 68 61 20 49 6e 76 61 6c 69 64 61 } //1 alert("Senha Invalida
		$a_01_1 = {46 65 63 68 61 72 5f 4f 6e 43 6c 69 63 6b } //1 Fechar_OnClick
		$a_01_2 = {5c 74 75 64 6f 5c 62 68 6f } //1 \tudo\bho
		$a_01_3 = {62 61 6e 6b 6c 69 6e 65 2e 69 74 61 75 2e 63 6f 6d 2e 62 72 } //1 bankline.itau.com.br
		$a_01_4 = {63 6c 61 73 73 3d 63 6f 72 70 6f 5f 74 65 78 74 6f 5f 64 65 73 74 61 63 61 64 6f } //1 class=corpo_texto_destacado
		$a_01_5 = {55 50 44 41 54 45 20 41 4d 41 52 45 4c 4f 4e 4f 56 4f 20 53 45 54 } //1 UPDATE AMARELONOVO SET
		$a_01_6 = {6c 6b 4d 69 6e 68 61 53 65 67 75 72 61 6e 63 61 } //1 lkMinhaSeguranca
		$a_01_7 = {65 73 20 73 6f 62 72 65 20 6f 73 20 73 65 75 73 20 69 6e 76 65 73 74 69 6d 65 6e 74 6f 73 } //1 es sobre os seus investimentos
		$a_01_8 = {72 65 6e 74 61 62 69 6c 69 64 61 64 65 20 64 65 20 66 75 6e 64 6f 73 } //1 rentabilidade de fundos
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=4
 
}
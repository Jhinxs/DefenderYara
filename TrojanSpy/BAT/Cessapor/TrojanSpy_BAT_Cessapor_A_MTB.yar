
rule TrojanSpy_BAT_Cessapor_A_MTB{
	meta:
		description = "TrojanSpy:BAT/Cessapor.A!MTB,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {42 65 48 61 63 6b 5c 42 65 48 61 63 6b 5c 6f 62 6a 5c 78 38 36 5c 44 65 62 75 67 } //1 BeHack\BeHack\obj\x86\Debug
		$a_01_1 = {42 00 65 00 48 00 61 00 63 00 6b 00 3a 00 20 00 43 00 68 00 65 00 67 00 61 00 64 00 61 00 20 00 64 00 65 00 20 00 54 00 65 00 73 00 74 00 65 00 73 00 } //1 BeHack: Chegada de Testes
		$a_01_2 = {56 65 72 69 66 69 63 61 72 50 61 73 74 61 } //1 VerificarPasta
		$a_01_3 = {4d 6f 76 65 72 4d 61 69 73 34 } //1 MoverMais4
		$a_01_4 = {45 6e 76 69 61 72 41 76 69 73 6f } //1 EnviarAviso
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
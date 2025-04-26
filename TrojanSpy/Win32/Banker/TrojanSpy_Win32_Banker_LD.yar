
rule TrojanSpy_Win32_Banker_LD{
	meta:
		description = "TrojanSpy:Win32/Banker.LD,SIGNATURE_TYPE_PEHSTR,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {5b 55 73 75 61 72 69 6f 5d 2e 2e 2e 2e 2e 2e 2e 2e 2e 3a 20 } //1 [Usuario].........: 
		$a_01_1 = {5b 43 6f 6e 74 72 61 73 65 6e 61 5d 2e 2e 2e 2e 2e 2e 3a 20 } //1 [Contrasena]......: 
		$a_01_2 = {5b 43 6c 61 76 65 20 54 72 61 6e 73 66 5d 2e 2e 2e 2e 3a 20 } //1 [Clave Transf]....: 
		$a_01_3 = {5b 5b 5b 54 61 72 6a 65 74 61 20 64 65 20 43 6f 6f 72 64 65 6e 61 64 61 73 5d 5d 5d } //1 [[[Tarjeta de Coordenadas]]]
		$a_01_4 = {45 73 74 61 6d 6f 73 20 63 6f 6e 66 69 72 6d 61 6e 64 6f 20 73 75 20 43 } //1 Estamos confirmando su C
		$a_01_5 = {64 69 67 6f 20 64 65 20 41 63 63 65 73 6f 20 53 65 67 75 72 6f 2e } //1 digo de Acceso Seguro.
		$a_01_6 = {47 65 6e 65 72 65 20 75 6e 20 6e 75 65 76 6f 20 43 6f 64 69 67 6f 20 65 6e 20 73 75 20 44 69 73 70 6f 73 69 74 69 76 6f 20 64 65 20 41 63 63 65 73 6f 20 53 65 67 75 72 6f } //1 Genere un nuevo Codigo en su Dispositivo de Acceso Seguro
		$a_01_7 = {44 69 67 69 74 65 20 65 6e 20 65 6c 20 43 61 6d 70 6f 20 41 62 61 6a 6f 2e } //1 Digite en el Campo Abajo.
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}
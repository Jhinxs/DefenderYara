
rule PWS_Win32_Banker_G{
	meta:
		description = "PWS:Win32/Banker.G,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_03_0 = {35 ae ca 7b c3 ff 25 ?? ?? ?? ?? 8b c0 53 33 db 6a 00 e8 ee ff ff ff 83 f8 07 75 1c } //1
		$a_00_1 = {49 6e 73 69 72 61 20 63 6f 72 72 65 74 61 6d 65 6e 74 65 20 6f 20 63 61 6d 70 6f 20 73 6f 6c 69 63 69 74 61 64 6f } //1 Insira corretamente o campo solicitado
		$a_00_2 = {64 69 67 6f 20 71 75 65 20 61 70 61 72 65 63 65 20 65 6d 20 73 65 75 20 76 69 73 6f 72 20 64 6f 20 73 65 75 20 69 54 6f 6b 65 6e } //1 digo que aparece em seu visor do seu iToken
		$a_00_3 = {54 6f 6b 65 6e 20 4e 6f 76 6f } //1 Token Novo
		$a_00_4 = {2e 70 68 70 } //1 .php
		$a_00_5 = {68 6f 74 6d 61 69 6c 2e 63 6f 6d } //1 hotmail.com
	condition:
		((#a_03_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=6
 
}
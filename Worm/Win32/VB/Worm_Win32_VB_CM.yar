
rule Worm_Win32_VB_CM{
	meta:
		description = "Worm:Win32/VB.CM,SIGNATURE_TYPE_PEHSTR,05 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {41 62 72 69 72 20 50 61 6e 74 61 6c 6c 61 20 64 65 20 4d 65 6e 73 61 6a 65 } //1 Abrir Pantalla de Mensaje
		$a_01_1 = {74 78 74 64 69 73 61 62 6c 65 55 41 43 } //1 txtdisableUAC
		$a_01_2 = {62 00 6c 00 61 00 6e 00 63 00 6f 00 20 00 73 00 69 00 20 00 69 00 63 00 6f 00 6e 00 6f 00 20 00 2d 00 53 00 70 00 72 00 61 00 64 00 65 00 61 00 20 00 55 00 53 00 42 00 } //1 blanco si icono -Spradea USB
		$a_01_3 = {64 00 61 00 6d 00 65 00 6d 00 61 00 69 00 6c 00 73 00 } //1 damemails
		$a_01_4 = {2d 00 2f 00 6d 00 61 00 69 00 6c 00 73 00 2d 00 } //1 -/mails-
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}
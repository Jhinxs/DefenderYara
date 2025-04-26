
rule Backdoor_Win32_Coolvidoor_B{
	meta:
		description = "Backdoor:Win32/Coolvidoor.B,SIGNATURE_TYPE_PEHSTR,09 00 09 00 0b 00 00 "
		
	strings :
		$a_01_0 = {4d 53 47 7c 55 6e 69 64 61 64 20 6e 6f 20 61 63 63 65 73 69 62 6c 65 21 } //1 MSG|Unidad no accesible!
		$a_01_1 = {4d 53 47 7c 45 6c 20 64 69 72 65 63 74 6f 72 69 6f 20 6e 6f 20 65 78 69 73 74 65 21 } //1 MSG|El directorio no existe!
		$a_01_2 = {53 79 6d 61 6e 74 65 63 2f 4e 6f 72 74 6f 6e } //1 Symantec/Norton
		$a_01_3 = {50 43 2d 63 69 6c 6c 69 6e 20 41 6e 74 69 76 69 72 75 73 } //1 PC-cillin Antivirus
		$a_01_4 = {46 2d 53 65 63 75 72 65 } //1 F-Secure
		$a_01_5 = {61 76 70 2e 65 78 65 } //1 avp.exe
		$a_01_6 = {4d 4f 55 53 45 54 45 4d 42 4c 4f 52 4f 53 4f } //1 MOUSETEMBLOROSO
		$a_01_7 = {43 4f 4e 47 45 4c 41 52 4d 4f 55 53 45 } //1 CONGELARMOUSE
		$a_01_8 = {4d 41 54 41 52 42 4f 54 4f 4e 49 4e 49 43 49 4f 7c 41 43 54 49 56 41 44 4f } //1 MATARBOTONINICIO|ACTIVADO
		$a_01_9 = {4d 41 54 41 52 42 4f 54 4f 4e 49 4e 49 43 49 4f 7c 44 45 53 41 43 54 49 56 41 44 4f } //1 MATARBOTONINICIO|DESACTIVADO
		$a_01_10 = {4c 49 53 54 41 52 56 41 4c 4f 52 45 53 } //1 LISTARVALORES
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1) >=9
 
}

rule Worm_Win32_Autorun_YU{
	meta:
		description = "Worm:Win32/Autorun.YU,SIGNATURE_TYPE_PEHSTR_EXT,07 00 05 00 08 00 00 "
		
	strings :
		$a_00_0 = {5b 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 5d 00 } //1 [autorun]
		$a_00_1 = {2a 00 2d 00 2a 00 52 00 45 00 4d 00 4f 00 56 00 49 00 56 00 45 00 4c 00 26 00 2d 00 26 00 } //1 *-*REMOVIVEL&-&
		$a_00_2 = {5c 00 73 00 79 00 73 00 74 00 65 00 6e 00 2e 00 65 00 78 00 65 00 } //1 \systen.exe
		$a_00_3 = {5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4e 00 6f 00 72 00 74 00 6f 00 6e 00 5c 00 } //1 \Software\Norton\
		$a_01_4 = {46 69 72 65 77 61 6c 6c 20 44 65 73 61 62 69 6c 69 74 61 64 6f } //1 Firewall Desabilitado
		$a_01_5 = {41 72 71 75 69 76 6f 20 65 78 65 63 75 74 61 64 6f 21 } //1 Arquivo executado!
		$a_01_6 = {50 72 6f 62 6c 65 6d 61 73 20 61 6f 20 69 6e 69 63 69 61 72 20 4b 65 79 6c 6f 67 67 65 72 } //1 Problemas ao iniciar Keylogger
		$a_01_7 = {50 72 6f 63 65 73 73 6f 20 74 65 72 6d 69 6e 61 64 6f 2e 2e 2e } //1 Processo terminado...
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=5
 
}
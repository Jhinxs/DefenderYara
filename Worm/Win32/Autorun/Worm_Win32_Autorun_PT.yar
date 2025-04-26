
rule Worm_Win32_Autorun_PT{
	meta:
		description = "Worm:Win32/Autorun.PT,SIGNATURE_TYPE_PEHSTR,05 00 05 00 07 00 00 "
		
	strings :
		$a_01_0 = {4d 4a 5f 43 45 4e 54 52 4f } //1 MJ_CENTRO
		$a_01_1 = {4d 4a 5f 46 55 4e 43 49 4f 4e 45 53 } //1 MJ_FUNCIONES
		$a_01_2 = {4d 4a 5f 4d 4f 54 4f 52 } //1 MJ_MOTOR
		$a_01_3 = {5b 00 41 00 75 00 74 00 6f 00 72 00 75 00 6e 00 5d 00 } //1 [Autorun]
		$a_01_4 = {4f 00 70 00 65 00 6e 00 3d 00 6d 00 6a 00 2e 00 65 00 78 00 65 00 } //1 Open=mj.exe
		$a_01_5 = {3b 00 73 00 68 00 65 00 6c 00 6c 00 5c 00 6f 00 70 00 65 00 6e 00 3d 00 4f 00 70 00 65 00 6e 00 28 00 26 00 4f 00 29 00 } //1 ;shell\open=Open(&O)
		$a_01_6 = {48 00 4b 00 45 00 59 00 5f 00 4c 00 4f 00 43 00 41 00 4c 00 5f 00 4d 00 41 00 43 00 48 00 49 00 4e 00 45 00 5c 00 4d 00 61 00 72 00 69 00 61 00 4a 00 6f 00 73 00 65 00 5c 00 49 00 6e 00 66 00 65 00 63 00 74 00 61 00 64 00 6f 00 73 00 } //1 HKEY_LOCAL_MACHINE\MariaJose\Infectados
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=5
 
}
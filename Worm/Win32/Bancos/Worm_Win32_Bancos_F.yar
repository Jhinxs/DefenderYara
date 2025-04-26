
rule Worm_Win32_Bancos_F{
	meta:
		description = "Worm:Win32/Bancos.F,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {5b 61 75 74 6f 72 75 6e 5d } //1 [autorun]
		$a_01_1 = {3a 5c 44 69 73 6b 49 6e 66 6f 2e 65 78 65 } //1 :\DiskInfo.exe
		$a_01_2 = {6f 70 65 6e 3d 64 69 73 6b 69 6e 66 6f 2e 65 78 65 } //1 open=diskinfo.exe
		$a_01_3 = {3a 5c 61 75 74 6f 72 75 6e 2e 69 6e 66 } //1 :\autorun.inf
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
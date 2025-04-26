
rule Trojan_Win32_Farfli_BAL_MTB{
	meta:
		description = "Trojan:Win32/Farfli.BAL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_01_0 = {6a 00 ff d7 30 1e 6a 00 ff d7 00 1e 6a 00 ff d7 83 c6 01 83 ed 01 75 } //4
		$a_01_1 = {31 31 35 2e 32 38 2e 37 32 2e 32 31 32 3a 35 37 36 30 2f 38 35 30 6c 6f 62 62 79 2e 65 78 65 } //1 115.28.72.212:5760/850lobby.exe
	condition:
		((#a_01_0  & 1)*4+(#a_01_1  & 1)*1) >=5
 
}

rule TrojanDropper_Win32_Delf_EM{
	meta:
		description = "TrojanDropper:Win32/Delf.EM,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 03 00 00 "
		
	strings :
		$a_01_0 = {22 20 2f 4e 4f 52 45 53 54 41 52 54 20 2f 53 49 4c 45 4e 54 } //2 " /NORESTART /SILENT
		$a_01_1 = {73 69 64 72 75 6e 65 74 2e 74 69 64 } //3 sidrunet.tid
		$a_01_2 = {5c 73 73 69 6e 69 74 61 72 2e 65 78 65 } //3 \ssinitar.exe
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*3+(#a_01_2  & 1)*3) >=8
 
}
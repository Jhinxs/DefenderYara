
rule TrojanSpy_Win32_Bancos_AEK{
	meta:
		description = "TrojanSpy:Win32/Bancos.AEK,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 04 00 00 "
		
	strings :
		$a_01_0 = {63 6d 64 2e 68 74 6d 6c 26 63 6d 64 32 3d } //2 cmd.html&cmd2=
		$a_01_1 = {54 6d 72 46 61 73 65 32 54 69 6d 65 72 } //1 TmrFase2Timer
		$a_01_2 = {6c 6f 67 73 2f 61 74 75 61 6e 64 6f 2e 70 68 70 } //3 logs/atuando.php
		$a_01_3 = {6c 6f 67 73 2f 61 70 61 67 61 2e 70 68 70 3f 6b 3d 6c 6f 67 } //3 logs/apaga.php?k=log
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*3+(#a_01_3  & 1)*3) >=9
 
}
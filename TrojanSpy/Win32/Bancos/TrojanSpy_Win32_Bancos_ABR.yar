
rule TrojanSpy_Win32_Bancos_ABR{
	meta:
		description = "TrojanSpy:Win32/Bancos.ABR,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_01_0 = {41 00 70 00 70 00 44 00 61 00 74 00 61 00 5c 00 6c 00 65 00 69 00 61 00 6d 00 65 00 32 00 2e 00 74 00 78 00 74 00 } //1 AppData\leiame2.txt
		$a_01_1 = {41 00 70 00 70 00 44 00 61 00 74 00 61 00 5c 00 70 00 61 00 67 00 2e 00 6c 00 6f 00 67 00 } //1 AppData\pag.log
		$a_01_2 = {61 00 6f 00 20 00 70 00 72 00 6f 00 63 00 75 00 72 00 61 00 72 00 20 00 6f 00 20 00 6e 00 6f 00 6d 00 65 00 20 00 64 00 6f 00 20 00 63 00 6f 00 6d 00 70 00 75 00 74 00 61 00 64 00 6f 00 72 00 2e 00 } //1 ao procurar o nome do computador.
		$a_01_3 = {41 00 70 00 70 00 44 00 61 00 74 00 61 00 5c 00 61 00 73 00 73 00 2e 00 6c 00 6f 00 67 00 } //1 AppData\ass.log
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}
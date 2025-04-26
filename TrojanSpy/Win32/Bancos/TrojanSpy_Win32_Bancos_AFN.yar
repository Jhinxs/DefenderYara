
rule TrojanSpy_Win32_Bancos_AFN{
	meta:
		description = "TrojanSpy:Win32/Bancos.AFN,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 04 00 00 "
		
	strings :
		$a_01_0 = {41 00 74 00 75 00 61 00 6c 00 31 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 74 00 6f 00 73 00 5c 00 50 00 68 00 61 00 72 00 6d 00 20 00 56 00 42 00 } //5 Atual1\Projetos\Pharm VB
		$a_01_1 = {52 00 75 00 6e 00 00 00 0e 00 00 00 73 00 62 00 74 00 68 00 6f 00 73 00 74 } //1
		$a_01_2 = {2f 00 73 00 65 00 72 00 76 00 65 00 72 00 2e 00 70 00 68 00 70 00 } //1 /server.php
		$a_01_3 = {2f 00 63 00 6f 00 6e 00 66 00 69 00 67 00 2e 00 70 00 61 00 63 00 } //1 /config.pac
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=7
 
}
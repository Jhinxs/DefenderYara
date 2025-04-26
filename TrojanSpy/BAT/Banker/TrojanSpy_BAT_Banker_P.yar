
rule TrojanSpy_BAT_Banker_P{
	meta:
		description = "TrojanSpy:BAT/Banker.P,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {44 00 61 00 74 00 61 00 20 00 53 00 6f 00 75 00 72 00 63 00 65 00 3d 00 64 00 62 00 73 00 71 00 30 00 30 00 31 00 30 00 2e 00 77 00 68 00 73 00 65 00 72 00 76 00 69 00 64 00 6f 00 72 00 2e 00 63 00 6f 00 6d 00 } //1 Data Source=dbsq0010.whservidor.com
		$a_01_1 = {50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 3d 00 64 00 6f 00 69 00 64 00 6f 00 31 00 30 00 31 00 30 00 } //1 Password=doido1010
		$a_01_2 = {55 00 73 00 65 00 72 00 20 00 49 00 44 00 3d 00 65 00 73 00 63 00 6f 00 6c 00 61 00 69 00 6e 00 74 00 65 00 31 00 39 00 } //1 User ID=escolainte19
		$a_01_3 = {4d 41 52 43 4f 53 5c 44 65 73 6b 74 6f 70 5c 50 52 4f 4a 45 54 4f 20 44 49 56 49 44 49 44 4f 5c 50 52 4f 44 55 54 4f 53 } //1 MARCOS\Desktop\PROJETO DIVIDIDO\PRODUTOS
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
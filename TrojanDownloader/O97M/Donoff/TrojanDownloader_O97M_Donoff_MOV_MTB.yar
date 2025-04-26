
rule TrojanDownloader_O97M_Donoff_MOV_MTB{
	meta:
		description = "TrojanDownloader:O97M/Donoff.MOV!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,0f 00 0f 00 06 00 00 "
		
	strings :
		$a_01_0 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 4d 69 63 72 6f 73 6f 66 74 2e 58 4d 4c 48 54 54 50 22 29 } //2 CreateObject("Microsoft.XMLHTTP")
		$a_01_1 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 41 64 6f 64 62 2e 53 74 72 65 61 6d 22 29 } //2 CreateObject("Adodb.Stream")
		$a_01_2 = {22 47 45 54 22 2c 20 22 68 74 74 70 3a 2f 2f 66 30 35 34 30 33 37 38 2e 78 73 70 68 2e 72 75 2f 31 32 5f 43 4e 42 5f 50 72 6f 67 72 61 6d 61 73 5f 64 65 5f 42 65 63 61 73 2d 37 30 32 31 32 2d 65 6d 2e 65 78 65 22 } //10 "GET", "http://f0540378.xsph.ru/12_CNB_Programas_de_Becas-70212-em.exe"
		$a_01_3 = {73 61 76 65 74 6f 66 69 6c 65 20 22 31 32 5f 43 4e 42 5f 50 72 6f 67 72 61 6d 61 73 5f 64 65 5f 42 65 63 61 73 2d 37 30 32 31 32 2d 65 6d 2e 65 78 65 22 } //1 savetofile "12_CNB_Programas_de_Becas-70212-em.exe"
		$a_01_4 = {22 47 45 54 22 2c 20 22 68 74 74 70 73 3a 2f 2f 6f 63 63 75 72 72 65 6e 74 2d 66 61 74 69 67 75 65 73 2e 30 30 30 77 65 62 68 6f 73 74 61 70 70 2e 63 6f 6d 2f 22 } //10 "GET", "https://occurrent-fatigues.000webhostapp.com/"
		$a_01_5 = {53 68 65 6c 6c 20 28 22 31 32 5f 43 4e 42 5f 50 72 6f 67 72 61 6d 61 73 5f 64 65 5f 42 65 63 61 73 2d 37 30 32 31 32 2d 65 6d 2e 62 61 74 22 29 } //1 Shell ("12_CNB_Programas_de_Becas-70212-em.bat")
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*10+(#a_01_3  & 1)*1+(#a_01_4  & 1)*10+(#a_01_5  & 1)*1) >=15
 
}
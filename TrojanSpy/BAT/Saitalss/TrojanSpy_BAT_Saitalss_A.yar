
rule TrojanSpy_BAT_Saitalss_A{
	meta:
		description = "TrojanSpy:BAT/Saitalss.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {6c 00 6f 00 67 00 32 00 40 00 74 00 75 00 72 00 6b 00 63 00 65 00 76 00 65 00 6e 00 74 00 72 00 69 00 6c 00 6f 00 2e 00 63 00 6f 00 6d 00 } //1 log2@turkceventrilo.com
		$a_01_1 = {6c 00 6f 00 67 00 32 00 6b 00 6c 00 67 00 40 00 67 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 } //1 log2klg@gmail.com
		$a_01_2 = {45 00 2d 00 50 00 6f 00 73 00 74 00 61 00 20 00 4b 00 6f 00 6e 00 75 00 73 00 75 00 } //1 E-Posta Konusu
		$a_01_3 = {2f 00 70 00 72 00 69 00 6e 00 74 00 73 00 63 00 72 00 65 00 65 00 6e 00 2e 00 6a 00 70 00 67 00 } //1 /printscreen.jpg
		$a_01_4 = {4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 41 00 70 00 70 00 6c 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 20 00 52 00 65 00 61 00 64 00 65 00 72 00 73 00 } //1 Microsoft Application Readers
		$a_01_5 = {4d 61 6b 65 50 72 6f 63 65 73 73 55 6e 6b 69 6c 6c 61 62 6c 65 } //1 MakeProcessUnkillable
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}
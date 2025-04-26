
rule TrojanDropper_Win32_Gorganik{
	meta:
		description = "TrojanDropper:Win32/Gorganik,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {4f 72 67 61 6e 69 6b 20 31 2e 30 30 20 4b 75 72 75 6c 75 6d } //1 Organik 1.00 Kurulum
		$a_01_1 = {4f 72 67 61 6e 69 6b 20 6b 75 72 75 6c 75 6d 75 } //1 Organik kurulumu
		$a_01_2 = {4f 72 67 68 69 74 73 65 72 76 } //1 Orghitserv
		$a_01_3 = {4d 65 76 63 75 74 20 44 6f 73 79 61 3a } //1 Mevcut Dosya:
		$a_01_4 = {59 65 6e 69 20 44 6f 73 79 61 3a } //1 Yeni Dosya:
		$a_01_5 = {41 6c 65 78 61 2e 65 78 65 } //1 Alexa.exe
		$a_01_6 = {53 6d 61 72 74 20 49 6e 73 74 61 6c 6c 20 4d 61 6b 65 72 } //1 Smart Install Maker
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}
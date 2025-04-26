
rule TrojanDownloader_Win32_Farfli_A{
	meta:
		description = "TrojanDownloader:Win32/Farfli.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {73 79 73 74 65 6d 69 6e 66 6f 72 73 } //1 systeminfors
		$a_01_1 = {67 62 77 7c 7b 67 60 7a 3a 71 6c 71 } //1 gbw|{g`z:qlq
		$a_01_2 = {c6 45 d8 31 c6 45 d9 14 c6 45 da 59 c6 45 db 29 c6 45 dc 29 c6 45 dd 5a c6 45 de 5d } //1
		$a_03_3 = {8a 04 02 30 01 46 3b (74|75) [0-03] 7e } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}
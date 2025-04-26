
rule TrojanDownloader_Win32_Driplexo_A{
	meta:
		description = "TrojanDownloader:Win32/Driplexo.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_01_0 = {80 3b 52 75 48 33 c0 80 7b 01 43 } //1
		$a_01_1 = {32 04 29 88 04 0f 74 07 42 41 83 fa 30 72 db } //1
		$a_03_2 = {75 0e 83 f8 02 76 09 90 09 0b 00 8a d0 80 ea ?? 30 90 90 } //1
		$a_01_3 = {25 73 25 63 2f 25 63 25 63 25 73 00 } //1 猥挥┯╣╣s
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}
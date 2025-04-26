
rule TrojanDownloader_Win32_Banload_gen_N{
	meta:
		description = "TrojanDownloader:Win32/Banload.gen!N,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 09 00 00 "
		
	strings :
		$a_03_0 = {bb 01 00 00 00 8d 45 f4 8b 55 fc 0f b6 54 1a ff 2b d3 83 ea ?? e8 ?? ?? ?? ?? 8b 55 f4 8d 45 f8 e8 ?? ?? ?? ?? 43 4e 75 dc } //1
		$a_01_1 = {3d 5f 4e 65 78 74 50 61 72 74 5f 32 72 66 6b 69 6e 64 79 73 61 64 76 6e 71 77 33 6e 65 72 61 73 64 66 } //1 =_NextPart_2rfkindysadvnqw3nerasdf
		$a_01_2 = {4e 69 73 74 65 20 70 6f 7a 65 20 69 6e 74 65 72 65 73 61 6e 74 65 20 63 75 20 74 69 6e 65 20 69 6e 20 61 72 68 69 76 61 20 61 73 74 61 } //1 Niste poze interesante cu tine in arhiva asta
		$a_01_3 = {45 74 69 4e 65 74 20 57 69 6e 64 6f 77 73 20 56 65 72 73 69 6f 6e 20 } //-10 EtiNet Windows Version 
		$a_01_4 = {5c 41 4e 52 20 53 69 73 74 65 6d 61 73 5c } //-10 \ANR Sistemas\
		$a_01_5 = {53 69 73 74 65 6d 61 20 2d 20 45 76 65 72 65 73 74 } //-10 Sistema - Everest
		$a_01_6 = {41 43 20 2d 20 53 69 73 74 65 6d 61 20 64 65 20 61 63 65 73 73 6f 72 69 61 } //-10 AC - Sistema de acessoria
		$a_01_7 = {53 69 73 50 61 66 20 2d 20 47 65 72 65 6e 63 69 61 6d 65 6e 74 6f } //-10 SisPaf - Gerenciamento
		$a_01_8 = {54 4d 6f 74 6f 42 6f 79 53 69 73 30 30 } //-10 TMotoBoySis00
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*-10+(#a_01_4  & 1)*-10+(#a_01_5  & 1)*-10+(#a_01_6  & 1)*-10+(#a_01_7  & 1)*-10+(#a_01_8  & 1)*-10) >=2
 
}
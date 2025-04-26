
rule TrojanSpy_Win32_Bancos_AX{
	meta:
		description = "TrojanSpy:Win32/Bancos.AX,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {20 52 6b 63 79 62 65 72 65 00 00 00 50 6e 76 6b 6e 20 52 70 62 61 f4 7a 76 70 } //2
		$a_01_1 = {4f 52 46 50 20 2d 20 4f 6e 61 70 62 20 71 62 20 52 66 67 6e 71 62 20 71 72 20 46 6e 61 67 6e 20 50 6e 67 6e 65 76 61 6e 20 2d 20 5a 76 70 65 62 66 62 73 67 20 56 61 67 72 65 61 72 67 20 52 6b 63 79 62 65 72 65 } //1 ORFP - Onapb qb Rfgnqb qr Fnagn Pngnevan - Zvpebfbsg Vagrearg Rkcybere
		$a_01_2 = {25 64 25 6d 25 59 2d 25 48 25 4d 25 53 } //1 %d%m%Y-%H%M%S
		$a_01_3 = {5b 6f 6f 2e 70 62 7a 2e 6f 65 5d 20 2d 20 5a 76 70 65 62 66 62 73 67 20 56 61 67 72 65 61 72 67 20 52 6b 63 79 62 65 72 65 } //1 [oo.pbz.oe] - Zvpebfbsg Vagrearg Rkcybere
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
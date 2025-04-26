
rule TrojanDownloader_Win32_Retefe_B{
	meta:
		description = "TrojanDownloader:Win32/Retefe.B,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 04 00 00 "
		
	strings :
		$a_01_0 = {25 64 28 64 31 62 27 75 26 76 24 6b 2d 64 28 6d 48 } //1 %d(d1b'u&v$k-d(mH
		$a_01_1 = {84 c9 74 10 8b d0 83 e2 03 8a 14 32 32 d1 } //1
		$a_01_2 = {33 c0 89 46 0c c7 06 66 00 00 00 c7 46 04 67 00 00 00 c7 46 08 68 00 00 00 e9 } //3
		$a_03_3 = {83 e8 01 75 ef 90 09 0c 00 8a 88 ?? ?? ?? ?? 30 88 } //3
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*3+(#a_03_3  & 1)*3) >=7
 
}
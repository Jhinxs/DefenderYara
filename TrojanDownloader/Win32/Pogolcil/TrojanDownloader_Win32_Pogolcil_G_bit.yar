
rule TrojanDownloader_Win32_Pogolcil_G_bit{
	meta:
		description = "TrojanDownloader:Win32/Pogolcil.G!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {8b c7 8d 0c 37 99 f7 bd ?? ?? ?? ff 8a 44 15 ?? 32 04 19 88 01 } //1
		$a_01_1 = {0f be 39 4a 6a 08 41 5b 8b c7 33 c6 d1 ee a8 01 74 06 81 f6 20 83 b8 ed d1 ef 83 eb 01 75 e9 85 d2 75 dd 5f 5b } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}
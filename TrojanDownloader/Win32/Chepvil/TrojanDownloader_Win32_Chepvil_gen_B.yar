
rule TrojanDownloader_Win32_Chepvil_gen_B{
	meta:
		description = "TrojanDownloader:Win32/Chepvil.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {e8 04 00 00 00 4d 5a 50 45 8b 40 04 59 66 33 c0 8b 09 c3 } //2
		$a_03_1 = {83 c0 0c a3 ?? ?? ?? ?? 68 ?? ?? ?? ?? 6a 00 6a 00 68 ?? ?? ?? ?? 6a 00 6a 00 } //1
		$a_01_2 = {8b 07 3d 68 74 74 70 75 16 ff 05 } //1
	condition:
		((#a_01_0  & 1)*2+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}

rule TrojanDownloader_Win32_Delf_GI{
	meta:
		description = "TrojanDownloader:Win32/Delf.GI,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_00_0 = {53 65 74 74 69 6e 67 20 53 65 72 76 69 63 65 20 41 75 74 6f 52 75 6e 20 44 6f 6e 65 21 } //1 Setting Service AutoRun Done!
		$a_01_1 = {42 49 54 53 } //1 BITS
		$a_00_2 = {43 6c 69 6e 65 74 30 30 31 2e 64 6c 6c 00 53 65 72 76 69 63 65 4d 61 69 6e } //1
		$a_00_3 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 00 } //1 桓汥䕬數畣整A
		$a_00_4 = {69 6e 65 74 5f 61 64 64 72 00 } //1 湩瑥慟摤r
	condition:
		((#a_00_0  & 1)*1+(#a_01_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}
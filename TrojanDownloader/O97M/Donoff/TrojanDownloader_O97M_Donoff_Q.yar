
rule TrojanDownloader_O97M_Donoff_Q{
	meta:
		description = "TrojanDownloader:O97M/Donoff.Q,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_01_0 = {2d 2d 38 72 76 76 6a 22 } //1 --8rvvj"
		$a_02_1 = {45 6e 76 69 72 6f 6e 24 28 [0-10] 53 74 72 52 65 76 65 72 73 65 28 } //1
		$a_00_2 = {58 6f 72 20 66 69 72 73 74 28 54 65 6d 70 20 2b 20 66 69 72 73 74 28 28 74 68 69 72 64 20 2b 20 66 69 72 73 74 28 74 68 69 72 64 29 29 20 4d 6f 64 20 32 35 34 29 29 } //1 Xor first(Temp + first((third + first(third)) Mod 254))
		$a_01_3 = {37 37 42 74 78 78 6c 22 2c } //1 77Btxxl",
	condition:
		((#a_01_0  & 1)*1+(#a_02_1  & 1)*1+(#a_00_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}
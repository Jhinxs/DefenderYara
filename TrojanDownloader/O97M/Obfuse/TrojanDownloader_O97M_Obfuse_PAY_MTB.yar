
rule TrojanDownloader_O97M_Obfuse_PAY_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.PAY!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {3d 20 22 65 76 61 6c 28 65 76 61 6c 28 53 74 72 69 6e 67 2e 66 72 6f 6d 43 68 61 72 43 6f 64 65 22 20 2b } //1 = "eval(eval(String.fromCharCode" +
		$a_01_1 = {3d 20 22 6a 22 20 2b 20 22 6f 22 20 2b 20 22 62 22 20 2b 20 22 73 22 20 2b 20 22 77 65 62 73 69 74 65 22 20 2b 20 22 2e 22 20 2b 20 22 6a 22 20 2b 20 22 73 } //1 = "j" + "o" + "b" + "s" + "website" + "." + "j" + "s
		$a_03_2 = {3d 20 53 68 65 6c 6c 28 22 77 73 63 72 69 70 74 20 22 20 2b 20 [0-15] 2c 20 76 62 4e 6f 72 6d 61 6c 46 6f 63 75 73 29 } //1
		$a_03_3 = {43 72 65 61 74 65 54 65 78 74 46 69 6c 65 28 [0-15] 2c 20 54 72 75 65 2c 20 54 72 75 65 29 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}
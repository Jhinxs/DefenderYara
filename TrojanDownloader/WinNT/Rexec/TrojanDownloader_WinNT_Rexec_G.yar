
rule TrojanDownloader_WinNT_Rexec_G{
	meta:
		description = "TrojanDownloader:WinNT/Rexec.G,SIGNATURE_TYPE_JAVAHSTR_EXT,0c 00 0c 00 04 00 00 "
		
	strings :
		$a_01_0 = {15 1c a2 1d 1c 64 15 60 05 70 9a 2b 15 5c 33 12 b8 82 91 54 } //10
		$a_01_1 = {2f 69 6f 2f 46 69 6c 65 4f 75 74 70 75 74 53 74 72 65 61 6d } //1 /io/FileOutputStream
		$a_01_2 = {67 65 74 52 75 6e 74 69 6d 65 } //1 getRuntime
		$a_01_3 = {65 78 65 63 } //1 exec
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=12
 
}
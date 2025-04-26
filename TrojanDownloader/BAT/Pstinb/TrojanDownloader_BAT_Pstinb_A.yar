
rule TrojanDownloader_BAT_Pstinb_A{
	meta:
		description = "TrojanDownloader:BAT/Pstinb.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 70 00 61 00 73 00 74 00 65 00 62 00 69 00 6e 00 2e 00 63 00 6f 00 6d 00 2f 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 2e 00 70 00 68 00 70 00 3f 00 69 00 3d 00 } //1 http://pastebin.com/download.php?i=
		$a_01_1 = {57 65 62 43 6c 69 65 6e 74 00 53 79 73 74 65 6d 2e 4e 65 74 00 44 6f 77 6e 6c 6f 61 64 53 74 72 69 6e 67 00 41 73 73 65 6d 62 6c 79 00 53 79 73 74 65 6d 2e 52 65 66 6c 65 63 74 69 6f 6e 00 43 6f 6e 76 65 72 74 00 46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 00 4c 6f 61 64 00 67 65 74 5f 45 6e 74 72 79 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}
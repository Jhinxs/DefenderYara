
rule TrojanDownloader_Win32_Banload_ALC{
	meta:
		description = "TrojanDownloader:Win32/Banload.ALC,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {2f 6d 73 6e 6d 73 67 72 2e 70 6e 67 } //1 /msnmsgr.png
		$a_01_1 = {2f 54 61 73 6b 4d 47 52 2e 70 6e 67 } //1 /TaskMGR.png
		$a_02_2 = {63 3a 5c 46 69 6c 65 73 20 50 72 6f 67 72 61 6d 61 5c [0-06] 2e 65 78 65 } //1
		$a_00_3 = {70 00 6f 00 72 00 6e 00 68 00 75 00 62 00 2e 00 63 00 6f 00 6d 00 2f 00 76 00 69 00 65 00 77 00 5f 00 76 00 69 00 64 00 65 00 6f 00 2e 00 70 00 68 00 70 00 3f 00 76 00 69 00 65 00 77 00 6b 00 65 00 79 00 } //1 pornhub.com/view_video.php?viewkey
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}
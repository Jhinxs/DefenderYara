
rule TrojanDownloader_Win32_Adload_DP_bit{
	meta:
		description = "TrojanDownloader:Win32/Adload.DP!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 4f 6e 63 65 } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce
		$a_01_1 = {2f 4e 4f 43 41 4e 43 45 4c 00 2f 53 49 4c 45 4e 54 00 67 65 74 00 fd 9a 80 5c } //1
		$a_01_2 = {2f 6c 61 75 6e 63 68 5f 72 65 62 2e 70 68 70 3f 70 3d 73 65 76 65 6e 7a 69 70 26 74 69 64 3d } //1 /launch_reb.php?p=sevenzip&tid=
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
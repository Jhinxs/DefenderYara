
rule TrojanDownloader_Win32_Mutaudan_SA_MTB{
	meta:
		description = "TrojanDownloader:Win32/Mutaudan.SA!MTB,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {5c 00 69 00 6e 00 66 00 6f 00 2d 00 31 00 2e 00 74 00 78 00 74 00 } //1 \info-1.txt
		$a_01_1 = {64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 5f 00 71 00 75 00 69 00 65 00 74 00 } //1 download_quiet
		$a_01_2 = {5c 00 56 00 61 00 6c 00 6f 00 72 00 61 00 6e 00 74 00 2b 00 43 00 68 00 65 00 61 00 74 00 2b 00 50 00 61 00 63 00 6b 00 2d 00 52 00 54 00 4d 00 44 00 2d 00 41 00 4b 00 56 00 37 00 57 00 47 00 44 00 47 00 7a 00 67 00 51 00 41 00 76 00 68 00 77 00 43 00 41 00 45 00 52 00 46 00 46 00 77 00 41 00 53 00 41 00 46 00 52 00 31 00 62 00 56 00 55 00 41 00 2e 00 65 00 78 00 65 00 } //1 \Valorant+Cheat+Pack-RTMD-AKV7WGDGzgQAvhwCAERFFwASAFR1bVUA.exe
		$a_01_3 = {43 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 73 00 5c 00 41 00 75 00 74 00 75 00 6d 00 6e 00 2d 00 44 00 61 00 77 00 6e 00 } //1 C:\Program Files\Autumn-Dawn
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
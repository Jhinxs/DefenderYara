
rule TrojanDownloader_Win32_Banload_BGV{
	meta:
		description = "TrojanDownloader:Win32/Banload.BGV,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {6d 00 61 00 78 00 32 00 2e 00 74 00 6d 00 70 00 } //1 max2.tmp
		$a_01_1 = {2f 00 74 00 72 00 61 00 63 00 6b 00 33 00 2e 00 74 00 74 00 66 00 } //1 /track3.ttf
		$a_01_2 = {2f 00 72 00 65 00 78 00 33 00 2e 00 63 00 73 00 73 00 } //1 /rex3.css
		$a_01_3 = {44 65 73 63 65 72 44 61 4d 6f 6e 74 61 6e 61 } //1 DescerDaMontana
		$a_01_4 = {53 75 62 69 72 4d 6f 72 72 6f } //1 SubirMorro
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}

rule TrojanDownloader_Win32_Zlob_NN{
	meta:
		description = "TrojanDownloader:Win32/Zlob.NN,SIGNATURE_TYPE_PEHSTR_EXT,1b 00 1a 00 07 00 00 "
		
	strings :
		$a_01_0 = {6f 67 67 79 2e 64 6c 6c 00 66 6f 6f 64 00 67 72 61 62 00 70 6c 75 6d 00 } //5 杯祧搮汬昀潯d牧扡瀀畬m
		$a_01_1 = {53 6f 66 74 77 61 72 65 5c 57 65 62 20 54 65 63 68 6e 6f 6c 6f 67 69 65 73 } //2 Software\Web Technologies
		$a_01_2 = {45 78 70 6c 6f 72 65 72 5c 53 65 61 72 63 68 53 63 6f 70 65 73 } //1 Explorer\SearchScopes
		$a_01_3 = {48 74 74 70 4f 70 65 6e 52 65 71 75 65 73 74 41 } //5 HttpOpenRequestA
		$a_01_4 = {73 74 65 72 65 6f 00 } //5
		$a_01_5 = {25 73 5c 7a 66 25 73 25 64 2e 65 78 65 } //5 %s\zf%s%d.exe
		$a_01_6 = {57 72 69 74 65 46 69 6c 65 } //5 WriteFile
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*5+(#a_01_4  & 1)*5+(#a_01_5  & 1)*5+(#a_01_6  & 1)*5) >=26
 
}
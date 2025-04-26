
rule Trojan_BAT_Yakbeex_MBK_MTB{
	meta:
		description = "Trojan:BAT/Yakbeex.MBK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 06 00 00 "
		
	strings :
		$a_03_0 = {0a 26 11 04 6f ?? 00 00 0a 00 20 88 13 00 00 28 ?? 00 00 0a 00 28 ?? 00 00 0a 72 00 02 00 70 } //3
		$a_81_1 = {61 74 74 61 63 68 6d 65 6e 74 73 2f 38 38 34 39 36 39 32 32 30 38 31 33 37 35 34 33 37 31 2f 38 38 } //3 attachments/884969220813754371/88
		$a_81_2 = {66 69 69 69 72 72 73 74 2e 74 78 74 } //3 fiiirrst.txt
		$a_81_3 = {70 61 64 2e 65 78 65 } //3 pad.exe
		$a_81_4 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //1 DownloadData
		$a_81_5 = {47 65 74 54 65 6d 70 46 69 6c 65 4e 61 6d 65 } //1 GetTempFileName
	condition:
		((#a_03_0  & 1)*3+(#a_81_1  & 1)*3+(#a_81_2  & 1)*3+(#a_81_3  & 1)*3+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1) >=14
 
}
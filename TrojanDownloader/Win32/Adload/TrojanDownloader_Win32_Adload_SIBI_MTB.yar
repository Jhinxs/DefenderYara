
rule TrojanDownloader_Win32_Adload_SIBI_MTB{
	meta:
		description = "TrojanDownloader:Win32/Adload.SIBI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,19 00 18 00 07 00 00 "
		
	strings :
		$a_00_0 = {68 74 74 70 3a 2f 2f 6f 74 69 73 72 65 62 65 2e 78 79 7a 2f 46 61 73 74 50 43 2e 65 78 65 } //10 http://otisrebe.xyz/FastPC.exe
		$a_01_1 = {46 61 73 74 50 43 52 41 57 } //10 FastPCRAW
		$a_01_2 = {69 74 64 6f 77 6e 6c 6f 61 64 2e 64 6c 6c } //1 itdownload.dll
		$a_01_3 = {69 74 64 5f 64 6f 77 6e 6c 6f 61 64 66 69 6c 65 } //1 itd_downloadfile
		$a_01_4 = {69 74 64 5f 63 6c 65 61 72 66 69 6c 65 73 } //1 itd_clearfiles
		$a_01_5 = {7b 73 79 73 75 73 65 72 69 6e 66 6f 6e 61 6d 65 7d } //1 {sysuserinfoname}
		$a_01_6 = {7b 73 79 73 75 73 65 72 69 6e 66 6f 6f 72 67 7d } //1 {sysuserinfoorg}
	condition:
		((#a_00_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=24
 
}
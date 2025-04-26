
rule TrojanDownloader_Win32_Banload_VN{
	meta:
		description = "TrojanDownloader:Win32/Banload.VN,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {2e 68 74 6d 6c [0-10] 43 3a 5c 57 49 4e 44 4f 57 53 [0-20] 66 69 6c 65 [0-02] 2e 65 78 65 [0-10] 6d 64 69 74 [0-02] 2e 65 78 65 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}
rule TrojanDownloader_Win32_Banload_VN_2{
	meta:
		description = "TrojanDownloader:Win32/Banload.VN,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {2e 68 74 6d 6c 00 [0-10] 77 69 6e 64 6f 77 2e 6c 6f 63 61 74 69 6f 6e 00 [0-08] 43 3a 5c 57 49 4e 44 4f 57 53 5c 73 79 73 74 65 6d 33 32 5c [0-20] 66 6c [0-02] 2e 65 78 65 [0-10] 6d 64 69 74 [0-02] 2e 65 78 65 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}
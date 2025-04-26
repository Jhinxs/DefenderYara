
rule TrojanDownloader_Win32_Deyma_DEB_MTB{
	meta:
		description = "TrojanDownloader:Win32/Deyma.DEB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_81_0 = {34 33 35 30 69 6a 79 33 30 75 39 34 35 6a 39 66 } //1 4350ijy30u945j9f
		$a_81_1 = {73 75 53 7a 64 58 7a 7a 47 76 } //1 suSzdXzzGv
		$a_81_2 = {4c 56 73 61 76 42 76 5a 73 69 } //1 LVsavBvZsi
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1) >=2
 
}
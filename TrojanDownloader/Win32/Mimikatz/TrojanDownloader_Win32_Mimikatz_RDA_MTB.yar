
rule TrojanDownloader_Win32_Mimikatz_RDA_MTB{
	meta:
		description = "TrojanDownloader:Win32/Mimikatz.RDA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {2f 2f 64 65 70 61 72 74 6d 65 6e 74 2e 6d 69 63 72 6f 73 6f 66 74 6d 69 64 64 6c 65 6e 61 6d 65 2e 74 6b 2f 70 69 63 74 75 72 65 73 73 2f } //1 //department.microsoftmiddlename.tk/picturess/
		$a_01_1 = {52 44 53 76 31 2e 64 6c 6c } //1 RDSv1.dll
		$a_01_2 = {43 45 45 43 44 6f 63 } //1 CEECDoc
		$a_01_3 = {43 45 45 43 56 69 65 77 } //1 CEECView
		$a_01_4 = {43 3a 2f 55 73 65 72 73 2f 50 75 62 6c 69 63 2f 44 6f 63 75 6d 65 6e 74 73 2f 52 44 53 76 31 2e 64 6c 6c } //1 C:/Users/Public/Documents/RDSv1.dll
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
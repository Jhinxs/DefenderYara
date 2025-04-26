
rule Trojan_BAT_Reline_IYZ_MTB{
	meta:
		description = "Trojan:BAT/Reline.IYZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {4f 00 55 00 54 00 50 00 55 00 54 00 2d 00 4f 00 4e 00 4c 00 49 00 4e 00 45 00 50 00 4e 00 47 00 54 00 4f 00 4f 00 4c 00 53 00 } //1 OUTPUT-ONLINEPNGTOOLS
		$a_01_1 = {66 00 69 00 64 00 61 00 73 00 69 00 61 00 73 00 6f 00 } //1 fidasiaso
		$a_01_2 = {73 00 64 00 66 00 6b 00 66 00 64 00 64 00 66 00 73 00 2e 00 65 00 78 00 65 00 } //1 sdfkfddfs.exe
		$a_81_3 = {67 65 74 5f 43 75 72 72 65 6e 74 44 6f 6d 61 69 6e } //1 get_CurrentDomain
		$a_81_4 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_81_5 = {48 74 74 70 57 65 62 52 65 71 75 65 73 74 } //1 HttpWebRequest
		$a_81_6 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //1 DownloadData
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1) >=7
 
}

rule TrojanDownloader_Win32_Lnkget_AR{
	meta:
		description = "TrojanDownloader:Win32/Lnkget.AR,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {2f 75 70 64 61 74 65 32 30 31 34 2e 70 68 70 } //1 /update2014.php
		$a_01_1 = {2f 45 78 65 46 61 69 6c 2e 70 68 70 } //1 /ExeFail.php
		$a_01_2 = {5b 75 10 68 a8 61 00 00 ff 15 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}

rule TrojanDownloader_Win32_Caftuli_A{
	meta:
		description = "TrojanDownloader:Win32/Caftuli.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {6c 00 6f 00 67 00 2f 00 70 00 6c 00 61 00 79 00 2e 00 70 00 68 00 70 00 3f 00 68 00 6f 00 73 00 74 00 3d 00 [0-12] 26 00 6d 00 61 00 63 00 3d 00 } //1
		$a_01_1 = {67 00 6d 00 48 00 54 00 54 00 50 00 5f 00 52 00 45 00 51 00 55 00 45 00 53 00 54 00 } //1 gmHTTP_REQUEST
		$a_01_2 = {64 00 61 00 74 00 65 00 2f 00 75 00 70 00 64 00 61 00 74 00 65 00 2e 00 78 00 6d 00 6c 00 } //1 date/update.xml
		$a_01_3 = {67 6d 47 45 54 5f 4d 41 43 41 44 44 52 45 53 53 } //1 gmGET_MACADDRESS
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}

rule TrojanDownloader_Win32_Reconyc_BT_MTB{
	meta:
		description = "TrojanDownloader:Win32/Reconyc.BT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 73 79 73 74 65 6d 33 32 5c 73 76 63 68 30 73 74 2e 65 78 65 } //1 C:\WINDOWS\system32\svch0st.exe
		$a_01_1 = {46 75 6e 53 68 69 6f 6e 2e 69 6e 69 } //1 FunShion.ini
		$a_01_2 = {31 37 34 2e 31 32 38 2e 32 33 36 2e 31 36 39 } //1 174.128.236.169
		$a_01_3 = {23 24 2e 65 78 65 } //1 #$.exe
		$a_01_4 = {74 65 78 61 70 70 2e 65 78 65 } //1 texapp.exe
		$a_01_5 = {43 3a 5c 44 6f 63 75 6d 65 6e 74 73 20 61 6e 64 20 53 65 74 74 69 6e 67 73 5c 6c 6f 67 2e 74 78 74 } //1 C:\Documents and Settings\log.txt
		$a_01_6 = {62 69 6e 64 20 73 6f 75 72 63 65 20 66 69 6c 65 20 69 73 20 6e 6f 74 20 65 78 69 74 65 64 21 } //1 bind source file is not exited!
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}
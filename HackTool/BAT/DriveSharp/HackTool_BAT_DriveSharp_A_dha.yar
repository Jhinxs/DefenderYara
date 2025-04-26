
rule HackTool_BAT_DriveSharp_A_dha{
	meta:
		description = "HackTool:BAT/DriveSharp.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {63 00 6c 00 69 00 65 00 6e 00 74 00 5f 00 69 00 64 00 } //1 client_id
		$a_01_1 = {63 00 6c 00 69 00 65 00 6e 00 74 00 5f 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 } //1 client_password
		$a_01_2 = {6e 00 61 00 6d 00 65 00 73 00 70 00 61 00 63 00 65 00 20 00 4d 00 73 00 4f 00 6e 00 65 00 44 00 72 00 69 00 76 00 65 00 52 00 65 00 73 00 74 00 41 00 70 00 69 00 } //1 namespace MsOneDriveRestApi
		$a_01_3 = {4c 00 6f 00 67 00 69 00 6e 00 47 00 65 00 74 00 41 00 63 00 63 00 65 00 73 00 73 00 54 00 6f 00 6b 00 65 00 6e 00 41 00 6e 00 64 00 52 00 65 00 66 00 72 00 65 00 73 00 68 00 54 00 6f 00 6b 00 65 00 6e 00 } //1 LoginGetAccessTokenAndRefreshToken
		$a_01_4 = {43 00 72 00 65 00 61 00 74 00 65 00 44 00 72 00 69 00 76 00 65 00 2e 00 65 00 78 00 65 00 } //1 CreateDrive.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}
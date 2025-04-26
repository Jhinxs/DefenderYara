
rule PWS_Win32_MsgVB{
	meta:
		description = "PWS:Win32/MsgVB,SIGNATURE_TYPE_PEHSTR_EXT,1e 00 1e 00 06 00 00 "
		
	strings :
		$a_00_0 = {4d 53 4e 4d 65 73 73 65 6e 67 65 72 } //5 MSNMessenger
		$a_00_1 = {53 65 6e 64 4d 69 6d 65 43 6f 6e 6e 65 63 74 } //5 SendMimeConnect
		$a_01_2 = {49 00 66 00 20 00 77 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 20 00 3d 00 20 00 32 00 35 00 37 00 20 00 74 00 68 00 65 00 6e 00 20 00 65 00 76 00 65 00 72 00 79 00 74 00 68 00 69 00 6e 00 67 00 20 00 69 00 73 00 20 00 6b 00 65 00 77 00 6c 00 } //5 If wVersion = 257 then everything is kewl
		$a_01_3 = {45 2d 4d 61 69 6c 20 77 69 74 68 20 41 74 74 61 63 68 6d 65 6e 74 73 21 } //5 E-Mail with Attachments!
		$a_01_4 = {53 75 62 6a 65 6b 74 } //5 Subjekt
		$a_01_5 = {56 69 63 74 69 6d 27 73 20 50 61 73 73 77 6f 72 64 } //5 Victim's Password
	condition:
		((#a_00_0  & 1)*5+(#a_00_1  & 1)*5+(#a_01_2  & 1)*5+(#a_01_3  & 1)*5+(#a_01_4  & 1)*5+(#a_01_5  & 1)*5) >=30
 
}

rule Ransom_Win32_Zepplin_A_MTB{
	meta:
		description = "Ransom:Win32/Zepplin.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_81_0 = {48 65 6c 6c 6f 21 20 41 6c 6c 20 79 6f 75 72 20 64 6f 63 75 6d 65 6e 74 73 2c 20 70 68 6f 74 6f 73 2c 20 64 61 74 61 62 61 73 65 73 20 61 6e 64 20 6f 74 68 65 72 20 69 6d 70 6f 72 74 61 6e 74 20 66 69 6c 65 73 20 61 72 65 20 45 4e 43 52 59 50 54 45 44 21 } //1 Hello! All your documents, photos, databases and other important files are ENCRYPTED!
		$a_81_1 = {54 6f 20 64 65 63 6f 64 65 20 74 68 65 20 70 61 73 73 77 6f 72 64 20 79 6f 75 20 68 61 76 65 20 74 6f 20 62 75 79 20 6f 75 72 20 73 70 65 63 69 61 6c 20 64 65 63 6f 64 69 6e 67 20 74 6f 6f 6c } //1 To decode the password you have to buy our special decoding tool
		$a_81_2 = {77 62 61 64 6d 69 6e 20 64 65 6c 65 74 65 20 63 61 74 61 6c 6f 67 20 2d 71 75 69 65 74 20 26 20 77 62 61 64 6d 69 6e 20 64 65 6c 65 74 65 20 73 79 73 74 65 6d 73 74 61 74 65 62 61 63 6b 75 70 } //1 wbadmin delete catalog -quiet & wbadmin delete systemstatebackup
		$a_81_3 = {76 73 73 61 64 6d 69 6e 20 64 65 6c 65 74 65 20 73 68 61 64 6f 77 73 20 2f 61 6c 6c 20 2f 71 75 69 65 74 } //1 vssadmin delete shadows /all /quiet
		$a_81_4 = {62 63 64 65 64 69 74 20 2f 73 65 74 20 7b 64 65 66 61 75 6c 74 7d 20 62 6f 6f 74 73 74 61 74 75 73 70 6f 6c 69 63 79 } //1 bcdedit /set {default} bootstatuspolicy
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1) >=5
 
}

rule HackTool_Win32_PasswordRevealer{
	meta:
		description = "HackTool:Win32/PasswordRevealer,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {53 6f 66 74 77 61 72 65 5c 4e 69 72 53 6f 66 74 5c 4d 65 73 73 65 6e 50 61 73 73 } //1 Software\NirSoft\MessenPass
		$a_01_1 = {2e 61 69 6d 2e 73 65 73 73 69 6f 6e 2e 70 61 73 73 77 6f 72 64 } //1 .aim.session.password
		$a_01_2 = {43 72 79 70 74 43 72 65 61 74 65 48 61 73 68 } //1 CryptCreateHash
		$a_01_3 = {50 4b 31 31 53 44 52 5f 44 65 63 72 79 70 74 } //1 PK11SDR_Decrypt
		$a_01_4 = {5c 6d 73 70 61 73 73 5c 52 65 6c 65 61 73 65 5c 6d 73 70 61 73 73 2e 70 64 62 } //1 \mspass\Release\mspass.pdb
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
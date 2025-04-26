
rule Trojan_Win32_AgentTesla_C_{
	meta:
		description = "Trojan:Win32/AgentTesla.C!!AgentTesla.gen!C,SIGNATURE_TYPE_ARHSTR_EXT,08 00 08 00 0a 00 00 "
		
	strings :
		$a_81_0 = {53 6f 66 74 77 61 72 65 5c 44 6f 77 6e 6c 6f 61 64 4d 61 6e 61 67 65 72 5c 50 61 73 73 77 6f 72 64 73 5c } //1 Software\DownloadManager\Passwords\
		$a_81_1 = {5c 52 6f 61 6d 69 6e 67 5c 46 6c 61 73 68 46 58 50 5c 33 71 75 69 63 6b 2e 64 61 74 } //1 \Roaming\FlashFXP\3quick.dat
		$a_81_2 = {5c 54 72 69 6c 6c 69 61 6e 5c 75 73 65 72 73 5c 67 6c 6f 62 61 6c 5c 61 63 63 6f 75 6e 74 73 2e 64 61 74 } //1 \Trillian\users\global\accounts.dat
		$a_81_3 = {53 6f 66 74 77 61 72 65 5c 52 69 6d 41 72 74 73 5c 42 32 5c 53 65 74 74 69 6e 67 73 } //1 Software\RimArts\B2\Settings
		$a_81_4 = {5c 52 6f 61 6d 69 6e 67 5c 50 6f 73 74 62 6f 78 5c 70 72 6f 66 69 6c 65 73 2e 69 6e 69 } //1 \Roaming\Postbox\profiles.ini
		$a_81_5 = {57 69 6e 64 6f 77 73 20 44 6f 6d 61 69 6e 20 50 61 73 73 77 6f 72 64 20 43 72 65 64 65 6e 74 69 61 6c } //1 Windows Domain Password Credential
		$a_81_6 = {47 65 74 53 61 76 65 64 50 61 73 73 77 6f 72 64 73 } //1 GetSavedPasswords
		$a_81_7 = {70 63 6e 61 6d 65 3d } //1 pcname=
		$a_81_8 = {74 79 70 65 3d 70 61 73 73 77 6f 72 64 73 } //1 type=passwords
		$a_81_9 = {5c 25 69 6e 73 66 6f 6c 64 65 72 25 5c 25 69 6e 73 6e 61 6d 65 25 } //1 \%insfolder%\%insname%
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1) >=8
 
}
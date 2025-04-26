
rule Trojan_BAT_SnakeKeylogger_SSU_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.SSU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_81_0 = {68 74 74 70 73 3a 2f 2f 63 64 6e 2e 64 69 73 63 6f 72 64 61 70 70 2e 63 6f 6d 2f 61 74 74 61 63 68 6d 65 6e 74 73 } //1 https://cdn.discordapp.com/attachments
		$a_81_1 = {4c 49 4e 4b 53 5f 49 4e 5f 48 45 52 45 } //1 LINKS_IN_HERE
		$a_81_2 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerNonUserCodeAttribute
		$a_81_3 = {54 6f 53 74 72 69 6e 67 } //1 ToString
		$a_81_4 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //1 DebuggingModes
		$a_81_5 = {57 65 62 43 6c 69 65 6e 74 } //1 WebClient
		$a_81_6 = {52 65 73 75 6d 65 4c 61 79 6f 75 74 } //1 ResumeLayout
		$a_81_7 = {67 65 74 5f 41 73 73 65 6d 62 6c 79 } //1 get_Assembly
		$a_81_8 = {67 65 74 5f 52 65 73 6f 75 72 63 65 4d 61 6e 61 67 65 72 } //1 get_ResourceManager
		$a_00_9 = {24 36 65 35 62 39 36 39 32 2d 66 39 34 64 2d 34 62 64 30 2d 62 39 65 37 2d 32 38 35 32 33 37 30 64 65 64 64 34 } //1 $6e5b9692-f94d-4bd0-b9e7-2852370dedd4
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_00_9  & 1)*1) >=10
 
}

rule HackTool_Win32_Mimikatz_E_{
	meta:
		description = "HackTool:Win32/Mimikatz.E!!Mikatz.gen!F,SIGNATURE_TYPE_ARHSTR_EXT,05 00 05 00 07 00 00 "
		
	strings :
		$a_00_0 = {62 6c 6f 67 2e 67 65 6e 74 69 6c 6b 69 77 69 2e 63 6f 6d 2f 6d 69 6d 69 6b 61 74 7a } //1 blog.gentilkiwi.com/mimikatz
		$a_00_1 = {73 61 6d 65 6e 75 6d 65 72 61 74 65 64 6f 6d 61 69 6e 73 69 6e 73 61 6d 73 65 72 76 65 72 } //1 samenumeratedomainsinsamserver
		$a_00_2 = {6d 00 69 00 6d 00 69 00 6b 00 61 00 74 00 7a 00 28 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 6c 00 69 00 6e 00 65 00 29 00 20 00 23 00 20 00 25 00 73 00 } //1 mimikatz(commandline) # %s
		$a_00_3 = {6d 00 69 00 6d 00 69 00 6b 00 61 00 74 00 7a 00 20 00 23 00 } //1 mimikatz #
		$a_00_4 = {6d 00 69 00 6d 00 69 00 6b 00 61 00 74 00 7a 00 20 00 90 00 02 00 02 00 2e 00 90 00 02 00 02 00 2e 00 90 00 02 00 02 00 20 00 78 00 36 00 34 00 20 00 28 00 6f 00 65 00 2e 00 65 00 6f 00 29 00 } //1
		$a_00_5 = {67 00 65 00 6e 00 74 00 69 00 6c 00 6b 00 69 00 77 00 69 00 } //1 gentilkiwi
		$a_00_6 = {5f 4e 65 74 53 65 72 76 65 72 54 72 75 73 74 50 61 73 73 77 6f 72 64 73 47 65 74 } //1 _NetServerTrustPasswordsGet
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1) >=5
 
}
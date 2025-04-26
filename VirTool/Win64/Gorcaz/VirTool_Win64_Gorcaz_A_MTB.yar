
rule VirTool_Win64_Gorcaz_A_MTB{
	meta:
		description = "VirTool:Win64/Gorcaz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_81_0 = {63 6c 69 2f 63 6f 6e 74 72 6f 6c 6c 65 72 } //1 cli/controller
		$a_81_1 = {63 6c 69 2f 63 6d 64 6f 70 74 2f 73 6d 62 6f 70 74 } //1 cli/cmdopt/smbopt
		$a_81_2 = {67 69 74 68 75 62 2e 63 6f 6d 2f 42 69 6e 6a 65 63 74 2f } //1 github.com/Binject/
		$a_81_3 = {73 74 61 67 65 72 2f 63 6f 6e 6e 65 63 74 2e 67 6f } //1 stager/connect.go
		$a_81_4 = {73 74 61 67 65 72 2f 72 65 67 69 73 74 65 72 2e 67 6f } //1 stager/register.go
		$a_81_5 = {73 74 61 67 65 72 2f 73 65 74 74 6c 65 6d 73 67 2e 67 6f } //1 stager/settlemsg.go
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1) >=6
 
}
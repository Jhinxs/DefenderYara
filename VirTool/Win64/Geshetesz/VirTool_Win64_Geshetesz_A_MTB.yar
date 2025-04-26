
rule VirTool_Win64_Geshetesz_A_MTB{
	meta:
		description = "VirTool:Win64/Geshetesz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_81_0 = {2e 41 75 74 68 65 6e 74 69 63 61 74 65 53 68 65 65 74 } //1 .AuthenticateSheet
		$a_81_1 = {2e 41 75 74 68 65 6e 74 69 63 61 74 65 44 72 69 76 65 } //1 .AuthenticateDrive
		$a_81_2 = {2e 64 6f 77 6e 6c 6f 61 64 46 69 6c 65 } //1 .downloadFile
		$a_81_3 = {2e 65 78 65 63 75 74 65 43 6f 6d 6d 61 6e 64 } //1 .executeCommand
		$a_81_4 = {2e 75 70 6c 6f 61 64 46 69 6c 65 } //1 .uploadFile
		$a_81_5 = {61 64 64 43 6f 6e 6e } //1 addConn
		$a_81_6 = {2e 48 6f 73 74 6e 61 6d 65 } //1 .Hostname
		$a_81_7 = {6e 65 74 2f 68 74 74 70 2e 70 65 72 73 69 73 74 43 6f 6e 6e 57 72 69 74 65 72 2e 57 72 69 74 65 } //1 net/http.persistConnWriter.Write
		$a_81_8 = {2e 72 65 61 64 53 68 65 65 74 } //1 .readSheet
		$a_81_9 = {73 68 65 6c 6c } //1 shell
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1) >=10
 
}
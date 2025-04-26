
rule VirTool_Win64_Kitez_C_MTB{
	meta:
		description = "VirTool:Win64/Kitez.C!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_81_0 = {63 6d 64 2f 75 74 69 6c 2e 4e 65 77 54 61 73 6b } //1 cmd/util.NewTask
		$a_81_1 = {63 6d 64 2f 6d 61 6c 77 61 72 65 55 74 69 6c 2e 43 6f 6e 6e 65 63 74 } //1 cmd/malwareUtil.Connect
		$a_81_2 = {63 6d 64 2f 75 74 69 6c 2e 4d 61 6c 43 6f 6e 66 } //1 cmd/util.MalConf
		$a_81_3 = {63 6d 64 2f 75 74 69 6c 2e 28 2a 49 6e 69 74 69 61 6c 43 68 65 63 6b 73 29 2e 53 65 74 50 69 64 } //1 cmd/util.(*InitialChecks).SetPid
		$a_81_4 = {63 6d 64 2f 6d 61 6c 77 61 72 65 55 74 69 6c 2e 70 6f 73 74 52 65 71 75 65 73 74 } //1 cmd/malwareUtil.postRequest
		$a_81_5 = {63 6d 64 2f 6d 61 6c 77 61 72 65 55 74 69 6c 2f 6d 61 6c 77 61 72 65 55 74 69 6c 2e 67 6f } //1 cmd/malwareUtil/malwareUtil.go
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1) >=6
 
}
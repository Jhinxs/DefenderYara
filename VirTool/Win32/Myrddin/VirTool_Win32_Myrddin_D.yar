
rule VirTool_Win32_Myrddin_D{
	meta:
		description = "VirTool:Win32/Myrddin.D,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_81_0 = {29 2e 53 65 6e 64 4d 65 72 6c 69 6e 4d 65 73 73 61 67 65 } //1 ).SendMerlinMessage
		$a_81_1 = {6e 65 74 2f 68 74 74 70 2e 70 65 72 73 69 73 74 43 6f 6e 6e 57 72 69 74 65 72 2e 57 72 69 74 65 } //1 net/http.persistConnWriter.Write
		$a_81_2 = {67 69 74 68 75 62 2e 63 6f 6d 2f 6c 75 63 61 73 2d 63 6c 65 6d 65 6e 74 65 } //1 github.com/lucas-clemente
		$a_81_3 = {67 69 74 68 75 62 2e 63 6f 6d 2f 6d 61 72 74 65 6e 2d 73 65 65 6d 61 6e 6e } //1 github.com/marten-seemann
		$a_81_4 = {29 2e 4e 65 77 53 65 73 73 69 6f 6e } //1 ).NewSession
		$a_81_5 = {29 2e 52 65 6d 6f 74 65 41 64 64 72 } //1 ).RemoteAddr
		$a_81_6 = {29 2e 41 64 64 43 6f 6e 6e } //1 ).AddConn
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1) >=7
 
}
rule VirTool_Win32_Myrddin_D_2{
	meta:
		description = "VirTool:Win32/Myrddin.D,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0f 00 00 "
		
	strings :
		$a_81_0 = {6e 65 74 2f 68 74 74 70 2e 70 65 72 73 69 73 74 43 6f 6e 6e 57 72 69 74 65 72 2e 57 72 69 74 65 } //1 net/http.persistConnWriter.Write
		$a_81_1 = {29 2e 4e 65 77 53 65 73 73 69 6f 6e } //1 ).NewSession
		$a_81_2 = {29 2e 52 65 6d 6f 74 65 41 64 64 72 } //1 ).RemoteAddr
		$a_81_3 = {29 2e 41 64 64 43 6f 6e 6e } //1 ).AddConn
		$a_81_4 = {29 2e 48 6f 73 74 6e 61 6d 65 } //1 ).Hostname
		$a_81_5 = {29 2e 50 61 73 73 77 6f 72 64 } //1 ).Password
		$a_81_6 = {2e 43 6c 69 65 6e 74 54 61 73 6b 52 65 73 70 6f 6e 73 65 } //1 .ClientTaskResponse
		$a_81_7 = {2e 53 65 72 76 65 72 50 6f 73 74 52 65 73 70 6f 6e 73 65 } //1 .ServerPostResponse
		$a_81_8 = {2e 63 6c 69 65 6e 74 53 65 73 73 69 6f 6e 53 74 61 74 65 } //1 .clientSessionState
		$a_81_9 = {29 2e 47 65 74 53 65 73 73 69 6f 6e 54 69 63 6b 65 74 } //1 ).GetSessionTicket
		$a_81_10 = {41 67 65 6e 74 49 6e 66 6f 29 } //1 AgentInfo)
		$a_81_11 = {2e 53 65 72 76 65 72 54 61 73 6b 52 65 73 70 6f 6e 73 65 } //1 .ServerTaskResponse
		$a_81_12 = {29 2e 53 65 73 73 69 6f 6e 54 69 63 6b 65 74 } //1 ).SessionTicket
		$a_81_13 = {29 2e 53 65 74 53 65 73 73 69 6f 6e 53 74 61 74 65 } //1 ).SetSessionState
		$a_81_14 = {29 2e 52 65 6d 6f 74 65 53 6f 63 6b } //1 ).RemoteSock
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1+(#a_81_12  & 1)*1+(#a_81_13  & 1)*1+(#a_81_14  & 1)*1) >=12
 
}
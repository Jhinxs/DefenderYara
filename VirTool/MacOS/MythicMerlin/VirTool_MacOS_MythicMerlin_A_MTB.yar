
rule VirTool_MacOS_MythicMerlin_A_MTB{
	meta:
		description = "VirTool:MacOS/MythicMerlin.A!MTB,SIGNATURE_TYPE_MACHOHSTR_EXT,08 00 08 00 09 00 00 "
		
	strings :
		$a_01_0 = {4e 65 30 6e 64 30 67 2f 6d 65 72 6c 69 6e 2d 61 67 65 6e 74 2f 63 6c 69 65 6e 74 73 2e 28 2a 4d 65 72 6c 69 6e 43 6c 69 65 6e 74 29 2e 41 75 74 68 } //1 Ne0nd0g/merlin-agent/clients.(*MerlinClient).Auth
		$a_01_1 = {6d 65 72 6c 69 6e 2d 61 67 65 6e 74 2f 63 6f 6d 6d 61 6e 64 73 2e 6d 69 6e 69 44 75 6d 70 } //1 merlin-agent/commands.miniDump
		$a_01_2 = {4e 65 30 6e 64 30 67 2f 6d 65 72 6c 69 6e 2f 70 6b 67 2f 6d 65 73 73 61 67 65 73 2e 42 61 73 65 } //1 Ne0nd0g/merlin/pkg/messages.Base
		$a_01_3 = {6d 65 72 6c 69 6e 2d 61 67 65 6e 74 2f 63 6f 6d 6d 61 6e 64 73 2e 45 78 65 63 75 74 65 53 68 65 6c 6c 63 6f 64 65 51 75 65 75 65 55 73 65 72 41 50 43 } //1 merlin-agent/commands.ExecuteShellcodeQueueUserAPC
		$a_01_4 = {6d 65 72 6c 69 6e 2f 70 6b 67 2f 6a 6f 62 73 2e 53 68 65 6c 6c 63 6f 64 65 } //1 merlin/pkg/jobs.Shellcode
		$a_01_5 = {6d 65 72 6c 69 6e 2f 70 6b 67 2f 63 6f 72 65 2e 52 61 6e 64 53 74 72 69 6e 67 42 79 74 65 73 4d 61 73 6b 49 6d 70 72 53 72 63 } //1 merlin/pkg/core.RandStringBytesMaskImprSrc
		$a_01_6 = {4d 65 72 6c 69 6e 43 6c 69 65 6e 74 } //1 MerlinClient
		$a_01_7 = {4e 65 30 6e 64 30 67 2f 6d 65 72 6c 69 6e 2d 61 67 65 6e 74 2f 73 6f 63 6b 73 2e 73 65 6e 64 54 6f 53 4f 43 4b 53 53 65 72 76 65 72 } //1 Ne0nd0g/merlin-agent/socks.sendToSOCKSServer
		$a_01_8 = {6d 65 72 6c 69 6e 2d 61 67 65 6e 74 2f 63 6f 6d 6d 61 6e 64 73 2f 65 78 65 63 75 74 65 2e 67 6f } //1 merlin-agent/commands/execute.go
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=8
 
}
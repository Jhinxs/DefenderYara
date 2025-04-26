
rule Trojan_WinNT_WebHijack_KB{
	meta:
		description = "Trojan:WinNT/WebHijack.KB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 0e 00 00 "
		
	strings :
		$a_01_0 = {48 54 54 50 2f 31 2e 31 20 33 30 32 20 46 6f 75 6e 64 } //1 HTTP/1.1 302 Found
		$a_01_1 = {52 65 66 65 72 65 72 3a 20 68 74 74 70 2a 2f 2f 2a 2e 68 61 6f 31 32 33 2e 63 6f 6d } //1 Referer: http*//*.hao123.com
		$a_01_2 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 54 00 63 00 70 00 } //1 \Device\Tcp
		$a_01_3 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 55 00 64 00 70 00 } //1 \Device\Udp
		$a_01_4 = {54 72 61 6e 73 70 6f 72 74 41 64 64 72 65 73 73 } //1 TransportAddress
		$a_01_5 = {43 6f 6e 6e 65 63 74 69 6f 6e 43 6f 6e 74 65 78 74 } //1 ConnectionContext
		$a_00_6 = {64 3a 5c 79 6f 75 6e 67 5c 73 77 70 72 6f 6a 65 63 74 73 5c 74 64 78 69 6e 5c 62 69 6e 5c 61 6d 64 36 34 5c 72 74 64 78 66 74 65 78 5f 61 6d 64 36 34 2e 70 64 62 } //3 d:\young\swprojects\tdxin\bin\amd64\rtdxftex_amd64.pdb
		$a_01_7 = {49 6f 41 74 74 61 63 68 44 65 76 69 63 65 } //1 IoAttachDevice
		$a_01_8 = {49 6f 43 72 65 61 74 65 46 69 6c 65 53 70 65 63 69 66 79 44 65 76 69 63 65 4f 62 6a 65 63 74 48 69 6e 74 } //1 IoCreateFileSpecifyDeviceObjectHint
		$a_01_9 = {50 73 53 65 74 4c 6f 61 64 49 6d 61 67 65 4e 6f 74 69 66 79 52 6f 75 74 69 6e 65 } //1 PsSetLoadImageNotifyRoutine
		$a_01_10 = {50 73 47 65 74 50 72 6f 63 65 73 73 49 6d 61 67 65 46 69 6c 65 4e 61 6d 65 } //1 PsGetProcessImageFileName
		$a_01_11 = {50 73 53 65 74 43 72 65 61 74 65 50 72 6f 63 65 73 73 4e 6f 74 69 66 79 52 6f 75 74 69 6e 65 } //1 PsSetCreateProcessNotifyRoutine
		$a_01_12 = {54 64 69 4d 61 70 55 73 65 72 52 65 71 75 65 73 74 } //1 TdiMapUserRequest
		$a_01_13 = {54 44 49 2e 53 59 53 } //1 TDI.SYS
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_00_6  & 1)*3+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1) >=13
 
}
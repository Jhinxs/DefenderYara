
rule Backdoor_MacOS_orat_C_MTB{
	meta:
		description = "Backdoor:MacOS/orat.C!MTB,SIGNATURE_TYPE_MACHOHSTR_EXT,09 00 09 00 0d 00 00 "
		
	strings :
		$a_00_0 = {6f 72 61 74 5f 70 72 6f 74 6f 63 6f 6c 2f 44 69 61 6c 54 43 50 } //1 orat_protocol/DialTCP
		$a_00_1 = {6f 72 61 74 5f 70 72 6f 74 6f 63 6f 6c 2f 44 69 61 6c 53 54 43 50 } //1 orat_protocol/DialSTCP
		$a_00_2 = {6f 72 61 74 5f 70 72 6f 74 6f 63 6f 6c 2f 44 69 61 6c 53 55 44 50 } //1 orat_protocol/DialSUDP
		$a_00_3 = {6f 72 61 74 2f 63 6d 64 2f 61 67 65 6e 74 2f 61 70 70 2e 28 2a 41 70 70 29 2e 44 6f 77 6e 6c 6f 61 64 46 69 6c 65 } //1 orat/cmd/agent/app.(*App).DownloadFile
		$a_00_4 = {6f 72 61 74 2f 63 6d 64 2f 61 67 65 6e 74 2f 61 70 70 2e 28 2a 41 70 70 29 2e 4b 69 6c 6c 53 65 6c 66 } //1 orat/cmd/agent/app.(*App).KillSelf
		$a_00_5 = {6f 72 61 74 2f 63 6d 64 2f 61 67 65 6e 74 2f 61 70 70 2e 28 2a 41 70 70 29 2e 4e 65 77 4e 65 74 43 6f 6e 6e } //1 orat/cmd/agent/app.(*App).NewNetConn
		$a_00_6 = {6f 72 61 74 2f 63 6d 64 2f 61 67 65 6e 74 2f 61 70 70 2e 28 2a 41 70 70 29 2e 4e 65 77 50 72 6f 78 79 43 6f 6e 6e } //1 orat/cmd/agent/app.(*App).NewProxyConn
		$a_00_7 = {6f 72 61 74 2f 63 6d 64 2f 61 67 65 6e 74 2f 61 70 70 2e 28 2a 41 70 70 29 2e 4e 65 77 53 68 65 6c 6c 43 6f 6e 6e } //1 orat/cmd/agent/app.(*App).NewShellConn
		$a_00_8 = {6f 72 61 74 2f 63 6d 64 2f 61 67 65 6e 74 2f 61 70 70 2e 28 2a 41 70 70 29 2e 50 6f 72 74 53 63 61 6e } //1 orat/cmd/agent/app.(*App).PortScan
		$a_00_9 = {6f 72 61 74 2f 63 6d 64 2f 61 67 65 6e 74 2f 61 70 70 2e 28 2a 41 70 70 29 2e 72 65 67 69 73 74 65 72 52 6f 75 74 65 72 73 } //1 orat/cmd/agent/app.(*App).registerRouters
		$a_00_10 = {6f 72 61 74 2f 63 6d 64 2f 61 67 65 6e 74 2f 61 70 70 2e 28 2a 41 70 70 29 2e 53 63 72 65 65 6e 73 68 6f 74 } //1 orat/cmd/agent/app.(*App).Screenshot
		$a_00_11 = {6f 72 61 74 2f 63 6d 64 2f 61 67 65 6e 74 2f 61 70 70 2e 28 2a 41 70 70 29 2e 55 70 6c 6f 61 64 46 69 6c 65 } //1 orat/cmd/agent/app.(*App).UploadFile
		$a_00_12 = {6f 72 61 74 2f 75 74 69 6c 73 } //1 orat/utils
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1+(#a_00_11  & 1)*1+(#a_00_12  & 1)*1) >=9
 
}
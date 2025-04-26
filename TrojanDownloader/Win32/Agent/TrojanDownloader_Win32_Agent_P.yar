
rule TrojanDownloader_Win32_Agent_P{
	meta:
		description = "TrojanDownloader:Win32/Agent.P,SIGNATURE_TYPE_PEHSTR,07 00 07 00 05 00 00 "
		
	strings :
		$a_01_0 = {70 6f 77 65 72 73 68 65 6c 6c 20 2d 69 6e 70 75 74 66 6f 72 6d 61 74 20 6e 6f 6e 65 20 2d 6f 75 74 70 75 74 66 6f 72 6d 61 74 20 6e 6f 6e 65 20 2d 4e 6f 6e 49 6e 74 65 72 61 63 74 69 76 65 20 2d 43 6f 6d 6d 61 6e 64 } //2 powershell -inputformat none -outputformat none -NonInteractive -Command
		$a_01_1 = {53 65 74 2d 4d 70 50 72 65 66 65 72 65 6e 63 65 20 2d 44 69 73 61 62 6c 65 52 65 61 6c 74 69 6d 65 4d 6f 6e 69 74 6f 72 69 6e 67 20 24 74 72 75 65 } //2 Set-MpPreference -DisableRealtimeMonitoring $true
		$a_01_2 = {2d 53 75 62 6d 69 74 53 61 6d 70 6c 65 73 43 6f 6e 73 65 6e 74 20 4e 65 76 65 72 53 65 6e 64 20 2d 4d 41 50 53 52 65 70 6f 72 74 69 6e 67 20 44 69 73 61 62 6c } //2 -SubmitSamplesConsent NeverSend -MAPSReporting Disabl
		$a_01_3 = {36 32 30 63 37 33 33 64 39 30 30 64 35 2e 63 6f 6d 2f } //1 620c733d900d5.com/
		$a_01_4 = {61 64 64 49 6e 73 74 61 6c 6c 2e 70 68 70 } //1 addInstall.php
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=7
 
}
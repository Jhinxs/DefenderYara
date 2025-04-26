
rule TrojanDownloader_Win32_Agent_AAC{
	meta:
		description = "TrojanDownloader:Win32/Agent.AAC,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 70 63 69 68 64 64 2e 73 79 73 } //1 system32\drivers\pcihdd.sys
		$a_01_1 = {53 79 73 74 65 6d 33 32 5c 55 73 65 72 69 6e 69 74 2e 65 78 65 } //1 System32\Userinit.exe
		$a_01_2 = {2e 6d 61 63 6b 74 } //1 .mackt
		$a_01_3 = {4f 70 65 6e 53 43 4d 61 6e 61 67 65 72 41 } //1 OpenSCManagerA
		$a_01_4 = {43 72 65 61 74 65 53 65 72 76 69 63 65 41 } //1 CreateServiceA
		$a_01_5 = {44 65 6c 65 74 65 53 65 72 76 69 63 65 } //1 DeleteService
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}
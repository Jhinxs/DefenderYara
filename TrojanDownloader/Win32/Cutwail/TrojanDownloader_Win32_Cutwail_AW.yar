
rule TrojanDownloader_Win32_Cutwail_AW{
	meta:
		description = "TrojanDownloader:Win32/Cutwail.AW,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {5c 5c 2e 5c 50 68 79 73 69 63 61 6c 44 72 69 76 65 30 } //1 \\.\PhysicalDrive0
		$a_01_1 = {5c 53 79 73 74 65 6d 33 32 5c 73 76 63 68 6f 73 74 2e 65 78 65 } //1 \System32\svchost.exe
		$a_01_2 = {4d 61 78 55 73 65 72 50 6f 72 74 } //1 MaxUserPort
		$a_01_3 = {53 59 53 54 45 4d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 53 65 72 76 69 63 65 73 5c 54 63 70 69 70 5c 50 61 72 61 6d 65 74 65 72 73 } //1 SYSTEM\CurrentControlSet\Services\Tcpip\Parameters
		$a_01_4 = {70 72 6f 78 79 31 2e 72 75 3a 38 30 38 30 3b 70 72 6f 78 79 31 2e 72 75 3a 38 30 3b 70 72 6f 78 79 33 2e 72 75 3b } //1 proxy1.ru:8080;proxy1.ru:80;proxy3.ru;
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
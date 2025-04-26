
rule Trojan_Win32_TurlaCarbonEmailC2{
	meta:
		description = "Trojan:Win32/TurlaCarbonEmailC2,SIGNATURE_TYPE_PEHSTR,06 00 06 00 07 00 00 "
		
	strings :
		$a_01_0 = {66 69 6c 65 6e 61 6d 65 3d 22 63 6f 6e 66 69 72 6d 61 74 69 6f 6e 5f 69 63 6f 6e 2e 6a 70 65 67 22 } //1 filename="confirmation_icon.jpeg"
		$a_01_1 = {43 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 4d 69 63 72 6f 73 6f 66 74 5c 45 78 63 68 61 6e 67 65 20 53 65 72 76 65 72 5c 56 31 35 5c 42 69 6e 5c 77 69 6e 6d 61 69 6c 2e 64 61 74 } //1 C:\Program Files\Microsoft\Exchange Server\V15\Bin\winmail.dat
		$a_01_2 = {45 4d 41 49 4c 5f 4c 4f 47 5f 46 49 4c 45 } //1 EMAIL_LOG_FILE
		$a_01_3 = {53 75 63 63 65 73 73 66 75 6c 6c 79 20 64 65 6c 65 74 65 64 20 66 69 6c 65 3a } //1 Successfully deleted file:
		$a_01_4 = {43 6f 75 6c 64 20 6e 6f 74 20 64 65 6c 65 74 65 20 65 6d 61 69 6c 20 6c 6f 67 20 66 69 6c 65 2e } //1 Could not delete email log file.
		$a_01_5 = {45 78 65 63 75 74 65 20 61 20 63 6f 6d 6d 61 6e 64 20 6c 69 6e 65 } //1 Execute a command line
		$a_01_6 = {50 72 6f 63 65 73 69 6e 67 20 63 6f 6e 74 61 69 6e 65 72 } //1 Procesing container
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=6
 
}
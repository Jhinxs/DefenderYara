
rule Trojan_Win32_Sabsik_PJRT_MTB{
	meta:
		description = "Trojan:Win32/Sabsik.PJRT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_81_0 = {5c 41 70 70 44 61 74 61 5c 4c 6f 63 61 6c 5c 54 65 6d 70 } //1 \AppData\Local\Temp
		$a_81_1 = {68 74 74 70 3a 2f 2f 7a 6c 6f 79 31 33 31 32 2e 74 6b 2f 73 73 2f 64 6f 77 6e 6c 6f 61 64 2e 70 68 70 } //1 http://zloy1312.tk/ss/download.php
		$a_81_2 = {53 65 72 76 65 72 2d 53 69 64 65 64 2d 46 69 6c 65 73 2d 6d 61 73 74 65 72 5c 43 6c 69 65 6e 74 2d 53 69 64 65 } //1 Server-Sided-Files-master\Client-Side
		$a_81_3 = {44 6f 77 6e 6c 6f 61 64 46 69 6c 65 } //1 DownloadFile
		$a_81_4 = {43 72 65 61 74 65 54 61 73 6b } //1 CreateTask
		$a_81_5 = {49 53 63 68 65 64 75 6c 65 54 72 69 67 67 65 72 } //1 IScheduleTrigger
		$a_81_6 = {52 75 6e 45 76 65 72 79 58 4d 69 6e 75 74 65 73 } //1 RunEveryXMinutes
		$a_81_7 = {57 72 69 74 65 41 6c 6c 42 79 74 65 73 } //1 WriteAllBytes
		$a_81_8 = {55 70 6c 6f 61 64 56 61 6c 75 65 73 } //1 UploadValues
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1) >=9
 
}
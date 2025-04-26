
rule PWS_Win32_Logsnif_gen_C{
	meta:
		description = "PWS:Win32/Logsnif.gen!C,SIGNATURE_TYPE_PEHSTR_EXT,ffffffad 00 ffffffa6 00 18 00 00 "
		
	strings :
		$a_00_0 = {2d 2d 5f 5f 61 62 63 64 2d 78 79 7a 37 38 39 5f 5f 2d 2d } //100 --__abcd-xyz789__--
		$a_00_1 = {73 76 63 68 6f 73 74 2e 65 78 65 } //5 svchost.exe
		$a_00_2 = {65 78 70 6c 6f 72 65 72 2e 65 78 65 } //5 explorer.exe
		$a_00_3 = {46 46 47 72 61 62 62 65 72 } //5 FFGrabber
		$a_00_4 = {49 45 46 61 6b 65 72 } //5 IEFaker
		$a_00_5 = {49 45 47 72 61 62 62 65 72 } //5 IEGrabber
		$a_00_6 = {49 45 4d 6f 64 } //5 IEMod
		$a_00_7 = {50 53 47 72 61 62 62 65 72 } //5 PSGrabber
		$a_00_8 = {47 65 74 4d 6f 64 49 6e 66 6f } //10 GetModInfo
		$a_00_9 = {45 78 65 63 75 74 65 } //10 Execute
		$a_00_10 = {41 63 74 69 76 61 74 65 } //10 Activate
		$a_00_11 = {43 6f 6e 6e 65 63 74 69 6f 6e 3a 20 43 6c 6f 73 65 } //1 Connection: Close
		$a_00_12 = {43 6f 6e 74 65 6e 74 2d 44 69 73 70 6f 73 69 74 69 6f 6e 3a 20 66 6f 72 6d 2d 64 61 74 61 3b 20 6e 61 6d 65 3d } //1 Content-Disposition: form-data; name=
		$a_00_13 = {43 6f 6e 74 65 6e 74 2d 4c 65 6e 67 74 68 3a 20 25 64 } //1 Content-Length: %d
		$a_00_14 = {43 6f 6e 74 65 6e 74 2d 54 79 70 65 3a 20 6d 75 6c 74 69 70 61 72 74 2f 66 6f 72 6d 2d 64 61 74 61 3b 20 62 6f 75 6e 64 61 72 79 3d 25 73 } //1 Content-Type: multipart/form-data; boundary=%s
		$a_00_15 = {73 68 65 6c 6c 5c 6f 70 65 6e 5c 63 6f 6d 6d 61 6e 64 } //1 shell\open\command
		$a_00_16 = {43 65 72 74 47 72 61 62 62 65 72 } //1 CertGrabber
		$a_00_17 = {4e 74 43 72 65 61 74 65 53 65 63 74 69 6f 6e } //1 NtCreateSection
		$a_00_18 = {5a 77 4d 61 70 56 69 65 77 4f 66 53 65 63 74 69 6f 6e } //1 ZwMapViewOfSection
		$a_01_19 = {52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //1 ReadProcessMemory
		$a_01_20 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //1 WriteProcessMemory
		$a_00_21 = {53 4f 46 54 57 41 52 45 5c 43 6c 69 65 6e 74 73 5c 53 74 61 72 74 4d 65 6e 75 49 6e 74 65 72 6e 65 74 } //1 SOFTWARE\Clients\StartMenuInternet
		$a_00_22 = {25 50 72 6f 67 72 61 6d 46 69 6c 65 73 25 5c 4f 75 74 6c 6f 6f 6b 20 45 78 70 72 65 73 73 5c 77 61 62 2e 65 78 65 } //1 %ProgramFiles%\Outlook Express\wab.exe
		$a_00_23 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 53 68 61 72 65 64 54 61 73 6b 53 63 68 65 64 75 6c 65 72 } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\SharedTaskScheduler
	condition:
		((#a_00_0  & 1)*100+(#a_00_1  & 1)*5+(#a_00_2  & 1)*5+(#a_00_3  & 1)*5+(#a_00_4  & 1)*5+(#a_00_5  & 1)*5+(#a_00_6  & 1)*5+(#a_00_7  & 1)*5+(#a_00_8  & 1)*10+(#a_00_9  & 1)*10+(#a_00_10  & 1)*10+(#a_00_11  & 1)*1+(#a_00_12  & 1)*1+(#a_00_13  & 1)*1+(#a_00_14  & 1)*1+(#a_00_15  & 1)*1+(#a_00_16  & 1)*1+(#a_00_17  & 1)*1+(#a_00_18  & 1)*1+(#a_01_19  & 1)*1+(#a_01_20  & 1)*1+(#a_00_21  & 1)*1+(#a_00_22  & 1)*1+(#a_00_23  & 1)*1) >=166
 
}
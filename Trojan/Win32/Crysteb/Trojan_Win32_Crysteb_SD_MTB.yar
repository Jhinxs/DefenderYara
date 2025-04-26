
rule Trojan_Win32_Crysteb_SD_MTB{
	meta:
		description = "Trojan:Win32/Crysteb.SD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 06 00 00 "
		
	strings :
		$a_01_0 = {22 73 79 6e 63 47 55 49 44 22 3a 22 7b 31 33 31 38 36 64 63 34 2d 34 62 63 32 2d 34 63 31 61 2d 38 62 34 64 2d 62 61 37 33 36 64 33 35 66 64 64 36 7d 22 } //1 "syncGUID":"{13186dc4-4bc2-4c1a-8b4d-ba736d35fdd6}"
		$a_01_1 = {7b 46 41 31 42 37 32 37 44 2d 33 39 37 30 2d 34 35 36 31 2d 38 41 43 36 2d 41 43 38 41 41 37 44 42 41 36 33 39 7d } //1 {FA1B727D-3970-4561-8AC6-AC8AA7DBA639}
		$a_01_2 = {22 5d 2c 22 6d 61 74 63 68 65 73 22 3a 5b 22 68 74 74 70 3a 2f 2f 2a 2f 2a 22 2c 20 22 68 74 74 70 73 3a 2f 2f 2a 2f 2a 22 5d 2c 22 72 75 6e 5f 61 74 22 3a 22 64 6f 63 75 6d 65 6e 74 5f 65 6e 64 } //1 "],"matches":["http://*/*", "https://*/*"],"run_at":"document_end
		$a_01_3 = {65 67 65 66 6b 6c 66 6d 61 65 6f 67 63 66 68 65 6c 6e 61 6d 64 68 67 6b 6e 6e 64 6e 70 65 69 6d } //1 egefklfmaeogcfhelnamdhgknndnpeim
		$a_01_4 = {2f 53 20 2f 43 20 63 68 6f 69 63 65 20 2f 43 20 59 20 2f 4e 20 2f 44 20 59 20 2f 54 20 33 20 26 20 22 43 3a 5c 6d 79 61 70 70 2e 65 78 65 22 20 22 43 3a 5c 6d 79 61 70 70 2e 65 78 65 } //1 /S /C choice /C Y /N /D Y /T 3 & "C:\myapp.exe" "C:\myapp.exe
		$a_01_5 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 50 65 72 66 6f 72 6d 65 72 } //1 Software\Microsoft\Windows\CurrentVersion\Performer
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=3
 
}
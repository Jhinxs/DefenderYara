
rule Trojan_Win32_LuxNET_SD_MTB{
	meta:
		description = "Trojan:Win32/LuxNET.SD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 08 00 00 "
		
	strings :
		$a_81_0 = {43 6f 75 6c 64 20 6e 6f 74 20 64 65 74 65 63 74 20 41 56 } //1 Could not detect AV
		$a_81_1 = {46 69 6c 65 20 77 61 73 20 45 78 65 63 75 74 65 64 20 73 75 63 63 65 73 73 66 75 6c 6c 79 21 } //1 File was Executed successfully!
		$a_81_2 = {2f 43 20 70 69 6e 67 20 31 2e 31 2e 31 2e 31 20 2d 6e 20 31 20 2d 77 20 35 20 3e 20 4e 75 6c 20 26 20 44 65 6c 20 22 } //1 /C ping 1.1.1.1 -n 1 -w 5 > Nul & Del "
		$a_81_3 = {59 6f 75 20 61 72 65 20 63 68 61 74 74 69 6e 67 20 77 69 74 68 } //1 You are chatting with
		$a_81_4 = {54 57 39 36 61 57 78 73 59 56 78 47 61 58 4a 6c 5a 6d 39 34 58 46 42 79 62 32 5a 70 62 47 56 7a } //1 TW96aWxsYVxGaXJlZm94XFByb2ZpbGVz
		$a_81_5 = {58 45 64 76 62 32 64 73 5a 56 78 44 61 48 4a 76 62 57 56 63 56 58 4e 6c 63 69 42 45 59 58 52 68 58 45 52 6c 5a 6d 46 31 62 48 52 63 54 47 39 6e 61 57 34 67 52 47 46 30 59 51 3d 3d } //1 XEdvb2dsZVxDaHJvbWVcVXNlciBEYXRhXERlZmF1bHRcTG9naW4gRGF0YQ==
		$a_81_6 = {5b 45 6e 64 20 50 61 73 74 65 5d } //1 [End Paste]
		$a_81_7 = {4c 75 78 4e 45 54 20 52 41 54 } //1 LuxNET RAT
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1) >=7
 
}
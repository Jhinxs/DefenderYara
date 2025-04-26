
rule Trojan_BAT_Small_EM_MTB{
	meta:
		description = "Trojan:BAT/Small.EM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {54 00 57 00 6c 00 6a 00 63 00 6d 00 39 00 7a 00 62 00 32 00 5a 00 30 00 51 00 58 00 42 00 70 00 4a 00 51 00 3d 00 3d 00 } //1 TWljcm9zb2Z0QXBpJQ==
		$a_01_1 = {54 00 57 00 6c 00 6a 00 63 00 6d 00 39 00 7a 00 62 00 32 00 5a 00 30 00 51 00 58 00 42 00 70 00 4a 00 41 00 3d 00 3d 00 } //1 TWljcm9zb2Z0QXBpJA==
		$a_01_2 = {65 63 36 33 32 66 64 39 2d 31 36 39 34 2d 34 66 34 61 2d 39 62 66 66 2d 66 32 30 36 30 30 65 33 37 39 38 31 } //1 ec632fd9-1694-4f4a-9bff-f20600e37981
		$a_01_3 = {5a 57 4d 32 4d 7a 4a 6d 5a 44 6b 74 4d 54 59 35 4e 43 30 30 5a 6a 52 68 4c 54 6c 69 5a 6d 59 74 5a 6a 49 77 4e 6a 41 77 5a 54 4d 33 4f 54 67 78 } //1 ZWM2MzJmZDktMTY5NC00ZjRhLTliZmYtZjIwNjAwZTM3OTgx
		$a_01_4 = {4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 41 00 70 00 69 00 2e 00 65 00 78 00 65 00 } //1 MicrosoftApi.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
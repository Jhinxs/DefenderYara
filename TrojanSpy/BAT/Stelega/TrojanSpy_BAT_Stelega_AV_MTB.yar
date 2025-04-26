
rule TrojanSpy_BAT_Stelega_AV_MTB{
	meta:
		description = "TrojanSpy:BAT/Stelega.AV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_81_0 = {4f 49 45 50 47 2e 65 78 65 } //1 OIEPG.exe
		$a_81_1 = {53 65 74 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 } //1 SetWindowsHookEx
		$a_81_2 = {55 6e 68 6f 6f 6b 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 } //1 UnhookWindowsHookEx
		$a_81_3 = {54 6f 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 ToBase64String
		$a_81_4 = {53 74 72 52 65 76 65 72 73 65 } //1 StrReverse
		$a_81_5 = {4f 49 45 50 47 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //1 OIEPG.Properties.Resources.resources
		$a_81_6 = {65 32 61 63 62 34 36 37 2d 37 32 65 65 2d 34 65 39 62 2d 39 35 30 64 2d 65 32 63 66 64 62 38 61 34 38 64 31 } //1 e2acb467-72ee-4e9b-950d-e2cfdb8a48d1
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1) >=7
 
}
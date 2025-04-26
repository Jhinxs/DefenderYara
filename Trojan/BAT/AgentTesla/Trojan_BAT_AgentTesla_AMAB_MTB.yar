
rule Trojan_BAT_AgentTesla_AMAB_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.AMAB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_81_0 = {51 7a 70 63 56 58 4e 6c 63 6e 4e 63 52 6d 46 30 61 57 68 63 51 58 42 77 52 47 46 30 59 56 78 4d 62 32 4e 68 62 46 78 55 5a 57 31 77 58 48 68 79 5a 57 4a 31 4d 7a 5a 33 59 58 4e 6b } //1 QzpcVXNlcnNcRmF0aWhcQXBwRGF0YVxMb2NhbFxUZW1wXHhyZWJ1MzZ3YXNk
		$a_81_1 = {61 48 52 30 63 48 4d 36 4c 79 39 6a 5a 47 34 75 5a 47 6c 7a 59 32 39 79 5a 47 46 77 63 43 35 6a 62 32 30 76 59 58 52 30 59 57 4e 6f 62 57 56 75 64 48 4d 76 4d 54 45 79 4f 44 67 77 4d 54 41 32 4d 7a 67 35 4d 44 4d 7a 4d 7a 67 31 4f 43 38 78 4d 54 49 34 4f 44 41 78 4e 44 55 79 4d 44 41 32 4d 44 59 34 4d 7a 55 32 4c 30 6c 75 61 6d 56 6a 64 43 35 6b 62 47 77 } //1 aHR0cHM6Ly9jZG4uZGlzY29yZGFwcC5jb20vYXR0YWNobWVudHMvMTEyODgwMTA2Mzg5MDMzMzg1OC8xMTI4ODAxNDUyMDA2MDY4MzU2L0luamVjdC5kbGw
		$a_81_2 = {52 65 76 6f 6c 61 69 2e 65 78 65 } //1 Revolai.exe
		$a_81_3 = {53 77 6f 72 7a 79 20 42 61 62 61 20 49 6e 63 2e } //1 Sworzy Baba Inc.
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1) >=4
 
}
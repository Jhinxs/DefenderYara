
rule Trojan_Win32_QQPass_GF_bit{
	meta:
		description = "Trojan:Win32/QQPass.GF!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {5c 73 68 65 6c 6c 5c 4f 70 65 6e 48 6f 6d 65 50 61 67 65 5c 43 6f 6d 6d 61 6e 64 7c 22 43 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 69 65 78 70 6c 6f 72 65 2e 65 78 65 22 20 68 74 74 70 3a 2f 2f 77 77 77 2e 32 33 34 35 2e 63 6f 6d 2f [0-10] 0d 0a ?? 7c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 4d 61 69 6e 5c 53 74 61 72 74 20 50 61 67 65 7c 68 74 74 70 3a 2f 2f 77 77 77 2e 32 33 34 35 2e 63 6f 6d 2f [0-10] 0d 0a } //1
		$a_01_1 = {48 4b 45 59 5f 43 55 52 52 45 4e 54 5f 55 53 45 52 5c 53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //1 HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_03_2 = {77 77 77 2e 39 69 66 7a 2e 6f 72 67 2f [0-10] 71 71 64 61 6f 68 61 6f 2f 3f 6e 61 6d 65 3d } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}
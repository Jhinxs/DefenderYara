
rule Backdoor_Win32_Poison_P{
	meta:
		description = "Backdoor:Win32/Poison.P,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {eb 11 c7 85 ?? ?? ?? ?? 63 6b 73 3d c6 86 ?? ?? ?? ?? 01 } //2
		$a_00_1 = {4f 4e 6e 45 43 54 20 25 73 3a 25 69 20 48 54 54 50 2f } //1 ONnECT %s:%i HTTP/
		$a_00_2 = {53 4f 46 54 57 41 52 45 5c 43 6c 61 73 73 65 73 5c 68 74 74 70 5c 73 68 65 6c 6c 5c 6f 70 65 6e 5c 63 6f 6d 6d 61 6e 64 76 } //1 SOFTWARE\Classes\http\shell\open\commandv
		$a_00_3 = {e8 06 00 00 00 6e 74 64 6c 6c 00 } //1
		$a_02_4 = {e8 2e 00 00 00 53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 72 75 6e 00 57 ff 96 [0-04] 80 be [0-04] 01 75 07 b9 02 00 00 80 } //2
	condition:
		((#a_03_0  & 1)*2+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_02_4  & 1)*2) >=5
 
}
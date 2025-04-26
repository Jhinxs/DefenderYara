
rule Trojan_Win32_Injuke_EC_MTB{
	meta:
		description = "Trojan:Win32/Injuke.EC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //1 ReadProcessMemory
		$a_01_1 = {47 65 74 43 6f 6d 70 75 74 65 72 4e 61 6d 65 57 } //1 GetComputerNameW
		$a_01_2 = {72 00 59 00 50 00 62 00 64 00 68 00 6f 00 6b 00 7a 00 6b 00 4e 00 54 00 59 00 73 00 77 00 4a 00 } //1 rYPbdhokzkNTYswJ
		$a_01_3 = {54 00 71 00 72 00 42 00 72 00 49 00 4a 00 73 00 64 00 62 00 48 00 6d 00 4c 00 68 00 50 00 6b 00 72 00 7a 00 69 00 54 00 6b 00 42 00 47 00 43 00 44 00 4b 00 62 00 73 00 43 00 } //1 TqrBrIJsdbHmLhPkrziTkBGCDKbsC
		$a_01_4 = {50 00 42 00 4e 00 59 00 4c 00 57 00 4a 00 57 00 63 00 47 00 48 00 77 00 75 00 45 00 56 00 } //1 PBNYLWJWcGHwuEV
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
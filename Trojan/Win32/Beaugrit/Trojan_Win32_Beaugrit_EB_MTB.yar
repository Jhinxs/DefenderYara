
rule Trojan_Win32_Beaugrit_EB_MTB{
	meta:
		description = "Trojan:Win32/Beaugrit.EB!MTB,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 73 00 5c 00 4d 00 75 00 41 00 53 00 5f 00 56 00 69 00 72 00 75 00 73 00 2e 00 65 00 78 00 65 00 } //1 :\Program Files\MuAS_Virus.exe
		$a_01_1 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Run
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}
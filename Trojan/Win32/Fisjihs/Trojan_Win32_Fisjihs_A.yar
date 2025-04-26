
rule Trojan_Win32_Fisjihs_A{
	meta:
		description = "Trojan:Win32/Fisjihs.A,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 78 76 69 76 65 2e 63 6f 6d 2f 74 77 69 6b 69 2f 62 2e 74 78 74 } //1 http://xvive.com/twiki/b.txt
		$a_01_1 = {73 74 72 4f 75 74 46 69 6c 65 20 3d 20 66 73 6f 2e 47 65 74 53 70 65 63 69 61 6c 46 6f 6c 64 65 72 28 57 69 6e 64 6f 77 73 46 6f 6c 64 65 72 29 2e 50 61 74 68 20 26 20 22 5c 73 79 73 74 65 6d 33 32 5c 74 65 73 74 2e 6c 6f 67 22 } //1 strOutFile = fso.GetSpecialFolder(WindowsFolder).Path & "\system32\test.log"
		$a_01_2 = {66 69 6c 65 54 6f 43 6f 70 79 20 3d 20 66 73 6f 2e 47 65 74 53 70 65 63 69 61 6c 46 6f 6c 64 65 72 28 57 69 6e 64 6f 77 73 46 6f 6c 64 65 72 29 2e 50 61 74 68 20 26 20 22 5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 22 } //1 fileToCopy = fso.GetSpecialFolder(WindowsFolder).Path & "\system32\drivers\etc\hosts"
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
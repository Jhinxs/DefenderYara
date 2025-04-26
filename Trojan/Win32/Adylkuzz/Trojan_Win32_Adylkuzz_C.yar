
rule Trojan_Win32_Adylkuzz_C{
	meta:
		description = "Trojan:Win32/Adylkuzz.C,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 "
		
	strings :
		$a_01_0 = {2e 64 69 73 67 6f 67 6f 77 65 62 2e 63 6f 6d 2f 38 36 2e 65 78 65 } //1 .disgogoweb.com/86.exe
		$a_03_1 = {4d 69 6e 65 72 ?? 65 78 65 6e 61 6d 65 [0-08] 4c 4d 53 2e 65 78 65 } //1
		$a_01_2 = {5c 46 6f 6e 74 73 5c 4c 4d 53 2e 65 78 65 } //1 \Fonts\LMS.exe
		$a_03_3 = {73 70 70 73 72 76 2e 65 78 65 [0-04] 53 65 72 76 65 72 } //1
		$a_03_4 = {64 69 73 70 6c 61 79 [0-04] 4d 69 63 72 6f 73 6f 66 74 20 2e 4e 45 54 20 46 72 61 6d 65 77 6f 72 6b 20 4e 47 45 4e } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=3
 
}
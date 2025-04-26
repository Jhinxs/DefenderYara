
rule Trojan_Win32_Delf_IO{
	meta:
		description = "Trojan:Win32/Delf.IO,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_00_0 = {2e 67 74 62 5c 50 65 72 73 69 73 74 65 6e 74 48 61 6e 64 6c 65 72 } //1 .gtb\PersistentHandler
		$a_02_1 = {6f 76 2e 6f 76 65 72 74 6e 2e 63 6f 6d 2f [0-20] 2f 65 78 65 2f 75 70 5f 74 2e 68 74 6d 6c } //1
		$a_02_2 = {64 6f 77 6e 2e 6f 76 65 72 74 6e 2e 63 6f 6d 2f [0-20] 2f 62 68 6f 6e 2f } //1
		$a_00_3 = {49 50 65 72 50 72 6f 70 65 72 74 79 42 72 6f 77 73 69 6e 67 44 } //1 IPerPropertyBrowsingD
		$a_00_4 = {73 6f 66 74 77 61 72 65 5c 6d 69 63 72 6f 73 6f 66 74 5c 77 69 6e 64 6f 77 73 5c 63 75 72 72 65 6e 74 76 65 72 73 69 6f 6e 5c 65 78 70 6c 6f 72 65 72 5c 62 72 6f 77 73 65 72 20 68 65 6c 70 65 72 20 6f 62 6a 65 63 74 73 } //1 software\microsoft\windows\currentversion\explorer\browser helper objects
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}
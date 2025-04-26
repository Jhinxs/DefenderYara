
rule HackTool_Win32_SAMInside_A{
	meta:
		description = "HackTool:Win32/SAMInside.A,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {53 41 4d 5c 44 6f 6d 61 69 6e 73 5c 41 63 63 6f 75 6e 74 5c 55 73 65 72 73 5c 4e 61 6d 65 73 20 72 65 67 69 73 74 72 79 20 68 69 76 65 20 72 65 61 64 69 6e 67 20 65 72 72 6f 72 21 } //1 SAM\Domains\Account\Users\Names registry hive reading error!
		$a_01_1 = {53 41 4d 5c 44 6f 6d 61 69 6e 73 5c 41 63 63 6f 75 6e 74 20 72 65 67 69 73 74 72 79 20 68 69 76 65 20 72 65 61 64 69 6e 67 20 65 72 72 6f 72 21 } //1 SAM\Domains\Account registry hive reading error!
		$a_01_2 = {49 6e 73 69 64 65 50 72 6f 2c 20 68 74 74 70 3a 2f 2f 77 77 77 2e 49 6e 73 69 64 65 50 72 6f 2e 63 6f 6d } //1 InsidePro, http://www.InsidePro.com
		$a_01_3 = {47 65 74 48 61 73 68 65 73 20 3c 53 41 4d 20 72 65 67 69 73 74 72 79 20 66 69 6c 65 3e 20 5b 53 79 73 74 65 6d 20 6b 65 79 20 66 69 6c 65 5d } //1 GetHashes <SAM registry file> [System key file]
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
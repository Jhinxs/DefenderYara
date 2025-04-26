
rule TrojanProxy_Win32_Delf_R{
	meta:
		description = "TrojanProxy:Win32/Delf.R,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_00_0 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //1 SOFTWARE\Borland\Delphi\RTL
		$a_02_1 = {62 65 62 65 2e 64 6c 6c [0-04] 53 74 61 72 74 48 6f 6f 6b } //1
		$a_00_2 = {53 6f 66 74 77 61 72 65 5c 63 68 75 6e 67 77 61 6e 65 74 } //1 Software\chungwanet
		$a_00_3 = {5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 64 61 74 61 5c 63 68 75 6e 67 77 61 6e 65 74 5c 63 2e 70 6d } //1 \Program Files\Internet Explorer\data\chungwanet\c.pm
		$a_00_4 = {31 2f 6b 65 79 31 2e 64 61 74 } //1 1/key1.dat
		$a_00_5 = {68 74 74 70 47 65 74 43 6f 75 6e 74 } //1 httpGetCount
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=6
 
}
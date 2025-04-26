
rule Trojan_Win32_Kolweb_M{
	meta:
		description = "Trojan:Win32/Kolweb.M,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_00_0 = {59 61 68 6f 6f 53 74 6f 63 6b 5c 78 63 75 72 72 65 6e 74 5c 5f 49 45 42 72 6f 77 73 65 72 48 65 6c 70 65 72 } //1 YahooStock\xcurrent\_IEBrowserHelper
		$a_00_1 = {43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 65 78 70 6c 6f 72 65 72 5c 42 72 6f 77 73 65 72 20 48 65 6c 70 65 72 20 4f 62 6a 65 63 74 73 } //1 CurrentVersion\explorer\Browser Helper Objects
		$a_01_2 = {67 65 74 68 6f 73 74 62 79 61 64 64 72 00 00 00 73 6f 63 6b 65 74 } //1
		$a_00_3 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //1 SOFTWARE\Borland\Delphi\RTL
		$a_00_4 = {33 c0 89 45 fc 8b 45 0c 3d fd 00 00 00 7f 25 0f 84 76 01 00 00 83 e8 66 74 3a 83 e8 0b 74 57 2d 89 00 00 00 74 72 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_01_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}
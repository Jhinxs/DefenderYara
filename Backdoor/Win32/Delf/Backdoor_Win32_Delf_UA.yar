
rule Backdoor_Win32_Delf_UA{
	meta:
		description = "Backdoor:Win32/Delf.UA,SIGNATURE_TYPE_PEHSTR,05 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 00 00 00 ff ff ff ff 17 00 00 00 63 3a 5c 77 69 6e 64 6f 77 73 5c 6d 73 73 79 73 74 65 6d 2e 65 78 65 } //1
		$a_01_1 = {6f 70 65 6e 20 61 64 72 65 73 5f 77 77 77 20 2d } //1 open adres_www -
		$a_01_2 = {74 69 6d 65 73 68 6f 77 2f 74 69 6d 65 68 69 64 65 20 2d 20 70 6f 6b 61 7a 75 6a 65 } //1 timeshow/timehide - pokazuje
		$a_01_3 = {70 75 6c 70 69 74 73 68 6f 77 2f 70 75 6c 70 69 74 68 69 64 65 20 2d } //1 pulpitshow/pulpithide -
		$a_01_4 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //1 SOFTWARE\Borland\Delphi\RTL
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}

rule Trojan_Win32_Fakeqip{
	meta:
		description = "Trojan:Win32/Fakeqip,SIGNATURE_TYPE_PEHSTR,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {53 6f 66 74 77 61 72 65 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 4c 6f 63 61 6c 65 73 } //1 Software\Borland\Delphi\Locales
		$a_01_1 = {57 69 6e 64 6f 77 73 2f 73 79 73 74 65 6d 33 32 2f 73 65 72 76 69 63 2e 65 78 65 } //1 Windows/system32/servic.exe
		$a_01_2 = {73 74 61 72 74 20 57 69 6e 64 6f 77 73 5f 56 69 64 65 6f } //1 start Windows_Video
		$a_01_3 = {73 6d 74 70 2e 72 61 6d 62 6c 65 72 2e 72 75 } //1 smtp.rambler.ru
		$a_01_4 = {00 70 61 73 73 77 6f 72 64 00 } //1 瀀獡睳牯d
		$a_01_5 = {53 6b 69 6e 73 2f 73 65 72 76 69 63 65 2e 65 78 65 } //1 Skins/service.exe
		$a_01_6 = {2f 69 6e 73 74 61 6c 6c 20 2f 73 69 6c 65 6e 74 } //1 /install /silent
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}
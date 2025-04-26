
rule TrojanDownloader_Win32_Zlob_APB{
	meta:
		description = "TrojanDownloader:Win32/Zlob.APB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 "
		
	strings :
		$a_01_0 = {5c 77 69 6c 6c 6f 77 65 72 2e 64 6c 6c } //1 \willower.dll
		$a_01_1 = {53 6f 66 74 77 61 72 65 5c 57 65 62 4d 65 64 69 61 56 69 65 77 65 72 } //1 Software\WebMediaViewer
		$a_01_2 = {7b 46 30 30 45 35 39 46 39 } //1 {F00E59F9
		$a_01_3 = {57 65 62 20 4d 65 64 69 61 20 56 69 65 77 65 72 20 49 6e 73 74 61 6c 6c 65 72 20 61 6c 72 65 61 64 79 20 69 6e 73 74 61 6c 6c 65 64 } //1 Web Media Viewer Installer already installed
		$a_01_4 = {62 69 65 6d 69 6e 74 65 72 6f 73 } //1 bieminteros
		$a_01_5 = {74 68 72 6f 75 67 68 20 6f 75 72 20 76 65 72 73 69 6f 6e 20 63 68 65 63 6b 69 6e 67 2f 75 70 64 61 74 65 20 73 79 73 74 65 6d 2e 20 54 68 65 73 65 20 63 6f 6d 70 6f 6e 65 6e 74 73 20 69 6e 63 6c 75 64 65 3a } //1 through our version checking/update system. These components include:
		$a_01_6 = {28 63 29 20 53 65 63 75 72 69 74 79 20 73 6f 66 74 77 61 72 65 3a 20 41 20 74 68 69 72 64 20 70 61 72 74 79 20 61 6e 74 69 2d 76 69 72 75 73 2f 61 6e 74 69 2d 73 70 79 77 61 72 65 20 61 70 70 6c 69 63 61 74 69 6f 6e 2e } //1 (c) Security software: A third party anti-virus/anti-spyware application.
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=5
 
}
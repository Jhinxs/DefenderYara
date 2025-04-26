
rule TrojanDownloader_Win32_Amhathyari_A{
	meta:
		description = "TrojanDownloader:Win32/Amhathyari.A,SIGNATURE_TYPE_PEHSTR,09 00 09 00 09 00 00 "
		
	strings :
		$a_01_0 = {53 6f 66 74 77 61 72 65 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 4c 6f 63 61 6c 65 73 } //1 Software\Borland\Delphi\Locales
		$a_01_1 = {73 6f 66 74 2e 31 36 39 39 30 2e 63 6f 6d } //1 soft.16990.com
		$a_01_2 = {73 76 63 68 6f 73 74 2e 65 78 65 20 2d 6b 20 6e 65 74 73 76 63 73 } //1 svchost.exe -k netsvcs
		$a_01_3 = {39 36 43 39 33 30 46 44 2d 41 45 39 34 2d 34 32 44 30 2d 42 36 33 38 2d 36 41 46 38 43 30 39 33 30 46 43 45 } //1 96C930FD-AE94-42D0-B638-6AF8C0930FCE
		$a_01_4 = {4b 61 76 53 74 61 72 74 2e 65 78 65 } //1 KavStart.exe
		$a_01_5 = {41 32 34 39 33 32 46 44 2d 42 37 30 37 2d 34 34 46 36 2d 42 41 46 32 2d 46 45 45 44 34 39 39 39 32 45 45 45 } //1 A24932FD-B707-44F6-BAF2-FEED49992EEE
		$a_01_6 = {4d 53 44 4e 53 76 63 2e 64 6c 6c } //1 MSDNSvc.dll
		$a_01_7 = {43 72 65 61 74 65 53 65 72 76 69 63 65 41 } //1 CreateServiceA
		$a_01_8 = {67 65 74 68 6f 73 74 62 79 6e 61 6d 65 } //1 gethostbyname
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=9
 
}
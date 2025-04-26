
rule TrojanDownloader_Win32_Zlob_ZWE{
	meta:
		description = "TrojanDownloader:Win32/Zlob.ZWE,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {64 6f 77 6e 6c 6f 61 64 2e 70 68 70 3f 61 64 76 69 64 3d } //2 download.php?advid=
		$a_01_1 = {57 69 6e 41 6e 74 69 56 69 72 75 73 } //1 WinAntiVirus
		$a_01_2 = {46 49 52 45 46 4f 58 2e 45 58 45 } //1 FIREFOX.EXE
		$a_01_3 = {73 79 73 74 65 6d 64 6f 63 74 6f 72 2e } //1 systemdoctor.
		$a_01_4 = {73 74 6f 70 70 65 72 2e 63 6f 6d } //1 stopper.com
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
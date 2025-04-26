
rule PUA_Win32_InstallCore_R{
	meta:
		description = "PUA:Win32/InstallCore.R,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 09 00 00 "
		
	strings :
		$a_01_0 = {69 72 73 6f 47 65 74 49 6e 73 74 48 6f 73 74 56 65 72 73 69 6f 6e } //1 irsoGetInstHostVersion
		$a_01_1 = {69 72 73 6f 47 65 74 4d 61 69 6e 50 61 63 6b 61 67 65 } //1 irsoGetMainPackage
		$a_01_2 = {69 72 73 6f 53 65 74 43 75 73 74 6f 6d 50 72 6f 67 72 65 73 73 } //1 irsoSetCustomProgress
		$a_01_3 = {69 73 72 6f 53 65 74 49 6e 73 74 61 6c 6c 65 72 4e 61 6d 65 } //1 isroSetInstallerName
		$a_01_4 = {69 72 73 6f 55 6e 69 6e 73 74 61 6c 6c 41 64 64 4f 70 65 6e 42 72 6f 77 73 65 72 43 6d 64 } //1 irsoUninstallAddOpenBrowserCmd
		$a_01_5 = {69 72 73 6f 49 73 43 6f 6d 70 6c 65 74 65 64 } //1 irsoIsCompleted
		$a_01_6 = {69 72 73 6f 43 72 65 61 74 65 49 6e 74 65 72 6e 65 74 53 68 6f 72 74 63 75 74 } //1 irsoCreateInternetShortcut
		$a_01_7 = {69 72 73 6f 47 65 74 43 68 72 6f 6d 65 45 58 45 } //1 irsoGetChromeEXE
		$a_01_8 = {69 72 73 6f 47 65 74 44 6f 77 6e 6c 6f 61 64 65 64 53 69 7a 65 } //1 irsoGetDownloadedSize
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=4
 
}
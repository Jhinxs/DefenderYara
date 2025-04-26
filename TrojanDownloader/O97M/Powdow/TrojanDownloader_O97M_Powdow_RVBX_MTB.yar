
rule TrojanDownloader_O97M_Powdow_RVBX_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.RVBX!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {73 68 65 6c 6c 22 77 73 63 72 69 70 74 22 26 79 26 22 2f 61 2e 76 62 73 22 2c 76 62 6e 6f 72 6d 61 6c 66 6f 63 75 73 65 6e 64 73 75 62 } //1 shell"wscript"&y&"/a.vbs",vbnormalfocusendsub
		$a_01_1 = {62 2e 6f 70 65 6e 22 67 65 74 22 2c 22 68 74 74 70 73 3a 2f 2f 64 63 34 33 38 2e 34 73 79 6e 63 2e 63 6f 6d 2f 64 6f 77 6e 6c 6f 61 64 2f 6f 64 31 33 68 72 75 30 2f 64 6f 6e 65 2e 6a 70 67 3f 64 73 69 64 3d 77 75 74 76 63 34 75 37 2e 37 39 32 30 62 32 31 66 31 } //1 b.open"get","https://dc438.4sync.com/download/od13hru0/done.jpg?dsid=wutvc4u7.7920b21f1
		$a_01_2 = {61 75 74 6f 5f 6f 70 65 6e 28 29 64 69 6d 62 3a 73 65 74 62 3d 63 72 65 61 74 65 6f 62 6a 65 63 74 28 22 6d 69 63 72 6f 73 6f 66 74 2e 78 6d 6c 68 74 74 70 22 29 64 69 6d 63 3a 73 65 74 63 3d 63 72 65 61 74 65 6f 62 6a 65 63 74 28 22 61 64 6f 64 62 2e 73 74 72 65 61 6d 22 29 } //1 auto_open()dimb:setb=createobject("microsoft.xmlhttp")dimc:setc=createobject("adodb.stream")
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule TrojanDownloader_O97M_Powdow_RVBX_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Powdow.RVBX!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {2f 66 61 76 76 76 5f 63 72 79 70 74 65 64 2e 65 78 65 22 22 2d 6f 75 74 66 69 6c 65 24 74 65 6d 70 66 69 6c 65 3b 73 74 61 72 74 2d 70 72 6f 63 65 73 73 24 74 65 6d 70 66 69 6c 65 3b 73 65 74 6d 79 70 6b 6b 68 78 77 6e 6b 3d 63 72 65 61 74 65 6f 62 6a 65 63 74 28 22 77 73 63 72 69 70 74 2e 73 68 65 6c 6c 22 29 73 65 74 6d 79 70 6b 6b 68 78 77 6e 6b 65 78 65 63 3d 6d 79 70 6b 6b 68 78 77 6e 6b 2e 65 78 65 63 28 66 6e 73 78 6d 68 7a 29 65 6e 64 73 75 } //1 /favvv_crypted.exe""-outfile$tempfile;start-process$tempfile;setmypkkhxwnk=createobject("wscript.shell")setmypkkhxwnkexec=mypkkhxwnk.exec(fnsxmhz)endsu
		$a_01_1 = {70 6f 77 65 72 73 68 65 6c 6c 2d 77 69 6e 64 6f 77 73 74 79 6c 65 68 69 64 64 65 6e 2d 65 78 65 63 75 74 69 6f 6e 70 6f 6c 69 63 79 62 79 70 61 73 73 3b 24 74 65 6d 70 66 69 6c 65 3d 5b 69 6f 2e 70 61 74 68 5d 3a 3a 67 65 74 74 65 6d 70 66 69 6c 65 6e 61 6d 65 28 29 7c 72 65 6e 61 6d 65 2d 69 74 65 6d 2d 6e 65 77 6e 61 6d 65 7b 24 5f 2d 72 65 70 6c 61 63 65 27 74 6d 70 24 27 2c 27 65 78 65 27 } //1 powershell-windowstylehidden-executionpolicybypass;$tempfile=[io.path]::gettempfilename()|rename-item-newname{$_-replace'tmp$','exe'
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}
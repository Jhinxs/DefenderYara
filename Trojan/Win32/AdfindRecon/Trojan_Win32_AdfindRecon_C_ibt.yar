
rule Trojan_Win32_AdfindRecon_C_ibt{
	meta:
		description = "Trojan:Win32/AdfindRecon.C!ibt,SIGNATURE_TYPE_CMDHSTR_EXT,0f 00 0f 00 02 00 00 "
		
	strings :
		$a_00_0 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 20 00 61 00 64 00 66 00 69 00 6e 00 64 00 2e 00 65 00 78 00 65 00 } //10 cmd.exe /c adfind.exe
		$a_00_1 = {2d 00 66 00 20 00 6f 00 62 00 6a 00 65 00 63 00 74 00 63 00 61 00 74 00 65 00 67 00 6f 00 72 00 79 00 3d 00 63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 20 00 2d 00 63 00 73 00 76 00 20 00 6e 00 61 00 6d 00 65 00 20 00 63 00 6e 00 20 00 6f 00 70 00 65 00 72 00 61 00 74 00 69 00 6e 00 67 00 73 00 79 00 73 00 74 00 65 00 6d 00 20 00 64 00 6e 00 73 00 68 00 6f 00 73 00 74 00 6e 00 61 00 6d 00 65 00 } //5 -f objectcategory=computer -csv name cn operatingsystem dnshostname
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*5) >=15
 
}
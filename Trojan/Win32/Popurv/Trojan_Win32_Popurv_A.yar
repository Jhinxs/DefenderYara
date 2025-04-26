
rule Trojan_Win32_Popurv_A{
	meta:
		description = "Trojan:Win32/Popurv.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 04 00 00 "
		
	strings :
		$a_01_0 = {53 6f 66 74 77 61 72 65 5c 57 69 6e 53 65 72 76 69 63 65 5c } //1 Software\WinService\
		$a_01_1 = {5c 5c 4d 61 63 5c 48 6f 6d 65 5c 44 65 73 6b 74 6f 70 5c 77 69 6e 73 65 72 76 5c 77 69 6e 73 65 72 76 69 63 65 53 6f 75 72 63 65 73 5c 77 69 6e 73 65 72 76 69 63 65 53 6f 75 72 63 65 73 5c 44 65 62 75 67 5c 55 70 64 61 74 65 72 2e 70 64 62 } //3 \\Mac\Home\Desktop\winserv\winserviceSources\winserviceSources\Debug\Updater.pdb
		$a_01_2 = {53 74 61 72 74 50 6f 70 75 70 20 66 61 69 6c 65 64 2c 20 65 72 72 6f 72 20 63 6f 64 65 20 3d 20 25 64 } //2 StartPopup failed, error code = %d
		$a_01_3 = {50 6f 70 75 70 55 52 4c } //1 PopupURL
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*3+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1) >=7
 
}
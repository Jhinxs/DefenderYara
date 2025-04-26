
rule TrojanDownloader_O97M_Powdow_RVM_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.RVM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {6e 69 72 6d 33 20 3d 20 22 74 22 20 26 20 22 70 3a 2f 2f 64 72 73 63 2e 72 77 2f 66 7a 69 2f 7a 65 72 6f 6f 22 } //1 nirm3 = "t" & "p://drsc.rw/fzi/zeroo"
		$a_01_1 = {6e 69 72 6d 33 20 3d 20 22 74 22 20 26 20 22 70 3a 2f 2f 73 75 73 68 69 65 6d 70 69 72 65 2e 63 6f 6d 2e 61 75 2f 61 64 6d 2f 63 68 69 64 69 22 } //1 nirm3 = "t" & "p://sushiempire.com.au/adm/chidi"
		$a_01_2 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 41 64 22 20 26 20 22 6f 64 22 20 26 20 22 62 2e 53 22 20 26 20 22 74 72 22 20 26 20 22 65 61 22 20 26 20 22 6d 22 29 } //1 CreateObject("Ad" & "od" & "b.S" & "tr" & "ea" & "m")
		$a_01_3 = {78 48 74 74 70 2e 4f 70 65 6e 20 22 47 45 54 22 2c 20 70 6c 70 6c 2c 20 46 61 6c 73 65 0d 0a 78 48 74 74 70 2e 53 65 6e 64 } //1
		$a_01_4 = {53 68 65 6c 6c 20 28 70 72 61 76 65 65 6e 36 29 } //1 Shell (praveen6)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}
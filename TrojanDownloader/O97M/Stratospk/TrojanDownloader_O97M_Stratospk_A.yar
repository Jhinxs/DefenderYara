
rule TrojanDownloader_O97M_Stratospk_A{
	meta:
		description = "TrojanDownloader:O97M/Stratospk.A,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {52 65 70 6c 61 63 65 28 28 22 68 68 68 66 64 61 2e 67 6f 76 2e 70 6b 2f 61 73 73 65 74 73 2f 75 70 6c 6f 61 64 73 2f 47 61 6c 6c 65 72 79 41 6c 62 75 6d 49 6d 61 67 65 73 2f 41 64 6f 62 65 } //1 Replace(("hhhfda.gov.pk/assets/uploads/GalleryAlbumImages/Adobe
		$a_00_1 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 } //1 CreateObject("WScript.Shell")
		$a_00_2 = {52 65 70 6c 61 63 65 28 28 22 61 62 63 62 69 74 73 61 62 63 61 64 6d 69 6e 20 2f 74 72 61 6e 73 61 62 63 66 65 72 20 6d 79 46 61 62 63 69 6c 65 20 2f 64 6f 77 6e 6c 61 62 63 6f 61 64 20 2f 70 72 69 6f 72 61 62 63 69 74 79 20 6e 6f 72 61 62 63 6d 61 6c 20 22 29 2c 20 22 61 62 63 22 2c 20 22 22 29 20 26 20 67 67 67 67 20 26 20 22 20 22 20 26 20 74 72 66 75 74 79 6a 6e 69 68 2c 20 52 65 70 6c 61 63 65 28 22 30 35 30 22 2c 20 22 35 30 22 2c 20 22 22 29 2c 20 52 65 70 6c 61 63 65 28 22 46 61 35 30 6c 73 65 22 2c 20 22 35 30 22 2c 20 22 22 29 } //1 Replace(("abcbitsabcadmin /transabcfer myFabcile /downlabcoad /priorabcity norabcmal "), "abc", "") & gggg & " " & trfutyjnih, Replace("050", "50", ""), Replace("Fa50lse", "50", "")
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1) >=3
 
}
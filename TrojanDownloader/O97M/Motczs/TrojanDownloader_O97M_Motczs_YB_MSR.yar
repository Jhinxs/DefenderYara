
rule TrojanDownloader_O97M_Motczs_YB_MSR{
	meta:
		description = "TrojanDownloader:O97M/Motczs.YB!MSR,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_00_0 = {41 74 74 72 69 62 75 74 65 20 56 42 5f 42 61 73 65 20 3d 20 22 31 4e 6f 72 6d 61 6c 2e 54 68 69 73 44 6f 63 75 6d 65 6e 74 22 } //1 Attribute VB_Base = "1Normal.ThisDocument"
		$a_00_1 = {4d 6f 74 6f 62 69 74 20 53 6f 66 74 77 61 72 65 2c 20 68 74 74 70 3a 2f 2f 4d 6f 74 6f 62 69 74 2e 63 7a } //1 Motobit Software, http://Motobit.cz
		$a_00_2 = {53 65 74 20 6f 62 6a 46 53 4f 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 53 63 72 69 70 74 69 6e 67 2e 46 69 6c 65 53 79 73 74 65 6d 4f 62 6a 65 63 74 22 29 } //1 Set objFSO = CreateObject("Scripting.FileSystemObject")
		$a_00_3 = {61 70 70 44 61 74 61 4c 6f 63 61 74 69 6f 6e 20 3d 20 22 43 3a 5c 70 72 6f 67 72 61 6d 64 61 74 61 5c 4d 69 63 6f 72 73 6f 66 74 5c 22 } //1 appDataLocation = "C:\programdata\Micorsoft\"
		$a_00_4 = {71 75 69 63 6b 5f 6c 61 75 6e 63 68 5f 6c 6f 63 61 74 69 6f 6e 20 3d 20 61 70 70 44 61 74 61 4c 6f 63 61 74 69 6f 6e 20 26 20 22 4d 69 63 72 6f 73 6f 66 74 2e 76 62 73 22 } //1 quick_launch_location = appDataLocation & "Microsoft.vbs"
		$a_00_5 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 2e 52 75 6e 20 71 75 69 63 6b 5f 6c 61 75 6e 63 68 5f 6c 6f 63 61 74 69 6f 6e } //1 CreateObject("WScript.Shell").Run quick_launch_location
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=5
 
}
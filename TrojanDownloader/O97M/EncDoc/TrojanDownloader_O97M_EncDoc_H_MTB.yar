
rule TrojanDownloader_O97M_EncDoc_H_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.H!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 2a 00 00 "
		
	strings :
		$a_01_0 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 4f 63 4b 62 4e 53 72 2e 65 78 65 } //1 C:\ProgramData\OcKbNSr.exe
		$a_01_1 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 4d 49 77 52 48 78 4d 2e 65 78 65 } //1 C:\ProgramData\MIwRHxM.exe
		$a_01_2 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 7a 76 6a 45 75 6c 7a 2e 65 78 65 } //1 C:\ProgramData\zvjEulz.exe
		$a_01_3 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 65 63 57 6f 6c 49 65 2e 64 6c 6c } //1 C:\ProgramData\ecWolIe.dll
		$a_01_4 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 63 73 77 7a 71 51 66 2e 65 78 65 } //1 C:\ProgramData\cswzqQf.exe
		$a_01_5 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 67 66 48 6f 47 72 76 2e 65 78 65 } //1 C:\ProgramData\gfHoGrv.exe
		$a_01_6 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 68 6d 58 51 58 43 50 2e 65 78 65 } //1 C:\ProgramData\hmXQXCP.exe
		$a_01_7 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 6b 66 55 6f 66 57 6b 2e 65 78 65 } //1 C:\ProgramData\kfUofWk.exe
		$a_01_8 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 4b 47 75 50 46 76 4b 2e 65 78 65 } //1 C:\ProgramData\KGuPFvK.exe
		$a_01_9 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 4d 48 76 51 48 78 4c 2e 65 78 65 } //1 C:\ProgramData\MHvQHxL.exe
		$a_01_10 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 68 64 52 6c 63 54 68 2e 65 78 65 } //1 C:\ProgramData\hdRlcTh.exe
		$a_01_11 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 73 6f 64 78 6e 65 73 2e 65 78 65 } //1 C:\ProgramData\sodxnes.exe
		$a_01_12 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 4d 52 43 75 44 67 74 2e 65 78 65 } //1 C:\ProgramData\MRCuDgt.exe
		$a_01_13 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 7a 76 6b 46 75 6c 7a 2e 65 78 65 } //1 C:\ProgramData\zvkFulz.exe
		$a_01_14 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 46 42 70 4b 7a 71 46 2e 65 78 65 } //1 C:\ProgramData\FBpKzqF.exe
		$a_01_15 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 4e 77 76 6a 56 77 54 2e 65 78 65 } //1 C:\ProgramData\NwvjVwT.exe
		$a_01_16 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 6c 68 57 71 68 59 6c 2e 65 78 65 } //1 C:\ProgramData\lhWqhYl.exe
		$a_01_17 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 70 6c 61 75 6b 62 70 2e 65 78 65 } //1 C:\ProgramData\plaukbp.exe
		$a_01_18 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 7a 4f 76 4e 79 44 64 2e 65 78 65 } //1 C:\ProgramData\zOvNyDd.exe
		$a_01_19 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 50 4e 48 5a 57 73 50 2e 65 78 65 } //1 C:\ProgramData\PNHZWsP.exe
		$a_01_20 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 47 43 71 4c 42 72 47 2e 65 78 65 } //1 C:\ProgramData\GCqLBrG.exe
		$a_01_21 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 62 57 4c 66 57 4e 61 2e 65 78 65 } //1 C:\ProgramData\bWLfWNa.exe
		$a_01_22 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 79 75 6a 45 75 6b 79 2e 65 78 65 } //1 C:\ProgramData\yujEuky.exe
		$a_01_23 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 65 61 50 6a 5a 51 65 2e 65 78 65 } //1 C:\ProgramData\eaPjZQe.exe
		$a_01_24 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 5a 56 4b 65 55 4c 5a 2e 65 78 65 } //1 C:\ProgramData\ZVKeULZ.exe
		$a_01_25 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 4d 49 77 52 49 78 4d 2e 65 78 65 } //1 C:\ProgramData\MIwRIxM.exe
		$a_01_26 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 78 45 7a 4d 50 64 7a 2e 65 78 65 } //1 C:\ProgramData\xEzMPdz.exe
		$a_01_27 = {43 3a 5c 76 73 6e 46 44 5a 75 5c 54 5a 56 68 6b 79 56 5c 57 66 70 6b 4f 64 76 2e 65 78 } //1 C:\vsnFDZu\TZVhkyV\WfpkOdv.ex
		$a_01_28 = {43 3a 5c 73 63 62 50 42 63 79 5c 4c 5a 48 59 4b 4f 6f 5c 6a 65 54 6e 65 56 69 2e 65 78 65 } //1 C:\scbPBcy\LZHYKOo\jeTneVi.exe
		$a_01_29 = {43 3a 5c 6f 79 54 68 55 48 68 5c 45 44 66 4e 65 51 55 5c 46 6f 57 59 74 57 61 2e 65 78 65 } //1 C:\oyThUHh\EDfNeQU\FoWYtWa.exe
		$a_01_30 = {43 3a 5c 57 46 46 73 65 47 63 5c 6f 44 6b 43 6e 72 53 5c 4d 49 77 52 49 79 4d 2e 65 78 65 } //1 C:\WFFseGc\oDkCnrS\MIwRIyM.exe
		$a_01_31 = {43 3a 5c 70 75 72 44 47 56 71 5c 72 42 4c 47 6a 79 53 5c 52 50 4a 62 59 75 51 2e 65 78 65 } //1 C:\purDGVq\rBLGjyS\RPJbYuQ.exe
		$a_01_32 = {43 3a 5c 46 6e 6d 61 4d 6e 4b 5c 57 6b 53 6a 57 61 7a 5c 75 70 65 79 70 67 74 2e 65 78 65 } //1 C:\FnmaMnK\WkSjWaz\upeypgt.exe
		$a_01_33 = {43 3a 5c 4b 51 4d 58 61 70 4c 5c 4d 56 66 61 45 54 6d 5c 6c 6a 64 76 73 50 6c 2e 65 78 65 } //1 C:\KQMXapL\MVfaETm\ljdvsPl.exe
		$a_01_34 = {43 3a 5c 73 78 69 62 69 4e 61 5c 5a 70 73 76 6e 4d 62 5c 43 56 50 46 6b 74 74 2e 65 78 65 } //1 C:\sxibiNa\ZpsvnMb\CVPFktt.exe
		$a_01_35 = {43 3a 5c 52 7a 7a 6d 5a 7a 57 5c 6a 78 66 77 69 6d 4d 5c 48 44 72 4d 43 73 48 2e 65 78 65 } //1 C:\RzzmZzW\jxfwimM\HDrMCsH.exe
		$a_01_36 = {43 3a 5c 44 6d 6c 5a 4c 6d 4a 5c 56 6a 52 69 55 59 79 5c 74 6f 64 78 6f 66 73 2e 65 78 65 } //1 C:\DmlZLmJ\VjRiUYy\todxofs.exe
		$a_01_37 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 6b 67 56 70 66 57 6b 2e 65 78 65 } //1 C:\ProgramData\kgVpfWk.exe
		$a_01_38 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //1 URLDownloadToFileA
		$a_01_39 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //1 ShellExecuteA
		$a_01_40 = {55 52 4c 4d 4f 4e } //1 URLMON
		$a_01_41 = {4b 65 72 6e 65 6c 33 32 } //1 Kernel32
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1+(#a_01_17  & 1)*1+(#a_01_18  & 1)*1+(#a_01_19  & 1)*1+(#a_01_20  & 1)*1+(#a_01_21  & 1)*1+(#a_01_22  & 1)*1+(#a_01_23  & 1)*1+(#a_01_24  & 1)*1+(#a_01_25  & 1)*1+(#a_01_26  & 1)*1+(#a_01_27  & 1)*1+(#a_01_28  & 1)*1+(#a_01_29  & 1)*1+(#a_01_30  & 1)*1+(#a_01_31  & 1)*1+(#a_01_32  & 1)*1+(#a_01_33  & 1)*1+(#a_01_34  & 1)*1+(#a_01_35  & 1)*1+(#a_01_36  & 1)*1+(#a_01_37  & 1)*1+(#a_01_38  & 1)*1+(#a_01_39  & 1)*1+(#a_01_40  & 1)*1+(#a_01_41  & 1)*1) >=5
 
}
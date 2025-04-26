
rule TrojanDownloader_O97M_Ursnif_ENC_MTB{
	meta:
		description = "TrojanDownloader:O97M/Ursnif.ENC!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 11 00 00 "
		
	strings :
		$a_01_0 = {43 3a 5c 7a 4b 66 73 67 53 74 5c 51 50 71 59 70 62 66 5c 51 7a 69 6b 46 68 6d 2e 65 78 65 } //1 C:\zKfsgSt\QPqYpbf\QzikFhm.exe
		$a_01_1 = {43 3a 5c 6b 54 54 47 73 55 71 5c 44 52 79 51 43 47 66 5c 61 57 4c 66 56 4d 61 2e 65 78 65 } //1 C:\kTTGsUq\DRyQCGf\aWLfVMa.exe
		$a_01_2 = {43 3a 5c 48 70 70 63 50 71 4e 5c 5a 6e 56 6d 59 63 44 5c 77 73 68 43 73 69 77 2e 65 78 65 } //1 C:\HppcPqN\ZnVmYcD\wshCsiw.exe
		$a_01_3 = {43 3a 5c 45 6e 6d 61 4d 6e 4b 5c 57 6b 53 6a 56 5a 7a 5c 75 70 65 79 70 67 74 2e 65 78 65 } //1 C:\EnmaMnK\WkSjVZz\upeypgt.exe
		$a_01_4 = {43 3a 5c 69 68 6d 4a 51 58 43 5c 50 4f 65 68 6b 63 42 5c 57 71 76 45 74 5a 69 2e 65 78 65 } //1 C:\ihmJQXC\POehkcB\WqvEtZi.exe
		$a_01_5 = {43 3a 5c 52 70 69 65 70 48 56 5c 71 65 6f 4d 48 6b 6c 5c 65 45 50 4a 62 59 76 2e 65 78 65 } //1 C:\RpiepHV\qeoMHkl\eEPJbYv.exe
		$a_01_6 = {43 3a 5c 79 78 44 61 67 6e 53 5c 66 65 75 78 42 73 52 5c 6d 48 4d 55 4b 70 79 2e 65 78 65 } //1 C:\yxDagnS\feuxBsR\mHMUKpy.exe
		$a_01_7 = {43 3a 5c 70 5a 6b 71 6d 78 50 5c 64 6c 6d 76 55 50 72 5c 4d 6c 4d 58 52 6a 54 2e 65 78 65 } //1 C:\pZkqmxP\dlmvUPr\MlMXRjT.exe
		$a_01_8 = {43 3a 5c 56 4d 61 6b 54 53 47 5c 47 68 70 43 65 78 64 5c 69 4c 70 6e 57 4b 65 2e 65 78 65 } //1 C:\VMakTSG\GhpCexd\iLpnWKe.exe
		$a_01_9 = {43 3a 5c 4c 74 74 67 54 74 51 5c 64 72 59 71 63 67 47 5c 42 77 6b 47 76 6d 42 2e 65 78 65 } //1 C:\LttgTtQ\drYqcgG\BwkGvmB.exe
		$a_01_10 = {43 3a 5c 4c 51 4e 59 62 71 4d 5c 4e 57 67 62 46 55 6e 5c 6d 6b 65 77 74 51 6d 2e 65 78 65 } //1 C:\LQNYbqM\NWgbFUn\mkewtQm.exe
		$a_01_11 = {43 3a 5c 70 59 59 4c 78 5a 76 5c 49 57 45 56 48 4c 6c 5c 66 62 51 6b 61 52 66 2e 65 78 65 } //1 C:\pYYLxZv\IWEVHLl\fbQkaRf.exe
		$a_01_12 = {43 3a 5c 59 6d 69 52 66 45 46 5c 66 6f 42 64 77 62 7a 5c 4b 43 6d 55 57 72 55 2e 65 78 65 } //1 C:\YmiRfEF\foBdwbz\KCmUWrU.exe
		$a_01_13 = {72 75 6e 64 6c 6c 33 32 2e 65 78 65 } //1 rundll32.exe
		$a_01_14 = {53 68 65 6c 6c 33 32 } //1 Shell32
		$a_01_15 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //1 ShellExecuteA
		$a_01_16 = {43 72 65 61 74 65 44 69 72 65 63 74 6f 72 79 41 } //1 CreateDirectoryA
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1) >=5
 
}
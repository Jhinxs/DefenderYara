
rule Backdoor_Win64_GoDropper_A{
	meta:
		description = "Backdoor:Win64/GoDropper.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {67 69 74 68 75 62 2e 63 6f 6d 2f 50 72 6f 74 6f 6e 4d 61 69 6c 2f 67 6f 70 65 6e 70 67 70 } //1 github.com/ProtonMail/gopenpgp
		$a_01_1 = {6d 61 69 6e 2e 43 6f 70 79 42 69 6e 61 72 79 } //1 main.CopyBinary
		$a_01_2 = {6d 61 69 6e 2e 47 65 74 42 69 6e 53 74 6f 72 65 52 6f 6f 74 } //1 main.GetBinStoreRoot
		$a_01_3 = {73 43 48 74 41 73 6b 73 2e 65 78 65 } //1 sCHtAsks.exe
		$a_01_4 = {2f 71 75 65 72 79 } //1 /query
		$a_01_5 = {6d 61 69 6e 2e 43 68 65 63 6b 50 65 72 73 69 73 74 65 6e 63 65 } //1 main.CheckPersistence
		$a_01_6 = {67 6f 6f 73 } //1 goos
		$a_01_7 = {6d 61 69 6e 2e 47 65 74 42 69 6e 53 74 6f 72 65 55 73 65 72 } //1 main.GetBinStoreUser
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}
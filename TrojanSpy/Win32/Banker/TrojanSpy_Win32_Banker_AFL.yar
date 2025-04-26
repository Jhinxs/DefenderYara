
rule TrojanSpy_Win32_Banker_AFL{
	meta:
		description = "TrojanSpy:Win32/Banker.AFL,SIGNATURE_TYPE_PEHSTR_EXT,ffffffdc 00 ffffff8c 00 05 00 00 "
		
	strings :
		$a_01_0 = {51 37 48 71 53 37 43 77 42 6f 7a 58 4f 73 44 6c 54 4d 76 71 53 6f 76 64 52 73 7a 64 52 36 4b 6b 4f 73 7a 6a 42 72 44 62 53 64 50 66 4f 73 4c 43 52 73 54 66 52 5a 7a 70 50 4e 39 73 51 4d 44 62 46 47 } //100 Q7HqS7CwBozXOsDlTMvqSovdRszdR6KkOszjBrDbSdPfOsLCRsTfRZzpPN9sQMDbFG
		$a_01_1 = {4a 4d 7a 77 51 4d 6e 69 4f 49 79 72 42 5a 30 57 41 35 54 66 52 63 48 6c 54 74 43 78 38 35 4b 78 38 34 72 4a 49 4b 4b 57 45 49 75 6d 45 6f 31 4e 49 4d 76 61 52 74 54 70 38 34 76 4b 38 33 61 6b 43 33 69 57 50 4d 75 6a 4c 4c 43 66 41 47 } //100 JMzwQMniOIyrBZ0WA5TfRcHlTtCx85Kx84rJIKKWEIumEo1NIMvaRtTp84vK83akC3iWPMujLLCfAG
		$a_01_2 = {46 00 52 00 4f 00 4d 00 20 00 4f 00 52 00 4b 00 4f 00 52 00 4b 00 20 00 57 00 48 00 45 00 52 00 45 00 20 00 43 00 4e 00 54 00 20 00 3d 00 20 00 31 00 } //20 FROM ORKORK WHERE CNT = 1
		$a_01_3 = {4b 36 35 70 53 74 54 61 } //20 K65pStTa
		$a_01_4 = {53 73 62 64 52 61 62 6b } //20 SsbdRabk
	condition:
		((#a_01_0  & 1)*100+(#a_01_1  & 1)*100+(#a_01_2  & 1)*20+(#a_01_3  & 1)*20+(#a_01_4  & 1)*20) >=140
 
}
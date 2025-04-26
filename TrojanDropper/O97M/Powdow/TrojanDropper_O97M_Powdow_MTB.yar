
rule TrojanDropper_O97M_Powdow_MTB{
	meta:
		description = "TrojanDropper:O97M/Powdow!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {46 69 6e 65 72 74 20 3d 20 52 65 70 6c 61 63 65 28 52 6f 6f 6c 67 2c 20 22 2e 6f 6f 6f 22 2c 20 22 2e 22 20 26 20 4f 69 6c 6f 70 20 26 20 22 6a 22 20 26 20 4f 69 6c 6f 70 20 26 20 22 73 65 22 29 } //1 Finert = Replace(Roolg, ".ooo", "." & Oilop & "j" & Oilop & "se")
		$a_01_1 = {43 61 6c 6c 42 79 4e 61 6d 65 20 4e 65 64 6f 63 6f 72 65 28 77 64 57 6f 72 64 39 54 61 62 6c 65 42 65 68 61 76 69 6f 72 2c 20 4e 69 62 63 76 20 26 20 22 72 69 22 20 26 20 4f 69 6c 6f 70 20 26 20 22 70 74 2e 22 20 26 20 44 6f 65 72 76 63 29 2c 20 52 64 61 7a 7a 6f 6b 2c 20 } //1 CallByName Nedocore(wdWord9TableBehavior, Nibcv & "ri" & Oilop & "pt." & Doervc), Rdazzok, 
		$a_01_2 = {56 62 4d 65 74 68 6f 64 2c 20 22 22 22 22 20 26 20 46 69 6e 65 72 74 20 26 20 22 22 22 22 20 26 20 22 20 22 20 26 20 22 5f 5f 5f 5f 5f 5f 22 20 26 20 77 64 57 6f 72 64 39 54 61 62 6c 65 42 65 68 61 76 69 6f 72 2c 20 31 } //1 VbMethod, """" & Finert & """" & " " & "______" & wdWord9TableBehavior, 1
		$a_01_3 = {3d 20 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 43 6f 6e 74 65 6e 74 2e 54 65 78 74 } //1 = ActiveDocument.Content.Text
		$a_03_4 = {50 75 74 20 23 [0-08] 2c } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*1) >=5
 
}
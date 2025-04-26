
rule TrojanDownloader_O97M_Dridex_TOS_MTB{
	meta:
		description = "TrojanDownloader:O97M/Dridex.TOS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {53 68 65 65 74 73 28 6a 6a 29 2e 43 65 6c 6c 73 28 73 6f 6d 65 74 69 6d 65 2c 20 6a 6a 29 2e 4e 61 6d 65 20 3d 20 76 6f 6c 74 41 6d 72 70 20 26 20 22 6f 6b 22 3a } //1 Sheets(jj).Cells(sometime, jj).Name = voltAmrp & "ok":
		$a_01_1 = {6a 6f 20 3d 20 39 3a 20 73 64 65 20 3d 20 53 70 6c 69 74 28 79 79 2c 20 22 21 22 29 3a 20 41 64 61 20 3d 20 53 70 6c 69 74 28 73 64 65 28 6a 6a 29 2c 20 68 69 6f 28 73 6f 6d 65 74 69 6d 65 29 29 } //1 jo = 9: sde = Split(yy, "!"): Ada = Split(sde(jj), hio(sometime))
		$a_01_2 = {53 68 65 65 74 73 28 6a 6a 29 2e 43 65 6c 6c 73 28 73 6f 6d 65 74 69 6d 65 2c 20 6a 6a 29 2e 76 61 6c 75 65 20 3d 20 22 3d 22 20 26 20 52 65 70 6c 61 63 65 28 56 6f 2c 20 22 3f 22 2c 20 6e 6f 74 6d 61 6c 44 64 6f 74 28 53 70 6c 69 74 28 73 64 65 28 30 29 2c 20 68 69 6f 28 6a 6f 29 29 29 29 } //1 Sheets(jj).Cells(sometime, jj).value = "=" & Replace(Vo, "?", notmalDdot(Split(sde(0), hio(jo))))
		$a_01_3 = {4f 6e 20 45 72 72 6f 72 20 52 65 73 75 6d 65 20 4e 65 78 74 3a 20 4d 73 67 42 6f 78 20 28 52 75 6e 28 22 22 20 2b 20 76 6f 6c 74 41 6d 72 70 20 26 20 22 6f 6b 22 29 29 } //1 On Error Resume Next: MsgBox (Run("" + voltAmrp & "ok"))
		$a_01_4 = {6e 6f 74 6d 61 6c 44 64 6f 74 20 3d 20 63 63 28 49 6e 74 28 28 55 42 6f 75 6e 64 28 63 63 29 20 2b 20 6d 63 29 20 2a 20 52 6e 64 29 29 } //1 notmalDdot = cc(Int((UBound(cc) + mc) * Rnd))
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
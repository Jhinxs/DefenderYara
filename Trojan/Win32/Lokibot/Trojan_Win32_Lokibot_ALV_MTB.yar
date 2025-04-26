
rule Trojan_Win32_Lokibot_ALV_MTB{
	meta:
		description = "Trojan:Win32/Lokibot.ALV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 14 00 00 "
		
	strings :
		$a_81_0 = {76 76 4f 57 6b 4d 6a 35 47 38 55 52 57 51 32 48 6e 68 70 } //1 vvOWkMj5G8URWQ2Hnhp
		$a_81_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_81_2 = {47 65 74 52 65 73 6f 75 72 63 65 53 74 72 69 6e 67 } //1 GetResourceString
		$a_81_3 = {48 69 64 65 4d 6f 64 75 6c 65 4e 61 6d 65 41 74 74 72 69 62 75 74 65 } //1 HideModuleNameAttribute
		$a_81_4 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //1 DebuggerHiddenAttribute
		$a_81_5 = {52 65 64 43 72 6f 73 73 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //1 RedCross.My.Resources
		$a_81_6 = {52 65 64 43 72 6f 73 73 2e 6c 6f 67 69 6e 31 2e 72 65 73 6f 75 72 63 65 73 } //1 RedCross.login1.resources
		$a_81_7 = {52 65 64 43 72 6f 73 73 2e 76 69 65 77 41 43 54 2e 72 65 73 6f 75 72 63 65 73 } //1 RedCross.viewACT.resources
		$a_81_8 = {52 65 64 43 72 6f 73 73 2e 6d 61 69 6e 66 72 6d 2e 72 65 73 6f 75 72 63 65 73 } //1 RedCross.mainfrm.resources
		$a_81_9 = {52 65 64 43 72 6f 73 73 2e 76 69 65 77 73 74 64 69 6e 66 6f 2e 72 65 73 6f 75 72 63 65 73 } //1 RedCross.viewstdinfo.resources
		$a_81_10 = {52 65 64 43 72 6f 73 73 2e 49 43 6f 6d 70 65 72 65 72 2e 72 65 73 6f 75 72 63 65 73 } //1 RedCross.IComperer.resources
		$a_81_11 = {52 65 64 43 72 6f 73 73 2e 76 69 65 77 64 6e 72 2e 72 65 73 6f 75 72 63 65 73 } //1 RedCross.viewdnr.resources
		$a_81_12 = {52 65 64 43 72 6f 73 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //1 RedCross.Resources.resources
		$a_81_13 = {52 65 64 43 72 6f 73 73 2e 61 63 74 69 76 69 74 69 65 73 2e 72 65 73 6f 75 72 63 65 73 } //1 RedCross.activities.resources
		$a_81_14 = {52 65 64 43 72 6f 73 73 2e 76 69 65 77 4d 72 6b 73 2e 72 65 73 6f 75 72 63 65 73 } //1 RedCross.viewMrks.resources
		$a_81_15 = {52 65 64 43 72 6f 73 73 2e 6d 61 72 6b 73 2e 72 65 73 6f 75 72 63 65 73 } //1 RedCross.marks.resources
		$a_81_16 = {52 65 64 43 72 6f 73 73 2e 73 74 64 44 65 74 61 69 6c 73 2e 72 65 73 6f 75 72 63 65 73 } //1 RedCross.stdDetails.resources
		$a_81_17 = {52 65 64 43 72 6f 73 73 2e 64 6e 72 64 65 74 61 69 6c 73 2e 72 65 73 6f 75 72 63 65 73 } //1 RedCross.dnrdetails.resources
		$a_81_18 = {24 42 33 45 30 36 46 34 44 2d 38 44 41 33 2d 34 31 42 41 2d 41 43 44 46 2d 36 46 41 33 34 30 38 41 31 44 46 31 } //1 $B3E06F4D-8DA3-41BA-ACDF-6FA3408A1DF1
		$a_01_19 = {57 00 49 00 4c 00 4c 00 53 00 4f 00 4e 00 20 00 26 00 20 00 42 00 52 00 4f 00 57 00 4e 00 20 00 2d 00 20 00 57 00 42 00 20 00 53 00 70 00 2e 00 20 00 7a 00 20 00 6f 00 2e 00 6f 00 2e 00 20 00 53 00 70 00 2e 00 20 00 6b 00 2e 00 } //1 WILLSON & BROWN - WB Sp. z o.o. Sp. k.
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1+(#a_81_12  & 1)*1+(#a_81_13  & 1)*1+(#a_81_14  & 1)*1+(#a_81_15  & 1)*1+(#a_81_16  & 1)*1+(#a_81_17  & 1)*1+(#a_81_18  & 1)*1+(#a_01_19  & 1)*1) >=20
 
}
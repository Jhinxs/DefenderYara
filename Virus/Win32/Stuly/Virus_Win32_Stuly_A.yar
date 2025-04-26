
rule Virus_Win32_Stuly_A{
	meta:
		description = "Virus:Win32/Stuly.A,SIGNATURE_TYPE_PEHSTR,14 00 14 00 0b 00 00 "
		
	strings :
		$a_01_0 = {53 65 74 20 69 77 77 4d 64 47 6e 3d 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 4f 75 74 6c 6f 6f 6b 2e 41 70 70 6c 69 63 61 74 69 6f 6e 22 29 } //1 Set iwwMdGn=CreateObject("Outlook.Application")
		$a_01_1 = {46 6f 72 20 44 54 4a 46 6e 53 57 3d 31 20 54 6f 20 31 35 39 30 } //1 For DTJFnSW=1 To 1590
		$a_01_2 = {53 65 74 20 53 70 4e 61 41 6d 6e 3d 69 77 77 4d 64 47 6e 2e 43 72 65 61 74 65 49 74 65 6d 28 30 29 } //1 Set SpNaAmn=iwwMdGn.CreateItem(0)
		$a_01_3 = {53 70 4e 61 41 6d 6e 2e 42 6f 64 79 20 3d 20 22 43 68 65 63 6b 20 74 68 69 73 20 6f 75 74 20 61 6e 64 20 74 65 6c 6c 20 6d 65 20 77 68 61 74 20 79 6f 75 20 74 68 69 6e 6b 21 20 49 20 74 68 69 6e 6b 20 69 74 27 73 20 67 72 65 61 74 21 22 20 26 20 76 62 63 72 6c 66 20 26 20 22 22 53 70 4e 61 41 6d 6e 2e 44 65 6c 65 74 65 41 66 74 65 72 53 75 62 6d 69 74 20 3d 20 54 72 75 65 } //1 SpNaAmn.Body = "Check this out and tell me what you think! I think it's great!" & vbcrlf & ""SpNaAmn.DeleteAfterSubmit = True
		$a_01_4 = {53 70 4e 61 41 6d 6e 2e 41 74 74 61 63 68 6d 65 6e 74 73 2e 41 64 64 28 22 43 3a 5c 73 6c 75 74 74 79 31 39 2e 61 76 69 2e 65 78 65 22 29 } //1 SpNaAmn.Attachments.Add("C:\slutty19.avi.exe")
		$a_01_5 = {53 70 4e 61 41 6d 6e 2e 53 75 62 6a 65 63 74 20 3d 20 22 54 68 69 73 20 69 73 20 61 20 6d 75 73 74 20 73 65 65 21 22 } //1 SpNaAmn.Subject = "This is a must see!"
		$a_01_6 = {53 70 4e 61 41 6d 6e 2e 54 6f 20 3d 20 69 77 77 4d 64 47 6e 2e 47 65 74 4e 61 6d 65 53 70 61 63 65 28 22 4d 41 50 49 22 29 2e 41 64 64 72 65 73 73 4c 69 73 74 73 28 31 29 2e 41 64 64 72 65 73 73 45 6e 74 72 69 65 73 28 58 29 } //1 SpNaAmn.To = iwwMdGn.GetNameSpace("MAPI").AddressLists(1).AddressEntries(X)
		$a_01_7 = {53 70 4e 61 41 6d 6e 2e 53 65 6e 64 } //1 SpNaAmn.Send
		$a_01_8 = {69 77 77 4d 64 47 6e 2e 51 75 69 74 } //1 iwwMdGn.Quit
		$a_01_9 = {43 3a 5c 6e 78 4f 75 45 4b 76 4e 4f 2e 76 62 73 } //1 C:\nxOuEKvNO.vbs
		$a_01_10 = {e8 f2 01 00 00 40 74 18 e8 f7 07 00 00 83 bd 6f 39 45 00 00 76 0a e8 02 02 00 00 83 f8 00 75 e8 33 f6 03 b5 b7 3c 45 00 56 ff 95 f3 37 45 00 c3 e8 3a 03 00 00 ff a0 d2 37 45 00 e8 3c 03 00 00 ff a0 c6 37 45 00 e8 31 03 00 00 ff a0 ae 37 45 00 e8 26 03 00 00 ff a0 ba 37 45 00 e8 1b 03 00 00 ff a0 a2 37 45 00 60 66 c7 85 6e 3c 45 00 00 00 bb 09 1b ff ff 81 c3 f7 e4 00 00 03 9d 3f 3b 45 00 bf 00 00 00 00 03 7b 78 03 bd 70 3c 45 00 47 83 c7 1b 8b 1f 83 c7 04 03 9d 70 3c 45 00 89 9d 53 3b 45 00 8b 1f 03 9d 70 3c 45 00 83 c7 04 89 9d 17 38 45 00 8b 1f 03 9d 70 3c 45 00 89 9d 4b 3b 45 00 ba ff ff ff ff 23 95 17 38 45 00 c7 85 47 3b 45 00 00 00 00 00 } //10
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*10) >=20
 
}
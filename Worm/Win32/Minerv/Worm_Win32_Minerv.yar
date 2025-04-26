
rule Worm_Win32_Minerv{
	meta:
		description = "Worm:Win32/Minerv,SIGNATURE_TYPE_PEHSTR_EXT,39 00 37 00 12 00 00 "
		
	strings :
		$a_00_0 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 73 79 73 74 65 6d 33 32 5c 4d 69 6e 65 72 76 61 2e 65 78 65 } //10 C:\WINDOWS\system32\Minerva.exe
		$a_00_1 = {5c 53 74 61 72 74 20 4d 65 6e 75 5c 50 72 6f 67 72 61 6d 73 5c 53 74 61 72 74 75 70 5c 6d 69 6e 65 72 76 61 2e 63 6f 6d } //10 \Start Menu\Programs\Startup\minerva.com
		$a_01_2 = {43 72 65 61 74 65 52 65 6d 6f 74 65 54 68 72 65 61 64 } //10 CreateRemoteThread
		$a_01_3 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //10 WriteProcessMemory
		$a_01_4 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //10 CreateToolhelp32Snapshot
		$a_00_5 = {5c 4f 70 74 69 63 61 6c 2e 65 78 65 } //1 \Optical.exe
		$a_00_6 = {5c 48 69 70 6f 74 61 6c 61 6d 75 73 2e 64 6c 6c } //1 \Hipotalamus.dll
		$a_00_7 = {5c 4e 65 77 20 47 61 6d 65 2e 65 78 65 } //1 \New Game.exe
		$a_00_8 = {5c 4d 69 6e 65 72 76 61 20 47 61 6d 65 2e 65 78 65 } //1 \Minerva Game.exe
		$a_00_9 = {5c 49 6e 6a 65 63 74 43 61 6c 63 2e 65 78 65 } //1 \InjectCalc.exe
		$a_00_10 = {5c 49 6e 6a 65 63 74 4d 73 63 6f 6e 66 69 67 2e 65 78 65 } //1 \InjectMsconfig.exe
		$a_00_11 = {5c 49 6e 6a 65 63 74 52 65 67 65 64 69 74 2e 65 78 65 } //1 \InjectRegedit.exe
		$a_00_12 = {5c 49 6e 6a 65 63 74 54 61 73 6b 6d 61 6e 2e 65 78 65 } //1 \InjectTaskman.exe
		$a_00_13 = {5c 53 6f 6e 67 4f 66 4d 65 6d 6f 72 79 2e 6d 69 64 } //1 \SongOfMemory.mid
		$a_00_14 = {5c 45 79 65 73 4f 6e 4d 65 2e 6d 69 64 } //1 \EyesOnMe.mid
		$a_00_15 = {5c 4c 6f 73 73 5f 6f 66 5f 4d 65 2e 6d 69 64 } //1 \Loss_of_Me.mid
		$a_00_16 = {5c 56 69 63 74 6f 72 79 2e 6d 69 64 } //1 \Victory.mid
		$a_00_17 = {4c 49 42 47 43 43 57 33 32 2d 45 48 2d 32 2d 53 4a 4c 4a 2d 47 54 48 52 2d 4d 49 4e 47 57 33 32 } //1 LIBGCCW32-EH-2-SJLJ-GTHR-MINGW32
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*10+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1+(#a_00_11  & 1)*1+(#a_00_12  & 1)*1+(#a_00_13  & 1)*1+(#a_00_14  & 1)*1+(#a_00_15  & 1)*1+(#a_00_16  & 1)*1+(#a_00_17  & 1)*1) >=55
 
}
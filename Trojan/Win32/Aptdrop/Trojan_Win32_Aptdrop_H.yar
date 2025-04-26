
rule Trojan_Win32_Aptdrop_H{
	meta:
		description = "Trojan:Win32/Aptdrop.H,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {50 69 6e 67 20 31 32 37 2e 30 2e 30 2e 31 20 2d 34 35 39 42 32 2d 33 33 31 31 2d 35 34 43 33 2d 20 50 72 6f 63 65 73 73 69 64 3a 7b 30 41 31 30 20 2f 50 72 6f 63 65 73 73 69 64 3a 7b 37 31 32 43 32 34 35 2d 32 31 39 30 2d 37 32 31 35 2d 41 33 43 35 2d 34 33 32 31 35 39 32 36 37 31 36 41 73 6f 66 74 77 61 72 65 5c 49 6e 74 65 6c 5c 4a 69 63 61 63 6c 73 20 22 25 73 22 20 2f 67 72 61 66 74 5c 77 69 6e 64 6f 77 73 5c 63 75 72 72 65 4e 74 51 75 65 72 79 49 6e 66 6f 72 6d 61 74 69 49 6e 74 65 6c 47 72 61 70 68 69 63 73 43 6f 6e 73 6f 66 74 77 61 72 65 } //1 Ping 127.0.0.1 -459B2-3311-54C3- Processid:{0A10 /Processid:{712C245-2190-7215-A3C5-43215926716Asoftware\Intel\Jicacls "%s" /graft\windows\curreNtQueryInformatiIntelGraphicsConsoftware
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
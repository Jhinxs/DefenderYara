
rule TrojanDownloader_O97M_EncDoc_PAZ_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.PAZ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {6d 3d 6f 2e 63 72 65 61 74 65 6f 62 6a 65 63 74 28 6e 64 6a 6b 6f 6f 75 72 63 28 22 27 27 64 78 39 31 22 2c 22 71 74 6d 75 70 77 30 76 6c 22 29 29 73 65 74 73 3d 6d 2e 65 78 65 63 28 6e 64 6a 6b 6f 6f 75 72 63 28 } //1 m=o.createobject(ndjkoourc("''dx91","qtmupw0vl"))sets=m.exec(ndjkoourc(
		$a_01_1 = {6e 64 6a 6b 6f 6f 75 72 63 26 63 68 72 28 61 73 63 28 6d 69 64 28 61 74 6d 6a 72 36 65 63 36 2c 69 69 66 28 75 34 78 67 67 6d 38 35 6d 6d 6f 64 6c 65 6e 28 61 74 6d 6a 72 36 65 63 36 29 3c 3e 30 2c 75 34 78 67 67 6d 38 35 6d 6d 6f 64 6c 65 6e 28 61 74 6d 6a 72 36 65 63 36 29 2c 6c 65 6e 28 61 74 6d 6a 72 36 65 63 36 29 29 2c 31 29 29 78 6f 72 61 73 63 28 6d 69 64 28 71 6f 72 37 33 6b 70 77 65 2c 75 34 78 67 67 6d 38 35 6d 2c 31 29 29 29 } //1 ndjkoourc&chr(asc(mid(atmjr6ec6,iif(u4xggm85mmodlen(atmjr6ec6)<>0,u4xggm85mmodlen(atmjr6ec6),len(atmjr6ec6)),1))xorasc(mid(qor73kpwe,u4xggm85m,1)))
		$a_01_2 = {3c 32 30 64 6f 65 76 65 6e 74 73 3a 6c 6c 61 71 71 6a 67 63 7a 78 64 7a 6b 6f 64 79 61 73 6e 72 68 61 75 6e 68 78 64 6d 6d 6b 70 62 74 62 3d 6c 6c 61 71 71 6a 67 63 7a 78 64 7a 6b 6f 64 79 61 73 6e 72 68 61 75 6e 68 78 64 6d 6d 6b 70 62 74 62 2b 31 6c 6f 6f 70 67 6f 74 6f 63 6e 68 7a 77 74 70 } //1 <20doevents:llaqqjgczxdzkodyasnrhaunhxdmmkpbtb=llaqqjgczxdzkodyasnrhaunhxdmmkpbtb+1loopgotocnhzwtp
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
#!/bin/bash

echo Revision        Release Date    Model   PCB Revision    Memory  Notes
MODELNUM=`cat /proc/cpuinfo | grep 'Revision' | awk '{print $3}' | sed 's/^1000//'`
echo `grep $MODELNUM $0`
MODELS='
Revision	Release Date	Model	PCB Revision	Memory	Notes
Beta	Q1 2012	B (Beta)	 ?	256 MB	Beta Board
0002	Q1 2012	B	1.0	256 MB	
0003	Q3 2012	B (ECN0001)	1.0	256 MB	Fuses mod and D14 removed
0004	Q3 2012	B	2.0	256 MB	(Mfg by Sony)
0005	Q4 2012	B	2.0	256 MB	(Mfg by Qisda)
0006	Q4 2012	B	2.0	256 MB	(Mfg by Egoman)
0007	Q1 2013	A	2.0	256 MB	(Mfg by Egoman)
0008	Q1 2013	A	2.0	256 MB	(Mfg by Sony)
0009	Q1 2013	A	2.0	256 MB	(Mfg by Qisda)
000d	Q4 2012	B	2.0	512 MB	(Mfg by Egoman)
000e	Q4 2012	B	2.0	512 MB	(Mfg by Sony)
000f	Q4 2012	B	2.0	512 MB	(Mfg by Qisda)
0010	Q3 2014	B+	1.0	512 MB	(Mfg by Sony)
0011	Q2 2014	Compute Module 1	1.0	512 MB	(Mfg by Sony)
0012	Q4 2014	A+	1.1	256 MB	(Mfg by Sony)
0013	Q1 2015	B+	1.2	512 MB	 ?
0014	Q2 2014	Compute Module 1	1.0	512 MB	(Mfg by Embest)
0015	 ?	A+	1.1	256 MB / 512 MB	(Mfg by Embest)
a01040	Unknown	2 Model B	1.0	1 GB	(Mfg by Sony)
a01041	Q1 2015	2 Model B	1.1	1 GB	(Mfg by Sony)
a21041	Q1 2015	2 Model B	1.1	1 GB	(Mfg by Embest)
a22042	Q3 2016	2 Model B (with BCM2837)	1.2	1 GB	(Mfg by Embest)
900021	Q3 2016	A+	1.1	512 MB	(Mfg by Sony)
900032	Q2 2016?	B+	1.2	512 MB	(Mfg by Sony)
900092	Q4 2015	Zero	1.2	512 MB	(Mfg by Sony)
900093	Q2 2016	Zero	1.3	512 MB	(Mfg by Sony)
920093	Q4 2016?	Zero	1.3	512 MB	(Mfg by Embest)
9000c1	Q1 2017	Zero W	1.1	512 MB	(Mfg by Sony)
a02082	Q1 2016	3 Model B	1.2	1 GB	(Mfg by Sony)
a020a0	Q1 2017	Compute Module 3 (and CM3 Lite)	1.0	1 GB	(Mfg by Sony)
a22082	Q1 2016	3 Model B	1.2	1 GB	(Mfg by Embest)
a32082	Q4 2016	3 Model B	1.2	1 GB	(Mfg by Sony Japan)
a020d3	Q1 2018	3 Model B+	1.3	1 GB	(Mfg by Sony)
9020e0	Q4 2018	3 Model A+	1.0	512 MB	(Mfg by Sony)
a02100	Q1 2019	Compute Module 3+	1.0	1 GB	(Mfg by Sony)
a03111	Q2 2019	4 Model B	1.1	1 GB	(Mfg by Sony)
b03111	Q2 2019	4 Model B	1.1	2 GB	(Mfg by Sony)
c03111	Q2 2019	4 Model B	1.1	4 GB	(Mfg by Sony)
'

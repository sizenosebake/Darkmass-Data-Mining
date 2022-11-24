local spline_matrices = {
	[0] = {
		0.082747,
		0.418435,
		-0.904469,
		0,
		0.741362,
		0.580669,
		0.33646,
		0,
		0.665984,
		-0.698381,
		-0.262163,
		0,
		0.519578,
		-0.217404,
		-0.327109,
		1
	},
	{
		0.97372,
		0.141458,
		0.178493,
		0,
		0.168098,
		-0.975169,
		-0.144183,
		0,
		0.153665,
		0.170399,
		-0.97332,
		0,
		0.041707,
		-0.04275,
		-0.440987,
		1
	},
	[0.0166666666667] = {
		0.132278,
		0.437398,
		-0.889486,
		0,
		0.780196,
		0.507563,
		0.365615,
		0,
		0.611389,
		-0.742336,
		-0.274116,
		0,
		0.524588,
		-0.214964,
		-0.321288,
		1
	},
	[0.0333333333333] = {
		0.18825,
		0.475211,
		-0.859498,
		0,
		0.830077,
		0.390752,
		0.39785,
		0,
		0.524914,
		-0.788345,
		-0.320903,
		0,
		0.529661,
		-0.206119,
		-0.311018,
		1
	},
	[0.05] = {
		0.25098,
		0.518521,
		-0.817401,
		0,
		0.874849,
		0.239914,
		0.42081,
		0,
		0.414305,
		-0.820717,
		-0.393414,
		0,
		0.53062,
		-0.190343,
		-0.297676,
		1
	},
	[0.0666666666667] = {
		0.318477,
		0.555203,
		-0.768325,
		0,
		0.901809,
		0.072291,
		0.426046,
		0,
		0.292085,
		-0.828567,
		-0.477664,
		0,
		0.523228,
		-0.166332,
		-0.282653,
		1
	},
	[0.0833333333333] = {
		0.386135,
		0.576822,
		-0.719845,
		0,
		0.905905,
		-0.090025,
		0.413803,
		0,
		0.173886,
		-0.811894,
		-0.557307,
		0,
		0.503586,
		-0.131858,
		-0.266856,
		1
	},
	[0.116666666667] = {
		0.501778,
		0.564078,
		-0.65577,
		0,
		0.864993,
		-0.325333,
		0.382027,
		0,
		0.002149,
		-0.75893,
		-0.651169,
		0,
		0.400076,
		-0.020694,
		-0.232801,
		1
	},
	[0.133333333333] = {
		0.544847,
		0.528813,
		-0.650767,
		0,
		0.837743,
		-0.377007,
		0.395034,
		0,
		-0.036444,
		-0.760409,
		-0.648421,
		0,
		0.308122,
		0.088929,
		-0.213734,
		1
	},
	[0.15] = {
		0.580266,
		0.469244,
		-0.665658,
		0,
		0.813531,
		-0.372285,
		0.446734,
		0,
		-0.038187,
		-0.800758,
		-0.59777,
		0,
		0.231801,
		0.219818,
		-0.193431,
		1
	},
	[0.166666666667] = {
		0.636131,
		0.309353,
		-0.706851,
		0,
		0.771579,
		-0.252847,
		0.583724,
		0,
		0.001851,
		-0.916717,
		-0.399534,
		0,
		0.179,
		0.36207,
		-0.166801,
		1
	},
	[0.183333333333] = {
		0.68431,
		0.157286,
		-0.712026,
		0,
		0.714955,
		0.047281,
		0.69757,
		0,
		0.143383,
		-0.986421,
		-0.080097,
		0,
		0.12784,
		0.507633,
		-0.138943,
		1
	},
	[0.1] = {
		0.448533,
		0.57986,
		-0.680133,
		0,
		0.890697,
		-0.226987,
		0.393874,
		0,
		0.07401,
		-0.782457,
		-0.61829,
		0,
		0.468469,
		-0.084163,
		-0.250417,
		1
	},
	[0.216666666667] = {
		0.644312,
		0.195255,
		-0.739417,
		0,
		-0.270952,
		0.962424,
		0.018042,
		0,
		0.715155,
		0.188722,
		0.673006,
		0,
		-0.034794,
		0.544066,
		-0.158602,
		1
	},
	[0.233333333333] = {
		0.630211,
		0.197471,
		-0.750893,
		0,
		-0.702365,
		0.557208,
		-0.442947,
		0,
		0.330934,
		0.806551,
		0.489855,
		0,
		-0.069457,
		0.467907,
		-0.165443,
		1
	},
	[0.25] = {
		0.683751,
		0.222702,
		-0.694902,
		0,
		-0.725722,
		0.108033,
		-0.679454,
		0,
		-0.076243,
		0.968882,
		0.235487,
		0,
		-0.075291,
		0.401957,
		-0.221416,
		1
	},
	[0.266666666667] = {
		0.611855,
		0.30075,
		-0.731562,
		0,
		-0.662104,
		-0.311251,
		-0.681719,
		0,
		-0.432727,
		0.901483,
		0.008687,
		0,
		-0.07127,
		0.31471,
		-0.270249,
		1
	},
	[0.283333333333] = {
		0.581995,
		0.135279,
		-0.801861,
		0,
		-0.444305,
		-0.772974,
		-0.452885,
		0,
		-0.681083,
		0.619848,
		-0.389762,
		0,
		-0.080823,
		0.200589,
		-0.302144,
		1
	},
	[0.2] = {
		0.688546,
		0.154556,
		-0.708531,
		0,
		0.45973,
		0.662584,
		0.591296,
		0,
		0.560849,
		-0.732868,
		0.385166,
		0,
		0.052315,
		0.584976,
		-0.134423,
		1
	},
	[0.316666666667] = {
		0.521854,
		0.005593,
		-0.853016,
		0,
		-0.440328,
		-0.854689,
		-0.274986,
		0,
		-0.730602,
		0.51911,
		-0.44356,
		0,
		-0.138731,
		-0.121452,
		-0.386778,
		1
	},
	[0.333333333333] = {
		0.541107,
		-0.023434,
		-0.840627,
		0,
		-0.452571,
		-0.850627,
		-0.267605,
		0,
		-0.70879,
		0.525247,
		-0.470886,
		0,
		-0.156688,
		-0.195203,
		-0.418947,
		1
	},
	[0.35] = {
		0.642108,
		-0.038353,
		-0.765654,
		0,
		-0.376557,
		-0.885738,
		-0.271427,
		0,
		-0.667759,
		0.462598,
		-0.583182,
		0,
		-0.137194,
		-0.18541,
		-0.431892,
		1
	},
	[0.366666666667] = {
		0.774636,
		-0.02305,
		-0.631987,
		0,
		-0.262411,
		-0.920959,
		-0.288053,
		0,
		-0.575395,
		0.388977,
		-0.719457,
		0,
		-0.090517,
		-0.162451,
		-0.437725,
		1
	},
	[0.383333333333] = {
		0.892804,
		0.015325,
		-0.450185,
		0,
		-0.131025,
		-0.947371,
		-0.292097,
		0,
		-0.430968,
		0.31977,
		-0.843809,
		0,
		-0.030564,
		-0.130831,
		-0.439835,
		1
	},
	[0.3] = {
		0.556109,
		0.050349,
		-0.829583,
		0,
		-0.39372,
		-0.863094,
		-0.316312,
		0,
		-0.731934,
		0.502528,
		-0.460151,
		0,
		-0.105123,
		0.042413,
		-0.340649,
		1
	},
	[0.416666666667] = {
		0.989304,
		0.132372,
		-0.061286,
		0,
		0.116552,
		-0.969951,
		-0.213568,
		0,
		-0.087715,
		0.204141,
		-0.975004,
		0,
		0.085268,
		-0.069134,
		-0.445842,
		1
	},
	[0.433333333333] = {
		0.988946,
		0.1352,
		-0.060878,
		0,
		0.118816,
		-0.968213,
		-0.220106,
		0,
		-0.088701,
		0.21044,
		-0.973574,
		0,
		0.08465,
		-0.068653,
		-0.445931,
		1
	},
	[0.45] = {
		0.988639,
		0.137909,
		-0.059782,
		0,
		0.121132,
		-0.966487,
		-0.22634,
		0,
		-0.088993,
		0.216527,
		-0.972212,
		0,
		0.08384,
		-0.068092,
		-0.445967,
		1
	},
	[0.466666666667] = {
		0.988381,
		0.140487,
		-0.058024,
		0,
		0.1235,
		-0.964789,
		-0.232228,
		0,
		-0.088606,
		0.222364,
		-0.970929,
		0,
		0.082857,
		-0.067465,
		-0.445949,
		1
	},
	[0.483333333333] = {
		0.988169,
		0.142921,
		-0.05563,
		0,
		0.125917,
		-0.963135,
		-0.23773,
		0,
		-0.087556,
		0.227913,
		-0.969737,
		0,
		0.081722,
		-0.066784,
		-0.445882,
		1
	},
	[0.4] = {
		0.966002,
		0.070319,
		-0.248789,
		0,
		0.001228,
		-0.963537,
		-0.267571,
		0,
		-0.258533,
		0.258169,
		-0.930865,
		0,
		0.031719,
		-0.097857,
		-0.441439,
		1
	},
	[0.516666666667] = {
		0.987873,
		0.147316,
		-0.04903,
		0,
		0.130885,
		-0.960032,
		-0.247402,
		0,
		-0.083516,
		0.237985,
		-0.967672,
		0,
		0.079082,
		-0.065313,
		-0.445608,
		1
	},
	[0.533333333333] = {
		0.987779,
		0.149259,
		-0.044872,
		0,
		0.133429,
		-0.95862,
		-0.251486,
		0,
		-0.080552,
		0.242426,
		-0.96682,
		0,
		0.077618,
		-0.06455,
		-0.445408,
		1
	},
	[0.55] = {
		0.987714,
		0.151024,
		-0.040168,
		0,
		0.136004,
		-0.957316,
		-0.255047,
		0,
		-0.076972,
		0.246451,
		-0.966094,
		0,
		0.076085,
		-0.063769,
		-0.445174,
		1
	},
	[0.566666666667] = {
		0.987669,
		0.152606,
		-0.034933,
		0,
		0.138604,
		-0.956127,
		-0.25809,
		0,
		-0.072786,
		0.250066,
		-0.965489,
		0,
		0.074505,
		-0.062961,
		-0.444913,
		1
	},
	[0.583333333333] = {
		0.987637,
		0.15402,
		-0.029184,
		0,
		0.14124,
		-0.955062,
		-0.260592,
		0,
		-0.068009,
		0.253248,
		-0.965008,
		0,
		0.072899,
		-0.06213,
		-0.444629,
		1
	},
	[0.5] = {
		0.988002,
		0.145201,
		-0.052624,
		0,
		0.12838,
		-0.961543,
		-0.242802,
		0,
		-0.085855,
		0.233133,
		-0.968647,
		0,
		0.080457,
		-0.066062,
		-0.445767,
		1
	},
	[0.616666666667] = {
		0.987559,
		0.156413,
		-0.016214,
		0,
		0.14666,
		-0.953336,
		-0.263894,
		0,
		-0.056734,
		0.258233,
		-0.964415,
		0,
		0.069697,
		-0.060409,
		-0.444013,
		1
	},
	[0.633333333333] = {
		0.987494,
		0.157399,
		-0.009023,
		0,
		0.149434,
		-0.952694,
		-0.264659,
		0,
		-0.050253,
		0.260001,
		-0.9643,
		0,
		0.068142,
		-0.059526,
		-0.44369,
		1
	},
	[0.65] = {
		0.987398,
		0.158248,
		-0.00146,
		0,
		0.152216,
		-0.952207,
		-0.264824,
		0,
		-0.043298,
		0.261265,
		-0.964296,
		0,
		0.06661,
		-0.058634,
		-0.443368,
		1
	},
	[0.666666666667] = {
		0.987264,
		0.158963,
		0.006368,
		0,
		0.154971,
		-0.951882,
		-0.264395,
		0,
		-0.035968,
		0.262014,
		-0.964394,
		0,
		0.065076,
		-0.057737,
		-0.443056,
		1
	},
	[0.683333333333] = {
		0.987085,
		0.159546,
		0.014423,
		0,
		0.157679,
		-0.951723,
		-0.263366,
		0,
		-0.028292,
		0.262238,
		-0.964588,
		0,
		0.06355,
		-0.056837,
		-0.442759,
		1
	},
	[0.6] = {
		0.987603,
		0.155288,
		-0.022939,
		0,
		0.143927,
		-0.954129,
		-0.262533,
		0,
		-0.062655,
		0.255977,
		-0.96465,
		0,
		0.071289,
		-0.061278,
		-0.444328,
		1
	},
	[0.716666666667] = {
		0.986576,
		0.160319,
		0.03108,
		0,
		0.162861,
		-0.951909,
		-0.25951,
		0,
		-0.012019,
		0.261088,
		-0.96524,
		0,
		0.060546,
		-0.055048,
		-0.442221,
		1
	},
	[0.733333333333] = {
		0.986239,
		0.160507,
		0.039618,
		0,
		0.165288,
		-0.952255,
		-0.25669,
		0,
		-0.003475,
		0.259706,
		-0.965681,
		0,
		0.05908,
		-0.054166,
		-0.441985,
		1
	},
	[0.75] = {
		0.985846,
		0.16056,
		0.048255,
		0,
		0.167571,
		-0.952768,
		-0.253286,
		0,
		0.005308,
		0.257787,
		-0.966187,
		0,
		0.057648,
		-0.053296,
		-0.441773,
		1
	},
	[0.766666666667] = {
		0.985394,
		0.160476,
		0.056967,
		0,
		0.169685,
		-0.953442,
		-0.249309,
		0,
		0.014307,
		0.255334,
		-0.966747,
		0,
		0.056252,
		-0.052442,
		-0.441586,
		1
	},
	[0.783333333333] = {
		0.984886,
		0.160249,
		0.065729,
		0,
		0.171604,
		-0.954274,
		-0.244771,
		0,
		0.023499,
		0.252351,
		-0.96735,
		0,
		0.054897,
		-0.051606,
		-0.441425,
		1
	},
	[0.7] = {
		0.986857,
		0.159999,
		0.022672,
		0,
		0.160317,
		-0.951731,
		-0.261737,
		0,
		-0.0203,
		0.261931,
		-0.964873,
		0,
		0.062037,
		-0.05594,
		-0.44248,
		1
	},
	[0.816666666667] = {
		0.983699,
		0.159353,
		0.083325,
		0,
		0.174756,
		-0.956382,
		-0.234081,
		0,
		0.042389,
		0.244827,
		-0.96864,
		0,
		0.052325,
		-0.049998,
		-0.441176,
		1
	},
	[0.833333333333] = {
		0.983024,
		0.158671,
		0.092126,
		0,
		0.175939,
		-0.957641,
		-0.227967,
		0,
		0.052052,
		0.240306,
		-0.969301,
		0,
		0.051112,
		-0.049228,
		-0.441086,
		1
	},
	[0.85] = {
		0.982297,
		0.157825,
		0.100911,
		0,
		0.176827,
		-0.959025,
		-0.221369,
		0,
		0.061838,
		0.235294,
		-0.969955,
		0,
		0.04995,
		-0.048484,
		-0.441018,
		1
	},
	[0.866666666667] = {
		0.981521,
		0.156806,
		0.109671,
		0,
		0.177397,
		-0.960522,
		-0.21431,
		0,
		0.071736,
		0.229805,
		-0.970589,
		0,
		0.04884,
		-0.047764,
		-0.440968,
		1
	},
	[0.883333333333] = {
		0.980698,
		0.155608,
		0.118398,
		0,
		0.177628,
		-0.962121,
		-0.206813,
		0,
		0.081731,
		0.223852,
		-0.97119,
		0,
		0.047782,
		-0.047068,
		-0.440936,
		1
	},
	[0.8] = {
		0.98432,
		0.159877,
		0.074521,
		0,
		0.173303,
		-0.955257,
		-0.239689,
		0,
		0.032866,
		0.248846,
		-0.967985,
		0,
		0.053587,
		-0.050791,
		-0.441288,
		1
	},
	[0.916666666667] = {
		0.978916,
		0.152638,
		0.135741,
		0,
		0.176989,
		-0.96558,
		-0.190607,
		0,
		0.101975,
		0.210613,
		-0.972236,
		0,
		0.045817,
		-0.045747,
		-0.440914,
		1
	},
	[0.933333333333] = {
		0.97796,
		0.15085,
		0.144356,
		0,
		0.17608,
		-0.967414,
		-0.181948,
		0,
		0.112205,
		0.203356,
		-0.972654,
		0,
		0.044908,
		-0.045118,
		-0.440918,
		1
	},
	[0.95] = {
		0.976963,
		0.148847,
		0.152934,
		0,
		0.174754,
		-0.969303,
		-0.172952,
		0,
		0.122496,
		0.195693,
		-0.972985,
		0,
		0.044045,
		-0.044507,
		-0.44093,
		1
	},
	[0.966666666667] = {
		0.975924,
		0.146621,
		0.161479,
		0,
		0.172993,
		-0.971233,
		-0.163643,
		0,
		0.132841,
		0.187638,
		-0.973214,
		0,
		0.043226,
		-0.043911,
		-0.440948,
		1
	},
	[0.983333333333] = {
		0.974843,
		0.144161,
		0.169997,
		0,
		0.17078,
		-0.973193,
		-0.154046,
		0,
		0.143233,
		0.179203,
		-0.97333,
		0,
		0.042448,
		-0.043327,
		-0.440967,
		1
	},
	[0.9] = {
		0.979829,
		0.154221,
		0.127089,
		0,
		0.177499,
		-0.963811,
		-0.198904,
		0,
		0.091815,
		0.21745,
		-0.971744,
		0,
		0.046774,
		-0.046397,
		-0.440919,
		1
	},
	[1.01666666667] = {
		0.972552,
		0.138501,
		0.186974,
		0,
		0.164932,
		-0.977149,
		-0.134078,
		0,
		0.164132,
		0.161236,
		-0.973172,
		0,
		0.041001,
		-0.042177,
		-0.441006,
		1
	},
	[1.03333333333] = {
		0.971339,
		0.13528,
		0.195446,
		0,
		0.161264,
		-0.979122,
		-0.123752,
		0,
		0.174625,
		0.151724,
		-0.972875,
		0,
		0.040325,
		-0.041604,
		-0.441022,
		1
	},
	[1.05] = {
		0.970078,
		0.131782,
		0.203916,
		0,
		0.157076,
		-0.981074,
		-0.113225,
		0,
		0.185136,
		0.141867,
		-0.972419,
		0,
		0.039677,
		-0.041025,
		-0.441032,
		1
	},
	[1.06666666667] = {
		0.968766,
		0.127996,
		0.212389,
		0,
		0.152351,
		-0.982995,
		-0.102517,
		0,
		0.195656,
		0.131673,
		-0.971793,
		0,
		0.039052,
		-0.040437,
		-0.441035,
		1
	},
	[1.08333333333] = {
		0.967395,
		0.123951,
		0.220869,
		0,
		0.147107,
		-0.984868,
		-0.091619,
		0,
		0.206171,
		0.121124,
		-0.970991,
		0,
		0.038451,
		-0.039845,
		-0.441029,
		1
	},
	[1.1] = {
		0.965957,
		0.119671,
		0.229362,
		0,
		0.141357,
		-0.986679,
		-0.080518,
		0,
		0.216671,
		0.110199,
		-0.970005,
		0,
		0.037873,
		-0.039258,
		-0.441011,
		1
	}
}

return spline_matrices

local spline_matrices = {
	[0] = {
		-0.029745,
		-0.565802,
		0.824005,
		0,
		-0.870992,
		0.419118,
		0.256345,
		0,
		-0.490396,
		-0.710077,
		-0.505276,
		0,
		-0.334152,
		0.256632,
		-0.233792,
		1
	},
	[0.0166666666667] = {
		0.011786,
		-0.741469,
		0.670884,
		0,
		-0.841694,
		0.354854,
		0.406976,
		0,
		-0.539826,
		-0.569475,
		-0.619907,
		0,
		-0.309032,
		0.411286,
		-0.273238,
		1
	},
	[0.0333333333333] = {
		0.116971,
		-0.827642,
		0.548933,
		0,
		-0.802252,
		0.247067,
		0.54346,
		0,
		-0.585413,
		-0.503952,
		-0.635078,
		0,
		-0.309619,
		0.436497,
		-0.211844,
		1
	},
	[0.05] = {
		0.243285,
		-0.863206,
		0.442366,
		0,
		-0.742249,
		0.127909,
		0.657804,
		0,
		-0.624403,
		-0.48838,
		-0.609595,
		0,
		-0.319303,
		0.405053,
		-0.110336,
		1
	},
	[0.0666666666667] = {
		0.346817,
		-0.851189,
		0.393949,
		0,
		-0.688822,
		0.053924,
		0.722923,
		0,
		-0.636587,
		-0.522082,
		-0.567616,
		0,
		-0.321909,
		0.371958,
		-0.027241,
		1
	},
	[0.0833333333333] = {
		0.423788,
		-0.796383,
		0.431483,
		0,
		-0.682775,
		0.032141,
		0.729921,
		0,
		-0.595165,
		-0.603937,
		-0.53013,
		0,
		-0.317839,
		0.345681,
		0.018549,
		1
	},
	[0.116666666667] = {
		0.517901,
		-0.565982,
		0.641439,
		0,
		-0.739405,
		0.0809,
		0.668382,
		0,
		-0.430185,
		-0.820439,
		-0.376592,
		0,
		-0.294155,
		0.292758,
		0.073061,
		1
	},
	[0.133333333333] = {
		0.540398,
		-0.413099,
		0.73302,
		0,
		-0.737906,
		0.185935,
		0.648785,
		0,
		-0.404307,
		-0.891503,
		-0.204349,
		0,
		-0.259323,
		0.310409,
		0.090417,
		1
	},
	[0.15] = {
		0.593694,
		-0.208231,
		0.777282,
		0,
		-0.702947,
		0.335929,
		0.62691,
		0,
		-0.391654,
		-0.918581,
		0.053064,
		0,
		-0.19519,
		0.403813,
		0.108535,
		1
	},
	[0.166666666667] = {
		0.637051,
		-0.029015,
		0.770275,
		0,
		-0.546851,
		0.687255,
		0.478157,
		0,
		-0.543249,
		-0.725836,
		0.42195,
		0,
		-0.104276,
		0.527476,
		0.085758,
		1
	},
	[0.183333333333] = {
		0.662248,
		0.021622,
		0.748973,
		0,
		0.285614,
		0.916831,
		-0.27901,
		0,
		-0.692714,
		0.398691,
		0.600993,
		0,
		0.065845,
		0.630461,
		-0.087743,
		1
	},
	[0.1] = {
		0.483712,
		-0.698567,
		0.527283,
		0,
		-0.71085,
		0.037901,
		0.702322,
		0,
		-0.510604,
		-0.71454,
		-0.478243,
		0,
		-0.311318,
		0.312001,
		0.05032,
		1
	},
	[0.216666666667] = {
		0.763856,
		-0.099437,
		0.637681,
		0,
		0.60128,
		-0.24935,
		-0.759135,
		0,
		0.234492,
		0.963295,
		-0.130678,
		0,
		0.268871,
		0.614532,
		-0.254401,
		1
	},
	[0.233333333333] = {
		0.709543,
		-0.2822,
		0.645687,
		0,
		0.358264,
		-0.644571,
		-0.675407,
		0,
		0.606791,
		0.710557,
		-0.356249,
		0,
		0.391016,
		0.572195,
		-0.318947,
		1
	},
	[0.25] = {
		0.648267,
		-0.391519,
		0.653041,
		0,
		0.216617,
		-0.727396,
		-0.651132,
		0,
		0.72995,
		0.563567,
		-0.386737,
		0,
		0.458798,
		0.515957,
		-0.387544,
		1
	},
	[0.266666666667] = {
		0.631716,
		-0.344002,
		0.694693,
		0,
		-0.001771,
		-0.896785,
		-0.442464,
		0,
		0.775198,
		0.278281,
		-0.567122,
		0,
		0.454309,
		0.43766,
		-0.466427,
		1
	},
	[0.283333333333] = {
		0.652545,
		-0.306442,
		0.693021,
		0,
		-0.286367,
		-0.946483,
		-0.148877,
		0,
		0.701555,
		-0.101309,
		-0.705377,
		0,
		0.465709,
		0.320197,
		-0.533499,
		1
	},
	[0.2] = {
		0.487392,
		-0.088481,
		0.868689,
		0,
		0.862792,
		0.201819,
		-0.463528,
		0,
		-0.134305,
		0.975418,
		0.174706,
		0,
		0.136998,
		0.644781,
		-0.161643,
		1
	},
	[0.316666666667] = {
		0.53294,
		-0.445212,
		0.719556,
		0,
		-0.540583,
		-0.83336,
		-0.115243,
		0,
		0.650957,
		-0.327563,
		-0.684805,
		0,
		0.476775,
		0.237027,
		-0.574159,
		1
	},
	[0.333333333333] = {
		0.412616,
		-0.532657,
		0.738935,
		0,
		-0.61254,
		-0.762658,
		-0.20772,
		0,
		0.674198,
		-0.366918,
		-0.640958,
		0,
		0.486359,
		0.218398,
		-0.584165,
		1
	},
	[0.35] = {
		0.264888,
		-0.626827,
		0.73275,
		0,
		-0.642427,
		-0.681408,
		-0.350671,
		0,
		0.719112,
		-0.37785,
		-0.583188,
		0,
		0.498937,
		0.211549,
		-0.58911,
		1
	},
	[0.366666666667] = {
		0.106349,
		-0.722657,
		0.682976,
		0,
		-0.625668,
		-0.582481,
		-0.518898,
		0,
		0.772806,
		-0.372132,
		-0.51409,
		0,
		0.513615,
		0.214059,
		-0.588977,
		1
	},
	[0.383333333333] = {
		-0.042458,
		-0.812335,
		0.581644,
		0,
		-0.566028,
		-0.46017,
		-0.684,
		0,
		0.823292,
		-0.358268,
		-0.440267,
		0,
		0.528825,
		0.223586,
		-0.583869,
		1
	},
	[0.3] = {
		0.615279,
		-0.367847,
		0.697224,
		0,
		-0.432183,
		-0.897091,
		-0.091905,
		0,
		0.65928,
		-0.244781,
		-0.710938,
		0,
		0.470216,
		0.27005,
		-0.558245,
		1
	},
	[0.416666666667] = {
		-0.245549,
		-0.937457,
		0.246739,
		0,
		-0.384115,
		-0.139603,
		-0.91267,
		0,
		0.890035,
		-0.318881,
		-0.325811,
		0,
		0.549543,
		0.251756,
		-0.55689,
		1
	},
	[0.433333333333] = {
		-0.289441,
		-0.956484,
		0.036898,
		0,
		-0.308131,
		0.056609,
		-0.949658,
		0,
		0.906244,
		-0.28624,
		-0.311108,
		0,
		0.554329,
		0.26784,
		-0.540905,
		1
	},
	[0.45] = {
		-0.303783,
		-0.934046,
		-0.187816,
		0,
		-0.27301,
		0.274207,
		-0.922104,
		0,
		0.912788,
		-0.228844,
		-0.338303,
		0,
		0.555736,
		0.28432,
		-0.527108,
		1
	},
	[0.466666666667] = {
		-0.306309,
		-0.854635,
		-0.419254,
		0,
		-0.299213,
		0.504541,
		-0.809883,
		0,
		0.903685,
		-0.122628,
		-0.410263,
		0,
		0.553587,
		0.300575,
		-0.51679,
		1
	},
	[0.483333333333] = {
		-0.332827,
		-0.586639,
		-0.738296,
		0,
		-0.486572,
		0.777494,
		-0.398436,
		0,
		0.807759,
		0.226624,
		-0.544212,
		0,
		0.453293,
		0.346052,
		-0.477357,
		1
	},
	[0.4] = {
		-0.163176,
		-0.886771,
		0.432448,
		0,
		-0.47813,
		-0.312333,
		-0.820877,
		0,
		0.862998,
		-0.340714,
		-0.373026,
		0,
		0.541354,
		0.236877,
		-0.572686,
		1
	},
	[0.516666666667] = {
		-0.302048,
		-0.118605,
		-0.945886,
		0,
		-0.684367,
		0.717718,
		0.128543,
		0,
		0.663633,
		0.686159,
		-0.297955,
		0,
		0.2911,
		0.422589,
		-0.379261,
		1
	},
	[0.533333333333] = {
		-0.124409,
		-0.069601,
		-0.989787,
		0,
		-0.716062,
		0.696831,
		0.041003,
		0,
		0.686861,
		0.71385,
		-0.136531,
		0,
		0.25397,
		0.453789,
		-0.350124,
		1
	},
	[0.55] = {
		0.133929,
		-0.084217,
		-0.987406,
		0,
		-0.693996,
		0.70329,
		-0.154116,
		0,
		0.707412,
		0.705897,
		0.035745,
		0,
		0.220833,
		0.486492,
		-0.326826,
		1
	},
	[0.566666666667] = {
		0.420926,
		-0.147747,
		-0.894982,
		0,
		-0.585212,
		0.709622,
		-0.392382,
		0,
		0.693072,
		0.688918,
		0.212235,
		0,
		0.192174,
		0.519742,
		-0.308674,
		1
	},
	[0.583333333333] = {
		0.658943,
		-0.226329,
		-0.717335,
		0,
		-0.407221,
		0.694476,
		-0.593189,
		0,
		0.632428,
		0.682992,
		0.365454,
		0,
		0.168777,
		0.551679,
		-0.294081,
		1
	},
	[0.5] = {
		-0.384246,
		-0.244647,
		-0.890226,
		0,
		-0.632041,
		0.77257,
		0.060492,
		0,
		0.672963,
		0.585904,
		-0.451484,
		0,
		0.333275,
		0.392175,
		-0.415264,
		1
	},
	[0.616666666667] = {
		0.878159,
		-0.271386,
		-0.393937,
		0,
		-0.142301,
		0.638023,
		-0.756755,
		0,
		0.456713,
		0.720609,
		0.521667,
		0,
		0.133577,
		0.603968,
		-0.265821,
		1
	},
	[0.633333333333] = {
		0.906612,
		-0.216724,
		-0.362058,
		0,
		-0.159448,
		0.618459,
		-0.76947,
		0,
		0.390681,
		0.75534,
		0.526146,
		0,
		0.118992,
		0.619878,
		-0.248144,
		1
	},
	[0.65] = {
		0.90702,
		-0.144294,
		-0.395593,
		0,
		-0.242669,
		0.588649,
		-0.771106,
		0,
		0.344132,
		0.795406,
		0.498901,
		0,
		0.107198,
		0.628175,
		-0.228625,
		1
	},
	[0.666666666667] = {
		0.886988,
		-0.066734,
		-0.456944,
		0,
		-0.350231,
		0.547713,
		-0.759834,
		0,
		0.300981,
		0.834001,
		0.462443,
		0,
		0.097723,
		0.631668,
		-0.210094,
		1
	},
	[0.683333333333] = {
		0.861628,
		0.005486,
		-0.507511,
		0,
		-0.440726,
		0.503999,
		-0.742796,
		0,
		0.25171,
		0.863687,
		0.436677,
		0,
		0.090295,
		0.633434,
		-0.195983,
		1
	},
	[0.6] = {
		0.805673,
		-0.277467,
		-0.523357,
		0,
		-0.233512,
		0.663199,
		-0.711083,
		0,
		0.544392,
		0.695111,
		0.46953,
		0,
		0.150012,
		0.580313,
		-0.280544,
		1
	},
	[0.716666666667] = {
		0.889741,
		0.120293,
		-0.440329,
		0,
		-0.4408,
		0.476972,
		-0.76039,
		0,
		0.118555,
		0.870648,
		0.477407,
		0,
		0.079731,
		0.642321,
		-0.190993,
		1
	},
	[0.733333333333] = {
		0.932479,
		0.167506,
		-0.320037,
		0,
		-0.36002,
		0.503212,
		-0.785597,
		0,
		0.029454,
		0.847773,
		0.529541,
		0,
		0.07582,
		0.647898,
		-0.192648,
		1
	},
	[0.75] = {
		0.96154,
		0.19958,
		-0.188704,
		0,
		-0.268551,
		0.538958,
		-0.798376,
		0,
		-0.057636,
		0.818347,
		0.571827,
		0,
		0.073221,
		0.653122,
		-0.194917,
		1
	},
	[0.766666666667] = {
		0.971852,
		0.215835,
		-0.094438,
		0,
		-0.203339,
		0.566019,
		-0.798922,
		0,
		-0.118981,
		0.795637,
		0.593975,
		0,
		0.072095,
		0.657431,
		-0.196812,
		1
	},
	[0.783333333333] = {
		0.974151,
		0.22103,
		-0.046641,
		0,
		-0.169822,
		0.580401,
		-0.796426,
		0,
		-0.148964,
		0.78376,
		0.602934,
		0,
		0.072291,
		0.661337,
		-0.197886,
		1
	},
	[0.7] = {
		0.857587,
		0.066407,
		-0.510034,
		0,
		-0.476656,
		0.475182,
		-0.739595,
		0,
		0.193245,
		0.877378,
		0.439163,
		0,
		0.084531,
		0.636808,
		-0.190376,
		1
	},
	[0.816666666667] = {
		0.977781,
		0.209477,
		-0.007944,
		0,
		-0.13436,
		0.597166,
		-0.790785,
		0,
		-0.160907,
		0.774282,
		0.612043,
		0,
		0.075375,
		0.670081,
		-0.198674,
		1
	},
	[0.833333333333] = {
		0.980398,
		0.196884,
		-0.007525,
		0,
		-0.126838,
		0.601451,
		-0.788777,
		0,
		-0.150771,
		0.77427,
		0.614633,
		0,
		0.077669,
		0.674364,
		-0.198573,
		1
	},
	[0.85] = {
		0.983202,
		0.182025,
		-0.013438,
		0,
		-0.12265,
		0.604376,
		-0.787202,
		0,
		-0.135169,
		0.775626,
		0.616549,
		0,
		0.0801,
		0.678228,
		-0.1983,
		1
	},
	[0.866666666667] = {
		0.985812,
		0.16654,
		-0.020975,
		0,
		-0.119252,
		0.606933,
		-0.785755,
		0,
		-0.118129,
		0.777108,
		0.618182,
		0,
		0.08239,
		0.681411,
		-0.197969,
		1
	},
	[0.883333333333] = {
		0.988036,
		0.152115,
		-0.025412,
		0,
		-0.114088,
		0.610046,
		-0.784109,
		0,
		-0.103772,
		0.777627,
		0.620102,
		0,
		0.084251,
		0.683656,
		-0.19768,
		1
	},
	[0.8] = {
		0.975724,
		0.218143,
		-0.019401,
		0,
		-0.147791,
		0.590488,
		-0.793399,
		0,
		-0.161618,
		0.777005,
		0.608393,
		0,
		0.073489,
		0.665647,
		-0.198481,
		1
	},
	[0.9] = {
		0.989841,
		0.140463,
		-0.022011,
		0,
		-0.104599,
		0.614579,
		-0.78189,
		0,
		-0.096299,
		0.776249,
		0.623028,
		0,
		0.08538,
		0.684717,
		-0.197524,
		1
	}
}

return spline_matrices

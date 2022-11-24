local spline_matrices = {
	[0] = {
		0.234405,
		0.459748,
		0.856555,
		0,
		0.038545,
		-0.884806,
		0.464364,
		0,
		0.971375,
		-0.075833,
		-0.225124,
		0,
		-0.971632,
		0.074211,
		-0.565809,
		1
	},
	{
		0.326809,
		0.342121,
		0.880993,
		0,
		0.339032,
		0.827695,
		-0.447189,
		0,
		-0.882186,
		0.444831,
		0.154508,
		0,
		0.522496,
		0.782021,
		-0.834935,
		1
	},
	[0.0166666666667] = {
		0.216149,
		0.513225,
		0.83059,
		0,
		0.045694,
		-0.855085,
		0.51647,
		0,
		0.975291,
		-0.073681,
		-0.208277,
		0,
		-0.992592,
		0.151608,
		-0.513683,
		1
	},
	[0.0333333333333] = {
		0.182061,
		0.538148,
		0.822953,
		0,
		0.044251,
		-0.840576,
		0.539882,
		0,
		0.982291,
		-0.061875,
		-0.17685,
		0,
		-1.017517,
		0.228156,
		-0.495222,
		1
	},
	[0.05] = {
		0.132309,
		0.514596,
		0.847163,
		0,
		0.040283,
		-0.856762,
		0.514136,
		0,
		0.99039,
		-0.033899,
		-0.134086,
		0,
		-1.047893,
		0.290746,
		-0.52375,
		1
	},
	[0.0666666666667] = {
		0.066534,
		0.413868,
		0.907902,
		0,
		0.045144,
		-0.910235,
		0.411624,
		0,
		0.996762,
		0.0136,
		-0.079246,
		0,
		-1.084448,
		0.327517,
		-0.613763,
		1
	},
	[0.0833333333333] = {
		-0.057767,
		0.067294,
		0.996059,
		0,
		0.081435,
		-0.994083,
		0.071883,
		0,
		0.995003,
		0.085267,
		0.051945,
		0,
		-1.142204,
		0.311001,
		-0.891346,
		1
	},
	[0.116666666667] = {
		-0.139056,
		0.060564,
		0.988431,
		0,
		-0.017267,
		-0.998125,
		0.058729,
		0,
		0.990134,
		-0.008901,
		0.139841,
		0,
		-1.084,
		0.533446,
		-0.877612,
		1
	},
	[0.133333333333] = {
		-0.177462,
		0.18221,
		0.967113,
		0,
		0.035014,
		-0.980919,
		0.191236,
		0,
		0.983505,
		0.0678,
		0.167696,
		0,
		-0.938821,
		0.630382,
		-0.779813,
		1
	},
	[0.15] = {
		-0.194369,
		0.305874,
		0.93202,
		0,
		0.050917,
		-0.945714,
		0.320986,
		0,
		0.979606,
		0.109845,
		0.168243,
		0,
		-0.795027,
		0.755793,
		-0.684668,
		1
	},
	[0.166666666667] = {
		-0.155449,
		0.327238,
		0.932068,
		0,
		-0.047149,
		-0.94492,
		0.323887,
		0,
		0.986718,
		0.006401,
		0.162316,
		0,
		-0.783823,
		0.93965,
		-0.677123,
		1
	},
	[0.183333333333] = {
		0.101837,
		0.152861,
		0.982987,
		0,
		-0.372424,
		-0.910409,
		0.180157,
		0,
		0.922459,
		-0.384434,
		-0.035784,
		0,
		-0.771506,
		1.18313,
		-0.657792,
		1
	},
	[0.1] = {
		-0.110619,
		0.002377,
		0.99386,
		0,
		0.035461,
		-0.999351,
		0.006337,
		0,
		0.99323,
		0.035945,
		0.110463,
		0,
		-1.13803,
		0.408001,
		-0.9309,
		1
	},
	[0.216666666667] = {
		-0.06653,
		-0.407775,
		0.910656,
		0,
		-0.803583,
		0.562911,
		0.193353,
		0,
		-0.591462,
		-0.718924,
		-0.365131,
		0,
		-0.326884,
		2.063203,
		-0.363154,
		1
	},
	[0.233333333333] = {
		-0.337107,
		-0.275076,
		0.900384,
		0,
		-0.346685,
		0.925431,
		0.152927,
		0,
		-0.87531,
		-0.260597,
		-0.407334,
		0,
		0.106054,
		2.109747,
		-0.240473,
		1
	},
	[0.25] = {
		-0.538115,
		-0.12181,
		0.834023,
		0,
		0.220242,
		0.934804,
		0.27863,
		0,
		-0.813588,
		0.333622,
		-0.476204,
		0,
		0.655014,
		2.02291,
		-0.101673,
		1
	},
	[0.266666666667] = {
		-0.579798,
		-0.176496,
		0.795414,
		0,
		0.238029,
		0.896972,
		0.372536,
		0,
		-0.779216,
		0.405328,
		-0.478051,
		0,
		0.888038,
		1.564969,
		0.046691,
		1
	},
	[0.283333333333] = {
		-0.675016,
		-0.068997,
		0.73457,
		0,
		0.339806,
		0.854663,
		0.392534,
		0,
		-0.654894,
		0.514578,
		-0.553465,
		0,
		1.02298,
		1.212721,
		0.249773,
		1
	},
	[0.2] = {
		0.234904,
		-0.200638,
		0.951086,
		0,
		-0.919962,
		-0.361802,
		0.150893,
		0,
		0.31383,
		-0.910409,
		-0.269568,
		0,
		-0.609833,
		1.57737,
		-0.53201,
		1
	},
	[0.316666666667] = {
		-0.733249,
		-0.026911,
		0.679428,
		0,
		0.500643,
		0.654777,
		0.566236,
		0,
		-0.460112,
		0.755343,
		-0.466642,
		0,
		1.110272,
		0.691237,
		0.351563,
		1
	},
	[0.333333333333] = {
		-0.710056,
		-0.046692,
		0.702596,
		0,
		0.5519,
		0.582759,
		0.596488,
		0,
		-0.437295,
		0.811302,
		-0.388022,
		0,
		1.135102,
		0.557124,
		0.316136,
		1
	},
	[0.35] = {
		-0.690269,
		0.033747,
		0.722766,
		0,
		0.603263,
		0.578381,
		0.549134,
		0,
		-0.399502,
		0.815068,
		-0.419597,
		0,
		1.178181,
		0.500356,
		0.300372,
		1
	},
	[0.366666666667] = {
		-0.62425,
		0.170226,
		0.762454,
		0,
		0.672381,
		0.613991,
		0.413423,
		0,
		-0.397764,
		0.770739,
		-0.49774,
		0,
		1.185564,
		0.471348,
		0.234068,
		1
	},
	[0.383333333333] = {
		-0.437278,
		0.315212,
		0.842276,
		0,
		0.754616,
		0.638086,
		0.152971,
		0,
		-0.489227,
		0.702486,
		-0.516885,
		0,
		1.142236,
		0.441222,
		-0.007019,
		1
	},
	[0.3] = {
		-0.757434,
		0.042494,
		0.651527,
		0,
		0.452794,
		0.753117,
		0.477276,
		0,
		-0.470395,
		0.656512,
		-0.589678,
		0,
		1.100485,
		0.897401,
		0.373612,
		1
	},
	[0.416666666667] = {
		0.014851,
		0.449628,
		0.893092,
		0,
		0.758667,
		0.576741,
		-0.302976,
		0,
		-0.651309,
		0.682059,
		-0.332553,
		0,
		1.042484,
		0.377252,
		-0.609965,
		1
	},
	[0.433333333333] = {
		0.060371,
		0.451374,
		0.89029,
		0,
		0.731082,
		0.587271,
		-0.34732,
		0,
		-0.679613,
		0.671844,
		-0.294537,
		0,
		1.009665,
		0.399877,
		-0.676904,
		1
	},
	[0.45] = {
		0.058354,
		0.441314,
		0.895454,
		0,
		0.703251,
		0.618462,
		-0.350631,
		0,
		-0.708542,
		0.65019,
		-0.274265,
		0,
		0.970609,
		0.443096,
		-0.675722,
		1
	},
	[0.466666666667] = {
		0.083235,
		0.435898,
		0.896139,
		0,
		0.667283,
		0.643515,
		-0.374996,
		0,
		-0.740138,
		0.629192,
		-0.237304,
		0,
		0.91848,
		0.478167,
		-0.702852,
		1
	},
	[0.483333333333] = {
		0.10949,
		0.430416,
		0.895965,
		0,
		0.627466,
		0.669158,
		-0.398138,
		0,
		-0.770908,
		0.60578,
		-0.196805,
		0,
		0.861524,
		0.513699,
		-0.727886,
		1
	},
	[0.4] = {
		-0.180526,
		0.41374,
		0.892317,
		0,
		0.7807,
		0.612099,
		-0.125866,
		0,
		-0.598262,
		0.67391,
		-0.433506,
		0,
		1.086639,
		0.402257,
		-0.345409,
		1
	},
	[0.516666666667] = {
		0.164842,
		0.420636,
		0.892128,
		0,
		0.537969,
		0.71977,
		-0.438772,
		0,
		-0.82669,
		0.552265,
		-0.107641,
		0,
		0.737231,
		0.585401,
		-0.772872,
		1
	},
	[0.533333333333] = {
		0.193271,
		0.416643,
		0.888287,
		0,
		0.489424,
		0.743733,
		-0.455329,
		0,
		-0.850359,
		0.522751,
		-0.060173,
		0,
		0.671995,
		0.621409,
		-0.793327,
		1
	},
	[0.55] = {
		0.221756,
		0.413382,
		0.883142,
		0,
		0.439243,
		0.766251,
		-0.468961,
		0,
		-0.870569,
		0.491909,
		-0.011655,
		0,
		0.606117,
		0.657422,
		-0.812795,
		1
	},
	[0.566666666667] = {
		0.249985,
		0.4109,
		0.876738,
		0,
		0.388153,
		0.787016,
		-0.479524,
		0,
		-0.887043,
		0.460182,
		0.03725,
		0,
		0.540663,
		0.693372,
		-0.831581,
		1
	},
	[0.583333333333] = {
		0.27768,
		0.409203,
		0.869165,
		0,
		0.336892,
		0.80581,
		-0.487005,
		0,
		-0.899665,
		0.428047,
		0.0859,
		0,
		0.4767,
		0.729191,
		-0.850014,
		1
	},
	[0.5] = {
		0.136803,
		0.425271,
		0.894667,
		0,
		0.584188,
		0.694754,
		-0.419572,
		0,
		-0.800006,
		0.580053,
		-0.153394,
		0,
		0.800759,
		0.549471,
		-0.751145,
		1
	},
	[0.616666666667] = {
		0.305417,
		0.405707,
		0.861465,
		0,
		0.288087,
		0.822926,
		-0.489693,
		0,
		-0.907594,
		0.397737,
		0.134456,
		0,
		0.419246,
		0.765864,
		-0.867217,
		1
	},
	[0.633333333333] = {
		0.306316,
		0.40294,
		0.862444,
		0,
		0.290197,
		0.823343,
		-0.487741,
		0,
		-0.906618,
		0.399682,
		0.135272,
		0,
		0.423595,
		0.766947,
		-0.865866,
		1
	},
	[0.65] = {
		0.30729,
		0.399985,
		0.863473,
		0,
		0.292484,
		0.823755,
		-0.485675,
		0,
		-0.905553,
		0.401795,
		0.136142,
		0,
		0.428287,
		0.768048,
		-0.864406,
		1
	},
	[0.666666666667] = {
		0.308327,
		0.39687,
		0.86454,
		0,
		0.294924,
		0.824157,
		-0.483513,
		0,
		-0.904408,
		0.404053,
		0.137064,
		0,
		0.433276,
		0.769155,
		-0.862852,
		1
	},
	[0.683333333333] = {
		0.309417,
		0.39362,
		0.865636,
		0,
		0.297491,
		0.824546,
		-0.481272,
		0,
		-0.903194,
		0.406433,
		0.13803,
		0,
		0.438513,
		0.770257,
		-0.861218,
		1
	},
	[0.6] = {
		0.304602,
		0.408263,
		0.860546,
		0,
		0.286178,
		0.822507,
		-0.491513,
		0,
		-0.908471,
		0.395985,
		0.133701,
		0,
		0.415288,
		0.764811,
		-0.868444,
		1
	},
	[0.716666666667] = {
		0.311713,
		0.386819,
		0.867874,
		0,
		0.302915,
		0.825269,
		-0.476627,
		0,
		-0.900599,
		0.411463,
		0.140074,
		0,
		0.449539,
		0.772402,
		-0.857773,
		1
	},
	[0.733333333333] = {
		0.312899,
		0.383321,
		0.868999,
		0,
		0.305722,
		0.825599,
		-0.474258,
		0,
		-0.899238,
		0.414067,
		0.141139,
		0,
		0.455235,
		0.773428,
		-0.855992,
		1
	},
	[0.75] = {
		0.314096,
		0.379793,
		0.870115,
		0,
		0.308561,
		0.825905,
		-0.471881,
		0,
		-0.89785,
		0.4167,
		0.142224,
		0,
		0.460988,
		0.774411,
		-0.854191,
		1
	},
	[0.766666666667] = {
		0.315294,
		0.376264,
		0.871215,
		0,
		0.311408,
		0.826184,
		-0.469515,
		0,
		-0.896445,
		0.419339,
		0.14332,
		0,
		0.466752,
		0.775346,
		-0.852386,
		1
	},
	[0.783333333333] = {
		0.316484,
		0.372758,
		0.87229,
		0,
		0.31424,
		0.826438,
		-0.467177,
		0,
		-0.895037,
		0.421962,
		0.144419,
		0,
		0.472479,
		0.776227,
		-0.850592,
		1
	},
	[0.7] = {
		0.310549,
		0.390261,
		0.86675,
		0,
		0.300163,
		0.824918,
		-0.478971,
		0,
		-0.901921,
		0.40891,
		0.139036,
		0,
		0.44395,
		0.771342,
		-0.859521,
		1
	},
	[0.816666666667] = {
		0.318798,
		0.365931,
		0.874335,
		0,
		0.319762,
		0.826864,
		-0.462654,
		0,
		-0.892256,
		0.427072,
		0.146592,
		0,
		0.483638,
		0.777811,
		-0.847095,
		1
	},
	[0.833333333333] = {
		0.319903,
		0.362665,
		0.875292,
		0,
		0.322405,
		0.827037,
		-0.460504,
		0,
		-0.890908,
		0.429515,
		0.147646,
		0,
		0.488976,
		0.778508,
		-0.845423,
		1
	},
	[0.85] = {
		0.32096,
		0.359534,
		0.876196,
		0,
		0.32494,
		0.827186,
		-0.458452,
		0,
		-0.889606,
		0.431856,
		0.148667,
		0,
		0.494091,
		0.779141,
		-0.84382,
		1
	},
	[0.866666666667] = {
		0.321961,
		0.356567,
		0.877041,
		0,
		0.327341,
		0.82731,
		-0.456515,
		0,
		-0.888363,
		0.434072,
		0.149642,
		0,
		0.498936,
		0.779708,
		-0.842303,
		1
	},
	[0.883333333333] = {
		0.322895,
		0.353791,
		0.877821,
		0,
		0.329588,
		0.827413,
		-0.454709,
		0,
		-0.887193,
		0.436142,
		0.150562,
		0,
		0.503466,
		0.78021,
		-0.840884,
		1
	},
	[0.8] = {
		0.317655,
		0.369305,
		0.873332,
		0,
		0.317032,
		0.826664,
		-0.464884,
		0,
		-0.893636,
		0.424547,
		0.145512,
		0,
		0.478124,
		0.777049,
		-0.848823,
		1
	},
	[0.916666666667] = {
		0.324528,
		0.348929,
		0.879164,
		0,
		0.333522,
		0.82756,
		-0.451562,
		0,
		-0.885124,
		0.439765,
		0.152191,
		0,
		0.511397,
		0.781025,
		-0.838403,
		1
	},
	[0.933333333333] = {
		0.325209,
		0.346899,
		0.879716,
		0,
		0.335164,
		0.827609,
		-0.450254,
		0,
		-0.884254,
		0.441275,
		0.152878,
		0,
		0.514706,
		0.78134,
		-0.837368,
		1
	},
	[0.95] = {
		0.325786,
		0.345175,
		0.88018,
		0,
		0.336559,
		0.827645,
		-0.449146,
		0,
		-0.883511,
		0.442558,
		0.153464,
		0,
		0.517516,
		0.781596,
		-0.83649,
		1
	},
	[0.966666666667] = {
		0.326252,
		0.343785,
		0.880552,
		0,
		0.337684,
		0.82767,
		-0.448254,
		0,
		-0.88291,
		0.443592,
		0.153938,
		0,
		0.519782,
		0.781794,
		-0.835782,
		1
	},
	[0.983333333333] = {
		0.326596,
		0.342758,
		0.880825,
		0,
		0.338516,
		0.827686,
		-0.447596,
		0,
		-0.882464,
		0.444356,
		0.15429,
		0,
		0.521457,
		0.781936,
		-0.835259,
		1
	},
	[0.9] = {
		0.323754,
		0.351236,
		0.878531,
		0,
		0.331655,
		0.827495,
		-0.453053,
		0,
		-0.886108,
		0.438047,
		0.151416,
		0,
		0.507635,
		0.780649,
		-0.83958,
		1
	},
	[1.01666666667] = {
		0.326882,
		0.341902,
		0.881051,
		0,
		0.33921,
		0.827698,
		-0.447049,
		0,
		-0.882091,
		0.444993,
		0.154583,
		0,
		0.522852,
		0.78205,
		-0.834823,
		1
	},
	[1.03333333333] = {
		0.326882,
		0.341902,
		0.881051,
		0,
		0.33921,
		0.827698,
		-0.447049,
		0,
		-0.882091,
		0.444993,
		0.154583,
		0,
		0.522852,
		0.78205,
		-0.834823,
		1
	}
}

return spline_matrices

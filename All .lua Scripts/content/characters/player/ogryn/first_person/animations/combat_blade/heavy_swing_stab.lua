local spline_matrices = {
	[0] = {
		0.972015,
		-0.233887,
		0.021986,
		0,
		0.050738,
		0.117633,
		-0.99176,
		0,
		0.229374,
		0.965121,
		0.126208,
		0,
		0.698027,
		-0.047342,
		-1.370168,
		1
	},
	{
		0.490357,
		-0.247374,
		0.835677,
		0,
		0.813917,
		0.472805,
		-0.337631,
		0,
		-0.311591,
		0.845732,
		0.433185,
		0,
		0.932894,
		0.466502,
		-0.51924,
		1
	},
	[0.0166666666667] = {
		0.986261,
		-0.11509,
		0.118503,
		0,
		0.163297,
		0.570894,
		-0.80462,
		0,
		0.024951,
		0.812917,
		0.581845,
		0,
		0.74021,
		0.011173,
		-1.247769,
		1
	},
	[0.0333333333333] = {
		0.961557,
		-0.017393,
		0.274052,
		0,
		0.131503,
		0.905282,
		-0.403944,
		0,
		-0.241069,
		0.424454,
		0.872768,
		0,
		0.780034,
		-0.006743,
		-0.966848,
		1
	},
	[0.05] = {
		0.890597,
		0.013403,
		0.454596,
		0,
		-0.042363,
		0.997665,
		0.053578,
		0,
		-0.452816,
		-0.066975,
		0.889085,
		0,
		0.804391,
		-0.092363,
		-0.636872,
		1
	},
	[0.0666666666667] = {
		0.797076,
		-0.028627,
		0.6032,
		0,
		-0.263433,
		0.882338,
		0.389979,
		0,
		-0.54339,
		-0.469746,
		0.695749,
		0,
		0.818953,
		-0.203535,
		-0.369799,
		1
	},
	[0.0833333333333] = {
		0.714377,
		-0.100983,
		0.692436,
		0,
		-0.432674,
		0.713958,
		0.550506,
		0,
		-0.549962,
		-0.692868,
		0.466343,
		0,
		0.829146,
		-0.274535,
		-0.250938,
		1
	},
	[0.116666666667] = {
		0.58062,
		-0.210382,
		0.786524,
		0,
		-0.586026,
		0.562638,
		0.583106,
		0,
		-0.565203,
		-0.799486,
		0.203389,
		0,
		0.860935,
		-0.189858,
		-0.241724,
		1
	},
	[0.133333333333] = {
		0.511855,
		-0.233179,
		0.826821,
		0,
		-0.609201,
		0.580077,
		0.540726,
		0,
		-0.605706,
		-0.780473,
		0.154863,
		0,
		0.885081,
		-0.059178,
		-0.253195,
		1
	},
	[0.15] = {
		0.440491,
		-0.230128,
		0.867761,
		0,
		-0.606283,
		0.636619,
		0.47659,
		0,
		-0.662109,
		-0.736042,
		0.140902,
		0,
		0.911209,
		0.110071,
		-0.270294,
		1
	},
	[0.166666666667] = {
		0.369997,
		-0.203157,
		0.906548,
		0,
		-0.582557,
		0.709386,
		0.396736,
		0,
		-0.723692,
		-0.674907,
		0.14412,
		0,
		0.936919,
		0.301714,
		-0.290368,
		1
	},
	[0.183333333333] = {
		0.305707,
		-0.160843,
		0.938442,
		0,
		-0.546207,
		0.777687,
		0.311223,
		0,
		-0.779872,
		-0.607727,
		0.14989,
		0,
		0.959069,
		0.5004,
		-0.309694,
		1
	},
	[0.1] = {
		0.646868,
		-0.164347,
		0.744682,
		0,
		-0.530866,
		0.604007,
		0.594438,
		0,
		-0.547488,
		-0.779849,
		0.303467,
		0,
		0.841155,
		-0.266239,
		-0.238952,
		1
	},
	[0.216666666667] = {
		0.233866,
		-0.069665,
		0.96977,
		0,
		-0.463529,
		0.868791,
		0.174193,
		0,
		-0.854663,
		-0.490254,
		0.170889,
		0,
		0.795258,
		0.991557,
		-0.309965,
		1
	},
	[0.233333333333] = {
		0.246952,
		-0.010163,
		0.968975,
		0,
		-0.410662,
		0.904614,
		0.114148,
		0,
		-0.877708,
		-0.42611,
		0.219223,
		0,
		0.452189,
		1.35677,
		-0.275951,
		1
	},
	[0.25] = {
		0.25454,
		0.03583,
		0.966398,
		0,
		-0.368222,
		0.927629,
		0.062593,
		0,
		-0.894216,
		-0.371781,
		0.249312,
		0,
		0.264427,
		1.547422,
		-0.254004,
		1
	},
	[0.266666666667] = {
		0.248062,
		0.062051,
		0.966755,
		0,
		-0.33913,
		0.940362,
		0.026662,
		0,
		-0.907445,
		-0.334469,
		0.254311,
		0,
		0.26256,
		1.568174,
		-0.248992,
		1
	},
	[0.283333333333] = {
		0.245953,
		0.077374,
		0.966189,
		0,
		-0.318377,
		0.94795,
		0.005133,
		0,
		-0.915502,
		-0.308874,
		0.257785,
		0,
		0.261836,
		1.582705,
		-0.244218,
		1
	},
	[0.2] = {
		0.252619,
		-0.118591,
		0.960271,
		0,
		-0.508704,
		0.827943,
		0.236074,
		0,
		-0.823046,
		-0.54813,
		0.148827,
		0,
		0.973783,
		0.692703,
		-0.323214,
		1
	},
	[0.316666666667] = {
		0.260844,
		0.074948,
		0.962467,
		0,
		-0.308878,
		0.951053,
		0.009652,
		0,
		-0.914634,
		-0.299802,
		0.271227,
		0,
		0.254735,
		1.598602,
		-0.232341,
		1
	},
	[0.333333333333] = {
		0.27427,
		0.061811,
		0.959664,
		0,
		-0.315934,
		0.948331,
		0.029212,
		0,
		-0.908274,
		-0.311203,
		0.279627,
		0,
		0.248354,
		1.602005,
		-0.225587,
		1
	},
	[0.35] = {
		0.284019,
		0.04856,
		0.957588,
		0,
		-0.322823,
		0.945251,
		0.047815,
		0,
		-0.902839,
		-0.322712,
		0.284145,
		0,
		0.243214,
		1.60348,
		-0.220468,
		1
	},
	[0.366666666667] = {
		0.290422,
		0.037626,
		0.956159,
		0,
		-0.329091,
		0.942202,
		0.062881,
		0,
		-0.898529,
		-0.332925,
		0.286019,
		0,
		0.240245,
		1.60364,
		-0.217023,
		1
	},
	[0.383333333333] = {
		0.297253,
		0.035441,
		0.954141,
		0,
		-0.328086,
		0.942254,
		0.067213,
		0,
		-0.896661,
		-0.333019,
		0.291715,
		0,
		0.243284,
		1.602887,
		-0.216433,
		1
	},
	[0.3] = {
		0.249712,
		0.081675,
		0.96487,
		0,
		-0.307808,
		0.951448,
		-0.000877,
		0,
		-0.918095,
		-0.296776,
		0.262728,
		0,
		0.259853,
		1.592457,
		-0.238937,
		1
	},
	[0.416666666667] = {
		0.319965,
		0.062522,
		0.945364,
		0,
		-0.296968,
		0.954154,
		0.037407,
		0,
		-0.899684,
		-0.292712,
		0.323863,
		0,
		0.267333,
		1.599336,
		-0.224549,
		1
	},
	[0.433333333333] = {
		0.334197,
		0.085514,
		0.938616,
		0,
		-0.27451,
		0.961531,
		0.010138,
		0,
		-0.901641,
		-0.261048,
		0.344815,
		0,
		0.281922,
		1.596916,
		-0.231401,
		1
	},
	[0.45] = {
		0.348988,
		0.110967,
		0.930534,
		0,
		-0.252333,
		0.967418,
		-0.02073,
		0,
		-0.902516,
		-0.22757,
		0.365618,
		0,
		0.294022,
		1.594515,
		-0.238882,
		1
	},
	[0.466666666667] = {
		0.362939,
		0.136514,
		0.921759,
		0,
		-0.233844,
		0.970898,
		-0.051716,
		0,
		-0.901993,
		-0.196778,
		0.3843,
		0,
		0.300578,
		1.592707,
		-0.246088,
		1
	},
	[0.483333333333] = {
		0.374659,
		0.159712,
		0.913303,
		0,
		-0.220519,
		0.972134,
		-0.079537,
		0,
		-0.900557,
		-0.171601,
		0.399438,
		0,
		0.301337,
		1.591644,
		-0.252321,
		1
	},
	[0.4] = {
		0.307375,
		0.044798,
		0.950534,
		0,
		-0.316083,
		0.946983,
		0.057582,
		0,
		-0.897559,
		-0.318147,
		0.305238,
		0,
		0.25339,
		1.601395,
		-0.219249,
		1
	},
	[0.516666666667] = {
		0.386942,
		0.188691,
		0.902592,
		0,
		-0.209257,
		0.97127,
		-0.11334,
		0,
		-0.898047,
		-0.145017,
		0.41531,
		0,
		0.292824,
		1.590903,
		-0.259655,
		1
	},
	[0.533333333333] = {
		0.385359,
		0.189614,
		0.903075,
		0,
		-0.212731,
		0.970554,
		-0.113006,
		0,
		-0.897911,
		-0.148564,
		0.414348,
		0,
		0.284929,
		1.591257,
		-0.25949,
		1
	},
	[0.55] = {
		0.377331,
		0.177601,
		0.908889,
		0,
		-0.223783,
		0.969839,
		-0.096606,
		0,
		-0.898633,
		-0.166942,
		0.405695,
		0,
		0.275397,
		1.592012,
		-0.255828,
		1
	},
	[0.566666666667] = {
		0.362077,
		0.148756,
		0.920202,
		0,
		-0.244394,
		0.9678,
		-0.060287,
		0,
		-0.89954,
		-0.203064,
		0.386773,
		0,
		0.264626,
		1.592849,
		-0.247831,
		1
	},
	[0.583333333333] = {
		0.339309,
		0.098232,
		0.935532,
		0,
		-0.27745,
		0.96074,
		-0.000251,
		0,
		-0.898827,
		-0.259478,
		0.353243,
		0,
		0.252791,
		1.592988,
		-0.234599,
		1
	},
	[0.5] = {
		0.383031,
		0.177882,
		0.906446,
		0,
		-0.212117,
		0.971999,
		-0.101113,
		0,
		-0.899051,
		-0.153543,
		0.410038,
		0,
		0.298516,
		1.591034,
		-0.25705,
		1
	},
	[0.616666666667] = {
		0.231855,
		-0.212314,
		0.949298,
		0,
		-0.478692,
		0.824646,
		0.301351,
		0,
		-0.846816,
		-0.524291,
		0.089565,
		0,
		0.208128,
		1.558755,
		-0.167502,
		1
	},
	[0.633333333333] = {
		0.222247,
		-0.247296,
		0.943107,
		0,
		-0.438745,
		0.838459,
		0.323248,
		0,
		-0.870695,
		-0.485624,
		0.077845,
		0,
		0.242926,
		1.509214,
		-0.181706,
		1
	},
	[0.65] = {
		0.233639,
		-0.240195,
		0.942188,
		0,
		-0.328486,
		0.892536,
		0.308993,
		0,
		-0.915156,
		-0.381688,
		0.129631,
		0,
		0.330305,
		1.430914,
		-0.232657,
		1
	},
	[0.666666666667] = {
		0.274857,
		-0.212825,
		0.937635,
		0,
		-0.171924,
		0.948599,
		0.265711,
		0,
		-0.945989,
		-0.234234,
		0.22414,
		0,
		0.439558,
		1.339089,
		-0.299911,
		1
	},
	[0.683333333333] = {
		0.344952,
		-0.18394,
		0.920421,
		0,
		-0.006969,
		0.980081,
		0.198474,
		0,
		-0.938594,
		-0.074878,
		0.3368,
		0,
		0.53721,
		1.251145,
		-0.363415,
		1
	},
	[0.6] = {
		0.279602,
		-0.062122,
		0.958104,
		0,
		-0.39726,
		0.900992,
		0.174351,
		0,
		-0.874075,
		-0.429365,
		0.22724,
		0,
		0.225732,
		1.584738,
		-0.196576,
		1
	},
	[0.716666666667] = {
		0.51637,
		-0.137419,
		0.845268,
		0,
		0.19816,
		0.979426,
		0.038175,
		0,
		-0.833123,
		0.147786,
		0.532977,
		0,
		0.60143,
		1.150989,
		-0.420147,
		1
	},
	[0.733333333333] = {
		0.594505,
		-0.117956,
		0.795393,
		0,
		0.244015,
		0.969,
		-0.038683,
		0,
		-0.766173,
		0.217085,
		0.604858,
		0,
		0.607872,
		1.117219,
		-0.436798,
		1
	},
	[0.75] = {
		0.658275,
		-0.098469,
		0.746309,
		0,
		0.262803,
		0.959091,
		-0.10526,
		0,
		-0.705413,
		0.265422,
		0.657224,
		0,
		0.609042,
		1.087959,
		-0.450873,
		1
	},
	[0.766666666667] = {
		0.704926,
		-0.077443,
		0.705041,
		0,
		0.261571,
		0.952343,
		-0.156921,
		0,
		-0.659288,
		0.295036,
		0.691588,
		0,
		0.606587,
		1.062813,
		-0.461734,
		1
	},
	[0.783333333333] = {
		0.733815,
		-0.055103,
		0.677111,
		0,
		0.24735,
		0.949963,
		-0.190756,
		0,
		-0.632719,
		0.307463,
		0.710727,
		0,
		0.602073,
		1.041153,
		-0.469048,
		1
	},
	[0.7] = {
		0.430354,
		-0.159694,
		0.888422,
		0,
		0.120389,
		0.985588,
		0.118843,
		0,
		-0.894596,
		0.055811,
		0.443377,
		0,
		0.588391,
		1.189256,
		-0.40192,
		1
	},
	[0.816666666667] = {
		0.76211,
		-0.005362,
		0.647425,
		0,
		0.205772,
		0.950124,
		-0.234354,
		0,
		-0.613878,
		0.311826,
		0.725202,
		0,
		0.591541,
		1.002912,
		-0.478966,
		1
	},
	[0.833333333333] = {
		0.768404,
		0.019457,
		0.639669,
		0,
		0.186965,
		0.949105,
		-0.253462,
		0,
		-0.612045,
		0.314357,
		0.725658,
		0,
		0.587133,
		0.983897,
		-0.483428,
		1
	},
	[0.85] = {
		0.770446,
		0.040998,
		0.636186,
		0,
		0.173718,
		0.946664,
		-0.271385,
		0,
		-0.61338,
		0.319605,
		0.722231,
		0,
		0.584203,
		0.963753,
		-0.487744,
		1
	},
	[0.866666666667] = {
		0.769039,
		0.056911,
		0.636663,
		0,
		0.168992,
		0.942486,
		-0.288378,
		0,
		-0.616458,
		0.329365,
		0.715191,
		0,
		0.58338,
		0.941623,
		-0.49201,
		1
	},
	[0.883333333333] = {
		0.764871,
		0.064944,
		0.640902,
		0,
		0.175683,
		0.936162,
		-0.304528,
		0,
		-0.619765,
		0.34552,
		0.704633,
		0,
		0.585284,
		0.916624,
		-0.49629,
		1
	},
	[0.8] = {
		0.750795,
		-0.031028,
		0.659806,
		0,
		0.22702,
		0.950167,
		-0.213645,
		0,
		-0.620297,
		0.310193,
		0.720424,
		0,
		0.596762,
		1.021683,
		-0.474228,
		1
	},
	[0.916666666667] = {
		0.749078,
		0.048295,
		0.660719,
		0,
		0.235277,
		0.91293,
		-0.333471,
		0,
		-0.619295,
		0.405248,
		0.672494,
		0,
		0.600111,
		0.85389,
		-0.504766,
		1
	},
	[0.933333333333] = {
		0.73591,
		0.019219,
		0.676807,
		0,
		0.294177,
		0.891243,
		-0.345175,
		0,
		-0.609834,
		0.453118,
		0.650221,
		0,
		0.614514,
		0.813508,
		-0.508785,
		1
	},
	[0.95] = {
		0.710512,
		-0.033432,
		0.70289,
		0,
		0.391597,
		0.848698,
		-0.355476,
		0,
		-0.584657,
		0.52782,
		0.616103,
		0,
		0.65426,
		0.757417,
		-0.513192,
		1
	},
	[0.966666666667] = {
		0.661914,
		-0.107437,
		0.741841,
		0,
		0.529458,
		0.767576,
		-0.36125,
		0,
		-0.530608,
		0.63189,
		0.564952,
		0,
		0.730519,
		0.678776,
		-0.517468,
		1
	},
	[0.983333333333] = {
		0.586669,
		-0.184914,
		0.788433,
		0,
		0.680496,
		0.640369,
		-0.356165,
		0,
		-0.439028,
		0.745476,
		0.501517,
		0,
		0.828699,
		0.580019,
		-0.519833,
		1
	},
	[0.9] = {
		0.758304,
		0.062825,
		0.648867,
		0,
		0.196763,
		0.926867,
		-0.31969,
		0,
		-0.621498,
		0.370095,
		0.690485,
		0,
		0.590614,
		0.887769,
		-0.500567,
		1
	},
	[1.01666666667] = {
		0.388916,
		-0.283029,
		0.87672,
		0,
		0.906639,
		0.286525,
		-0.309691,
		0,
		-0.163551,
		0.915313,
		0.36804,
		0,
		1.02831,
		0.347537,
		-0.516138,
		1
	},
	[1.03333333333] = {
		0.302669,
		-0.291888,
		0.9073,
		0,
		0.952927,
		0.110605,
		-0.282307,
		0,
		-0.01795,
		0.950036,
		0.311625,
		0,
		1.103771,
		0.234816,
		-0.512464,
		1
	},
	[1.05] = {
		0.248588,
		-0.283613,
		0.926157,
		0,
		0.963007,
		-0.030328,
		-0.267766,
		0,
		0.104031,
		0.958459,
		0.265582,
		0,
		1.151873,
		0.139641,
		-0.510867,
		1
	},
	[1.06666666667] = {
		0.237704,
		-0.270794,
		0.932827,
		0,
		0.952999,
		-0.120714,
		-0.277887,
		0,
		0.187855,
		0.955039,
		0.229373,
		0,
		1.166894,
		0.071502,
		-0.513961,
		1
	},
	[1.08333333333] = {
		0.268358,
		-0.261958,
		0.927018,
		0,
		0.93327,
		-0.167781,
		-0.31758,
		0,
		0.238729,
		0.950383,
		0.199452,
		0,
		1.156058,
		0.025604,
		-0.540188,
		1
	},
	[1.11666666667] = {
		0.411834,
		-0.261216,
		0.873017,
		0,
		0.865268,
		-0.188417,
		-0.464555,
		0,
		0.28584,
		0.946713,
		0.148425,
		0,
		1.097343,
		-0.03451,
		-0.689062,
		1
	},
	[1.13333333333] = {
		0.50973,
		-0.266257,
		0.818097,
		0,
		0.81085,
		-0.169167,
		-0.560272,
		0,
		0.287571,
		0.948941,
		0.129665,
		0,
		1.053061,
		-0.051193,
		-0.795387,
		1
	},
	[1.15] = {
		0.613872,
		-0.271178,
		0.741366,
		0,
		0.738412,
		-0.13481,
		-0.660737,
		0,
		0.279121,
		0.953042,
		0.117485,
		0,
		1.001226,
		-0.060642,
		-0.911624,
		1
	},
	[1.16666666667] = {
		0.715216,
		-0.273186,
		0.6433,
		0,
		0.646916,
		-0.089588,
		-0.75728,
		0,
		0.26451,
		0.957781,
		0.112654,
		0,
		0.94418,
		-0.064282,
		-1.029165,
		1
	},
	[1.18333333333] = {
		0.805378,
		-0.270488,
		0.527449,
		0,
		0.538359,
		-0.038599,
		-0.841831,
		0,
		0.248065,
		0.961949,
		0.114533,
		0,
		0.88491,
		-0.063671,
		-1.139704,
		1
	},
	[1.1] = {
		0.328791,
		-0.25902,
		0.908188,
		0,
		0.90483,
		-0.18906,
		-0.381496,
		0,
		0.270517,
		0.947188,
		0.172207,
		0,
		1.132231,
		-0.009314,
		-0.601221,
		1
	},
	[1.21666666667] = {
		0.929717,
		-0.252033,
		0.268525,
		0,
		0.291627,
		0.058562,
		-0.954738,
		0,
		0.2249,
		0.965945,
		0.127946,
		0,
		0.774094,
		-0.055831,
		-1.309914,
		1
	},
	[1.23333333333] = {
		0.960312,
		-0.240986,
		0.14045,
		0,
		0.167307,
		0.094765,
		-0.98134,
		0,
		0.22318,
		0.965891,
		0.131323,
		0,
		0.730015,
		-0.051191,
		-1.356636,
		1
	},
	[1.25] = {
		0.972015,
		-0.233887,
		0.021986,
		0,
		0.050738,
		0.117633,
		-0.99176,
		0,
		0.229374,
		0.965121,
		0.126208,
		0,
		0.698028,
		-0.047342,
		-1.370168,
		1
	},
	[1.2] = {
		0.877998,
		-0.262904,
		0.400001,
		0,
		0.417669,
		0.012578,
		-0.908512,
		0,
		0.23382,
		0.96474,
		0.120851,
		0,
		0.826953,
		-0.060379,
		-1.235572,
		1
	}
}

return spline_matrices

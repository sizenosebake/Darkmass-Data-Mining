local spline_matrices = {
	[0] = {
		0.98654,
		0.140911,
		0.082961,
		0,
		0.065531,
		0.12412,
		-0.990101,
		0,
		-0.149813,
		0.982211,
		0.113216,
		0,
		0.256408,
		0.05972,
		-0.215097,
		1
	},
	[0.0166666666667] = {
		0.987289,
		0.13831,
		0.078304,
		0,
		0.061603,
		0.121161,
		-0.990719,
		0,
		-0.146514,
		0.98295,
		0.111101,
		0,
		0.150837,
		0.443012,
		-0.116375,
		1
	},
	[0.0333333333333] = {
		0.987969,
		0.137573,
		0.07065,
		0,
		0.054393,
		0.11854,
		-0.991458,
		0,
		-0.144773,
		0.983373,
		0.109631,
		0,
		0.099103,
		0.634763,
		-0.067986,
		1
	},
	[0.05] = {
		0.988602,
		0.138197,
		0.059733,
		0,
		0.043742,
		0.115992,
		-0.992287,
		0,
		-0.144059,
		0.983589,
		0.108625,
		0,
		0.099435,
		0.640476,
		-0.069022,
		1
	},
	[0.0666666666667] = {
		0.989182,
		0.139088,
		0.046611,
		0,
		0.030886,
		0.113145,
		-0.993098,
		0,
		-0.143402,
		0.983795,
		0.107626,
		0,
		0.099888,
		0.645222,
		-0.070352,
		1
	},
	[0.0833333333333] = {
		0.989613,
		0.140174,
		0.031882,
		0,
		0.016421,
		0.110102,
		-0.993785,
		0,
		-0.142813,
		0.983986,
		0.106656,
		0,
		0.100431,
		0.649089,
		-0.071903,
		1
	},
	[0.116666666667] = {
		0.989772,
		0.142658,
		1.8e-05,
		0,
		-0.014946,
		0.10382,
		-0.994484,
		0,
		-0.141873,
		0.984312,
		0.10489,
		0,
		0.101666,
		0.654544,
		-0.075372,
		1
	},
	[0.133333333333] = {
		0.98946,
		0.143931,
		-0.015908,
		0,
		-0.030648,
		0.10078,
		-0.994437,
		0,
		-0.141528,
		0.984443,
		0.104128,
		0,
		0.1023,
		0.65631,
		-0.077144,
		1
	},
	[0.15] = {
		0.988923,
		0.14515,
		-0.031023,
		0,
		-0.045562,
		0.097938,
		-0.994149,
		0,
		-0.141263,
		0.98455,
		0.103467,
		0,
		0.102908,
		0.657556,
		-0.078843,
		1
	},
	[0.166666666667] = {
		0.988234,
		0.146261,
		-0.044727,
		0,
		-0.059092,
		0.095393,
		-0.993684,
		0,
		-0.141071,
		0.984636,
		0.102914,
		0,
		0.103463,
		0.658371,
		-0.080395,
		1
	},
	[0.183333333333] = {
		0.987494,
		0.147213,
		-0.05642,
		0,
		-0.070643,
		0.093243,
		-0.993134,
		0,
		-0.140941,
		0.9847,
		0.102477,
		0,
		0.103939,
		0.658848,
		-0.081729,
		1
	},
	[0.1] = {
		0.989823,
		0.141385,
		0.01615,
		0,
		0.000944,
		0.10696,
		-0.994263,
		0,
		-0.142301,
		0.984159,
		0.105738,
		0,
		0.101034,
		0.652167,
		-0.073601,
		1
	},
	[0.216666666667] = {
		0.986341,
		0.14844,
		-0.071395,
		0,
		-0.085444,
		0.090519,
		-0.992223,
		0,
		-0.140823,
		0.98477,
		0.101966,
		0,
		0.104553,
		0.659145,
		-0.083448,
		1
	},
	[0.233333333333] = {
		0.986161,
		0.148613,
		-0.07349,
		0,
		-0.087515,
		0.090142,
		-0.992076,
		0,
		-0.140811,
		0.984778,
		0.1019,
		0,
		0.104639,
		0.659149,
		-0.08369,
		1
	},
	[0.25] = {
		0.986965,
		0.147892,
		-0.063464,
		0,
		-0.077388,
		0.090375,
		-0.992897,
		0,
		-0.141106,
		0.984866,
		0.100642,
		0,
		0.104562,
		0.659091,
		-0.083389,
		1
	},
	[0.266666666667] = {
		0.988722,
		0.145795,
		-0.034249,
		0,
		-0.047883,
		0.091059,
		-0.994694,
		0,
		-0.141903,
		0.985115,
		0.097014,
		0,
		0.10434,
		0.658918,
		-0.082496,
		1
	},
	[0.283333333333] = {
		0.989722,
		0.142423,
		0.012863,
		0,
		-0.000324,
		0.09218,
		-0.995742,
		0,
		-0.143003,
		0.985504,
		0.091278,
		0,
		0.103982,
		0.658629,
		-0.081027,
		1
	},
	[0.2] = {
		0.986822,
		0.147956,
		-0.065507,
		0,
		-0.079623,
		0.091586,
		-0.992609,
		0,
		-0.140862,
		0.984744,
		0.10216,
		0,
		0.104311,
		0.659075,
		-0.082771,
		1
	},
	[0.316666666667] = {
		0.979054,
		0.132257,
		0.154794,
		0,
		0.142824,
		0.095702,
		-0.98511,
		0,
		-0.145102,
		0.986585,
		0.074808,
		0,
		0.102905,
		0.657705,
		-0.076418,
		1
	},
	[0.333333333333] = {
		0.961176,
		0.125654,
		0.245667,
		0,
		0.234378,
		0.098103,
		-0.967183,
		0,
		-0.145631,
		0.987212,
		0.064844,
		0,
		0.102206,
		0.65707,
		-0.07331,
		1
	},
	[0.35] = {
		0.930678,
		0.118157,
		0.346234,
		0,
		0.335614,
		0.100934,
		-0.936576,
		0,
		-0.14561,
		0.987852,
		0.054282,
		0,
		0.101417,
		0.656318,
		-0.069685,
		1
	},
	[0.366666666667] = {
		0.884729,
		0.109846,
		0.452978,
		0,
		0.442976,
		0.104192,
		-0.890459,
		0,
		-0.14501,
		0.988472,
		0.043523,
		0,
		0.100546,
		0.655451,
		-0.065559,
		1
	},
	[0.383333333333] = {
		0.821153,
		0.100794,
		0.561737,
		0,
		0.552264,
		0.107872,
		-0.826661,
		0,
		-0.143918,
		0.989042,
		0.032914,
		0,
		0.099605,
		0.654468,
		-0.060947,
		1
	},
	[0.3] = {
		0.987494,
		0.137878,
		0.076454,
		0,
		0.063836,
		0.093728,
		-0.993549,
		0,
		-0.144154,
		0.986004,
		0.083754,
		0,
		0.1035,
		0.658225,
		-0.078996,
		1
	},
	[0.416666666667] = {
		0.637296,
		0.08073,
		0.766379,
		0,
		0.757596,
		0.116423,
		-0.642257,
		0,
		-0.141073,
		0.989913,
		0.013036,
		0,
		0.097557,
		0.652154,
		-0.050327,
		1
	},
	[0.433333333333] = {
		0.518101,
		0.06984,
		0.852463,
		0,
		0.843808,
		0.121227,
		-0.522773,
		0,
		-0.139852,
		0.990165,
		0.003877,
		0,
		0.096471,
		0.650823,
		-0.044348,
		1
	},
	[0.45] = {
		0.383581,
		0.058461,
		0.921655,
		0,
		0.912971,
		0.126316,
		-0.387979,
		0,
		-0.139102,
		0.990266,
		-0.004921,
		0,
		0.095359,
		0.649376,
		-0.037944,
		1
	},
	[0.466666666667] = {
		0.237346,
		0.046663,
		0.970304,
		0,
		0.961431,
		0.131623,
		-0.241506,
		0,
		-0.138984,
		0.990201,
		-0.013623,
		0,
		0.094231,
		0.647813,
		-0.03113,
		1
	},
	[0.483333333333] = {
		0.083912,
		0.034525,
		0.995875,
		0,
		0.986655,
		0.137068,
		-0.087887,
		0,
		-0.139537,
		0.98996,
		-0.022563,
		0,
		0.093098,
		0.646133,
		-0.023921,
		1
	},
	[0.4] = {
		0.738707,
		0.091068,
		0.667847,
		0,
		0.658787,
		0.111958,
		-0.743952,
		0,
		-0.142521,
		0.989531,
		0.02271,
		0,
		0.098605,
		0.653369,
		-0.055865,
		1
	},
	[0.516666666667] = {
		-0.224185,
		0.009612,
		0.974499,
		0,
		0.964126,
		0.148024,
		0.220339,
		0,
		-0.142131,
		0.988937,
		-0.042451,
		0,
		0.090861,
		0.642425,
		-0.008378,
		1
	},
	[0.533333333333] = {
		-0.368764,
		-0.002934,
		0.929519,
		0,
		0.918361,
		0.153354,
		0.364822,
		0,
		-0.143616,
		0.988167,
		-0.053857,
		0,
		0.089778,
		0.640396,
		-7.4e-05,
		1
	},
	[0.55] = {
		-0.501195,
		-0.015363,
		0.865198,
		0,
		0.853143,
		0.158473,
		0.497025,
		0,
		-0.144747,
		0.987244,
		-0.066319,
		0,
		0.088734,
		0.638251,
		0.008564,
		1
	},
	[0.566666666667] = {
		-0.61827,
		-0.027526,
		0.785484,
		0,
		0.772444,
		0.163305,
		0.613728,
		0,
		-0.145167,
		0.986191,
		-0.079705,
		0,
		0.087739,
		0.635989,
		0.017522,
		1
	},
	[0.583333333333] = {
		-0.717966,
		-0.039266,
		0.694969,
		0,
		0.680893,
		0.167788,
		0.712904,
		0,
		-0.1446,
		0.985041,
		-0.09373,
		0,
		0.086805,
		0.63361,
		0.026784,
		1
	},
	[0.5] = {
		-0.071662,
		0.022139,
		0.997183,
		0,
		0.987461,
		0.142565,
		0.067798,
		0,
		-0.140662,
		0.989538,
		-0.032078,
		0,
		0.091971,
		0.644337,
		-0.016331,
		1
	},
	[0.616666666667] = {
		-0.863307,
		-0.060828,
		0.501,
		0,
		0.484856,
		0.175521,
		0.8568,
		0,
		-0.140053,
		0.982595,
		-0.122036,
		0,
		0.08516,
		0.628503,
		0.04616,
		1
	},
	[0.633333333333] = {
		-0.910778,
		-0.070325,
		0.406863,
		0,
		0.38977,
		0.178713,
		0.903405,
		0,
		-0.136243,
		0.981385,
		-0.135357,
		0,
		0.084471,
		0.625774,
		0.056244,
		1
	},
	[0.65] = {
		-0.944106,
		-0.078754,
		0.320098,
		0,
		0.302159,
		0.181432,
		0.935833,
		0,
		-0.131776,
		0.980245,
		-0.147495,
		0,
		0.083886,
		0.622928,
		0.066571,
		1
	},
	[0.666666666667] = {
		-0.96594,
		-0.085963,
		0.244071,
		0,
		0.225414,
		0.183674,
		0.956793,
		0,
		-0.127079,
		0.979221,
		-0.15804,
		0,
		0.083415,
		0.619965,
		0.077128,
		1
	},
	[0.683333333333] = {
		-0.979088,
		-0.091808,
		0.181545,
		0,
		0.162316,
		0.185433,
		0.969158,
		0,
		-0.122641,
		0.978359,
		-0.166653,
		0,
		0.08307,
		0.616886,
		0.087898,
		1
	},
	[0.6] = {
		-0.79951,
		-0.050421,
		0.598533,
		0,
		0.583408,
		0.171872,
		0.793785,
		0,
		-0.142895,
		0.983828,
		-0.107997,
		0,
		0.085941,
		0.631115,
		0.036335,
		1
	}
}

return spline_matrices

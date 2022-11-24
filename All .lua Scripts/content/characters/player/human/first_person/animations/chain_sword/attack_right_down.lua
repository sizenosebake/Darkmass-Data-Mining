local spline_matrices = {
	[0] = {
		-0.784371,
		-0.606926,
		0.128078,
		0,
		-0.504034,
		0.743974,
		0.438695,
		0,
		-0.361541,
		0.279544,
		-0.889462,
		0,
		-0.140245,
		-0.287465,
		-0.172253,
		1
	},
	[0.0166666666667] = {
		-0.771181,
		-0.607837,
		0.189245,
		0,
		-0.494727,
		0.759294,
		0.42275,
		0,
		-0.400655,
		0.232392,
		-0.886267,
		0,
		-0.153157,
		-0.282303,
		-0.168245,
		1
	},
	[0.0333333333333] = {
		-0.677588,
		-0.633087,
		0.374267,
		0,
		-0.541181,
		0.77381,
		0.329152,
		0,
		-0.497993,
		0.020484,
		-0.866939,
		0,
		-0.184266,
		-0.268319,
		-0.157151,
		1
	},
	[0.05] = {
		-0.364427,
		-0.61351,
		0.70057,
		0,
		-0.716966,
		0.664932,
		0.209345,
		0,
		-0.594267,
		-0.425994,
		-0.682185,
		0,
		-0.222123,
		-0.247735,
		-0.140392,
		1
	},
	[0.0666666666667] = {
		0.240627,
		-0.385048,
		0.890975,
		0,
		-0.831347,
		0.392013,
		0.393938,
		0,
		-0.500959,
		-0.835502,
		-0.22578,
		0,
		-0.255276,
		-0.222788,
		-0.119409,
		1
	},
	[0.0833333333333] = {
		0.779259,
		-0.130939,
		0.61287,
		0,
		-0.579492,
		0.221815,
		0.784211,
		0,
		-0.238628,
		-0.966257,
		0.096973,
		0,
		-0.272283,
		-0.19578,
		-0.095631,
		1
	},
	[0.116666666667] = {
		0.97811,
		-0.021015,
		0.207024,
		0,
		-0.198041,
		0.211403,
		0.957125,
		0,
		-0.06388,
		-0.977173,
		0.202614,
		0,
		-0.236759,
		-0.143501,
		-0.042349,
		1
	},
	[0.133333333333] = {
		0.973134,
		0.031353,
		0.228094,
		0,
		-0.228806,
		0.242027,
		0.942905,
		0,
		-0.025642,
		-0.969763,
		0.242699,
		0,
		-0.217228,
		-0.118453,
		-0.008812,
		1
	},
	[0.15] = {
		0.957536,
		0.071745,
		0.279246,
		0,
		-0.288098,
		0.200562,
		0.936362,
		0,
		0.011173,
		-0.97705,
		0.212715,
		0,
		-0.201734,
		-0.094783,
		0.030447,
		1
	},
	[0.166666666667] = {
		0.956767,
		0.085766,
		0.277922,
		0,
		-0.285259,
		0.090169,
		0.9542,
		0,
		0.056777,
		-0.992227,
		0.110736,
		0,
		-0.188891,
		-0.073341,
		0.075809,
		1
	},
	[0.183333333333] = {
		0.967725,
		0.081801,
		0.238361,
		0,
		-0.235563,
		-0.042449,
		0.970932,
		0,
		0.089541,
		-0.995744,
		-0.02181,
		0,
		-0.187785,
		-0.052387,
		0.122715,
		1
	},
	[0.1] = {
		0.956413,
		-0.051238,
		0.287487,
		0,
		-0.273872,
		0.184244,
		0.943954,
		0,
		-0.101334,
		-0.981544,
		0.162181,
		0,
		-0.261724,
		-0.169119,
		-0.070446,
		1
	},
	[0.216666666667] = {
		0.966186,
		0.008535,
		0.257705,
		0,
		-0.250438,
		-0.206792,
		0.94579,
		0,
		0.061364,
		-0.978348,
		-0.197662,
		0,
		-0.226991,
		-0.005825,
		0.201278,
		1
	},
	[0.233333333333] = {
		0.951004,
		-0.020972,
		0.308466,
		0,
		-0.30795,
		-0.153108,
		0.939002,
		0,
		0.027536,
		-0.987987,
		-0.152065,
		0,
		-0.249971,
		0.030972,
		0.225515,
		1
	},
	[0.25] = {
		0.935787,
		-0.024021,
		0.351747,
		0,
		-0.351233,
		0.02317,
		0.936001,
		0,
		-0.030634,
		-0.999443,
		0.013245,
		0,
		-0.261276,
		0.086441,
		0.237063,
		1
	},
	[0.266666666667] = {
		0.930351,
		-0.009638,
		0.366544,
		0,
		-0.350472,
		0.270475,
		0.896668,
		0,
		-0.107783,
		-0.962679,
		0.248259,
		0,
		-0.250925,
		0.15177,
		0.241412,
		1
	},
	[0.283333333333] = {
		0.93249,
		-0.012684,
		0.360972,
		0,
		-0.302755,
		0.517575,
		0.800285,
		0,
		-0.196981,
		-0.855544,
		0.478793,
		0,
		-0.223388,
		0.22038,
		0.24074,
		1
	},
	[0.2] = {
		0.972078,
		0.049119,
		0.229458,
		0,
		-0.219882,
		-0.150823,
		0.963797,
		0,
		0.081948,
		-0.98734,
		-0.135811,
		0,
		-0.20313,
		-0.029779,
		0.16514,
		1
	},
	[0.316666666667] = {
		0.924615,
		-0.085177,
		0.371256,
		0,
		-0.08796,
		0.900587,
		0.425684,
		0,
		-0.370607,
		-0.426249,
		0.825204,
		0,
		-0.146418,
		0.388553,
		0.212482,
		1
	},
	[0.333333333333] = {
		0.915565,
		-0.099908,
		0.389564,
		0,
		0.051506,
		0.989804,
		0.132796,
		0,
		-0.398859,
		-0.101519,
		0.911376,
		0,
		-0.102351,
		0.478903,
		0.179482,
		1
	},
	[0.35] = {
		0.912359,
		-0.07029,
		0.403313,
		0,
		0.166503,
		0.963701,
		-0.208703,
		0,
		-0.374003,
		0.257564,
		0.890944,
		0,
		-0.059952,
		0.558393,
		0.131644,
		1
	},
	[0.366666666667] = {
		0.902505,
		0.012224,
		0.430507,
		0,
		0.288514,
		0.724989,
		-0.625421,
		0,
		-0.319758,
		0.688652,
		0.650779,
		0,
		-0.019422,
		0.618954,
		0.036549,
		1
	},
	[0.383333333333] = {
		0.881342,
		0.009142,
		0.472391,
		0,
		0.438038,
		0.358922,
		-0.824195,
		0,
		-0.177086,
		0.933323,
		0.312329,
		0,
		0.028009,
		0.63768,
		-0.072205,
		1
	},
	[0.3] = {
		0.9317,
		-0.04525,
		0.3604,
		0,
		-0.215329,
		0.730255,
		0.648353,
		0,
		-0.292522,
		-0.681675,
		0.670634,
		0,
		-0.188096,
		0.2986,
		0.232356,
		1
	},
	[0.416666666667] = {
		0.837612,
		-0.022665,
		0.545796,
		0,
		0.542594,
		-0.081127,
		-0.836068,
		0,
		0.063228,
		0.996446,
		-0.055655,
		0,
		0.164418,
		0.537828,
		-0.295776,
		1
	},
	[0.433333333333] = {
		0.874411,
		0.026184,
		0.484479,
		0,
		0.471221,
		-0.283686,
		-0.835149,
		0,
		0.115573,
		0.95856,
		-0.260397,
		0,
		0.225833,
		0.494508,
		-0.439733,
		1
	},
	[0.45] = {
		0.92644,
		0.03674,
		0.374644,
		0,
		0.349707,
		-0.452359,
		-0.820412,
		0,
		0.139332,
		0.891079,
		-0.431932,
		0,
		0.275114,
		0.457983,
		-0.552365,
		1
	},
	[0.466666666667] = {
		0.966814,
		0.019568,
		0.25473,
		0,
		0.21975,
		-0.572245,
		-0.790092,
		0,
		0.130308,
		0.81985,
		-0.557554,
		0,
		0.29953,
		0.429286,
		-0.601623,
		1
	},
	[0.483333333333] = {
		0.988259,
		-0.007052,
		0.152628,
		0,
		0.111012,
		-0.653226,
		-0.748981,
		0,
		0.104982,
		0.757131,
		-0.644773,
		0,
		0.297576,
		0.39443,
		-0.604229,
		1
	},
	[0.4] = {
		0.84874,
		-0.032611,
		0.527804,
		0,
		0.527364,
		0.125968,
		-0.84025,
		0,
		-0.039085,
		0.991498,
		0.124112,
		0,
		0.087663,
		0.606672,
		-0.175359,
		1
	},
	[0.516666666667] = {
		0.997573,
		-0.042226,
		0.05537,
		0,
		0.015955,
		-0.635395,
		-0.772022,
		0,
		0.067781,
		0.771032,
		-0.633179,
		0,
		0.238882,
		0.173483,
		-0.519885,
		1
	},
	[0.533333333333] = {
		0.998572,
		-0.039573,
		0.035895,
		0,
		0.008624,
		-0.54366,
		-0.839262,
		0,
		0.052727,
		0.838372,
		-0.542542,
		0,
		0.192083,
		0.002397,
		-0.438993,
		1
	},
	[0.55] = {
		0.999522,
		-0.026061,
		0.016633,
		0,
		0.004097,
		-0.421585,
		-0.90678,
		0,
		0.030644,
		0.906414,
		-0.421276,
		0,
		0.141471,
		-0.177767,
		-0.350846,
		1
	},
	[0.566666666667] = {
		0.999866,
		-0.011351,
		-0.011764,
		0,
		-0.014612,
		-0.297817,
		-0.954511,
		0,
		0.007331,
		0.954556,
		-0.297943,
		0,
		0.092872,
		-0.343514,
		-0.269286,
		1
	},
	[0.583333333333] = {
		0.998469,
		-0.008341,
		-0.054689,
		0,
		-0.055217,
		-0.211001,
		-0.975925,
		0,
		-0.0034,
		0.97745,
		-0.211138,
		0,
		0.052019,
		-0.471394,
		-0.208034,
		1
	},
	[0.5] = {
		0.995615,
		-0.029856,
		0.088649,
		0,
		0.044971,
		-0.678218,
		-0.733483,
		0,
		0.082022,
		0.734254,
		-0.673902,
		0,
		0.275908,
		0.312066,
		-0.579633,
		1
	},
	[0.616666666667] = {
		0.983711,
		-0.064237,
		-0.167887,
		0,
		-0.178371,
		-0.233047,
		-0.955967,
		0,
		0.022283,
		0.970342,
		-0.240709,
		0,
		0.00967,
		-0.559932,
		-0.176102,
		1
	},
	[0.633333333333] = {
		0.979403,
		-0.077221,
		-0.186566,
		0,
		-0.200046,
		-0.245633,
		-0.948497,
		0,
		0.027417,
		0.966282,
		-0.256021,
		0,
		0.004028,
		-0.568109,
		-0.173351,
		1
	},
	[0.65] = {
		0.979319,
		-0.078152,
		-0.186618,
		0,
		-0.200411,
		-0.248254,
		-0.947737,
		0,
		0.027739,
		0.965537,
		-0.258783,
		0,
		0.003748,
		-0.568603,
		-0.171732,
		1
	},
	[0.666666666667] = {
		0.979213,
		-0.07938,
		-0.186657,
		0,
		-0.200853,
		-0.25114,
		-0.946883,
		0,
		0.028287,
		0.96469,
		-0.261863,
		0,
		0.003329,
		-0.569149,
		-0.169923,
		1
	},
	[0.683333333333] = {
		0.979087,
		-0.080853,
		-0.186685,
		0,
		-0.201359,
		-0.25419,
		-0.945961,
		0,
		0.02903,
		0.963769,
		-0.265154,
		0,
		0.00279,
		-0.569727,
		-0.167985,
		1
	},
	[0.6] = {
		0.992903,
		-0.031259,
		-0.114748,
		0,
		-0.118706,
		-0.201367,
		-0.972296,
		0,
		0.007286,
		0.979017,
		-0.203648,
		0,
		0.024604,
		-0.537944,
		-0.180833,
		1
	},
	[0.716666666667] = {
		0.978791,
		-0.084328,
		-0.186701,
		0,
		-0.202504,
		-0.260391,
		-0.944028,
		0,
		0.030993,
		0.961813,
		-0.271946,
		0,
		0.00143,
		-0.570899,
		-0.163974,
		1
	},
	[0.733333333333] = {
		0.978627,
		-0.086228,
		-0.186692,
		0,
		-0.203114,
		-0.263347,
		-0.943076,
		0,
		0.032155,
		0.96084,
		-0.275233,
		0,
		0.000646,
		-0.571456,
		-0.162027,
		1
	},
	[0.75] = {
		0.978457,
		-0.088168,
		-0.186675,
		0,
		-0.203729,
		-0.266077,
		-0.942177,
		0,
		0.0334,
		0.959911,
		-0.278307,
		0,
		-0.000183,
		-0.571971,
		-0.160202,
		1
	},
	[0.766666666667] = {
		0.978286,
		-0.090095,
		-0.186655,
		0,
		-0.204336,
		-0.268483,
		-0.941363,
		0,
		0.034699,
		0.959062,
		-0.281063,
		0,
		-0.001036,
		-0.572426,
		-0.158563,
		1
	},
	[0.783333333333] = {
		0.978116,
		-0.09196,
		-0.186637,
		0,
		-0.20492,
		-0.27047,
		-0.940667,
		0,
		0.036024,
		0.958326,
		-0.283396,
		0,
		-0.001895,
		-0.572807,
		-0.157174,
		1
	},
	[0.7] = {
		0.978945,
		-0.082519,
		-0.186699,
		0,
		-0.201914,
		-0.257306,
		-0.944999,
		0,
		0.029942,
		0.9628,
		-0.268551,
		0,
		0.002151,
		-0.570316,
		-0.165981,
		1
	},
	[0.816666666667] = {
		0.977814,
		-0.095111,
		-0.186637,
		0,
		-0.205913,
		-0.27284,
		-0.939765,
		0,
		0.03846,
		0.957346,
		-0.286372,
		0,
		-0.003449,
		-0.573284,
		-0.155399,
		1
	},
	[0.833333333333] = {
		0.977694,
		-0.096272,
		-0.18667,
		0,
		-0.206287,
		-0.273036,
		-0.939626,
		0,
		0.039492,
		0.957174,
		-0.286806,
		0,
		-0.004093,
		-0.57335,
		-0.155141,
		1
	},
	[0.85] = {
		0.977599,
		-0.097108,
		-0.186736,
		0,
		-0.206566,
		-0.272437,
		-0.939738,
		0,
		0.040382,
		0.957261,
		-0.286394,
		0,
		-0.004634,
		-0.573279,
		-0.155388,
		1
	},
	[0.866666666667] = {
		0.977526,
		-0.097648,
		-0.186838,
		0,
		-0.20677,
		-0.271275,
		-0.94003,
		0,
		0.041108,
		0.957536,
		-0.285369,
		0,
		-0.005068,
		-0.573108,
		-0.156002,
		1
	},
	[0.883333333333] = {
		0.977471,
		-0.097956,
		-0.186962,
		0,
		-0.20692,
		-0.269948,
		-0.940379,
		0,
		0.041645,
		0.957879,
		-0.284136,
		0,
		-0.005389,
		-0.572904,
		-0.156739,
		1
	},
	[0.8] = {
		0.977956,
		-0.093661,
		-0.186628,
		0,
		-0.205454,
		-0.271952,
		-0.940123,
		0,
		0.037299,
		0.957742,
		-0.2852,
		0,
		-0.002713,
		-0.573098,
		-0.156098,
		1
	},
	[0.916666666667] = {
		0.977425,
		-0.098126,
		-0.187113,
		0,
		-0.207046,
		-0.268407,
		-0.940792,
		0,
		0.042094,
		0.958295,
		-0.282664,
		0,
		-0.005657,
		-0.57266,
		-0.157619,
		1
	},
	[0.9] = {
		0.977437,
		-0.098094,
		-0.187068,
		0,
		-0.207014,
		-0.268859,
		-0.94067,
		0,
		0.041979,
		0.958171,
		-0.283099,
		0,
		-0.005588,
		-0.572732,
		-0.157359,
		1
	}
}

return spline_matrices
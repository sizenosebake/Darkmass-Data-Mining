local spline_matrices = {
	[0] = {
		0.898318,
		-0.389416,
		0.203418,
		0,
		-0.129664,
		-0.677371,
		-0.724124,
		0,
		0.419775,
		0.624118,
		-0.658988,
		0,
		0.316179,
		0.030921,
		-0.719554,
		1
	},
	{
		0.604318,
		-0.764793,
		0.223362,
		0,
		-0.530547,
		-0.595425,
		-0.603316,
		0,
		0.594407,
		0.246091,
		-0.765585,
		0,
		0.251101,
		-0.071191,
		-0.716935,
		1
	},
	[0.0166666666667] = {
		0.776767,
		-0.6237,
		0.087359,
		0,
		-0.296381,
		-0.484408,
		-0.823108,
		0,
		0.55569,
		0.613472,
		-0.561125,
		0,
		0.354436,
		0.099969,
		-0.675356,
		1
	},
	[0.0333333333333] = {
		0.544089,
		-0.834155,
		-0.090297,
		0,
		-0.426169,
		-0.18205,
		-0.886137,
		0,
		0.722736,
		0.520619,
		-0.454542,
		0,
		0.407105,
		0.164932,
		-0.62739,
		1
	},
	[0.05] = {
		0.190727,
		-0.922114,
		-0.336644,
		0,
		-0.447262,
		0.223644,
		-0.865991,
		0,
		0.873831,
		0.315735,
		-0.369771,
		0,
		0.468359,
		0.219075,
		-0.575645,
		1
	},
	[0.0666666666667] = {
		-0.19362,
		-0.783236,
		-0.590807,
		0,
		-0.29868,
		0.620676,
		-0.724949,
		0,
		0.934506,
		0.036098,
		-0.354112,
		0,
		0.525793,
		0.25754,
		-0.524537,
		1
	},
	[0.0833333333333] = {
		-0.457628,
		-0.466667,
		-0.756835,
		0,
		-0.041597,
		0.8615,
		-0.506052,
		0,
		0.88817,
		-0.200102,
		-0.413658,
		0,
		0.565429,
		0.287287,
		-0.479095,
		1
	},
	[0.116666666667] = {
		-0.561039,
		0.053829,
		-0.826038,
		0,
		0.294396,
		0.945619,
		-0.13833,
		0,
		0.773671,
		-0.32079,
		-0.546376,
		0,
		0.57969,
		0.367442,
		-0.394168,
		1
	},
	[0.133333333333] = {
		-0.503828,
		0.114438,
		-0.85619,
		0,
		0.265138,
		0.963827,
		-0.027197,
		0,
		0.822106,
		-0.240711,
		-0.515945,
		0,
		0.552942,
		0.428985,
		-0.336447,
		1
	},
	[0.15] = {
		-0.416341,
		0.107909,
		-0.902782,
		0,
		0.117441,
		0.990997,
		0.064292,
		0,
		0.901592,
		-0.079256,
		-0.425266,
		0,
		0.499204,
		0.500664,
		-0.268968,
		1
	},
	[0.166666666667] = {
		-0.373199,
		0.124385,
		-0.919375,
		0,
		-0.11066,
		0.977929,
		0.177227,
		0,
		0.921128,
		0.167879,
		-0.351197,
		0,
		0.420141,
		0.571274,
		-0.20978,
		1
	},
	[0.183333333333] = {
		-0.452876,
		0.161246,
		-0.876871,
		0,
		-0.434714,
		0.818746,
		0.375072,
		0,
		0.778414,
		0.551049,
		-0.300694,
		0,
		0.300047,
		0.646282,
		-0.162534,
		1
	},
	[0.1] = {
		-0.557707,
		-0.149278,
		-0.816504,
		0,
		0.183682,
		0.93711,
		-0.296791,
		0,
		0.809459,
		-0.3155,
		-0.495213,
		0,
		0.58276,
		0.321586,
		-0.437678,
		1
	},
	[0.216666666667] = {
		-0.666585,
		0.053989,
		-0.743471,
		0,
		-0.745125,
		-0.019808,
		0.66663,
		0,
		0.021264,
		0.998345,
		0.053433,
		0,
		-0.001951,
		0.706021,
		-0.0574,
		1
	},
	[0.233333333333] = {
		-0.698143,
		-0.030743,
		-0.715298,
		0,
		-0.668809,
		-0.328561,
		0.66689,
		0,
		-0.255522,
		0.943982,
		0.208821,
		0,
		-0.117383,
		0.656602,
		-0.003094,
		1
	},
	[0.25] = {
		-0.704417,
		-0.092049,
		-0.703793,
		0,
		-0.548173,
		-0.559333,
		0.621814,
		0,
		-0.450892,
		0.823816,
		0.343545,
		0,
		-0.21454,
		0.57799,
		0.046985,
		1
	},
	[0.266666666667] = {
		-0.711472,
		0.013258,
		-0.70259,
		0,
		-0.476591,
		-0.743838,
		0.468579,
		0,
		-0.5164,
		0.668229,
		0.535538,
		0,
		-0.284178,
		0.500159,
		0.078089,
		1
	},
	[0.283333333333] = {
		-0.699081,
		0.473051,
		-0.536198,
		0,
		-0.588982,
		-0.806156,
		0.056683,
		0,
		-0.405445,
		0.355437,
		0.842187,
		0,
		-0.321907,
		0.426884,
		0.06887,
		1
	},
	[0.2] = {
		-0.588497,
		0.12633,
		-0.798569,
		0,
		-0.700944,
		0.41252,
		0.581812,
		0,
		0.402926,
		0.902146,
		-0.154217,
		0,
		0.141861,
		0.702391,
		-0.111339,
		1
	},
	[0.316666666667] = {
		-0.287242,
		0.790271,
		0.541261,
		0,
		-0.884201,
		-0.00146,
		-0.467105,
		0,
		-0.368349,
		-0.612756,
		0.699178,
		0,
		-0.391734,
		0.299977,
		-0.081943,
		1
	},
	[0.333333333333] = {
		-0.258853,
		0.650507,
		0.714027,
		0,
		-0.84821,
		0.200563,
		-0.490219,
		0,
		-0.462099,
		-0.73254,
		0.49985,
		0,
		-0.417872,
		0.227239,
		-0.141619,
		1
	},
	[0.35] = {
		-0.298404,
		0.543509,
		0.784572,
		0,
		-0.783254,
		0.330288,
		-0.526709,
		0,
		-0.545406,
		-0.771692,
		0.327146,
		0,
		-0.435022,
		0.134139,
		-0.197338,
		1
	},
	[0.366666666667] = {
		-0.371459,
		0.469413,
		0.801042,
		0,
		-0.702624,
		0.421853,
		-0.573028,
		0,
		-0.606909,
		-0.775688,
		0.17312,
		0,
		-0.443648,
		0.035494,
		-0.248924,
		1
	},
	[0.383333333333] = {
		-0.449584,
		0.413964,
		0.791523,
		0,
		-0.622081,
		0.490797,
		-0.610027,
		0,
		-0.641007,
		-0.766649,
		0.036865,
		0,
		-0.444718,
		-0.051817,
		-0.293956,
		1
	},
	[0.3] = {
		-0.487431,
		0.870734,
		0.065073,
		0,
		-0.818927,
		-0.430027,
		-0.380047,
		0,
		-0.302936,
		-0.238537,
		0.922675,
		0,
		-0.355642,
		0.353179,
		-0.000908,
		1
	},
	[0.416666666667] = {
		-0.539015,
		0.293665,
		0.789445,
		0,
		-0.549086,
		0.588223,
		-0.593715,
		0,
		-0.638724,
		-0.753495,
		-0.155814,
		0,
		-0.433437,
		-0.146574,
		-0.355425,
		1
	},
	[0.433333333333] = {
		-0.571074,
		0.230038,
		0.788008,
		0,
		-0.533651,
		0.625387,
		-0.569304,
		0,
		-0.623772,
		-0.745636,
		-0.234382,
		0,
		-0.424563,
		-0.179113,
		-0.38087,
		1
	},
	[0.45] = {
		-0.600682,
		0.166839,
		0.781886,
		0,
		-0.524259,
		0.656163,
		-0.542773,
		0,
		-0.6036,
		-0.735945,
		-0.306678,
		0,
		-0.409097,
		-0.205391,
		-0.403273,
		1
	},
	[0.466666666667] = {
		-0.62743,
		0.104093,
		0.771684,
		0,
		-0.520694,
		0.680778,
		-0.515189,
		0,
		-0.578973,
		-0.725056,
		-0.372939,
		0,
		-0.385628,
		-0.223652,
		-0.421515,
		1
	},
	[0.483333333333] = {
		-0.650971,
		0.041989,
		0.75794,
		0,
		-0.522648,
		0.699326,
		-0.487628,
		0,
		-0.550523,
		-0.713568,
		-0.433296,
		0,
		-0.362727,
		-0.238898,
		-0.43827,
		1
	},
	[0.4] = {
		-0.505013,
		0.357623,
		0.785536,
		0,
		-0.570653,
		0.54447,
		-0.614742,
		0,
		-0.647547,
		-0.758722,
		-0.070885,
		0,
		-0.4404,
		-0.110308,
		-0.328468,
		1
	},
	[0.516666666667] = {
		-0.687275,
		-0.08018,
		0.721958,
		0,
		-0.5416,
		0.718887,
		-0.435743,
		0,
		-0.484069,
		-0.690488,
		-0.537498,
		0,
		-0.318892,
		-0.262891,
		-0.468143,
		1
	},
	[0.533333333333] = {
		-0.699511,
		-0.140536,
		0.700667,
		0,
		-0.557743,
		0.720346,
		-0.41234,
		0,
		-0.446774,
		-0.679229,
		-0.582272,
		0,
		-0.297931,
		-0.272412,
		-0.481702,
		1
	},
	[0.55] = {
		-0.707465,
		-0.200555,
		0.677695,
		0,
		-0.577713,
		0.716461,
		-0.391064,
		0,
		-0.407112,
		-0.668178,
		-0.622735,
		0,
		-0.277535,
		-0.280634,
		-0.494596,
		1
	},
	[0.566666666667] = {
		-0.71089,
		-0.260292,
		0.653364,
		0,
		-0.60101,
		0.707318,
		-0.37214,
		0,
		-0.365271,
		-0.657228,
		-0.659263,
		0,
		-0.257627,
		-0.287725,
		-0.506986,
		1
	},
	[0.583333333333] = {
		-0.709533,
		-0.319745,
		0.627954,
		0,
		-0.627105,
		0.692962,
		-0.355728,
		0,
		-0.321407,
		-0.646194,
		-0.692193,
		0,
		-0.238126,
		-0.293796,
		-0.519016,
		1
	},
	[0.5] = {
		-0.67101,
		-0.019384,
		0.741195,
		0,
		-0.529754,
		0.711945,
		-0.460972,
		0,
		-0.518755,
		-0.701967,
		-0.487991,
		0,
		-0.340479,
		-0.25183,
		-0.453734,
		1
	},
	[0.616666666667] = {
		-0.691496,
		-0.437435,
		0.574878,
		0,
		-0.685402,
		0.648653,
		-0.330867,
		0,
		-0.228163,
		-0.622816,
		-0.74836,
		0,
		-0.199992,
		-0.30309,
		-0.542484,
		1
	},
	[0.633333333333] = {
		-0.674358,
		-0.495303,
		0.547646,
		0,
		-0.716361,
		0.618703,
		-0.322542,
		0,
		-0.179074,
		-0.609822,
		-0.772043,
		0,
		-0.181186,
		-0.30633,
		-0.554129,
		1
	},
	[0.65] = {
		-0.651548,
		-0.552136,
		0.520222,
		0,
		-0.747633,
		0.583578,
		-0.316989,
		0,
		-0.128569,
		-0.595469,
		-0.793024,
		0,
		-0.162443,
		-0.308594,
		-0.565827,
		1
	},
	[0.666666666667] = {
		-0.622925,
		-0.607548,
		0.492798,
		0,
		-0.778496,
		0.543343,
		-0.314202,
		0,
		-0.076866,
		-0.579365,
		-0.811435,
		0,
		-0.143681,
		-0.309822,
		-0.577643,
		1
	},
	[0.683333333333] = {
		-0.588415,
		-0.661074,
		0.465564,
		0,
		-0.808196,
		0.498123,
		-0.314154,
		0,
		-0.024229,
		-0.56112,
		-0.82738,
		0,
		-0.124825,
		-0.309938,
		-0.589627,
		1
	},
	[0.6] = {
		-0.703147,
		-0.378841,
		0.601717,
		0,
		-0.655436,
		0.673407,
		-0.341945,
		0,
		-0.275658,
		-0.634825,
		-0.72181,
		0,
		-0.218943,
		-0.298909,
		-0.530812,
		1
	},
	[0.716666666667] = {
		-0.501859,
		-0.760297,
		0.412415,
		0,
		-0.861006,
		0.393645,
		-0.322045,
		0,
		0.082504,
		-0.516712,
		-0.852174,
		0,
		-0.086565,
		-0.306442,
		-0.614198,
		1
	},
	[0.733333333333] = {
		-0.450145,
		-0.804745,
		0.386983,
		0,
		-0.882571,
		0.335058,
		-0.329856,
		0,
		0.135788,
		-0.490023,
		-0.861069,
		0,
		-0.067046,
		-0.3027,
		-0.626736,
		1
	},
	[0.75] = {
		-0.39323,
		-0.844852,
		0.36276,
		0,
		-0.899934,
		0.272825,
		-0.340126,
		0,
		0.188386,
		-0.460208,
		-0.867594,
		0,
		-0.047213,
		-0.297627,
		-0.639332,
		1
	},
	[0.766666666667] = {
		-0.331599,
		-0.880024,
		0.339999,
		0,
		-0.912443,
		0.207566,
		-0.352654,
		0,
		0.239772,
		-0.427169,
		-0.8718,
		0,
		-0.027041,
		-0.29116,
		-0.651907,
		1
	},
	[0.783333333333] = {
		-0.265864,
		-0.909724,
		0.318933,
		0,
		-0.919547,
		0.140002,
		-0.367195,
		0,
		0.289395,
		-0.390898,
		-0.873756,
		0,
		-0.006526,
		-0.283253,
		-0.664359,
		1
	},
	[0.7] = {
		-0.548023,
		-0.712184,
		0.438707,
		0,
		-0.835959,
		0.448123,
		-0.316793,
		0,
		0.02902,
		-0.540352,
		-0.840939,
		0,
		-0.105807,
		-0.308846,
		-0.601809,
		1
	},
	[0.816666666667] = {
		-0.124764,
		-0.95107,
		0.282664,
		0,
		-0.916011,
		0.000939,
		-0.401152,
		0,
		0.381258,
		-0.308973,
		-0.871308,
		0,
		0.038216,
		-0.257834,
		-0.680644,
		1
	},
	[0.833333333333] = {
		-0.051016,
		-0.96214,
		0.267739,
		0,
		-0.904944,
		-0.06887,
		-0.419921,
		0,
		0.422462,
		-0.263711,
		-0.867169,
		0,
		0.061077,
		-0.242213,
		-0.685943,
		1
	},
	[0.85] = {
		0.023639,
		-0.966639,
		0.255049,
		0,
		-0.887667,
		-0.137652,
		-0.43943,
		0,
		0.459879,
		-0.216011,
		-0.861308,
		0,
		0.083503,
		-0.225916,
		-0.690782,
		1
	},
	[0.866666666667] = {
		0.098263,
		-0.964634,
		0.244593,
		0,
		-0.864393,
		-0.204523,
		-0.459343,
		0,
		0.493122,
		-0.166288,
		-0.85392,
		0,
		0.1054,
		-0.209075,
		-0.695185,
		1
	},
	[0.883333333333] = {
		0.171944,
		-0.956344,
		0.236306,
		0,
		-0.835497,
		-0.268658,
		-0.479341,
		0,
		0.521901,
		-0.115013,
		-0.845217,
		0,
		0.126676,
		-0.191824,
		-0.699171,
		1
	},
	[0.8] = {
		-0.196674,
		-0.93352,
		0.299767,
		0,
		-0.920833,
		0.070865,
		-0.383465,
		0,
		0.336729,
		-0.351453,
		-0.873552,
		0,
		0.015016,
		-0.272644,
		-0.674858,
		1
	},
	[0.916666666667] = {
		0.313187,
		-0.922481,
		0.225705,
		0,
		-0.763048,
		-0.385917,
		-0.518484,
		0,
		0.565395,
		-0.009842,
		-0.824762,
		0,
		0.167013,
		-0.156636,
		-0.705964,
		1
	},
	[0.933333333333] = {
		0.379362,
		-0.897973,
		0.222998,
		0,
		-0.720863,
		-0.43794,
		-0.537183,
		0,
		0.580036,
		0.043036,
		-0.813454,
		0,
		0.185904,
		-0.138978,
		-0.708808,
		1
	},
	[0.95] = {
		0.441859,
		-0.869259,
		0.221694,
		0,
		-0.675726,
		-0.485051,
		-0.555086,
		0,
		0.590046,
		0.095465,
		-0.801705,
		0,
		0.203834,
		-0.121464,
		-0.71131,
		1
	},
	[0.966666666667] = {
		0.500315,
		-0.837028,
		0.221516,
		0,
		-0.628438,
		-0.527038,
		-0.572098,
		0,
		0.595609,
		0.14702,
		-0.789706,
		0,
		0.220727,
		-0.104234,
		-0.713486,
		1
	},
	[0.983333333333] = {
		0.554502,
		-0.801978,
		0.222171,
		0,
		-0.579792,
		-0.56382,
		-0.588174,
		0,
		0.596967,
		0.19733,
		-0.777619,
		0,
		0.236508,
		-0.08743,
		-0.715355,
		1
	},
	[0.9] = {
		0.243836,
		-0.942132,
		0.230069,
		0,
		-0.801502,
		-0.329329,
		-0.499137,
		0,
		0.546021,
		-0.062693,
		-0.835423,
		0,
		0.147242,
		-0.174298,
		-0.702757,
		1
	},
	[1.01666666667] = {
		0.649778,
		-0.726125,
		0.224792,
		0,
		-0.481411,
		-0.621978,
		-0.617565,
		0,
		0.588245,
		0.293062,
		-0.753712,
		0,
		0.264438,
		-0.055653,
		-0.718239,
		1
	},
	[1.03333333333] = {
		0.690989,
		-0.686572,
		0.226171,
		0,
		-0.433032,
		-0.643682,
		-0.630997,
		0,
		0.578807,
		0.338073,
		-0.742084,
		0,
		0.276447,
		-0.040953,
		-0.719284,
		1
	},
	[1.05] = {
		0.728138,
		-0.646674,
		0.227218,
		0,
		-0.385987,
		-0.66079,
		-0.643716,
		0,
		0.566418,
		0.381011,
		-0.730754,
		0,
		0.287057,
		-0.027225,
		-0.720083,
		1
	},
	[1.06666666667] = {
		0.761469,
		-0.606905,
		0.227662,
		0,
		-0.340787,
		-0.673597,
		-0.655843,
		0,
		0.551388,
		0.42182,
		-0.71975,
		0,
		0.2962,
		-0.014599,
		-0.720647,
		1
	},
	[1.08333333333] = {
		0.79127,
		-0.567673,
		0.227244,
		0,
		-0.297876,
		-0.682416,
		-0.667517,
		0,
		0.534006,
		0.460496,
		-0.709071,
		0,
		0.303804,
		-0.003204,
		-0.720987,
		1
	},
	[1.11666666667] = {
		0.841531,
		-0.492118,
		0.222812,
		0,
		-0.220412,
		-0.689351,
		-0.690082,
		0,
		0.493198,
		0.531615,
		-0.688579,
		0,
		0.314107,
		0.015385,
		-0.721026,
		1
	},
	[1.13333333333] = {
		0.862635,
		-0.456295,
		0.218303,
		0,
		-0.186494,
		-0.688074,
		-0.701266,
		0,
		0.470193,
		0.564224,
		-0.678653,
		0,
		0.316659,
		0.022332,
		-0.720735,
		1
	},
	[1.15] = {
		0.881468,
		-0.42202,
		0.211927,
		0,
		-0.156159,
		-0.684001,
		-0.712571,
		0,
		0.445678,
		0.595014,
		-0.668827,
		0,
		0.317375,
		0.02755,
		-0.720239,
		1
	},
	[1.16666666667] = {
		0.898318,
		-0.389416,
		0.203419,
		0,
		-0.129664,
		-0.677371,
		-0.724124,
		0,
		0.419776,
		0.624118,
		-0.658988,
		0,
		0.316175,
		0.030921,
		-0.719537,
		1
	},
	[1.1] = {
		0.81785,
		-0.529317,
		0.22571,
		0,
		-0.257638,
		-0.687564,
		-0.678881,
		0,
		0.514533,
		0.497071,
		-0.698696,
		0,
		0.309798,
		0.006832,
		-0.721111,
		1
	}
}

return spline_matrices

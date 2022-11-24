local spline_matrices = {
	[0] = {
		0.974362,
		0.119823,
		0.190422,
		0,
		-0.136085,
		0.987876,
		0.074709,
		0,
		-0.179161,
		-0.098708,
		0.978855,
		0,
		0.768396,
		0.995319,
		-0.215214,
		1
	},
	[0.0166666666667] = {
		0.970261,
		0.106882,
		0.217186,
		0,
		-0.125628,
		0.989285,
		0.074381,
		0,
		-0.206909,
		-0.099453,
		0.973292,
		0,
		0.770191,
		0.995018,
		-0.211656,
		1
	},
	[0.0333333333333] = {
		0.965157,
		0.093083,
		0.244555,
		0,
		-0.114228,
		0.990716,
		0.073721,
		0,
		-0.235423,
		-0.099087,
		0.966829,
		0,
		0.771612,
		0.99407,
		-0.203275,
		1
	},
	[0.05] = {
		0.958976,
		0.078722,
		0.272338,
		0,
		-0.102135,
		0.992098,
		0.072868,
		0,
		-0.264449,
		-0.097694,
		0.959439,
		0,
		0.772726,
		0.992575,
		-0.192094,
		1
	},
	[0.0666666666667] = {
		0.951679,
		0.064091,
		0.300332,
		0,
		-0.089606,
		0.993375,
		0.071954,
		0,
		-0.293731,
		-0.095389,
		0.951117,
		0,
		0.773599,
		0.99063,
		-0.180136,
		1
	},
	[0.0833333333333] = {
		0.943267,
		0.049466,
		0.32833,
		0,
		-0.076901,
		0.9945,
		0.0711,
		0,
		-0.323007,
		-0.092316,
		0.941883,
		0,
		0.774296,
		0.988317,
		-0.169427,
		1
	},
	[0.116666666667] = {
		0.923309,
		0.021262,
		0.383468,
		0,
		-0.05202,
		0.996189,
		0.070017,
		0,
		-0.380518,
		-0.084595,
		0.920896,
		0,
		0.775431,
		0.982807,
		-0.159876,
		1
	},
	[0.133333333333] = {
		0.911973,
		0.008144,
		0.410168,
		0,
		-0.040377,
		0.996731,
		0.069983,
		0,
		-0.408258,
		-0.080384,
		0.909321,
		0,
		0.776007,
		0.979674,
		-0.164075,
		1
	},
	[0.15] = {
		0.899938,
		-0.004052,
		0.435999,
		0,
		-0.029619,
		0.997079,
		0.070403,
		0,
		-0.43501,
		-0.076272,
		0.897189,
		0,
		0.776685,
		0.976352,
		-0.173393,
		1
	},
	[0.166666666667] = {
		0.887396,
		-0.015383,
		0.460751,
		0,
		-0.019758,
		0.997256,
		0.071347,
		0,
		-0.460584,
		-0.072417,
		0.884657,
		0,
		0.777789,
		0.97272,
		-0.186553,
		1
	},
	[0.183333333333] = {
		0.874553,
		-0.026029,
		0.484231,
		0,
		-0.010672,
		0.997284,
		0.072882,
		0,
		-0.484813,
		-0.068907,
		0.871899,
		0,
		0.779598,
		0.968578,
		-0.202276,
		1
	},
	[0.1] = {
		0.933782,
		0.035109,
		0.356115,
		0,
		-0.064284,
		0.995444,
		0.07042,
		0,
		-0.35202,
		-0.088649,
		0.931785,
		0,
		0.774884,
		0.985697,
		-0.161997,
		1
	},
	[0.216666666667] = {
		0.848872,
		-0.045352,
		0.52665,
		0,
		0.004913,
		0.996947,
		0.077932,
		0,
		-0.528576,
		-0.063567,
		0.846503,
		0,
		0.784931,
		0.958675,
		-0.236326,
		1
	},
	[0.233333333333] = {
		0.83652,
		-0.05399,
		0.54527,
		0,
		0.011296,
		0.996622,
		0.081351,
		0,
		-0.54782,
		-0.061892,
		0.834304,
		0,
		0.788367,
		0.952856,
		-0.252304,
		1
	},
	[0.25] = {
		0.824831,
		-0.061792,
		0.561993,
		0,
		0.016668,
		0.996235,
		0.085074,
		0,
		-0.565134,
		-0.060805,
		0.822755,
		0,
		0.79226,
		0.946362,
		-0.266228,
		1
	},
	[0.266666666667] = {
		0.812966,
		-0.069343,
		0.578167,
		0,
		0.021214,
		0.995752,
		0.089598,
		0,
		-0.581924,
		-0.060575,
		0.810984,
		0,
		0.796585,
		0.931356,
		-0.278556,
		1
	},
	[0.283333333333] = {
		0.800031,
		-0.077227,
		0.594968,
		0,
		0.025157,
		0.995127,
		0.09534,
		0,
		-0.599431,
		-0.061307,
		0.798075,
		0,
		0.801366,
		0.901251,
		-0.290567,
		1
	},
	[0.2] = {
		0.861632,
		-0.036009,
		0.506255,
		0,
		-0.002428,
		0.997176,
		0.07506,
		0,
		-0.507528,
		-0.065904,
		0.859111,
		0,
		0.781993,
		0.9639,
		-0.21929,
		1
	},
	[0.316666666667] = {
		0.771717,
		-0.093708,
		0.629024,
		0,
		0.031292,
		0.993482,
		0.109612,
		0,
		-0.635195,
		-0.064906,
		0.769619,
		0,
		0.81241,
		0.803051,
		-0.314094,
		1
	},
	[0.333333333333] = {
		0.756791,
		-0.10214,
		0.645628,
		0,
		0.033541,
		0.992483,
		0.117698,
		0,
		-0.652796,
		-0.067418,
		0.754528,
		0,
		0.818711,
		0.738603,
		-0.325845,
		1
	},
	[0.35] = {
		0.741695,
		-0.110569,
		0.661561,
		0,
		0.035301,
		0.991387,
		0.126117,
		0,
		-0.669808,
		-0.070186,
		0.73921,
		0,
		0.825536,
		0.666352,
		-0.337735,
		1
	},
	[0.366666666667] = {
		0.726714,
		-0.118884,
		0.676574,
		0,
		0.036635,
		0.990216,
		0.134646,
		0,
		-0.685962,
		-0.073063,
		0.72396,
		0,
		0.832867,
		0.588121,
		-0.349854,
		1
	},
	[0.383333333333] = {
		0.712154,
		-0.126963,
		0.690447,
		0,
		0.037616,
		0.988998,
		0.143063,
		0,
		-0.701015,
		-0.075911,
		0.709095,
		0,
		0.840669,
		0.505728,
		-0.362275,
		1
	},
	[0.3] = {
		0.78621,
		-0.085374,
		0.612033,
		0,
		0.028509,
		0.994367,
		0.102085,
		0,
		-0.617301,
		-0.062812,
		0.784216,
		0,
		0.806633,
		0.857875,
		-0.302373,
		1
	},
	[0.416666666667] = {
		0.685582,
		-0.141871,
		0.714038,
		0,
		0.038874,
		0.986562,
		0.158693,
		0,
		-0.726957,
		-0.08104,
		0.681884,
		0,
		0.857455,
		0.33572,
		-0.388187,
		1
	},
	[0.433333333333] = {
		0.674234,
		-0.148413,
		0.723452,
		0,
		0.03935,
		0.985427,
		0.165482,
		0,
		-0.737469,
		-0.083106,
		0.670249,
		0,
		0.866277,
		0.251732,
		-0.401697,
		1
	},
	[0.45] = {
		0.664628,
		-0.154147,
		0.731101,
		0,
		0.039869,
		0.98441,
		0.171311,
		0,
		-0.74611,
		-0.08471,
		0.660412,
		0,
		0.87525,
		0.170835,
		-0.415545,
		1
	},
	[0.466666666667] = {
		0.657099,
		-0.158919,
		0.736862,
		0,
		0.040538,
		0.98356,
		0.175974,
		0,
		-0.752713,
		-0.085762,
		0.652739,
		0,
		0.884257,
		0.094834,
		-0.429673,
		1
	},
	[0.483333333333] = {
		0.651979,
		-0.162577,
		0.740603,
		0,
		0.041465,
		0.982926,
		0.179268,
		0,
		-0.757103,
		-0.08617,
		0.647588,
		0,
		0.893172,
		0.02553,
		-0.444005,
		1
	},
	[0.4] = {
		0.698333,
		-0.134672,
		0.702989,
		0,
		0.03833,
		0.987767,
		0.15115,
		0,
		-0.714746,
		-0.078608,
		0.694953,
		0,
		0.848889,
		0.420989,
		-0.375045,
		1
	},
	[0.516666666667] = {
		0.650244,
		-0.165906,
		0.741389,
		0,
		0.044407,
		0.982496,
		0.180912,
		0,
		-0.758427,
		-0.084714,
		0.646229,
		0,
		0.910214,
		-0.085738,
		-0.472884,
		1
	},
	[0.533333333333] = {
		0.654252,
		-0.165187,
		0.738016,
		0,
		0.046414,
		0.982785,
		0.178827,
		0,
		-0.754851,
		-0.082744,
		0.650656,
		0,
		0.918119,
		-0.123968,
		-0.487207,
		1
	},
	[0.55] = {
		0.661877,
		-0.162653,
		0.731753,
		0,
		0.048763,
		0.98345,
		0.174494,
		0,
		-0.748024,
		-0.079811,
		0.658855,
		0,
		0.92549,
		-0.148137,
		-0.5013,
		1
	},
	[0.566666666667] = {
		0.673346,
		-0.15816,
		0.722212,
		0,
		0.051414,
		0.984503,
		0.167664,
		0,
		-0.737537,
		-0.075764,
		0.671043,
		0,
		0.932247,
		-0.156419,
		-0.51506,
		1
	},
	[0.583333333333] = {
		0.689617,
		-0.151165,
		0.708222,
		0,
		0.05413,
		0.985995,
		0.157745,
		0,
		-0.722148,
		-0.070447,
		0.688142,
		0,
		0.939007,
		-0.154172,
		-0.528964,
		1
	},
	[0.5] = {
		0.649587,
		-0.164969,
		0.742174,
		0,
		0.042748,
		0.982556,
		0.180985,
		0,
		-0.759084,
		-0.085839,
		0.645308,
		0,
		0.901866,
		-0.035279,
		-0.458445,
		1
	},
	[0.616666666667] = {
		0.736195,
		-0.129447,
		0.664274,
		0,
		0.05839,
		0.990026,
		0.128214,
		0,
		-0.674246,
		-0.055603,
		0.736411,
		0,
		0.953976,
		-0.139522,
		-0.558334,
		1
	},
	[0.633333333333] = {
		0.764416,
		-0.115649,
		0.634266,
		0,
		0.059362,
		0.992227,
		0.109374,
		0,
		-0.641985,
		-0.045955,
		0.765339,
		0,
		0.961801,
		-0.128162,
		-0.573493,
		1
	},
	[0.65] = {
		0.79444,
		-0.100495,
		0.598971,
		0,
		0.059186,
		0.994332,
		0.088328,
		0,
		-0.604452,
		-0.034721,
		0.795885,
		0,
		0.969593,
		-0.114839,
		-0.588744,
		1
	},
	[0.666666666667] = {
		0.825136,
		-0.084444,
		0.558587,
		0,
		0.057615,
		0.996189,
		0.065489,
		0,
		-0.561988,
		-0.021854,
		0.826857,
		0,
		0.977167,
		-0.100106,
		-0.603908,
		1
	},
	[0.683333333333] = {
		0.855412,
		-0.067956,
		0.513471,
		0,
		0.054463,
		0.997661,
		0.041304,
		0,
		-0.515077,
		-0.007366,
		0.857112,
		0,
		0.984343,
		-0.084512,
		-0.618797,
		1
	},
	[0.6] = {
		0.710902,
		-0.141446,
		0.688921,
		0,
		0.056549,
		0.987891,
		0.144476,
		0,
		-0.701014,
		-0.063751,
		0.710292,
		0,
		0.946314,
		-0.148363,
		-0.54344,
		1
	},
	[0.716666666667] = {
		0.910806,
		-0.035428,
		0.411311,
		0,
		0.043024,
		0.999032,
		-0.009219,
		0,
		-0.410586,
		0.026093,
		0.911448,
		0,
		0.996856,
		-0.052888,
		-0.646979,
		1
	},
	[0.733333333333] = {
		0.934349,
		-0.020176,
		0.355788,
		0,
		0.034751,
		0.998796,
		-0.03462,
		0,
		-0.354662,
		0.044711,
		0.933925,
		0,
		1.001904,
		-0.037913,
		-0.659884,
		1
	},
	[0.75] = {
		0.954386,
		-0.006028,
		0.298515,
		0,
		0.024924,
		0.997915,
		-0.059533,
		0,
		-0.297534,
		0.064258,
		0.952546,
		0,
		1.00598,
		-0.024182,
		-0.671745,
		1
	},
	[0.766666666667] = {
		0.970629,
		0.00678,
		0.240484,
		0,
		0.013748,
		0.996406,
		-0.083583,
		0,
		-0.240187,
		0.084435,
		0.967048,
		0,
		1.008975,
		-0.0122,
		-0.682381,
		1
	},
	[0.783333333333] = {
		0.983003,
		0.018092,
		0.182698,
		0,
		0.001487,
		0.994316,
		-0.106461,
		0,
		-0.183586,
		0.104923,
		0.977388,
		0,
		1.01079,
		-0.002463,
		-0.691622,
		1
	},
	[0.7] = {
		0.88426,
		-0.051478,
		0.464149,
		0,
		0.049611,
		0.998637,
		0.016242,
		0,
		-0.464353,
		0.008665,
		0.885608,
		0,
		0.990957,
		-0.068595,
		-0.633219,
		1
	},
	[0.816666666667] = {
		0.996779,
		0.035973,
		0.071677,
		0,
		-0.025051,
		0.988696,
		-0.147829,
		0,
		-0.076184,
		0.145557,
		0.986412,
		0,
		1.010524,
		0.008323,
		-0.705291,
		1
	},
	[0.833333333333] = {
		0.998889,
		0.042585,
		0.02016,
		0,
		-0.038656,
		0.985357,
		-0.166065,
		0,
		-0.026937,
		0.165102,
		0.985909,
		0,
		1.008275,
		0.008405,
		-0.709434,
		1
	},
	[0.8] = {
		0.991624,
		0.027826,
		0.126128,
		0,
		-0.011557,
		0.991716,
		-0.12793,
		0,
		-0.128643,
		0.125401,
		0.98373,
		0,
		1.011335,
		0.004539,
		-0.699308,
		1
	}
}

return spline_matrices

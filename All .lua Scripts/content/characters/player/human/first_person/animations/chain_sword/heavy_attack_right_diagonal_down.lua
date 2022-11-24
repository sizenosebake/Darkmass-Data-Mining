local spline_matrices = {
	[0] = {
		0.55695,
		0.015164,
		0.830407,
		0,
		-0.829659,
		0.056359,
		0.555419,
		0,
		-0.038378,
		-0.998295,
		0.04397,
		0,
		-0.317365,
		0.034711,
		0.068633,
		1
	},
	[0.0166666666667] = {
		0.556796,
		0.015078,
		0.830512,
		0,
		-0.829698,
		0.057933,
		0.555198,
		0,
		-0.039743,
		-0.998207,
		0.044767,
		0,
		-0.320406,
		0.030798,
		0.070658,
		1
	},
	[0.0333333333333] = {
		0.556372,
		0.014847,
		0.830801,
		0,
		-0.829726,
		0.063797,
		0.554512,
		0,
		-0.04477,
		-0.997852,
		0.047814,
		0,
		-0.328127,
		0.021562,
		0.075758,
		1
	},
	[0.05] = {
		0.555735,
		0.014517,
		0.831233,
		0,
		-0.829548,
		0.075658,
		0.553287,
		0,
		-0.054858,
		-0.997028,
		0.054088,
		0,
		-0.338427,
		0.010763,
		0.082471,
		1
	},
	[0.0666666666667] = {
		0.554943,
		0.014131,
		0.831768,
		0,
		-0.828819,
		0.095207,
		0.551357,
		0,
		-0.071399,
		-0.995357,
		0.064547,
		0,
		-0.349174,
		0.002145,
		0.089324,
		1
	},
	[0.0833333333333] = {
		0.554054,
		0.013735,
		0.832368,
		0,
		-0.826955,
		0.124099,
		0.548403,
		0,
		-0.095763,
		-0.992175,
		0.080115,
		0,
		-0.358178,
		-0.000589,
		0.094832,
		1
	},
	[0.116666666667] = {
		0.552226,
		0.013084,
		0.833592,
		0,
		-0.823001,
		0.168185,
		0.542571,
		0,
		-0.133099,
		-0.985669,
		0.103644,
		0,
		-0.374723,
		0.018644,
		0.104325,
		1
	},
	[0.133333333333] = {
		0.551412,
		0.012915,
		0.834133,
		0,
		-0.818602,
		0.201024,
		0.538033,
		0,
		-0.160732,
		-0.979501,
		0.12142,
		0,
		-0.382058,
		0.041864,
		0.108361,
		1
	},
	[0.15] = {
		0.550751,
		0.012804,
		0.834571,
		0,
		-0.806408,
		0.266148,
		0.528082,
		0,
		-0.215358,
		-0.963847,
		0.156907,
		0,
		-0.386782,
		0.075375,
		0.110773,
		1
	},
	[0.166666666667] = {
		0.550306,
		0.012748,
		0.834866,
		0,
		-0.77504,
		0.379755,
		0.505073,
		0,
		-0.310606,
		-0.924999,
		0.218861,
		0,
		-0.387461,
		0.120065,
		0.110742,
		1
	},
	[0.183333333333] = {
		0.565849,
		0.013779,
		0.824394,
		0,
		-0.695619,
		0.544755,
		0.468355,
		0,
		-0.442639,
		-0.838482,
		0.317834,
		0,
		-0.363391,
		0.186689,
		0.102084,
		1
	},
	[0.1] = {
		0.553128,
		0.013371,
		0.832989,
		0,
		-0.824872,
		0.148937,
		0.545347,
		0,
		-0.116771,
		-0.988756,
		0.093411,
		0,
		-0.366261,
		0.004786,
		0.099523,
		1
	},
	[0.216666666667] = {
		0.646088,
		0.020728,
		0.762981,
		0,
		-0.362671,
		0.887913,
		0.282985,
		0,
		-0.671595,
		-0.459545,
		0.581188,
		0,
		-0.222613,
		0.365532,
		0.052857,
		1
	},
	[0.233333333333] = {
		0.680917,
		0.025855,
		0.731904,
		0,
		-0.15165,
		0.982694,
		0.106371,
		0,
		-0.716487,
		-0.183423,
		0.673054,
		0,
		-0.133586,
		0.44438,
		0.018674,
		1
	},
	[0.25] = {
		0.694888,
		0.038023,
		0.718112,
		0,
		0.045108,
		0.99433,
		-0.096298,
		0,
		-0.717701,
		0.099309,
		0.689233,
		0,
		-0.055105,
		0.493454,
		-0.017948,
		1
	},
	[0.266666666667] = {
		0.663079,
		0.025126,
		0.748127,
		0,
		0.29262,
		0.911207,
		-0.289957,
		0,
		-0.688985,
		0.411181,
		0.59685,
		0,
		0.034353,
		0.515448,
		-0.067286,
		1
	},
	[0.283333333333] = {
		0.600551,
		-0.025824,
		0.799169,
		0,
		0.586817,
		0.693136,
		-0.418578,
		0,
		-0.543124,
		0.720344,
		0.431418,
		0,
		0.154805,
		0.523113,
		-0.130235,
		1
	},
	[0.2] = {
		0.602961,
		0.016548,
		0.797599,
		0,
		-0.553251,
		0.728979,
		0.403116,
		0,
		-0.574762,
		-0.684336,
		0.448701,
		0,
		-0.303829,
		0.274105,
		0.081667,
		1
	},
	[0.316666666667] = {
		0.565872,
		-0.05695,
		0.822524,
		0,
		0.821004,
		0.130602,
		-0.555784,
		0,
		-0.075771,
		0.989798,
		0.12066,
		0,
		0.372319,
		0.494616,
		-0.255614,
		1
	},
	[0.333333333333] = {
		0.57062,
		-0.050741,
		0.819645,
		0,
		0.803461,
		-0.171917,
		-0.569996,
		0,
		0.169833,
		0.983804,
		-0.05733,
		0,
		0.487054,
		0.420444,
		-0.32873,
		1
	},
	[0.35] = {
		0.582159,
		-0.038254,
		0.812174,
		0,
		0.737375,
		-0.396047,
		-0.547198,
		0,
		0.342591,
		0.917433,
		-0.202355,
		0,
		0.578659,
		0.329893,
		-0.390439,
		1
	},
	[0.366666666667] = {
		0.603417,
		-0.020518,
		0.797162,
		0,
		0.694583,
		-0.477542,
		-0.53806,
		0,
		0.391718,
		0.878369,
		-0.273906,
		0,
		0.615566,
		0.252494,
		-0.419699,
		1
	},
	[0.383333333333] = {
		0.640431,
		0.001931,
		0.768013,
		0,
		0.680169,
		-0.465838,
		-0.566008,
		0,
		0.356676,
		0.884868,
		-0.299651,
		0,
		0.603603,
		0.185579,
		-0.425743,
		1
	},
	[0.3] = {
		0.564582,
		-0.057039,
		0.823404,
		0,
		0.76264,
		0.417552,
		-0.493994,
		0,
		-0.315637,
		0.906861,
		0.279243,
		0,
		0.265911,
		0.523502,
		-0.19095,
		1
	},
	[0.416666666667] = {
		0.753149,
		0.058785,
		0.655219,
		0,
		0.617868,
		-0.405146,
		-0.673866,
		0,
		0.225846,
		0.91236,
		-0.341457,
		0,
		0.524018,
		0.029089,
		-0.436422,
		1
	},
	[0.433333333333] = {
		0.813923,
		0.090898,
		0.573818,
		0,
		0.563966,
		-0.360848,
		-0.742786,
		0,
		0.139543,
		0.928184,
		-0.344966,
		0,
		0.464293,
		-0.055123,
		-0.440864,
		1
	},
	[0.45] = {
		0.868636,
		0.123749,
		0.479747,
		0,
		0.493066,
		-0.310786,
		-0.812587,
		0,
		0.048542,
		0.94239,
		-0.330977,
		0,
		0.396571,
		-0.139632,
		-0.444612,
		1
	},
	[0.466666666667] = {
		0.912444,
		0.155999,
		0.3783,
		0,
		0.407331,
		-0.257945,
		-0.876097,
		0,
		-0.03909,
		0.953482,
		-0.298903,
		0,
		0.324931,
		-0.221667,
		-0.447599,
		1
	},
	[0.483333333333] = {
		0.942963,
		0.186279,
		0.275902,
		0,
		0.311997,
		-0.205479,
		-0.927597,
		0,
		-0.1161,
		0.96077,
		-0.251877,
		0,
		0.253401,
		-0.298502,
		-0.449881,
		1
	},
	[0.4] = {
		0.692841,
		0.028722,
		0.720518,
		0,
		0.655671,
		-0.440955,
		-0.612907,
		0,
		0.300113,
		0.897069,
		-0.324344,
		0,
		0.571771,
		0.110232,
		-0.431352,
		1
	},
	[0.516666666667] = {
		0.967185,
		0.235669,
		0.094938,
		0,
		0.124617,
		-0.114387,
		-0.985589,
		0,
		-0.221413,
		0.965078,
		-0.140001,
		0,
		0.126421,
		-0.425946,
		-0.452599,
		1
	},
	[0.533333333333] = {
		0.967183,
		0.252443,
		0.028821,
		0,
		0.050938,
		-0.081518,
		-0.995369,
		0,
		-0.248924,
		0.964172,
		-0.091702,
		0,
		0.078931,
		-0.471215,
		-0.453064,
		1
	},
	[0.55] = {
		0.964811,
		0.262577,
		-0.013873,
		0,
		0.002145,
		-0.060618,
		-0.998159,
		0,
		-0.262934,
		0.963005,
		-0.059049,
		0,
		0.047471,
		-0.500651,
		-0.452926,
		1
	},
	[0.566666666667] = {
		0.963789,
		0.265156,
		-0.028349,
		0,
		-0.014422,
		-0.054324,
		-0.998419,
		0,
		-0.266277,
		0.962674,
		-0.048533,
		0,
		0.036111,
		-0.511657,
		-0.45217,
		1
	},
	[0.583333333333] = {
		0.964245,
		0.263601,
		-0.027314,
		0,
		-0.012869,
		-0.056368,
		-0.998327,
		0,
		-0.264699,
		0.962983,
		-0.050961,
		0,
		0.036056,
		-0.512647,
		-0.451051,
		1
	},
	[0.5] = {
		0.960411,
		0.213243,
		0.17927,
		0,
		0.214721,
		-0.156617,
		-0.964036,
		0,
		-0.177497,
		0.964364,
		-0.196205,
		0,
		0.18591,
		-0.367483,
		-0.451541,
		1
	},
	[0.616666666667] = {
		0.965171,
		0.260243,
		-0.026813,
		0,
		-0.011285,
		-0.060979,
		-0.998075,
		0,
		-0.261377,
		0.963616,
		-0.055918,
		0,
		0.035138,
		-0.514862,
		-0.448594,
		1
	},
	[0.633333333333] = {
		0.965627,
		0.258494,
		-0.027283,
		0,
		-0.011215,
		-0.063433,
		-0.997923,
		0,
		-0.259688,
		0.963928,
		-0.058353,
		0,
		0.03432,
		-0.516033,
		-0.44731,
		1
	},
	[0.65] = {
		0.966084,
		0.256722,
		-0.027851,
		0,
		-0.011249,
		-0.065912,
		-0.997762,
		0,
		-0.257983,
		0.964235,
		-0.060789,
		0,
		0.033445,
		-0.517212,
		-0.446013,
		1
	},
	[0.666666666667] = {
		0.966533,
		0.254956,
		-0.028483,
		0,
		-0.011366,
		-0.068361,
		-0.997596,
		0,
		-0.256291,
		0.964533,
		-0.063175,
		0,
		0.032536,
		-0.518372,
		-0.444732,
		1
	},
	[0.683333333333] = {
		0.966968,
		0.253227,
		-0.029149,
		0,
		-0.011546,
		-0.070723,
		-0.997429,
		0,
		-0.254637,
		0.964818,
		-0.065463,
		0,
		0.031618,
		-0.519487,
		-0.443495,
		1
	},
	[0.6] = {
		0.96471,
		0.261952,
		-0.026756,
		0,
		-0.011772,
		-0.058605,
		-0.998212,
		0,
		-0.263052,
		0.9633,
		-0.053453,
		0,
		0.035749,
		-0.513725,
		-0.449848,
		1
	},
	[0.716666666667] = {
		0.967768,
		0.249996,
		-0.030452,
		0,
		-0.01201,
		-0.074968,
		-0.997114,
		0,
		-0.251557,
		0.96534,
		-0.069549,
		0,
		0.029847,
		-0.521485,
		-0.441267,
		1
	},
	[0.733333333333] = {
		0.96812,
		0.248558,
		-0.031014,
		0,
		-0.012251,
		-0.076684,
		-0.99698,
		0,
		-0.250186,
		0.965577,
		-0.071194,
		0,
		0.029041,
		-0.522294,
		-0.440364,
		1
	},
	[0.75] = {
		0.968433,
		0.24728,
		-0.03147,
		0,
		-0.012471,
		-0.078028,
		-0.996873,
		0,
		-0.248963,
		0.965797,
		-0.072481,
		0,
		0.028321,
		-0.52293,
		-0.439654,
		1
	},
	[0.766666666667] = {
		0.968699,
		0.246192,
		-0.031807,
		0,
		-0.012649,
		-0.079014,
		-0.996793,
		0,
		-0.247916,
		0.965995,
		-0.073427,
		0,
		0.02771,
		-0.523402,
		-0.439132,
		1
	},
	[0.783333333333] = {
		0.968913,
		0.245322,
		-0.032012,
		0,
		-0.012763,
		-0.079658,
		-0.996741,
		0,
		-0.247072,
		0.966163,
		-0.074051,
		0,
		0.027231,
		-0.523714,
		-0.438789,
		1
	},
	[0.7] = {
		0.967382,
		0.251563,
		-0.029815,
		0,
		-0.011768,
		-0.072944,
		-0.997267,
		0,
		-0.25305,
		0.965088,
		-0.067605,
		0,
		0.030713,
		-0.520534,
		-0.44233,
		1
	},
	[0.816666666667] = {
		0.969154,
		0.244354,
		-0.032112,
		0,
		-0.012861,
		-0.079975,
		-0.996714,
		0,
		-0.246119,
		0.966382,
		-0.074366,
		0,
		0.026706,
		-0.523886,
		-0.438616,
		1
	},
	[0.833333333333] = {
		0.969166,
		0.244315,
		-0.03204,
		0,
		-0.012866,
		-0.079678,
		-0.996738,
		0,
		-0.246071,
		0.966417,
		-0.074078,
		0,
		0.026679,
		-0.523757,
		-0.438772,
		1
	},
	[0.85] = {
		0.969097,
		0.244599,
		-0.031975,
		0,
		-0.012837,
		-0.079441,
		-0.996757,
		0,
		-0.246346,
		0.966365,
		-0.073846,
		0,
		0.026831,
		-0.523643,
		-0.438899,
		1
	},
	[0.866666666667] = {
		0.968938,
		0.245226,
		-0.031986,
		0,
		-0.012773,
		-0.079543,
		-0.99675,
		0,
		-0.246974,
		0.966197,
		-0.07394,
		0,
		0.027177,
		-0.523667,
		-0.438849,
		1
	},
	[0.883333333333] = {
		0.968577,
		0.246641,
		-0.032038,
		0,
		-0.012627,
		-0.079887,
		-0.996724,
		0,
		-0.248392,
		0.965809,
		-0.074263,
		0,
		0.02796,
		-0.52377,
		-0.438677,
		1
	},
	[0.8] = {
		0.969067,
		0.2447,
		-0.032104,
		0,
		-0.012825,
		-0.079973,
		-0.996714,
		0,
		-0.246463,
		0.966295,
		-0.074361,
		0,
		0.026895,
		-0.523874,
		-0.43862,
		1
	},
	[0.916666666667] = {
		0.967895,
		0.249281,
		-0.03221,
		0,
		-0.012353,
		-0.080815,
		-0.996653,
		0,
		-0.251049,
		0.965053,
		-0.075141,
		0,
		0.029427,
		-0.524084,
		-0.438206,
		1
	},
	[0.933333333333] = {
		0.967895,
		0.24927,
		-0.032295,
		0,
		-0.012353,
		-0.081157,
		-0.996625,
		0,
		-0.251049,
		0.965028,
		-0.075472,
		0,
		0.029427,
		-0.524234,
		-0.438026,
		1
	},
	[0.95] = {
		0.967895,
		0.249265,
		-0.03233,
		0,
		-0.012353,
		-0.081294,
		-0.996614,
		0,
		-0.251049,
		0.965017,
		-0.075605,
		0,
		0.029427,
		-0.524294,
		-0.437954,
		1
	},
	[0.9] = {
		0.968121,
		0.248416,
		-0.032115,
		0,
		-0.012443,
		-0.080357,
		-0.996689,
		0,
		-0.250174,
		0.965315,
		-0.074704,
		0,
		0.028943,
		-0.523914,
		-0.438442,
		1
	}
}

return spline_matrices
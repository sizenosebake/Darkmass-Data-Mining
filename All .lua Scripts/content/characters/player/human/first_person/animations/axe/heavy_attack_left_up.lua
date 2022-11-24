local spline_matrices = {
	[0] = {
		0.104486,
		-0.135016,
		-0.985319,
		0,
		0.718316,
		0.695455,
		-0.019124,
		0,
		0.687827,
		-0.705772,
		0.16965,
		0,
		0.390036,
		0.322793,
		-0.090366,
		1
	},
	{
		0.86896,
		-0.422285,
		-0.258039,
		0,
		-0.48502,
		-0.830289,
		-0.274548,
		0,
		-0.098309,
		0.363725,
		-0.926304,
		0,
		0.004123,
		0.138986,
		-0.508291,
		1
	},
	[0.0166666666667] = {
		0.039807,
		-0.377563,
		-0.925128,
		0,
		0.368343,
		0.866202,
		-0.337665,
		0,
		0.928838,
		-0.327323,
		0.173553,
		0,
		0.368974,
		0.340807,
		-0.109401,
		1
	},
	[0.0333333333333] = {
		0.033315,
		-0.415224,
		-0.909109,
		0,
		0.294637,
		0.87327,
		-0.388058,
		0,
		0.955028,
		-0.254929,
		0.151434,
		0,
		0.363962,
		0.348722,
		-0.12108,
		1
	},
	[0.05] = {
		0.018794,
		-0.370805,
		-0.928521,
		0,
		0.335633,
		0.877134,
		-0.34349,
		0,
		0.941805,
		-0.305187,
		0.14094,
		0,
		0.363463,
		0.357277,
		-0.132486,
		1
	},
	[0.0666666666667] = {
		-0.001607,
		-0.261997,
		-0.965067,
		0,
		0.426098,
		0.872896,
		-0.237684,
		0,
		0.904676,
		-0.411595,
		0.110234,
		0,
		0.363146,
		0.370031,
		-0.143168,
		1
	},
	[0.0833333333333] = {
		-0.031228,
		-0.110752,
		-0.993357,
		0,
		0.491506,
		0.863675,
		-0.111745,
		0,
		0.870314,
		-0.491731,
		0.027465,
		0,
		0.358158,
		0.386795,
		-0.154105,
		1
	},
	[0.116666666667] = {
		-0.284359,
		-0.070358,
		-0.956133,
		0,
		-0.038664,
		0.997334,
		-0.061891,
		0,
		0.957938,
		0.019368,
		-0.286321,
		0,
		0.27491,
		0.449708,
		-0.225454,
		1
	},
	[0.133333333333] = {
		-0.438983,
		-0.152762,
		-0.885414,
		0,
		-0.476271,
		0.875167,
		0.085138,
		0,
		0.761879,
		0.459072,
		-0.456939,
		0,
		0.192364,
		0.496649,
		-0.265064,
		1
	},
	[0.15] = {
		-0.627266,
		-0.024945,
		-0.778405,
		0,
		-0.553794,
		0.717035,
		0.423288,
		0,
		0.547585,
		0.696591,
		-0.463586,
		0,
		0.136835,
		0.546673,
		-0.246401,
		1
	},
	[0.166666666667] = {
		-0.773092,
		0.096865,
		-0.626853,
		0,
		-0.507656,
		0.498012,
		0.703043,
		0,
		0.380281,
		0.861743,
		-0.335836,
		0,
		0.081595,
		0.596305,
		-0.206241,
		1
	},
	[0.183333333333] = {
		-0.768611,
		0.091967,
		-0.633071,
		0,
		-0.595495,
		0.258688,
		0.76057,
		0,
		0.233715,
		0.961573,
		-0.144065,
		0,
		0.012804,
		0.653893,
		-0.11493,
		1
	},
	[0.1] = {
		-0.107741,
		-0.009745,
		-0.994131,
		0,
		0.398934,
		0.915492,
		-0.052209,
		0,
		0.910628,
		-0.402218,
		-0.094748,
		0,
		0.340923,
		0.410222,
		-0.169508,
		1
	},
	[0.216666666667] = {
		-0.737874,
		0.115179,
		-0.665038,
		0,
		-0.674885,
		-0.113575,
		0.72913,
		0,
		0.008449,
		0.986831,
		0.161536,
		0,
		-0.094006,
		0.644288,
		0.046816,
		1
	},
	[0.233333333333] = {
		-0.763393,
		0.137578,
		-0.631113,
		0,
		-0.644395,
		-0.22962,
		0.729404,
		0,
		-0.044566,
		0.963508,
		0.263945,
		0,
		-0.140989,
		0.564787,
		0.095371,
		1
	},
	[0.25] = {
		-0.790047,
		0.183664,
		-0.584887,
		0,
		-0.611815,
		-0.296658,
		0.733265,
		0,
		-0.038837,
		0.937156,
		0.346742,
		0,
		-0.209059,
		0.440355,
		0.148235,
		1
	},
	[0.266666666667] = {
		-0.814562,
		0.225894,
		-0.534285,
		0,
		-0.578752,
		-0.378692,
		0.722246,
		0,
		-0.039178,
		0.897533,
		0.439204,
		0,
		-0.264881,
		0.328379,
		0.173843,
		1
	},
	[0.283333333333] = {
		-0.841882,
		0.244343,
		-0.481177,
		0,
		-0.529577,
		-0.545621,
		0.649497,
		0,
		-0.10384,
		0.80162,
		0.588747,
		0,
		-0.296051,
		0.268757,
		0.154903,
		1
	},
	[0.2] = {
		-0.726514,
		0.096486,
		-0.680344,
		0,
		-0.680023,
		0.041296,
		0.732027,
		0,
		0.098726,
		0.994477,
		0.035611,
		0,
		-0.049591,
		0.683788,
		-0.015677,
		1
	},
	[0.316666666667] = {
		-0.907341,
		0.218102,
		-0.359393,
		0,
		-0.330213,
		-0.898831,
		0.288205,
		0,
		-0.260176,
		0.380176,
		0.887567,
		0,
		-0.350333,
		0.178161,
		0.072128,
		1
	},
	[0.333333333333] = {
		-0.928509,
		0.173137,
		-0.328474,
		0,
		-0.202054,
		-0.977785,
		0.055766,
		0,
		-0.311522,
		0.118148,
		0.942865,
		0,
		-0.371158,
		0.14839,
		0.02367,
		1
	},
	[0.35] = {
		-0.934331,
		0.130796,
		-0.331538,
		0,
		-0.089772,
		-0.986601,
		-0.136235,
		0,
		-0.344914,
		-0.097526,
		0.933554,
		0,
		-0.384443,
		0.125711,
		-0.020436,
		1
	},
	[0.366666666667] = {
		-0.923631,
		0.110641,
		-0.366966,
		0,
		-0.015932,
		-0.967685,
		-0.25166,
		0,
		-0.382951,
		-0.226595,
		0.895547,
		0,
		-0.38608,
		0.107972,
		-0.05611,
		1
	},
	[0.383333333333] = {
		-0.896419,
		0.111884,
		-0.428852,
		0,
		0.028045,
		-0.951354,
		-0.306822,
		0,
		-0.442319,
		-0.287068,
		0.849674,
		0,
		-0.374755,
		0.094011,
		-0.087817,
		1
	},
	[0.3] = {
		-0.875594,
		0.244502,
		-0.416598,
		0,
		-0.445891,
		-0.740805,
		0.502383,
		0,
		-0.185785,
		0.625641,
		0.757666,
		0,
		-0.324863,
		0.217886,
		0.118576,
		1
	},
	[0.416666666667] = {
		-0.780319,
		0.148119,
		-0.607588,
		0,
		0.084538,
		-0.937647,
		-0.337153,
		0,
		-0.619641,
		-0.314451,
		0.719142,
		0,
		-0.322764,
		0.076536,
		-0.15734,
		1
	},
	[0.433333333333] = {
		-0.676795,
		0.174304,
		-0.715239,
		0,
		0.094079,
		-0.943121,
		-0.31886,
		0,
		-0.730136,
		-0.283092,
		0.621901,
		0,
		-0.286375,
		0.071963,
		-0.193315,
		1
	},
	[0.45] = {
		-0.532438,
		0.19564,
		-0.82355,
		0,
		0.085523,
		-0.955512,
		-0.28228,
		0,
		-0.842137,
		-0.220729,
		0.49202,
		0,
		-0.246389,
		0.069623,
		-0.228949,
		1
	},
	[0.466666666667] = {
		-0.343981,
		0.201295,
		-0.917146,
		0,
		0.053472,
		-0.970966,
		-0.233163,
		0,
		-0.937453,
		-0.129245,
		0.323231,
		0,
		-0.205506,
		0.069484,
		-0.263755,
		1
	},
	[0.483333333333] = {
		-0.118333,
		0.179987,
		-0.976525,
		0,
		-0.005307,
		-0.983536,
		-0.180636,
		0,
		-0.99296,
		-0.016193,
		0.11734,
		0,
		-0.166149,
		0.071833,
		-0.297841,
		1
	},
	[0.4] = {
		-0.850808,
		0.125475,
		-0.510277,
		0,
		0.061623,
		-0.940548,
		-0.334023,
		0,
		-0.521851,
		-0.315634,
		0.792494,
		0,
		-0.352987,
		0.083718,
		-0.121856,
		1
	},
	[0.516666666667] = {
		0.352948,
		0.038124,
		-0.934866,
		0,
		-0.185659,
		-0.976448,
		-0.109913,
		0,
		-0.917038,
		0.212359,
		-0.337557,
		0,
		-0.097153,
		0.085332,
		-0.366125,
		1
	},
	[0.533333333333] = {
		0.541418,
		-0.067824,
		-0.838014,
		0,
		-0.283271,
		-0.953178,
		-0.105869,
		0,
		-0.791596,
		0.294705,
		-0.53528,
		0,
		-0.067591,
		0.095996,
		-0.40052,
		1
	},
	[0.55] = {
		0.676335,
		-0.176592,
		-0.715113,
		0,
		-0.368596,
		-0.92168,
		-0.121006,
		0,
		-0.637737,
		0.345429,
		-0.688455,
		0,
		-0.040979,
		0.1078,
		-0.433603,
		1
	},
	[0.566666666667] = {
		0.76059,
		-0.274293,
		-0.588444,
		0,
		-0.434745,
		-0.888335,
		-0.147845,
		0,
		-0.482183,
		0.368273,
		-0.794906,
		0,
		-0.017884,
		0.119155,
		-0.463271,
		1
	},
	[0.583333333333] = {
		0.806697,
		-0.352723,
		-0.474159,
		0,
		-0.480322,
		-0.858767,
		-0.178354,
		0,
		-0.344283,
		0.371627,
		-0.862185,
		0,
		0.000253,
		0.128531,
		-0.487281,
		1
	},
	[0.5] = {
		0.123969,
		0.124791,
		-0.984408,
		0,
		-0.088293,
		-0.986738,
		-0.136206,
		0,
		-0.98835,
		0.103801,
		-0.111307,
		0,
		-0.12989,
		0.077082,
		-0.331797,
		1
	},
	[0.616666666667] = {
		0.841014,
		-0.441664,
		-0.312454,
		0,
		-0.517626,
		-0.824867,
		-0.227286,
		0,
		-0.157349,
		0.352885,
		-0.922341,
		0,
		0.013629,
		0.13635,
		-0.510596,
		1
	},
	[0.633333333333] = {
		0.848204,
		-0.460741,
		-0.261283,
		0,
		-0.519731,
		-0.81909,
		-0.242839,
		0,
		-0.102129,
		0.341774,
		-0.934217,
		0,
		0.010876,
		0.135553,
		-0.512286,
		1
	},
	[0.65] = {
		0.852074,
		-0.475554,
		-0.218674,
		0,
		-0.520386,
		-0.814588,
		-0.256211,
		0,
		-0.056287,
		0.332106,
		-0.941561,
		0,
		0.008618,
		0.134813,
		-0.513742,
		1
	},
	[0.666666666667] = {
		0.853949,
		-0.486847,
		-0.183715,
		0,
		-0.52002,
		-0.811153,
		-0.267602,
		0,
		-0.01874,
		0.324053,
		-0.945853,
		0,
		0.006756,
		0.134179,
		-0.514953,
		1
	},
	[0.683333333333] = {
		0.854732,
		-0.495217,
		-0.155545,
		0,
		-0.518942,
		-0.808614,
		-0.277205,
		0,
		0.011501,
		0.317655,
		-0.948137,
		0,
		0.005215,
		0.1337,
		-0.515923,
		1
	},
	[0.6] = {
		0.829352,
		-0.408683,
		-0.380989,
		0,
		-0.507111,
		-0.836845,
		-0.206224,
		0,
		-0.234549,
		0.364236,
		-0.901287,
		0,
		0.01146,
		0.134631,
		-0.50362,
		1
	},
	[0.716666666667] = {
		0.855225,
		-0.504978,
		-0.116563,
		0,
		-0.515496,
		-0.805694,
		-0.291755,
		0,
		0.053416,
		0.309604,
		-0.949364,
		0,
		0.002884,
		0.133381,
		-0.517187,
		1
	},
	[0.733333333333] = {
		0.855565,
		-0.507043,
		-0.104481,
		0,
		-0.513411,
		-0.805108,
		-0.297002,
		0,
		0.066474,
		0.307746,
		-0.949144,
		0,
		0.002019,
		0.133624,
		-0.517512,
		1
	},
	[0.75] = {
		0.856175,
		-0.507569,
		-0.096632,
		0,
		-0.51121,
		-0.805,
		-0.301063,
		0,
		0.075021,
		0.307162,
		-0.948696,
		0,
		0.001318,
		0.134185,
		-0.517653,
		1
	},
	[0.766666666667] = {
		0.85711,
		-0.506747,
		-0.092573,
		0,
		-0.508958,
		-0.805307,
		-0.304043,
		0,
		0.079523,
		0.307714,
		-0.94815,
		0,
		0.000764,
		0.135099,
		-0.517627,
		1
	},
	[0.783333333333] = {
		0.858366,
		-0.504737,
		-0.091919,
		0,
		-0.506702,
		-0.805976,
		-0.306033,
		0,
		0.080381,
		0.309264,
		-0.947573,
		0,
		0.000338,
		0.136137,
		-0.517446,
		1
	},
	[0.7] = {
		0.855027,
		-0.501135,
		-0.133388,
		0,
		-0.51738,
		-0.806831,
		-0.285203,
		0,
		0.035304,
		0.312869,
		-0.94914,
		0,
		0.003939,
		0.13342,
		-0.516663,
		1
	},
	[0.816666666667] = {
		0.861639,
		-0.497675,
		-0.099484,
		0,
		-0.502308,
		-0.80822,
		-0.307356,
		0,
		0.072559,
		0.314802,
		-0.94638,
		0,
		-0.000173,
		0.137825,
		-0.516675,
		1
	},
	[0.833333333333] = {
		0.863497,
		-0.492852,
		-0.107097,
		0,
		-0.500212,
		-0.809717,
		-0.306832,
		0,
		0.064505,
		0.31852,
		-0.945719,
		0,
		-0.000258,
		0.138477,
		-0.51612,
		1
	},
	[0.85] = {
		0.86537,
		-0.487309,
		-0.116895,
		0,
		-0.498208,
		-0.811416,
		-0.305602,
		0,
		0.054072,
		0.322697,
		-0.944957,
		0,
		-0.000229,
		0.139003,
		-0.515475,
		1
	},
	[0.866666666667] = {
		0.86715,
		-0.481154,
		-0.128617,
		0,
		-0.496313,
		-0.813281,
		-0.303723,
		0,
		0.041536,
		0.327208,
		-0.944039,
		0,
		-9e-05,
		0.139402,
		-0.514758,
		1
	},
	[0.883333333333] = {
		0.868728,
		-0.474498,
		-0.141997,
		0,
		-0.494543,
		-0.815274,
		-0.301256,
		0,
		0.027179,
		0.331933,
		-0.942911,
		0,
		0.000157,
		0.139674,
		-0.513986,
		1
	},
	[0.8] = {
		0.859899,
		-0.501673,
		-0.094328,
		0,
		-0.504477,
		-0.80696,
		-0.307113,
		0,
		0.077951,
		0.311672,
		-0.946987,
		0,
		2.5e-05,
		0.137045,
		-0.517123,
		1
	},
	[0.916666666667] = {
		0.870883,
		-0.460165,
		-0.172659,
		0,
		-0.491456,
		-0.819472,
		-0.294849,
		0,
		-0.00581,
		0.341633,
		-0.939815,
		0,
		0.000965,
		0.13987,
		-0.512338,
		1
	},
	[0.933333333333] = {
		0.871335,
		-0.45267,
		-0.189383,
		0,
		-0.49011,
		-0.821623,
		-0.291082,
		0,
		-0.023838,
		0.346448,
		-0.937766,
		0,
		0.001503,
		0.139821,
		-0.511492,
		1
	},
	[0.95] = {
		0.871363,
		-0.445009,
		-0.206626,
		0,
		-0.488797,
		-0.823815,
		-0.287064,
		0,
		-0.042476,
		0.351136,
		-0.935361,
		0,
		0.002102,
		0.139693,
		-0.51065,
		1
	},
	[0.966666666667] = {
		0.870959,
		-0.4373,
		-0.224053,
		0,
		-0.48751,
		-0.826016,
		-0.282899,
		0,
		-0.06136,
		0.355622,
		-0.932614,
		0,
		0.00275,
		0.139501,
		-0.509826,
		1
	},
	[0.983333333333] = {
		0.870142,
		-0.429676,
		-0.241313,
		0,
		-0.486248,
		-0.828187,
		-0.278691,
		0,
		-0.080106,
		0.359839,
		-0.929569,
		0,
		0.00343,
		0.13926,
		-0.509035,
		1
	},
	[0.9] = {
		0.870003,
		-0.46746,
		-0.156768,
		0,
		-0.492917,
		-0.817354,
		-0.29827,
		0,
		0.011294,
		0.336769,
		-0.94152,
		0,
		0.00051,
		0.139826,
		-0.513174,
		1
	},
	[1.01666666667] = {
		0.867493,
		-0.415289,
		-0.273844,
		0,
		-0.483844,
		-0.832274,
		-0.270582,
		0,
		-0.115543,
		0.367226,
		-0.922927,
		0,
		0.004806,
		0.138694,
		-0.507607,
		1
	},
	[1.03333333333] = {
		0.865851,
		-0.408861,
		-0.288332,
		0,
		-0.482747,
		-0.834096,
		-0.266908,
		0,
		-0.131368,
		0.370294,
		-0.919579,
		0,
		0.005455,
		0.138402,
		-0.506996,
		1
	},
	[1.05] = {
		0.864166,
		-0.403184,
		-0.301096,
		0,
		-0.481763,
		-0.835702,
		-0.263642,
		0,
		-0.145331,
		0.372887,
		-0.916425,
		0,
		0.006046,
		0.138126,
		-0.50647,
		1
	},
	[1.06666666667] = {
		0.862592,
		-0.398448,
		-0.311727,
		0,
		-0.480931,
		-0.83704,
		-0.260901,
		0,
		-0.156973,
		0.37497,
		-0.91365,
		0,
		0.006551,
		0.137882,
		-0.506041,
		1
	},
	[1.08333333333] = {
		0.861289,
		-0.394842,
		-0.319815,
		0,
		-0.480291,
		-0.838059,
		-0.258801,
		0,
		-0.165838,
		0.376507,
		-0.91145,
		0,
		0.006943,
		0.137688,
		-0.50572,
		1
	},
	[1.11666666667] = {
		0.860095,
		-0.391751,
		-0.326753,
		0,
		-0.479742,
		-0.838931,
		-0.256987,
		0,
		-0.173448,
		0.377791,
		-0.9095,
		0,
		0.007287,
		0.137513,
		-0.505449,
		1
	},
	[1.1] = {
		0.860411,
		-0.392551,
		-0.324955,
		0,
		-0.479884,
		-0.838705,
		-0.257459,
		0,
		-0.171476,
		0.377461,
		-0.91001,
		0,
		0.007197,
		0.137559,
		-0.505519,
		1
	}
}

return spline_matrices
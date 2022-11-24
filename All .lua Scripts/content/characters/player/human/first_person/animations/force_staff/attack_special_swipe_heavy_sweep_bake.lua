local spline_matrices = {
	[0] = {
		-0.378154,
		-0.537298,
		0.753864,
		0,
		-0.757652,
		-0.288299,
		-0.585532,
		0,
		0.531943,
		-0.792587,
		-0.298063,
		0,
		0.952627,
		-0.49435,
		-0.427588,
		1
	},
	[0.0166666666667] = {
		-0.398656,
		-0.529755,
		0.74862,
		0,
		-0.774098,
		-0.243347,
		-0.584426,
		0,
		0.491778,
		-0.812491,
		-0.313071,
		0,
		0.917876,
		-0.516435,
		-0.439358,
		1
	},
	[0.0333333333333] = {
		-0.420785,
		-0.521964,
		0.741953,
		0,
		-0.791396,
		-0.188577,
		-0.58149,
		0,
		0.443432,
		-0.831861,
		-0.33373,
		0,
		0.871447,
		-0.54262,
		-0.454706,
		1
	},
	[0.05] = {
		-0.443301,
		-0.514026,
		0.734344,
		0,
		-0.80674,
		-0.128299,
		-0.576811,
		0,
		0.390711,
		-0.848125,
		-0.35781,
		0,
		0.817188,
		-0.569269,
		-0.472074,
		1
	},
	[0.0666666666667] = {
		-0.464981,
		-0.506403,
		0.726188,
		0,
		-0.818281,
		-0.067283,
		-0.570867,
		0,
		0.337949,
		-0.859668,
		-0.383094,
		0,
		0.759563,
		-0.593549,
		-0.48986,
		1
	},
	[0.0833333333333] = {
		-0.484619,
		-0.499915,
		0.717795,
		0,
		-0.825319,
		-0.010562,
		-0.564569,
		0,
		0.289817,
		-0.86601,
		-0.407471,
		0,
		0.70355,
		-0.613668,
		-0.506494,
		1
	},
	[0.116666666667] = {
		-0.51289,
		-0.495084,
		0.70131,
		0,
		-0.828114,
		0.070068,
		-0.556163,
		0,
		0.226208,
		-0.866015,
		-0.445923,
		0,
		0.617426,
		-0.639332,
		-0.530609,
		1
	},
	[0.133333333333] = {
		-0.518789,
		-0.49949,
		0.693806,
		0,
		-0.826215,
		0.084467,
		-0.556987,
		0,
		0.219606,
		-0.862192,
		-0.456507,
		0,
		0.597811,
		-0.645341,
		-0.535482,
		1
	},
	[0.15] = {
		-0.516823,
		-0.510176,
		0.687469,
		0,
		-0.82311,
		0.075377,
		-0.562857,
		0,
		0.235337,
		-0.856761,
		-0.458887,
		0,
		0.600649,
		-0.646878,
		-0.533753,
		1
	},
	[0.166666666667] = {
		-0.511467,
		-0.523098,
		0.681741,
		0,
		-0.819365,
		0.057825,
		-0.570348,
		0,
		0.258926,
		-0.850309,
		-0.458184,
		0,
		0.613312,
		-0.638228,
		-0.529021,
		1
	},
	[0.183333333333] = {
		-0.504723,
		-0.536379,
		0.676426,
		0,
		-0.815271,
		0.038495,
		-0.577799,
		0,
		0.283881,
		-0.843099,
		-0.456723,
		0,
		0.628639,
		-0.614723,
		-0.522584,
		1
	},
	[0.1] = {
		-0.501011,
		-0.495694,
		0.709419,
		0,
		-0.828229,
		0.036837,
		-0.559178,
		0,
		0.251049,
		-0.867715,
		-0.429004,
		0,
		0.654406,
		-0.628902,
		-0.520521,
		1
	},
	[0.216666666667] = {
		-0.459884,
		-0.576869,
		0.675077,
		0,
		-0.793727,
		-0.073804,
		-0.60378,
		0,
		0.398125,
		-0.813496,
		-0.423935,
		0,
		0.718289,
		-0.520102,
		-0.482279,
		1
	},
	[0.233333333333] = {
		-0.402552,
		-0.605167,
		0.686822,
		0,
		-0.754626,
		-0.205321,
		-0.623204,
		0,
		0.518162,
		-0.769166,
		-0.374022,
		0,
		0.819307,
		-0.434352,
		-0.432929,
		1
	},
	[0.25] = {
		-0.298848,
		-0.62705,
		0.719374,
		0,
		-0.64752,
		-0.420499,
		-0.63553,
		0,
		0.701005,
		-0.655736,
		-0.280362,
		0,
		0.976295,
		-0.282365,
		-0.345662,
		1
	},
	[0.266666666667] = {
		-0.079789,
		-0.564394,
		0.82164,
		0,
		-0.291661,
		-0.774977,
		-0.560664,
		0,
		0.953188,
		-0.284375,
		-0.102777,
		0,
		1.15145,
		0.150146,
		-0.169022,
		1
	},
	[0.283333333333] = {
		0.0962,
		-0.288919,
		0.952508,
		0,
		0.380688,
		-0.873511,
		-0.303406,
		0,
		0.919686,
		0.391795,
		0.025956,
		0,
		0.99507,
		0.901042,
		-0.023025,
		1
	},
	[0.2] = {
		-0.490102,
		-0.55359,
		0.673304,
		0,
		-0.808646,
		0.000392,
		-0.588296,
		0,
		0.325411,
		-0.832789,
		-0.447851,
		0,
		0.659444,
		-0.576305,
		-0.509084,
		1
	},
	[0.316666666667] = {
		-0.043913,
		-0.003956,
		0.999028,
		0,
		0.998126,
		0.042487,
		0.044042,
		0,
		-0.04262,
		0.999089,
		0.002083,
		0,
		-0.149941,
		1.427948,
		-0.014435,
		1
	},
	[0.333333333333] = {
		-0.161977,
		-0.097298,
		0.981986,
		0,
		0.897103,
		0.40001,
		0.18761,
		0,
		-0.411059,
		0.911331,
		0.022494,
		0,
		-0.588557,
		1.283571,
		-0.017033,
		1
	},
	[0.35] = {
		-0.306553,
		-0.287944,
		0.907256,
		0,
		0.688855,
		0.59067,
		0.420224,
		0,
		-0.65689,
		0.753789,
		0.01728,
		0,
		-0.911238,
		1.078291,
		-0.081717,
		1
	},
	[0.366666666667] = {
		-0.350718,
		-0.42835,
		0.832774,
		0,
		0.507512,
		0.660414,
		0.55343,
		0,
		-0.787038,
		0.616741,
		-0.014227,
		0,
		-1.068067,
		0.90929,
		-0.164322,
		1
	},
	[0.383333333333] = {
		-0.346032,
		-0.465426,
		0.814642,
		0,
		0.410572,
		0.705612,
		0.577531,
		0,
		-0.843619,
		0.534313,
		-0.053073,
		0,
		-1.123266,
		0.794911,
		-0.229339,
		1
	},
	[0.3] = {
		0.039041,
		-0.033079,
		0.99869,
		0,
		0.854358,
		-0.517222,
		-0.05053,
		0,
		0.518216,
		0.855212,
		0.008069,
		0,
		0.487768,
		1.370599,
		-0.020156,
		1
	},
	[0.416666666667] = {
		-0.321296,
		-0.423396,
		0.847056,
		0,
		0.355936,
		0.774901,
		0.522339,
		0,
		-0.877541,
		0.469324,
		-0.098271,
		0,
		-1.170415,
		0.650706,
		-0.332818,
		1
	},
	[0.433333333333] = {
		-0.295906,
		-0.367099,
		0.881861,
		0,
		0.388136,
		0.797347,
		0.462156,
		0,
		-0.872806,
		0.479037,
		-0.093455,
		0,
		-1.174148,
		0.618494,
		-0.367872,
		1
	},
	[0.45] = {
		-0.264813,
		-0.298925,
		0.916798,
		0,
		0.439657,
		0.808743,
		0.390686,
		0,
		-0.85824,
		0.506536,
		-0.082741,
		0,
		-1.167592,
		0.605555,
		-0.397462,
		1
	},
	[0.466666666667] = {
		-0.232629,
		-0.229238,
		0.945163,
		0,
		0.495797,
		0.808112,
		0.318026,
		0,
		-0.836701,
		0.542591,
		-0.074334,
		0,
		-1.152772,
		0.604971,
		-0.424675,
		1
	},
	[0.483333333333] = {
		-0.207667,
		-0.169105,
		0.963472,
		0,
		0.543232,
		0.799167,
		0.257355,
		0,
		-0.813495,
		0.576833,
		-0.074098,
		0,
		-1.134242,
		0.608494,
		-0.45043,
		1
	},
	[0.4] = {
		-0.338914,
		-0.458862,
		0.82133,
		0,
		0.358271,
		0.744273,
		0.563649,
		0,
		-0.869931,
		0.485287,
		-0.087847,
		0,
		-1.155015,
		0.707726,
		-0.288096,
		1
	},
	[0.516666666667] = {
		-0.210048,
		-0.103838,
		0.972161,
		0,
		0.584666,
		0.783617,
		0.210024,
		0,
		-0.783611,
		0.612505,
		-0.103886,
		0,
		-1.099756,
		0.602126,
		-0.492452,
		1
	},
	[0.533333333333] = {
		-0.223508,
		-0.079911,
		0.971421,
		0,
		0.600877,
		0.77343,
		0.201876,
		0,
		-0.767458,
		0.628825,
		-0.124851,
		0,
		-1.076464,
		0.599359,
		-0.516386,
		1
	},
	[0.55] = {
		-0.241212,
		-0.05736,
		0.968776,
		0,
		0.618591,
		0.760088,
		0.199025,
		0,
		-0.747771,
		0.647283,
		-0.14786,
		0,
		-1.045499,
		0.598188,
		-0.542225,
		1
	},
	[0.566666666667] = {
		-0.262873,
		-0.036036,
		0.964157,
		0,
		0.637305,
		0.743785,
		0.201558,
		0,
		-0.72439,
		0.667446,
		-0.172555,
		0,
		-1.004996,
		0.597986,
		-0.567935,
		1
	},
	[0.583333333333] = {
		-0.288176,
		-0.015772,
		0.957448,
		0,
		0.656426,
		0.724713,
		0.209512,
		0,
		-0.697179,
		0.68887,
		-0.198492,
		0,
		-0.957256,
		0.598845,
		-0.594262,
		1
	},
	[0.5] = {
		-0.201099,
		-0.129267,
		0.971004,
		0,
		0.570362,
		0.790443,
		0.223354,
		0,
		-0.796396,
		0.59874,
		-0.085229,
		0,
		-1.117469,
		0.607295,
		-0.472315,
		1
	},
	[0.616666666667] = {
		-0.348266,
		0.022302,
		0.93713,
		0,
		0.693197,
		0.679102,
		0.241451,
		0,
		-0.631022,
		0.733705,
		-0.251968,
		0,
		-0.842477,
		0.602892,
		-0.646963,
		1
	},
	[0.633333333333] = {
		-0.38222,
		0.040484,
		0.923184,
		0,
		0.70941,
		0.653048,
		0.265075,
		0,
		-0.592153,
		0.756233,
		-0.278328,
		0,
		-0.776757,
		0.605672,
		-0.672393,
		1
	},
	[0.65] = {
		-0.418149,
		0.05834,
		0.906503,
		0,
		0.723219,
		0.625212,
		0.293367,
		0,
		-0.549642,
		0.778271,
		-0.303624,
		0,
		-0.706481,
		0.608711,
		-0.696613,
		1
	},
	[0.666666666667] = {
		-0.455526,
		0.076045,
		0.886969,
		0,
		0.733957,
		0.595927,
		0.32585,
		0,
		-0.503789,
		0.79943,
		-0.327274,
		0,
		-0.632485,
		0.611849,
		-0.719234,
		1
	},
	[0.683333333333] = {
		-0.493794,
		0.093764,
		0.864509,
		0,
		0.741043,
		0.565562,
		0.361932,
		0,
		-0.454997,
		0.819358,
		-0.348755,
		0,
		-0.555661,
		0.614952,
		-0.739937,
		1
	},
	[0.6] = {
		-0.316771,
		0.003612,
		0.948495,
		0,
		0.675293,
		0.703076,
		0.222852,
		0,
		-0.666059,
		0.711105,
		-0.225154,
		0,
		-0.902875,
		0.600551,
		-0.620764,
		1
	},
	[0.716666666667] = {
		-0.570704,
		0.129835,
		0.810827,
		0,
		0.742534,
		0.503218,
		0.442057,
		0,
		-0.350628,
		0.854351,
		-0.383595,
		0,
		-0.397295,
		0.62063,
		-0.774763,
		1
	},
	[0.733333333333] = {
		-0.608207,
		0.148448,
		0.779774,
		0,
		0.736444,
		0.472096,
		0.484536,
		0,
		-0.2962,
		0.868958,
		-0.396456,
		0,
		-0.317662,
		0.623061,
		-0.788728,
		1
	},
	[0.75] = {
		-0.644359,
		0.167602,
		0.74613,
		0,
		0.725733,
		0.441591,
		0.52755,
		0,
		-0.241066,
		0.881423,
		-0.406177,
		0,
		-0.238968,
		0.625163,
		-0.800464,
		1
	},
	[0.766666666667] = {
		-0.678676,
		0.1874,
		0.710127,
		0,
		0.710551,
		0.412131,
		0.570321,
		0,
		-0.185787,
		0.891644,
		-0.41286,
		0,
		-0.162085,
		0.626913,
		-0.810144,
		1
	},
	[0.783333333333] = {
		-0.710725,
		0.207941,
		0.672035,
		0,
		0.691192,
		0.384126,
		0.612129,
		0,
		-0.130859,
		0.89956,
		-0.416735,
		0,
		-0.087814,
		0.6283,
		-0.818023,
		1
	},
	[0.7] = {
		-0.532379,
		0.111648,
		0.839111,
		0,
		0.744011,
		0.534518,
		0.400922,
		0,
		-0.403758,
		0.83775,
		-0.367634,
		0,
		-0.476946,
		0.617907,
		-0.758491,
		1
	},
	[0.816666666667] = {
		-0.766599,
		0.251639,
		0.590766,
		0,
		0.641693,
		0.334,
		0.690416,
		0,
		-0.02358,
		0.908362,
		-0.417519,
		0,
		0.050116,
		0.629943,
		-0.829702,
		1
	},
	[0.833333333333] = {
		-0.789853,
		0.274992,
		0.548189,
		0,
		0.612643,
		0.312561,
		0.72593,
		0,
		0.028283,
		0.909222,
		-0.41535,
		0,
		0.112617,
		0.630156,
		-0.834256,
		1
	},
	[0.85] = {
		-0.809688,
		0.299483,
		0.504693,
		0,
		0.581543,
		0.293941,
		0.758556,
		0,
		0.078825,
		0.907694,
		-0.412163,
		0,
		0.170183,
		0.629904,
		-0.838477,
		1
	},
	[0.866666666667] = {
		-0.825924,
		0.325217,
		0.460525,
		0,
		0.54904,
		0.278403,
		0.788065,
		0,
		0.128081,
		0.903729,
		-0.408497,
		0,
		0.222448,
		0.629114,
		-0.842762,
		1
	},
	[0.883333333333] = {
		-0.838403,
		0.352297,
		0.415894,
		0,
		0.515793,
		0.26618,
		0.814313,
		0,
		0.176177,
		0.897238,
		-0.404878,
		0,
		0.269127,
		0.627696,
		-0.847535,
		1
	},
	[0.8] = {
		-0.740137,
		0.229322,
		0.632146,
		0,
		0.668069,
		0.357963,
		0.652339,
		0,
		-0.07669,
		0.905138,
		-0.418144,
		0,
		-0.016872,
		0.629315,
		-0.824421,
		1
	},
	[0.916666666667] = {
		-0.851467,
		0.410886,
		0.325847,
		0,
		0.449704,
		0.252472,
		0.856752,
		0,
		0.26976,
		0.876031,
		-0.399749,
		0,
		0.344577,
		0.622124,
		-0.859423,
		1
	},
	[0.9] = {
		-0.846972,
		0.380823,
		0.370962,
		0,
		0.48246,
		0.257477,
		0.83722,
		0,
		0.223318,
		0.888076,
		-0.401808,
		0,
		0.310018,
		0.62555,
		-0.853266,
		1
	}
}

return spline_matrices
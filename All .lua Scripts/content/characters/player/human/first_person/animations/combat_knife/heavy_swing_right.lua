local spline_matrices = {
	[0] = {
		-0.875708,
		0.380097,
		-0.297761,
		0,
		-0.345112,
		-0.06143,
		0.936549,
		0,
		0.337688,
		0.922904,
		0.184971,
		0,
		-0.279449,
		0.098293,
		-0.028007,
		1
	},
	{
		-0.544276,
		0.475758,
		-0.690954,
		0,
		0.728569,
		0.676375,
		-0.108186,
		0,
		0.415873,
		-0.562291,
		-0.714758,
		0,
		0.41205,
		0.208221,
		-0.305321,
		1
	},
	[0.0166666666667] = {
		-0.874691,
		0.332991,
		-0.352182,
		0,
		-0.398857,
		-0.081699,
		0.913367,
		0,
		0.27537,
		0.939384,
		0.204277,
		0,
		-0.281444,
		0.092199,
		-0.032174,
		1
	},
	[0.0333333333333] = {
		-0.86748,
		0.277168,
		-0.413106,
		0,
		-0.455692,
		-0.109616,
		0.883362,
		0,
		0.199557,
		0.954548,
		0.221394,
		0,
		-0.285841,
		0.0815,
		-0.036491,
		1
	},
	[0.05] = {
		-0.851738,
		0.214471,
		-0.478062,
		0,
		-0.511703,
		-0.144224,
		0.846971,
		0,
		0.112703,
		0.966024,
		0.232587,
		0,
		-0.291935,
		0.06739,
		-0.04086,
		1
	},
	[0.0666666666667] = {
		-0.826086,
		0.146953,
		-0.544047,
		0,
		-0.563251,
		-0.184154,
		0.805504,
		0,
		0.018183,
		0.97185,
		0.234898,
		0,
		-0.299115,
		0.051081,
		-0.045145,
		1
	},
	[0.0833333333333] = {
		-0.764035,
		0.075919,
		-0.640692,
		0,
		-0.641795,
		-0.19094,
		0.742725,
		0,
		-0.065947,
		0.978661,
		0.194609,
		0,
		-0.307828,
		0.035195,
		-0.050408,
		1
	},
	[0.116666666667] = {
		-0.597409,
		-0.068295,
		-0.799023,
		0,
		-0.775585,
		-0.204117,
		0.597331,
		0,
		-0.203889,
		0.976561,
		0.068972,
		0,
		-0.324943,
		0.004176,
		-0.059886,
		1
	},
	[0.133333333333] = {
		-0.505199,
		-0.139018,
		-0.851732,
		0,
		-0.825622,
		-0.209468,
		0.523901,
		0,
		-0.251243,
		0.967883,
		-0.008954,
		0,
		-0.333043,
		-0.008767,
		-0.063862,
		1
	},
	[0.15] = {
		-0.417244,
		-0.207968,
		-0.884679,
		0,
		-0.863336,
		-0.213321,
		0.457324,
		0,
		-0.283829,
		0.954591,
		-0.09054,
		0,
		-0.340687,
		-0.018592,
		-0.067341,
		1
	},
	[0.166666666667] = {
		-0.341047,
		-0.27497,
		-0.898932,
		0,
		-0.889387,
		-0.215299,
		0.403283,
		0,
		-0.30443,
		0.937037,
		-0.171128,
		0,
		-0.347707,
		-0.024275,
		-0.070434,
		1
	},
	[0.183333333333] = {
		-0.284929,
		-0.344479,
		-0.894511,
		0,
		-0.903087,
		-0.216352,
		0.370979,
		0,
		-0.321323,
		0.913524,
		-0.24945,
		0,
		-0.354146,
		-0.027453,
		-0.071697,
		1
	},
	[0.1] = {
		-0.68605,
		0.003679,
		-0.727545,
		0,
		-0.713681,
		-0.197754,
		0.671977,
		0,
		-0.141402,
		0.980245,
		0.138295,
		0,
		-0.3165,
		0.01919,
		-0.055377,
		1
	},
	[0.216666666667] = {
		-0.232355,
		-0.482334,
		-0.844609,
		0,
		-0.90163,
		-0.218877,
		0.373037,
		0,
		-0.364793,
		0.848202,
		-0.38403,
		0,
		-0.366581,
		-0.030319,
		-0.066931,
		1
	},
	[0.233333333333] = {
		-0.229058,
		-0.537043,
		-0.811861,
		0,
		-0.891878,
		-0.218355,
		0.396075,
		0,
		-0.389983,
		0.814804,
		-0.42896,
		0,
		-0.373119,
		-0.028209,
		-0.062778,
		1
	},
	[0.25] = {
		-0.238491,
		-0.574611,
		-0.782908,
		0,
		-0.87882,
		-0.215375,
		0.425781,
		0,
		-0.413277,
		0.78958,
		-0.453615,
		0,
		-0.38042,
		-0.022832,
		-0.058651,
		1
	},
	[0.266666666667] = {
		-0.26026,
		-0.589862,
		-0.764413,
		0,
		-0.864761,
		-0.209751,
		0.456281,
		0,
		-0.429479,
		0.779787,
		-0.4555,
		0,
		-0.389083,
		-0.013674,
		-0.055378,
		1
	},
	[0.283333333333] = {
		-0.288037,
		-0.574316,
		-0.766287,
		0,
		-0.84354,
		-0.226612,
		0.486917,
		0,
		-0.453294,
		0.786643,
		-0.419186,
		0,
		-0.398916,
		0.011369,
		-0.053507,
		1
	},
	[0.2] = {
		-0.250001,
		-0.415997,
		-0.874326,
		0,
		-0.906098,
		-0.217786,
		0.362707,
		0,
		-0.341301,
		0.882902,
		-0.322487,
		0,
		-0.36036,
		-0.029783,
		-0.070215,
		1
	},
	[0.316666666667] = {
		-0.401224,
		-0.435896,
		-0.805614,
		0,
		-0.777677,
		-0.302607,
		0.551043,
		0,
		-0.483982,
		0.847599,
		-0.217573,
		0,
		-0.420634,
		0.118678,
		-0.056484,
		1
	},
	[0.333333333333] = {
		-0.507721,
		-0.303549,
		-0.806274,
		0,
		-0.753987,
		-0.296211,
		0.586313,
		0,
		-0.416802,
		0.905603,
		-0.078479,
		0,
		-0.432976,
		0.1845,
		-0.061751,
		1
	},
	[0.35] = {
		-0.597724,
		-0.046518,
		-0.800352,
		0,
		-0.782053,
		-0.18584,
		0.594859,
		0,
		-0.176409,
		0.981478,
		0.074701,
		0,
		-0.423826,
		0.272539,
		-0.068185,
		1
	},
	[0.366666666667] = {
		-0.556202,
		0.194748,
		-0.807906,
		0,
		-0.823835,
		-0.001412,
		0.566828,
		0,
		0.109248,
		0.980852,
		0.161225,
		0,
		-0.379309,
		0.371289,
		-0.069961,
		1
	},
	[0.383333333333] = {
		-0.453166,
		0.263816,
		-0.851494,
		0,
		-0.830416,
		0.222369,
		0.510844,
		0,
		0.324114,
		0.938591,
		0.118307,
		0,
		-0.302104,
		0.481207,
		-0.046106,
		1
	},
	[0.3] = {
		-0.329468,
		-0.523605,
		-0.785677,
		0,
		-0.811618,
		-0.268116,
		0.519029,
		0,
		-0.482419,
		0.808673,
		-0.336631,
		0,
		-0.409312,
		0.058436,
		-0.053705,
		1
	},
	[0.416666666667] = {
		-0.354723,
		0.249049,
		-0.901192,
		0,
		-0.504692,
		0.76038,
		0.408789,
		0,
		0.787056,
		0.599831,
		-0.144031,
		0,
		0.067738,
		0.669691,
		-0.011883,
		1
	},
	[0.433333333333] = {
		-0.272463,
		0.334971,
		-0.901975,
		0,
		-0.206316,
		0.895297,
		0.394813,
		0,
		0.939786,
		0.293664,
		-0.174825,
		0,
		0.30181,
		0.717712,
		-0.055435,
		1
	},
	[0.45] = {
		-0.203849,
		0.451772,
		-0.868532,
		0,
		0.086756,
		0.892006,
		0.44362,
		0,
		0.975151,
		0.015081,
		-0.221029,
		0,
		0.415106,
		0.660478,
		-0.11178,
		1
	},
	[0.466666666667] = {
		-0.109444,
		0.56238,
		-0.819604,
		0,
		0.307522,
		0.80326,
		0.510102,
		0,
		0.945226,
		-0.196218,
		-0.260856,
		0,
		0.469381,
		0.583102,
		-0.130547,
		1
	},
	[0.483333333333] = {
		-0.025117,
		0.614923,
		-0.788187,
		0,
		0.388466,
		0.732477,
		0.559081,
		0,
		0.921121,
		-0.292141,
		-0.257274,
		0,
		0.513755,
		0.527791,
		-0.148132,
		1
	},
	[0.4] = {
		-0.378129,
		0.234312,
		-0.895609,
		0,
		-0.745185,
		0.496984,
		0.444642,
		0,
		0.549288,
		0.835527,
		-0.013318,
		0,
		-0.167489,
		0.581182,
		-0.02001,
		1
	},
	[0.516666666667] = {
		0.068678,
		0.676524,
		-0.733212,
		0,
		0.426609,
		0.644447,
		0.634581,
		0,
		0.901825,
		-0.356377,
		-0.244352,
		0,
		0.601898,
		0.398507,
		-0.18586,
		1
	},
	[0.533333333333] = {
		0.080425,
		0.701218,
		-0.708396,
		0,
		0.415553,
		0.622402,
		0.663273,
		0,
		0.906007,
		-0.34772,
		-0.241336,
		0,
		0.641633,
		0.334193,
		-0.203842,
		1
	},
	[0.55] = {
		0.076589,
		0.723717,
		-0.685833,
		0,
		0.398019,
		0.608479,
		0.686538,
		0,
		0.914174,
		-0.325556,
		-0.241451,
		0,
		0.675964,
		0.275915,
		-0.220042,
		1
	},
	[0.566666666667] = {
		0.065571,
		0.742964,
		-0.666112,
		0,
		0.381621,
		0.598129,
		0.704704,
		0,
		0.92199,
		-0.300411,
		-0.244311,
		0,
		0.703066,
		0.227865,
		-0.233656,
		1
	},
	[0.583333333333] = {
		0.057081,
		0.757907,
		-0.64986,
		0,
		0.373175,
		0.587543,
		0.718007,
		0,
		0.926003,
		-0.283496,
		-0.249295,
		0,
		0.721103,
		0.194316,
		-0.243939,
		1
	},
	[0.5] = {
		0.03461,
		0.649221,
		-0.759812,
		0,
		0.421691,
		0.679788,
		0.600054,
		0,
		0.906079,
		-0.341174,
		-0.250243,
		0,
		0.558494,
		0.464715,
		-0.166962,
		1
	},
	[0.616666666667] = {
		0.074714,
		0.772364,
		-0.63077,
		0,
		0.394546,
		0.558028,
		0.730026,
		0,
		0.915834,
		-0.303411,
		-0.263041,
		0,
		0.727839,
		0.176154,
		-0.254063,
		1
	},
	[0.633333333333] = {
		0.083868,
		0.772686,
		-0.629224,
		0,
		0.412153,
		0.548007,
		0.727886,
		0,
		0.907247,
		-0.320383,
		-0.272504,
		0,
		0.72444,
		0.17365,
		-0.25771,
		1
	},
	[0.65] = {
		0.089249,
		0.769313,
		-0.632608,
		0,
		0.432032,
		0.542379,
		0.720537,
		0,
		0.897431,
		-0.337614,
		-0.283961,
		0,
		0.718375,
		0.171835,
		-0.261166,
		1
	},
	[0.666666666667] = {
		0.090893,
		0.762712,
		-0.64032,
		0,
		0.454378,
		0.54039,
		0.70818,
		0,
		0.88616,
		-0.355316,
		-0.297442,
		0,
		0.709944,
		0.170458,
		-0.264474,
		1
	},
	[0.683333333333] = {
		0.088573,
		0.753312,
		-0.651671,
		0,
		0.479108,
		0.541368,
		0.690924,
		0,
		0.873276,
		-0.373418,
		-0.312967,
		0,
		0.699385,
		0.169501,
		-0.267669,
		1
	},
	[0.6] = {
		0.061722,
		0.767772,
		-0.637744,
		0,
		0.378924,
		0.573098,
		0.726619,
		0,
		0.923367,
		-0.286505,
		-0.255554,
		0,
		0.728269,
		0.179584,
		-0.250187,
		1
	},
	[0.716666666667] = {
		0.071181,
		0.727707,
		-0.682184,
		0,
		0.534782,
		0.549473,
		0.64194,
		0,
		0.841986,
		-0.410514,
		-0.350053,
		0,
		0.672813,
		0.168789,
		-0.273842,
		1
	},
	[0.733333333333] = {
		0.055792,
		0.712295,
		-0.699659,
		0,
		0.564943,
		0.555266,
		0.610344,
		0,
		0.823242,
		-0.42932,
		-0.371426,
		0,
		0.65725,
		0.169015,
		-0.276859,
		1
	},
	[0.75] = {
		0.03587,
		0.695697,
		-0.71744,
		0,
		0.595921,
		0.561411,
		0.574191,
		0,
		0.802242,
		-0.448133,
		-0.394442,
		0,
		0.640468,
		0.169622,
		-0.279836,
		1
	},
	[0.766666666667] = {
		0.011504,
		0.678351,
		-0.734648,
		0,
		0.627038,
		0.567402,
		0.53374,
		0,
		0.778903,
		-0.466793,
		-0.418824,
		0,
		0.622689,
		0.170609,
		-0.282767,
		1
	},
	[0.783333333333] = {
		-0.017075,
		0.660704,
		-0.750452,
		0,
		0.657545,
		0.572842,
		0.489374,
		0,
		0.753221,
		-0.4851,
		-0.444225,
		0,
		0.604144,
		0.171981,
		-0.285633,
		1
	},
	[0.7] = {
		0.082066,
		0.741514,
		-0.6659,
		0,
		0.506019,
		0.544623,
		0.668828,
		0,
		0.858609,
		-0.391846,
		-0.330525,
		0,
		0.686932,
		0.168949,
		-0.270784,
		1
	},
	[0.816666666667] = {
		-0.085218,
		0.626238,
		-0.77496,
		0,
		0.713615,
		0.581162,
		0.391159,
		0,
		0.695336,
		-0.519689,
		-0.496419,
		0,
		0.565723,
		0.175906,
		-0.29105,
		1
	},
	[0.833333333333] = {
		-0.123586,
		0.610181,
		-0.782563,
		0,
		0.737698,
		0.583954,
		0.338821,
		0,
		0.663723,
		-0.535422,
		-0.522298,
		0,
		0.546376,
		0.178479,
		-0.293507,
		1
	},
	[0.85] = {
		-0.163878,
		0.5953,
		-0.786614,
		0,
		0.758333,
		0.586018,
		0.285505,
		0,
		0.630931,
		-0.549728,
		-0.547471,
		0,
		0.527307,
		0.18147,
		-0.295759,
		1
	},
	[0.866666666667] = {
		-0.205335,
		0.58177,
		-0.787008,
		0,
		0.775086,
		0.587652,
		0.232179,
		0,
		0.597562,
		-0.562324,
		-0.571587,
		0,
		0.508802,
		0.184884,
		-0.297793,
		1
	},
	[0.883333333333] = {
		-0.247199,
		0.569618,
		-0.783854,
		0,
		0.78768,
		0.589263,
		0.179805,
		0,
		0.564316,
		-0.572979,
		-0.594342,
		0,
		0.49116,
		0.188706,
		-0.299616,
		1
	},
	[0.8] = {
		-0.049496,
		0.643197,
		-0.764099,
		0,
		0.686662,
		0.577468,
		0.441617,
		0,
		0.72529,
		-0.50282,
		-0.470241,
		0,
		0.585069,
		0.173743,
		-0.288409,
		1
	},
	[0.916666666667] = {
		-0.334703,
		0.548157,
		-0.766484,
		0,
		0.79096,
		0.605554,
		0.087676,
		0,
		0.512207,
		-0.576913,
		-0.636251,
		0,
		0.458493,
		0.197263,
		-0.302162,
		1
	},
	[0.933333333333] = {
		-0.379674,
		0.536132,
		-0.75393,
		0,
		0.783253,
		0.619967,
		0.046427,
		0,
		0.492303,
		-0.572891,
		-0.655312,
		0,
		0.444169,
		0.201041,
		-0.30293,
		1
	},
	[0.95] = {
		-0.423342,
		0.522779,
		-0.739922,
		0,
		0.772993,
		0.634386,
		0.005952,
		0,
		0.472508,
		-0.569435,
		-0.672667,
		0,
		0.432039,
		0.204133,
		-0.303586,
		1
	},
	[0.966666666667] = {
		-0.465448,
		0.508195,
		-0.724635,
		0,
		0.760332,
		0.648672,
		-0.033456,
		0,
		0.453048,
		-0.566536,
		-0.68832,
		0,
		0.422427,
		0.206429,
		-0.304173,
		1
	},
	[0.983333333333] = {
		-0.505805,
		0.492483,
		-0.708253,
		0,
		0.745455,
		0.662703,
		-0.071563,
		0,
		0.434118,
		-0.564167,
		-0.702323,
		0,
		0.415657,
		0.207825,
		-0.304734,
		1
	},
	[0.9] = {
		-0.28876,
		0.558772,
		-0.777427,
		0,
		0.796005,
		0.59131,
		0.129341,
		0,
		0.531972,
		-0.581487,
		-0.615531,
		0,
		0.474686,
		0.19292,
		-0.301247,
		1
	}
}

return spline_matrices

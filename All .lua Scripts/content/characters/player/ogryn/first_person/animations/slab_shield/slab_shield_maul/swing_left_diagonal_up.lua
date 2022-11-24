local spline_matrices = {
	[0] = {
		0.7815,
		-0.255087,
		0.569375,
		0,
		0.623787,
		0.301706,
		-0.721015,
		0,
		0.012138,
		0.918643,
		0.394903,
		0,
		1.138046,
		-0.02063,
		-1.237416,
		1
	},
	{
		0.704609,
		-0.135214,
		0.696595,
		0,
		0.69029,
		-0.09682,
		-0.717025,
		0,
		0.164396,
		0.986075,
		0.025117,
		0,
		0.706025,
		-0.012246,
		-1.334472,
		1
	},
	[0.0166666666667] = {
		0.77734,
		-0.328491,
		0.536504,
		0,
		0.621077,
		0.265131,
		-0.737543,
		0,
		0.100032,
		0.906531,
		0.410115,
		0,
		1.143047,
		-0.008718,
		-1.232004,
		1
	},
	[0.0333333333333] = {
		0.765292,
		-0.403887,
		0.501203,
		0,
		0.614238,
		0.22541,
		-0.756242,
		0,
		0.19246,
		0.886604,
		0.420587,
		0,
		1.146487,
		0.01167,
		-1.225215,
		1
	},
	[0.05] = {
		0.744716,
		-0.481104,
		0.462533,
		0,
		0.601573,
		0.183819,
		-0.777381,
		0,
		0.288979,
		0.857175,
		0.426312,
		0,
		1.14854,
		0.039766,
		-1.217013,
		1
	},
	[0.0666666666667] = {
		0.714723,
		-0.559546,
		0.419618,
		0,
		0.581521,
		0.142081,
		-0.801028,
		0,
		0.388593,
		0.81653,
		0.426936,
		0,
		1.149392,
		0.074777,
		-1.207385,
		1
	},
	[0.0833333333333] = {
		0.67429,
		-0.638087,
		0.371724,
		0,
		0.552803,
		0.102392,
		-0.826998,
		0,
		0.489635,
		0.763126,
		0.421778,
		0,
		1.149229,
		0.115885,
		-1.196338,
		1
	},
	[0.116666666667] = {
		0.558416,
		-0.787939,
		0.259468,
		0,
		0.466858,
		0.039951,
		-0.883429,
		0,
		0.685722,
		0.614456,
		0.390165,
		0,
		1.146613,
		0.213043,
		-1.17012,
		1
	},
	[0.133333333333] = {
		0.482077,
		-0.854058,
		0.195414,
		0,
		0.410346,
		0.023033,
		-0.911639,
		0,
		0.774092,
		0.519668,
		0.361563,
		0,
		1.144526,
		0.267401,
		-1.155072,
		1
	},
	[0.15] = {
		0.394053,
		-0.910245,
		0.127187,
		0,
		0.346922,
		0.019163,
		-0.937698,
		0,
		0.851098,
		0.413627,
		0.323335,
		0,
		1.142151,
		0.324498,
		-1.138851,
		1
	},
	[0.166666666667] = {
		0.295996,
		-0.953527,
		0.05632,
		0,
		0.279407,
		0.030049,
		-0.959702,
		0,
		0.91341,
		0.299804,
		0.275317,
		0,
		1.139651,
		0.383536,
		-1.121563,
		1
	},
	[0.183333333333] = {
		0.190584,
		-0.981553,
		-0.015231,
		0,
		0.211336,
		0.056176,
		-0.975798,
		0,
		0.958653,
		0.182752,
		0.218143,
		0,
		1.137194,
		0.443769,
		-1.103322,
		1
	},
	[0.1] = {
		0.622428,
		-0.714998,
		0.318373,
		0,
		0.514615,
		0.067378,
		-0.85477,
		0,
		0.589707,
		0.695872,
		0.409887,
		0,
		1.14824,
		0.162256,
		-1.1839,
		1
	},
	[0.216666666667] = {
		-0.027883,
		-0.987985,
		-0.152011,
		0,
		0.088343,
		0.149039,
		-0.984877,
		0,
		0.9957,
		-0.04089,
		0.083126,
		0,
		1.133198,
		0.565128,
		-1.064371,
		1
	},
	[0.233333333333] = {
		-0.133018,
		-0.967839,
		-0.213527,
		0,
		0.039547,
		0.210087,
		-0.976882,
		0,
		0.990324,
		-0.138388,
		0.01033,
		0,
		1.132058,
		0.625102,
		-1.043879,
		1
	},
	[0.25] = {
		-0.230593,
		-0.935195,
		-0.268769,
		0,
		0.001601,
		0.275848,
		-0.9612,
		0,
		0.973049,
		-0.222076,
		-0.062112,
		0,
		1.131702,
		0.683986,
		-1.02291,
		1
	},
	[0.266666666667] = {
		-0.318131,
		-0.893328,
		-0.317425,
		0,
		-0.025138,
		0.342651,
		-0.939126,
		0,
		0.947713,
		-0.290786,
		-0.131465,
		0,
		1.132412,
		0.741329,
		-1.001522,
		1
	},
	[0.283333333333] = {
		-0.394116,
		-0.845706,
		-0.359797,
		0,
		-0.041281,
		0.407378,
		-0.912326,
		0,
		0.918133,
		-0.34471,
		-0.195466,
		0,
		1.134511,
		0.796672,
		-0.979746,
		1
	},
	[0.2] = {
		0.081318,
		-0.993028,
		-0.08534,
		0,
		0.146488,
		0.096601,
		-0.984484,
		0,
		0.985864,
		0.067555,
		0.153322,
		0,
		1.134968,
		0.504508,
		-1.084232,
		1
	},
	[0.316666666667] = {
		-0.509436,
		-0.745917,
		-0.429049,
		0,
		-0.047223,
		0.522082,
		-0.851587,
		0,
		0.859212,
		-0.413568,
		-0.301192,
		0,
		1.144318,
		0.899409,
		-0.935039,
		1
	},
	[0.333333333333] = {
		-0.549117,
		-0.698935,
		-0.458215,
		0,
		-0.040317,
		0.569786,
		-0.820804,
		0,
		0.834772,
		-0.432243,
		-0.341058,
		0,
		1.152773,
		0.945766,
		-0.912063,
		1
	},
	[0.35] = {
		-0.581005,
		-0.652695,
		-0.486232,
		0,
		-0.028214,
		0.613203,
		-0.789421,
		0,
		0.813411,
		-0.444939,
		-0.374689,
		0,
		1.163872,
		0.983372,
		-0.887182,
		1
	},
	[0.366666666667] = {
		-0.602587,
		-0.609586,
		-0.515067,
		0,
		-0.006694,
		0.649243,
		-0.760552,
		0,
		0.798025,
		-0.454851,
		-0.395306,
		0,
		1.167075,
		1.026717,
		-0.857143,
		1
	},
	[0.383333333333] = {
		-0.609731,
		-0.573731,
		-0.546864,
		0,
		0.022363,
		0.677228,
		-0.735433,
		0,
		0.792293,
		-0.460646,
		-0.400096,
		0,
		1.153942,
		1.088442,
		-0.81949,
		1
	},
	[0.3] = {
		-0.457891,
		-0.795616,
		-0.39665,
		0,
		-0.048104,
		0.467691,
		-0.882582,
		0,
		0.887706,
		-0.385045,
		-0.252424,
		0,
		1.138356,
		0.849534,
		-0.957589,
		1
	},
	[0.416666666667] = {
		-0.587486,
		-0.519119,
		-0.620787,
		0,
		0.067732,
		0.732893,
		-0.676964,
		0,
		0.806395,
		-0.439754,
		-0.395403,
		0,
		1.088379,
		1.231344,
		-0.719822,
		1
	},
	[0.433333333333] = {
		-0.543042,
		-0.518395,
		-0.660584,
		0,
		0.009272,
		0.782936,
		-0.622033,
		0,
		0.839654,
		-0.343915,
		-0.420361,
		0,
		1.017247,
		1.305213,
		-0.658897,
		1
	},
	[0.45] = {
		-0.484421,
		-0.512272,
		-0.709164,
		0,
		-0.083215,
		0.833932,
		-0.545557,
		0,
		0.870868,
		-0.205267,
		-0.446603,
		0,
		0.910012,
		1.363905,
		-0.588947,
		1
	},
	[0.466666666667] = {
		-0.404977,
		-0.494596,
		-0.769005,
		0,
		-0.234429,
		0.869114,
		-0.435527,
		0,
		0.883763,
		0.003899,
		-0.467919,
		0,
		0.760501,
		1.405708,
		-0.504441,
		1
	},
	[0.483333333333] = {
		-0.304739,
		-0.450268,
		-0.839281,
		0,
		-0.43435,
		0.849927,
		-0.298268,
		0,
		0.847628,
		0.273648,
		-0.45458,
		0,
		0.568005,
		1.433093,
		-0.40374,
		1
	},
	[0.4] = {
		-0.604128,
		-0.544102,
		-0.582222,
		0,
		0.050081,
		0.703253,
		-0.709174,
		0,
		0.795312,
		-0.45759,
		-0.397605,
		0,
		1.126908,
		1.159644,
		-0.773819,
		1
	},
	[0.516666666667] = {
		-0.125248,
		-0.236936,
		-0.963418,
		0,
		-0.736449,
		0.672888,
		-0.069744,
		0,
		0.664798,
		0.700773,
		-0.258769,
		0,
		0.210725,
		1.432719,
		-0.225968,
		1
	},
	[0.533333333333] = {
		-0.07378,
		-0.095616,
		-0.99268,
		0,
		-0.825294,
		0.56466,
		0.006951,
		0,
		0.559863,
		0.819766,
		-0.120572,
		0,
		0.065947,
		1.415902,
		-0.147363,
		1
	},
	[0.55] = {
		-0.061001,
		0.025154,
		-0.997821,
		0,
		-0.921341,
		0.383115,
		0.065984,
		0,
		0.38394,
		0.923358,
		-0.000195,
		0,
		-0.189895,
		1.308107,
		-0.027806,
		1
	},
	[0.566666666667] = {
		-0.026927,
		0.216699,
		-0.975867,
		0,
		-0.992756,
		0.108556,
		0.051499,
		0,
		0.117096,
		0.970184,
		0.212206,
		0,
		-0.488456,
		1.143561,
		0.148667,
		1
	},
	[0.583333333333] = {
		-0.062534,
		0.477177,
		-0.87658,
		0,
		-0.997194,
		-0.066098,
		0.035157,
		0,
		-0.041164,
		0.876318,
		0.479971,
		0,
		-0.608472,
		0.911355,
		0.280351,
		1
	},
	[0.5] = {
		-0.204422,
		-0.362097,
		-0.909449,
		0,
		-0.612234,
		0.772219,
		-0.169844,
		0,
		0.763794,
		0.522075,
		-0.379547,
		0,
		0.375387,
		1.440983,
		-0.307465,
		1
	},
	[0.616666666667] = {
		-0.449081,
		0.878933,
		-0.160634,
		0,
		-0.876907,
		-0.399087,
		0.267886,
		0,
		0.171347,
		0.261163,
		0.949965,
		0,
		-0.666891,
		-0.129916,
		0.356379,
		1
	},
	[0.633333333333] = {
		-0.437738,
		0.899082,
		-0.006021,
		0,
		-0.891886,
		-0.433368,
		0.129354,
		0,
		0.113691,
		0.061993,
		0.99158,
		0,
		-0.612319,
		-0.517663,
		0.343563,
		1
	},
	[0.65] = {
		-0.415164,
		0.909482,
		-0.021925,
		0,
		-0.909472,
		-0.414325,
		0.034578,
		0,
		0.022365,
		0.034296,
		0.999161,
		0,
		-0.541358,
		-0.675635,
		0.354156,
		1
	},
	[0.666666666667] = {
		-0.495522,
		0.864876,
		0.080296,
		0,
		-0.867749,
		-0.497,
		-0.001817,
		0,
		0.038336,
		-0.070577,
		0.996769,
		0,
		-0.363262,
		-0.692503,
		0.246519,
		1
	},
	[0.683333333333] = {
		-0.599067,
		0.7832,
		0.166481,
		0,
		-0.797719,
		-0.601715,
		-0.039788,
		0,
		0.069012,
		-0.156641,
		0.985242,
		0,
		-0.201629,
		-0.685624,
		0.110959,
		1
	},
	[0.6] = {
		-0.264901,
		0.736927,
		-0.621905,
		0,
		-0.963238,
		-0.172322,
		0.206099,
		0,
		0.044712,
		0.653638,
		0.755485,
		0,
		-0.64326,
		0.442932,
		0.346276,
		1
	},
	[0.716666666667] = {
		-0.815762,
		0.509425,
		0.273894,
		0,
		-0.560631,
		-0.812877,
		-0.157876,
		0,
		0.142216,
		-0.282343,
		0.948713,
		0,
		0.096971,
		-0.627504,
		-0.189821,
		1
	},
	[0.733333333333] = {
		-0.90346,
		0.286376,
		0.318982,
		0,
		-0.365513,
		-0.903403,
		-0.224196,
		0,
		0.223965,
		-0.319144,
		0.920862,
		0,
		0.256591,
		-0.575557,
		-0.345442,
		1
	},
	[0.75] = {
		-0.935054,
		0.013699,
		0.354241,
		0,
		-0.124616,
		-0.948183,
		-0.292267,
		0,
		0.331881,
		-0.317429,
		0.88831,
		0,
		0.410706,
		-0.505881,
		-0.497919,
		1
	},
	[0.766666666667] = {
		-0.882387,
		-0.278405,
		0.379321,
		0,
		0.138191,
		-0.923951,
		-0.356676,
		0,
		0.449774,
		-0.262307,
		0.853755,
		0,
		0.547569,
		-0.420982,
		-0.642281,
		1
	},
	[0.783333333333] = {
		-0.737591,
		-0.545403,
		0.398114,
		0,
		0.387027,
		-0.824595,
		-0.412617,
		0,
		0.553326,
		-0.150261,
		0.8193,
		0,
		0.656874,
		-0.328275,
		-0.774346,
		1
	},
	[0.7] = {
		-0.705332,
		0.673193,
		0.222078,
		0,
		-0.702942,
		-0.704673,
		-0.096483,
		0,
		0.091541,
		-0.224161,
		0.970243,
		0,
		-0.058136,
		-0.663186,
		-0.036159,
		1
	},
	[0.816666666667] = {
		-0.261607,
		-0.858858,
		0.440369,
		0,
		0.723357,
		-0.476533,
		-0.499671,
		0,
		0.638997,
		0.187827,
		0.745925,
		0,
		0.775377,
		-0.157904,
		-0.989302,
		1
	},
	[0.833333333333] = {
		-0.00149,
		-0.883458,
		0.468509,
		0,
		0.790104,
		-0.288223,
		-0.540983,
		0,
		0.61297,
		0.369365,
		0.698453,
		0,
		0.786099,
		-0.095178,
		-1.066293,
		1
	},
	[0.85] = {
		0.236757,
		-0.835689,
		0.49555,
		0,
		0.797254,
		-0.1244,
		-0.590687,
		0,
		0.555277,
		0.534929,
		0.636804,
		0,
		0.767379,
		-0.051991,
		-1.117978,
		1
	},
	[0.866666666667] = {
		0.316642,
		-0.772739,
		0.550101,
		0,
		0.787913,
		-0.108634,
		-0.606128,
		0,
		0.528139,
		0.625358,
		0.574453,
		0,
		0.760965,
		-0.034741,
		-1.155219,
		1
	},
	[0.883333333333] = {
		0.395073,
		-0.697192,
		0.598197,
		0,
		0.777052,
		-0.093717,
		-0.622421,
		0,
		0.490008,
		0.710732,
		0.504729,
		0,
		0.75339,
		-0.020384,
		-1.190949,
		1
	},
	[0.8] = {
		-0.518943,
		-0.74625,
		0.416905,
		0,
		0.588366,
		-0.665629,
		-0.459091,
		0,
		0.6201,
		0.007051,
		0.784491,
		0,
		0.733016,
		-0.237607,
		-0.890942,
		1
	},
	[0.916666666667] = {
		0.532895,
		-0.520188,
		0.667404,
		0,
		0.751465,
		-0.071662,
		-0.65587,
		0,
		0.389003,
		0.85104,
		0.352714,
		0,
		0.737011,
		-0.001967,
		-1.254093,
		1
	},
	[0.933333333333] = {
		0.587336,
		-0.427446,
		0.68726,
		0,
		0.737708,
		-0.06654,
		-0.671833,
		0,
		0.332903,
		0.901589,
		0.276249,
		0,
		0.729239,
		0.001988,
		-1.279929,
		1
	},
	[0.95] = {
		0.630892,
		-0.338363,
		0.698202,
		0,
		0.724166,
		-0.066212,
		-0.68644,
		0,
		0.278495,
		0.938683,
		0.203259,
		0,
		0.722207,
		0.002689,
		-1.301183,
		1
	},
	[0.966666666667] = {
		0.664068,
		-0.257479,
		0.701939,
		0,
		0.711463,
		-0.07101,
		-0.699126,
		0,
		0.229855,
		0.963671,
		0.136031,
		0,
		0.716035,
		0.000408,
		-1.3175,
		1
	},
	[0.983333333333] = {
		0.688122,
		-0.188686,
		0.700632,
		0,
		0.700083,
		-0.081143,
		-0.709436,
		0,
		0.190712,
		0.978679,
		0.07626,
		0,
		0.710688,
		-0.00462,
		-1.328649,
		1
	},
	[0.9] = {
		0.468178,
		-0.611686,
		0.637691,
		0,
		0.764774,
		-0.081009,
		-0.639186,
		0,
		0.44264,
		0.786942,
		0.429875,
		0,
		0.745217,
		-0.0094,
		-1.224197,
		1
	}
}

return spline_matrices

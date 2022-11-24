local spline_matrices = {
	[0] = {
		0.804223,
		0.002471,
		-0.594322,
		0,
		0.392117,
		0.749258,
		0.533719,
		0,
		0.446619,
		-0.662274,
		0.601602,
		0,
		0.326956,
		0.102673,
		0.028248,
		1
	},
	{
		0.99361,
		0.037874,
		-0.106327,
		0,
		-0.097264,
		-0.190647,
		-0.976828,
		0,
		-0.057268,
		0.980928,
		-0.185745,
		0,
		-0.034694,
		-0.449869,
		-0.283832,
		1
	},
	[0.0166666666667] = {
		0.804233,
		0.004028,
		-0.5943,
		0,
		0.394192,
		0.744745,
		0.538486,
		0,
		0.444772,
		-0.667337,
		0.597361,
		0,
		0.327727,
		0.101308,
		0.029359,
		1
	},
	[0.0333333333333] = {
		0.80426,
		0.007455,
		-0.59423,
		0,
		0.399464,
		0.733544,
		0.549856,
		0,
		0.439993,
		-0.679601,
		0.586983,
		0,
		0.329836,
		0.097839,
		0.032311,
		1
	},
	[0.05] = {
		0.8043,
		0.010881,
		-0.594124,
		0,
		0.406499,
		0.719206,
		0.563472,
		0,
		0.433429,
		-0.694712,
		0.574034,
		0,
		0.332985,
		0.093219,
		0.036553,
		1
	},
	[0.0666666666667] = {
		0.804348,
		0.013379,
		-0.594008,
		0,
		0.413907,
		0.704634,
		0.576344,
		0,
		0.426269,
		-0.709445,
		0.561233,
		0,
		0.336863,
		0.088381,
		0.041725,
		1
	},
	[0.0833333333333] = {
		0.804406,
		0.015176,
		-0.593886,
		0,
		0.420369,
		0.691845,
		0.587061,
		0,
		0.419786,
		-0.721886,
		0.550145,
		0,
		0.341138,
		0.084187,
		0.047651,
		1
	},
	[0.116666666667] = {
		0.804585,
		0.016107,
		-0.593619,
		0,
		0.425499,
		0.681668,
		0.595213,
		0,
		0.414239,
		-0.731484,
		0.541606,
		0,
		0.349451,
		0.081165,
		0.060746,
		1
	},
	[0.133333333333] = {
		0.794696,
		0.016103,
		-0.606795,
		0,
		0.421278,
		0.705067,
		0.570443,
		0,
		0.437017,
		-0.708958,
		0.553529,
		0,
		0.353998,
		0.104131,
		0.072571,
		1
	},
	[0.15] = {
		0.770879,
		0.017893,
		-0.63673,
		0,
		0.400405,
		0.763811,
		0.506229,
		0,
		0.4954,
		-0.645192,
		0.581641,
		0,
		0.357931,
		0.157915,
		0.086999,
		1
	},
	[0.166666666667] = {
		0.742915,
		0.02247,
		-0.669009,
		0,
		0.344756,
		0.843843,
		0.411184,
		0,
		0.573778,
		-0.536119,
		0.619157,
		0,
		0.357872,
		0.222988,
		0.092774,
		1
	},
	[0.183333333333] = {
		0.701816,
		0.036224,
		-0.711436,
		0,
		0.217008,
		0.940366,
		0.261954,
		0,
		0.678499,
		-0.338231,
		0.652103,
		0,
		0.340087,
		0.309853,
		0.089539,
		1
	},
	[0.1] = {
		0.804482,
		0.016132,
		-0.593758,
		0,
		0.424639,
		0.683342,
		0.593908,
		0,
		0.415321,
		-0.72992,
		0.542886,
		0,
		0.345457,
		0.081501,
		0.054082,
		1
	},
	[0.216666666667] = {
		0.680232,
		0.048937,
		-0.731361,
		0,
		-0.287763,
		0.935493,
		-0.205049,
		0,
		0.674149,
		0.34994,
		0.650435,
		0,
		0.204696,
		0.480965,
		0.065427,
		1
	},
	[0.233333333333] = {
		0.695627,
		0.050584,
		-0.71662,
		0,
		-0.532808,
		0.705442,
		-0.467404,
		0,
		0.481891,
		0.70696,
		0.517676,
		0,
		0.110793,
		0.564475,
		0.027824,
		1
	},
	[0.25] = {
		0.711151,
		0.047394,
		-0.70144,
		0,
		-0.66356,
		0.374888,
		-0.647416,
		0,
		0.232278,
		0.925858,
		0.298051,
		0,
		0.017195,
		0.629012,
		-0.026413,
		1
	},
	[0.266666666667] = {
		0.7188,
		0.040533,
		-0.694034,
		0,
		-0.694791,
		0.076807,
		-0.715098,
		0,
		0.024322,
		0.996222,
		0.083371,
		0,
		-0.069585,
		0.654268,
		-0.095001,
		1
	},
	[0.283333333333] = {
		0.719161,
		0.047073,
		-0.693247,
		0,
		-0.680285,
		-0.155463,
		-0.716271,
		0,
		-0.141491,
		0.98672,
		-0.07978,
		0,
		-0.173978,
		0.628131,
		-0.196201,
		1
	},
	[0.2] = {
		0.673001,
		0.047517,
		-0.738114,
		0,
		-0.009622,
		0.998412,
		0.0555,
		0,
		0.739579,
		-0.03025,
		0.67239,
		0,
		0.287007,
		0.400481,
		0.083652,
		1
	},
	[0.316666666667] = {
		0.715786,
		0.108691,
		-0.689809,
		0,
		-0.559568,
		-0.50169,
		-0.65969,
		0,
		-0.417772,
		0.858192,
		-0.298283,
		0,
		-0.427401,
		0.474909,
		-0.463173,
		1
	},
	[0.333333333333] = {
		0.715887,
		0.120631,
		-0.687717,
		0,
		-0.513498,
		-0.576436,
		-0.635643,
		0,
		-0.473103,
		0.808189,
		-0.350719,
		0,
		-0.508893,
		0.39744,
		-0.56639,
		1
	},
	[0.35] = {
		0.716657,
		0.124927,
		-0.686145,
		0,
		-0.497601,
		-0.597749,
		-0.628561,
		0,
		-0.488667,
		0.79189,
		-0.366217,
		0,
		-0.5406,
		0.334599,
		-0.607302,
		1
	},
	[0.366666666667] = {
		0.723742,
		0.123123,
		-0.678998,
		0,
		-0.498662,
		-0.586836,
		-0.637934,
		0,
		-0.477004,
		0.80029,
		-0.363321,
		0,
		-0.536561,
		0.279877,
		-0.601655,
		1
	},
	[0.383333333333] = {
		0.741033,
		0.121149,
		-0.660449,
		0,
		-0.494097,
		-0.567654,
		-0.658511,
		0,
		-0.454684,
		0.814305,
		-0.360791,
		0,
		-0.527597,
		0.218558,
		-0.587574,
		1
	},
	[0.3] = {
		0.717673,
		0.079285,
		-0.691853,
		0,
		-0.626847,
		-0.359199,
		-0.691404,
		0,
		-0.303331,
		0.929887,
		-0.208088,
		0,
		-0.307456,
		0.560577,
		-0.329248,
		1
	},
	[0.416666666667] = {
		0.796455,
		0.115489,
		-0.593567,
		0,
		-0.465577,
		-0.509261,
		-0.723803,
		0,
		-0.385872,
		0.852828,
		-0.351835,
		0,
		-0.496009,
		0.082038,
		-0.539733,
		1
	},
	[0.433333333333] = {
		0.829371,
		0.112005,
		-0.547356,
		0,
		-0.440332,
		-0.47196,
		-0.763781,
		0,
		-0.343878,
		0.874476,
		-0.34211,
		0,
		-0.474007,
		0.010447,
		-0.508608,
		1
	},
	[0.45] = {
		0.862487,
		0.107744,
		-0.494477,
		0,
		-0.4078,
		-0.430644,
		-0.805137,
		0,
		-0.299693,
		0.896067,
		-0.327487,
		0,
		-0.448604,
		-0.06083,
		-0.474515,
		1
	},
	[0.466666666667] = {
		0.893727,
		0.102381,
		-0.436772,
		0,
		-0.368782,
		-0.386715,
		-0.845253,
		0,
		-0.255444,
		0.916499,
		-0.307861,
		0,
		-0.420674,
		-0.130011,
		-0.438867,
		1
	},
	[0.483333333333] = {
		0.921452,
		0.096013,
		-0.376441,
		0,
		-0.324624,
		-0.342006,
		-0.881845,
		0,
		-0.213414,
		0.93478,
		-0.283974,
		0,
		-0.390968,
		-0.195597,
		-0.40311,
		1
	},
	[0.4] = {
		0.766139,
		0.118597,
		-0.631638,
		0,
		-0.483322,
		-0.541466,
		-0.687906,
		0,
		-0.423594,
		0.832316,
		-0.357517,
		0,
		-0.513983,
		0.152033,
		-0.566498,
		1
	},
	[0.516666666667] = {
		0.962727,
		0.080595,
		-0.258189,
		0,
		-0.230015,
		-0.258262,
		-0.938293,
		0,
		-0.142302,
		0.962707,
		-0.230097,
		0,
		-0.329246,
		-0.310032,
		-0.337159,
		1
	},
	[0.533333333333] = {
		0.975956,
		0.071655,
		-0.205851,
		0,
		-0.185423,
		-0.223498,
		-0.956905,
		0,
		-0.114574,
		0.972067,
		-0.204838,
		0,
		-0.298741,
		-0.355966,
		-0.30994,
		1
	},
	[0.55] = {
		0.984871,
		0.061936,
		-0.161843,
		0,
		-0.146955,
		-0.196432,
		-0.969442,
		0,
		-0.091834,
		0.978559,
		-0.184359,
		0,
		-0.269481,
		-0.392477,
		-0.288539,
		1
	},
	[0.566666666667] = {
		0.990315,
		0.051467,
		-0.128947,
		0,
		-0.117865,
		-0.179198,
		-0.976727,
		0,
		-0.073376,
		0.982466,
		-0.171396,
		0,
		-0.242224,
		-0.418133,
		-0.274478,
		1
	},
	[0.583333333333] = {
		0.993133,
		0.040256,
		-0.109848,
		0,
		-0.101297,
		-0.173879,
		-0.979543,
		0,
		-0.058533,
		0.983944,
		-0.168607,
		0,
		-0.217726,
		-0.431517,
		-0.269306,
		1
	},
	[0.5] = {
		0.944601,
		0.088727,
		-0.316001,
		0,
		-0.277456,
		-0.298497,
		-0.913191,
		0,
		-0.17535,
		0.950277,
		-0.257343,
		0,
		-0.360241,
		-0.256096,
		-0.36871,
		1
	},
	[0.616666666667] = {
		0.995631,
		-0.005483,
		-0.093213,
		0,
		-0.092641,
		-0.182858,
		-0.978765,
		0,
		-0.011678,
		0.983124,
		-0.182567,
		0,
		-0.166728,
		-0.441769,
		-0.270591,
		1
	},
	[0.633333333333] = {
		0.995337,
		-0.038401,
		-0.088489,
		0,
		-0.094217,
		-0.190235,
		-0.977207,
		0,
		0.020692,
		0.980987,
		-0.192966,
		0,
		-0.139958,
		-0.4448,
		-0.272078,
		1
	},
	[0.65] = {
		0.993749,
		-0.071871,
		-0.085422,
		0,
		-0.098152,
		-0.197963,
		-0.975283,
		0,
		0.053184,
		0.977571,
		-0.20378,
		0,
		-0.114723,
		-0.446787,
		-0.273752,
		1
	},
	[0.666666666667] = {
		0.991342,
		-0.101295,
		-0.083545,
		0,
		-0.102975,
		-0.205009,
		-0.973328,
		0,
		0.081466,
		0.973504,
		-0.213665,
		0,
		-0.092806,
		-0.447999,
		-0.275335,
		1
	},
	[0.683333333333] = {
		0.989083,
		-0.122128,
		-0.082461,
		0,
		-0.107003,
		-0.21048,
		-0.971725,
		0,
		0.101318,
		0.96994,
		-0.22125,
		0,
		-0.076008,
		-0.448705,
		-0.276548,
		1
	},
	[0.6] = {
		0.994725,
		0.022267,
		-0.100131,
		0,
		-0.094652,
		-0.176993,
		-0.97965,
		0,
		-0.039536,
		0.98396,
		-0.173952,
		0,
		-0.193246,
		-0.437429,
		-0.269572,
		1
	},
	[0.716666666667] = {
		0.988408,
		-0.128062,
		-0.081551,
		0,
		-0.107932,
		-0.214918,
		-0.97065,
		0,
		0.106777,
		0.968199,
		-0.226249,
		0,
		-0.060616,
		-0.4496,
		-0.277265,
		1
	},
	[0.733333333333] = {
		0.988974,
		-0.12347,
		-0.081771,
		0,
		-0.107188,
		-0.215794,
		-0.970538,
		0,
		0.102187,
		0.968601,
		-0.226649,
		0,
		-0.055723,
		-0.449995,
		-0.277421,
		1
	},
	[0.75] = {
		0.98977,
		-0.116446,
		-0.082439,
		0,
		-0.106275,
		-0.216205,
		-0.970547,
		0,
		0.095193,
		0.969379,
		-0.226368,
		0,
		-0.051413,
		-0.450353,
		-0.277593,
		1
	},
	[0.766666666667] = {
		0.990709,
		-0.107341,
		-0.083509,
		0,
		-0.105241,
		-0.216167,
		-0.970668,
		0,
		0.08614,
		0.970438,
		-0.225455,
		0,
		-0.047654,
		-0.45067,
		-0.277788,
		1
	},
	[0.783333333333] = {
		0.991703,
		-0.096504,
		-0.08493,
		0,
		-0.104138,
		-0.215696,
		-0.970892,
		0,
		0.075376,
		0.97168,
		-0.223956,
		0,
		-0.044412,
		-0.450941,
		-0.278015,
		1
	},
	[0.7] = {
		0.988149,
		-0.129872,
		-0.081821,
		0,
		-0.10846,
		-0.21356,
		-0.970891,
		0,
		0.108618,
		0.968259,
		-0.225115,
		0,
		-0.066126,
		-0.449174,
		-0.277114,
		1
	},
	[0.816666666667] = {
		0.99353,
		-0.071041,
		-0.088605,
		0,
		-0.101917,
		-0.213522,
		-0.971607,
		0,
		0.050105,
		0.974352,
		-0.219381,
		0,
		-0.039347,
		-0.451325,
		-0.278595,
		1
	},
	[0.833333333333] = {
		0.994228,
		-0.057238,
		-0.090739,
		0,
		-0.100913,
		-0.211851,
		-0.972078,
		0,
		0.036417,
		0.975624,
		-0.216404,
		0,
		-0.037512,
		-0.451421,
		-0.278965,
		1
	},
	[0.85] = {
		0.994725,
		-0.043309,
		-0.092987,
		0,
		-0.100055,
		-0.209813,
		-0.972609,
		0,
		0.022612,
		0.976782,
		-0.213039,
		0,
		-0.03615,
		-0.451442,
		-0.2794,
		1
	},
	[0.866666666667] = {
		0.995013,
		-0.02955,
		-0.095263,
		0,
		-0.099334,
		-0.207448,
		-0.97319,
		0,
		0.008996,
		0.9778,
		-0.209349,
		0,
		-0.035195,
		-0.451384,
		-0.279908,
		1
	},
	[0.883333333333] = {
		0.995105,
		-0.01626,
		-0.097475,
		0,
		-0.098736,
		-0.204805,
		-0.97381,
		0,
		-0.004129,
		0.978668,
		-0.205408,
		0,
		-0.03458,
		-0.451244,
		-0.280496,
		1
	},
	[0.8] = {
		0.992667,
		-0.084287,
		-0.086648,
		0,
		-0.103014,
		-0.214807,
		-0.971208,
		0,
		0.063247,
		0.973013,
		-0.221915,
		0,
		-0.041654,
		-0.451161,
		-0.278281,
		1
	},
	[0.916666666667] = {
		0.994811,
		0.007691,
		-0.101447,
		0,
		-0.097893,
		-0.199194,
		-0.975058,
		0,
		-0.027707,
		0.97993,
		-0.197407,
		0,
		-0.034129,
		-0.450792,
		-0.281791,
		1
	},
	[0.933333333333] = {
		0.994514,
		0.017737,
		-0.103092,
		0,
		-0.097629,
		-0.196539,
		-0.975623,
		0,
		-0.037566,
		0.980335,
		-0.193729,
		0,
		-0.03417,
		-0.450531,
		-0.282418,
		1
	},
	[0.95] = {
		0.994188,
		0.026086,
		-0.104445,
		0,
		-0.09745,
		-0.194198,
		-0.97611,
		0,
		-0.045746,
		0.980615,
		-0.190527,
		0,
		-0.034308,
		-0.450282,
		-0.282976,
		1
	},
	[0.966666666667] = {
		0.993894,
		0.03243,
		-0.105462,
		0,
		-0.09734,
		-0.19233,
		-0.976491,
		0,
		-0.051951,
		0.980794,
		-0.187999,
		0,
		-0.034482,
		-0.450071,
		-0.283424,
		1
	},
	[0.983333333333] = {
		0.993686,
		0.036462,
		-0.106103,
		0,
		-0.097282,
		-0.191094,
		-0.976739,
		0,
		-0.05589,
		0.980894,
		-0.18634,
		0,
		-0.034631,
		-0.449924,
		-0.283723,
		1
	},
	[0.9] = {
		0.995025,
		-0.003744,
		-0.099557,
		0,
		-0.098258,
		-0.202001,
		-0.974444,
		0,
		-0.016462,
		0.979378,
		-0.201364,
		0,
		-0.034245,
		-0.451038,
		-0.281137,
		1
	}
}

return spline_matrices

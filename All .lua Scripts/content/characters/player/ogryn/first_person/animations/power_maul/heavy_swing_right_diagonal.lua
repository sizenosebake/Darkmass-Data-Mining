local spline_matrices = {
	[0] = {
		0.917228,
		-0.320815,
		0.236159,
		0,
		-0.188929,
		0.171584,
		0.966884,
		0,
		-0.350712,
		-0.93147,
		0.096771,
		0,
		-0.755544,
		0.497334,
		0.066816,
		1
	},
	[0.0166666666667] = {
		0.916717,
		-0.321484,
		0.23723,
		0,
		-0.189648,
		0.172479,
		0.966584,
		0,
		-0.351659,
		-0.931074,
		0.097145,
		0,
		-0.759179,
		0.490048,
		0.071712,
		1
	},
	[0.0333333333333] = {
		0.915199,
		-0.323681,
		0.240086,
		0,
		-0.191541,
		0.174789,
		0.965795,
		0,
		-0.354574,
		-0.929882,
		0.097968,
		0,
		-0.764019,
		0.48256,
		0.074678,
		1
	},
	[0.05] = {
		0.912892,
		-0.327011,
		0.244321,
		0,
		-0.19433,
		0.178201,
		0.964614,
		0,
		-0.358977,
		-0.928067,
		0.09913,
		0,
		-0.769783,
		0.474896,
		0.076154,
		1
	},
	[0.0666666666667] = {
		0.910012,
		-0.331081,
		0.249527,
		0,
		-0.197733,
		0.182399,
		0.963137,
		0,
		-0.36439,
		-0.925806,
		0.100519,
		0,
		-0.776195,
		0.467082,
		0.07658,
		1
	},
	[0.0833333333333] = {
		0.906786,
		-0.335504,
		0.255295,
		0,
		-0.201476,
		0.187066,
		0.961464,
		0,
		-0.370332,
		-0.923279,
		0.102033,
		0,
		-0.782979,
		0.459143,
		0.076395,
		1
	},
	[0.116666666667] = {
		0.900274,
		-0.343916,
		0.266887,
		0,
		-0.208921,
		0.196522,
		0.957983,
		0,
		-0.381915,
		-0.918205,
		0.105073,
		0,
		-0.796583,
		0.443009,
		0.07596,
		1
	},
	[0.133333333333] = {
		0.897514,
		-0.34719,
		0.271898,
		0,
		-0.212119,
		0.200663,
		0.95642,
		0,
		-0.38662,
		-0.916075,
		0.106452,
		0,
		-0.802877,
		0.434882,
		0.076595,
		1
	},
	[0.15] = {
		0.895456,
		-0.349386,
		0.275842,
		0,
		-0.214645,
		0.203976,
		0.955155,
		0,
		-0.389983,
		-0.914507,
		0.107657,
		0,
		-0.808488,
		0.426766,
		0.07839,
		1
	},
	[0.166666666667] = {
		0.894386,
		-0.350166,
		0.278314,
		0,
		-0.216261,
		0.206136,
		0.954327,
		0,
		-0.391543,
		-0.913724,
		0.108638,
		0,
		-0.813163,
		0.418702,
		0.081787,
		1
	},
	[0.183333333333] = {
		0.894582,
		-0.349192,
		0.278906,
		0,
		-0.216724,
		0.20682,
		0.954074,
		0,
		-0.390838,
		-0.913942,
		0.109339,
		0,
		-0.816646,
		0.410737,
		0.087231,
		1
	},
	[0.1] = {
		0.903455,
		-0.339904,
		0.261217,
		0,
		-0.205291,
		0.191882,
		0.959707,
		0,
		-0.376331,
		-0.920677,
		0.103577,
		0,
		-0.789864,
		0.451108,
		0.076041,
		1
	},
	[0.216666666667] = {
		0.899781,
		-0.340549,
		0.272803,
		0,
		-0.213146,
		0.202501,
		0.955804,
		0,
		-0.380741,
		-0.918161,
		0.10962,
		0,
		-0.818997,
		0.395293,
		0.106017,
		1
	},
	[0.233333333333] = {
		0.905181,
		-0.332083,
		0.265269,
		0,
		-0.208512,
		0.196895,
		0.957995,
		0,
		-0.370364,
		-0.922471,
		0.108983,
		0,
		-0.817321,
		0.387907,
		0.12023,
		1
	},
	[0.25] = {
		0.9126,
		-0.320243,
		0.254177,
		0,
		-0.201511,
		0.188621,
		0.961153,
		0,
		-0.355746,
		-0.928368,
		0.107603,
		0,
		-0.813353,
		0.380805,
		0.138227,
		1
	},
	[0.266666666667] = {
		0.92202,
		-0.304487,
		0.239095,
		0,
		-0.191715,
		0.177438,
		0.965278,
		0,
		-0.336339,
		-0.935844,
		0.105226,
		0,
		-0.806771,
		0.374028,
		0.160422,
		1
	},
	[0.283333333333] = {
		0.940781,
		-0.26671,
		0.209277,
		0,
		-0.174685,
		0.147681,
		0.973486,
		0,
		-0.290545,
		-0.952395,
		0.092345,
		0,
		-0.796571,
		0.356434,
		0.195912,
		1
	},
	[0.2] = {
		0.896305,
		-0.346112,
		0.277208,
		0,
		-0.215779,
		0.205711,
		0.954527,
		0,
		-0.387399,
		-0.915363,
		0.109696,
		0,
		-0.818679,
		0.402919,
		0.095162,
		1
	},
	[0.316666666667] = {
		0.983276,
		-0.138129,
		0.118693,
		0,
		-0.111936,
		0.055726,
		0.992152,
		0,
		-0.143659,
		-0.988845,
		0.039332,
		0,
		-0.759012,
		0.306342,
		0.298206,
		1
	},
	[0.333333333333] = {
		0.991606,
		-0.099101,
		0.083048,
		0,
		-0.079783,
		0.036474,
		0.996145,
		0,
		-0.101748,
		-0.994409,
		0.028261,
		0,
		-0.73254,
		0.307543,
		0.343581,
		1
	},
	[0.35] = {
		0.991094,
		-0.114984,
		0.067161,
		0,
		-0.060623,
		0.059444,
		0.996389,
		0,
		-0.118561,
		-0.991587,
		0.051944,
		0,
		-0.703513,
		0.348147,
		0.372154,
		1
	},
	[0.366666666667] = {
		0.975892,
		-0.202726,
		0.080856,
		0,
		-0.054058,
		0.134407,
		0.989451,
		0,
		-0.211455,
		-0.969968,
		0.120207,
		0,
		-0.672346,
		0.441259,
		0.382105,
		1
	},
	[0.383333333333] = {
		0.932417,
		-0.338421,
		0.126762,
		0,
		-0.041892,
		0.247185,
		0.968062,
		0,
		-0.358947,
		-0.907949,
		0.216302,
		0,
		-0.63383,
		0.576336,
		0.377814,
		1
	},
	[0.3] = {
		0.965225,
		-0.203228,
		0.164433,
		0,
		-0.146711,
		0.099493,
		0.984163,
		0,
		-0.21637,
		-0.974063,
		0.066218,
		0,
		-0.780829,
		0.328189,
		0.245609,
		1
	},
	[0.416666666667] = {
		0.73758,
		-0.606845,
		0.296165,
		0,
		0.058394,
		0.494273,
		0.867343,
		0,
		-0.67273,
		-0.622441,
		0.400002,
		0,
		-0.511599,
		0.889689,
		0.327896,
		1
	},
	[0.433333333333] = {
		0.612069,
		-0.687322,
		0.391101,
		0,
		0.147325,
		0.585009,
		0.797533,
		0,
		-0.77696,
		-0.430526,
		0.459326,
		0,
		-0.42645,
		1.026772,
		0.288543,
		1
	},
	[0.45] = {
		0.473689,
		-0.730668,
		0.491674,
		0,
		0.258019,
		0.648922,
		0.71577,
		0,
		-0.842048,
		-0.212191,
		0.495913,
		0,
		-0.334373,
		1.151787,
		0.234183,
		1
	},
	[0.466666666667] = {
		0.322848,
		-0.731408,
		0.600675,
		0,
		0.3924,
		0.680984,
		0.61829,
		0,
		-0.861273,
		0.036091,
		0.506859,
		0,
		-0.215243,
		1.261026,
		0.153272,
		1
	},
	[0.483333333333] = {
		0.188157,
		-0.686902,
		0.70197,
		0,
		0.540319,
		0.669251,
		0.510057,
		0,
		-0.820154,
		0.283316,
		0.497071,
		0,
		-0.032178,
		1.32382,
		0.043052,
		1
	},
	[0.4] = {
		0.850997,
		-0.484591,
		0.202423,
		0,
		-0.006614,
		0.375523,
		0.926789,
		0,
		-0.525129,
		-0.790034,
		0.316364,
		0,
		-0.581256,
		0.733022,
		0.359044,
		1
	},
	[0.516666666667] = {
		0.009873,
		-0.477416,
		0.878622,
		0,
		0.838558,
		0.482605,
		0.252809,
		0,
		-0.544722,
		0.73428,
		0.405106,
		0,
		0.539883,
		1.304964,
		-0.285194,
		1
	},
	[0.533333333333] = {
		-0.019728,
		-0.331492,
		0.943252,
		0,
		0.942976,
		0.307372,
		0.127744,
		0,
		-0.332275,
		0.891984,
		0.306525,
		0,
		0.847217,
		1.236731,
		-0.473016,
		1
	},
	[0.55] = {
		-0.008816,
		-0.184036,
		0.98288,
		0,
		0.994245,
		0.103334,
		0.028266,
		0,
		-0.106767,
		0.977473,
		0.182066,
		0,
		1.111845,
		1.134728,
		-0.64653,
		1
	},
	[0.566666666667] = {
		0.046626,
		-0.034105,
		0.99833,
		0,
		0.988291,
		-0.143783,
		-0.051069,
		0,
		0.145284,
		0.989021,
		0.027002,
		0,
		1.33145,
		0.828521,
		-0.817049,
		1
	},
	[0.583333333333] = {
		0.144507,
		0.095112,
		0.984922,
		0,
		0.910248,
		-0.403107,
		-0.094623,
		0,
		0.388029,
		0.910197,
		-0.144827,
		0,
		1.50375,
		0.341294,
		-0.975966,
		1
	},
	[0.5] = {
		0.082253,
		-0.60136,
		0.794733,
		0,
		0.695274,
		0.605947,
		0.38655,
		0,
		-0.714022,
		0.520763,
		0.467951,
		0,
		0.23186,
		1.334515,
		-0.105662,
		1
	},
	[0.616666666667] = {
		0.275269,
		0.195485,
		0.941282,
		0,
		0.755658,
		-0.649277,
		-0.086144,
		0,
		0.594313,
		0.735,
		-0.326446,
		0,
		1.622992,
		-0.205503,
		-1.110892,
		1
	},
	[0.633333333333] = {
		0.302346,
		0.210393,
		0.929689,
		0,
		0.712485,
		-0.697796,
		-0.073794,
		0,
		0.633207,
		0.684701,
		-0.360878,
		0,
		1.607249,
		-0.327851,
		-1.113486,
		1
	},
	[0.65] = {
		0.313833,
		0.216309,
		0.92451,
		0,
		0.686479,
		-0.724368,
		-0.06355,
		0,
		0.655939,
		0.654601,
		-0.375822,
		0,
		1.594766,
		-0.407512,
		-1.110311,
		1
	},
	[0.666666666667] = {
		0.312915,
		0.216534,
		0.924769,
		0,
		0.676155,
		-0.734567,
		-0.056792,
		0,
		0.667007,
		0.643058,
		-0.376268,
		0,
		1.587421,
		-0.456714,
		-1.105053,
		1
	},
	[0.683333333333] = {
		0.302773,
		0.212888,
		0.928982,
		0,
		0.679177,
		-0.732015,
		-0.053606,
		0,
		0.668616,
		0.647174,
		-0.366222,
		0,
		1.584898,
		-0.48371,
		-1.099532,
		1
	},
	[0.6] = {
		0.229838,
		0.16584,
		0.958995,
		0,
		0.815434,
		-0.57071,
		-0.096738,
		0,
		0.531265,
		0.804231,
		-0.266402,
		0,
		1.603911,
		-0.026022,
		-1.078112,
		1
	},
	[0.716666666667] = {
		0.267535,
		0.198286,
		0.942925,
		0,
		0.714207,
		-0.697697,
		-0.055925,
		0,
		0.646787,
		0.688406,
		-0.328275,
		0,
		1.521078,
		-0.473587,
		-1.054407,
		1
	},
	[0.733333333333] = {
		0.248965,
		0.189529,
		0.949787,
		0,
		0.740295,
		-0.66956,
		-0.060442,
		0,
		0.624483,
		0.71817,
		-0.307005,
		0,
		1.464274,
		-0.44741,
		-1.021759,
		1
	},
	[0.75] = {
		0.234205,
		0.18193,
		0.955013,
		0,
		0.768103,
		-0.636806,
		-0.067056,
		0,
		0.595958,
		0.749253,
		-0.288884,
		0,
		1.405824,
		-0.419052,
		-0.993711,
		1
	},
	[0.766666666667] = {
		0.226527,
		0.177768,
		0.957645,
		0,
		0.79479,
		-0.602076,
		-0.07624,
		0,
		0.563022,
		0.778397,
		-0.277675,
		0,
		1.348995,
		-0.395485,
		-0.974301,
		1
	},
	[0.783333333333] = {
		0.229018,
		0.179785,
		0.956676,
		0,
		0.817768,
		-0.568641,
		-0.088902,
		0,
		0.528022,
		0.802698,
		-0.277252,
		0,
		1.297156,
		-0.383812,
		-0.967568,
		1
	},
	[0.7] = {
		0.286573,
		0.206481,
		0.935544,
		0,
		0.692831,
		-0.719111,
		-0.053514,
		0,
		0.66171,
		0.663509,
		-0.349134,
		0,
		1.573015,
		-0.490743,
		-1.087651,
		1
	},
	[0.816666666667] = {
		0.251397,
		0.196357,
		0.947757,
		0,
		0.867248,
		-0.480469,
		-0.130498,
		0,
		0.429743,
		0.854748,
		-0.291079,
		0,
		1.170541,
		-0.369519,
		-0.978974,
		1
	},
	[0.833333333333] = {
		0.265368,
		0.208177,
		0.941404,
		0,
		0.894013,
		-0.418721,
		-0.159415,
		0,
		0.361,
		0.883931,
		-0.297228,
		0,
		1.089444,
		-0.357862,
		-0.99043,
		1
	},
	[0.85] = {
		0.280045,
		0.222454,
		0.933857,
		0,
		0.917952,
		-0.346757,
		-0.192675,
		0,
		0.28096,
		0.911194,
		-0.30131,
		0,
		1.000867,
		-0.344303,
		-1.004459,
		1
	},
	[0.866666666667] = {
		0.294548,
		0.239093,
		0.925244,
		0,
		0.936217,
		-0.266392,
		-0.229202,
		0,
		0.191677,
		0.93374,
		-0.302308,
		0,
		0.908179,
		-0.329679,
		-1.020105,
		1
	},
	[0.883333333333] = {
		0.308056,
		0.257821,
		0.915767,
		0,
		0.946535,
		-0.179964,
		-0.26774,
		0,
		0.095776,
		0.949285,
		-0.299475,
		0,
		0.814841,
		-0.314806,
		-1.036419,
		1
	},
	[0.8] = {
		0.239009,
		0.186942,
		0.952852,
		0,
		0.840792,
		-0.530723,
		-0.106777,
		0,
		0.485739,
		0.826672,
		-0.284027,
		0,
		1.240862,
		-0.378441,
		-0.971042,
		1
	},
	[0.916666666667] = {
		0.329547,
		0.299631,
		0.895332,
		0,
		0.938436,
		0.000126,
		-0.345454,
		0,
		-0.103621,
		0.954055,
		-0.281143,
		0,
		0.640508,
		-0.287283,
		-1.067371,
		1
	},
	[0.933333333333] = {
		0.336777,
		0.32149,
		0.885,
		0,
		0.919892,
		0.088252,
		-0.382114,
		0,
		-0.200949,
		0.942791,
		-0.266015,
		0,
		0.566826,
		-0.275913,
		-1.080263,
		1
	},
	[0.95] = {
		0.341539,
		0.343119,
		0.874997,
		0,
		0.892991,
		0.171878,
		-0.415962,
		0,
		-0.293117,
		0.923432,
		-0.2477,
		0,
		0.507057,
		-0.266833,
		-1.090335,
		1
	},
	[0.966666666667] = {
		0.343989,
		0.363921,
		0.865583,
		0,
		0.859464,
		0.249211,
		-0.446335,
		0,
		-0.378143,
		0.897472,
		-0.227051,
		0,
		0.464886,
		-0.260455,
		-1.096814,
		1
	},
	[0.983333333333] = {
		0.344433,
		0.383388,
		0.856959,
		0,
		0.821353,
		0.31904,
		-0.472855,
		0,
		-0.454692,
		0.866733,
		-0.205009,
		0,
		0.44396,
		-0.257128,
		-1.098951,
		1
	},
	[0.9] = {
		0.319885,
		0.278192,
		0.905695,
		0,
		0.947449,
		-0.090178,
		-0.306934,
		0,
		-0.003712,
		0.956283,
		-0.292419,
		0,
		0.724407,
		-0.300445,
		-1.052472,
		1
	}
}

return spline_matrices

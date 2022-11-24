local spline_matrices = {
	[0] = {
		0.29139,
		-0.696419,
		-0.655815,
		0,
		-0.915007,
		-0.002943,
		-0.403428,
		0,
		0.279025,
		0.71763,
		-0.638085,
		0,
		-0.064214,
		0.019863,
		-0.705779,
		1
	},
	{
		0.860292,
		0.501915,
		-0.08932,
		0,
		0.48385,
		-0.859058,
		-0.167058,
		0,
		-0.16058,
		0.100501,
		-0.981893,
		0,
		-0.005832,
		-0.045283,
		-0.731011,
		1
	},
	[0.0333333333333] = {
		0.165428,
		-0.502869,
		-0.848384,
		0,
		-0.657337,
		0.585073,
		-0.47497,
		0,
		0.735215,
		0.636248,
		-0.233767,
		0,
		0.021675,
		0.071175,
		-0.623166,
		1
	},
	[0.0666666666667] = {
		0.058392,
		-0.191967,
		-0.979663,
		0,
		-0.244899,
		0.948596,
		-0.200476,
		0,
		0.967789,
		0.251625,
		0.008378,
		0,
		0.112683,
		0.08462,
		-0.469351,
		1
	},
	[0.133333333333] = {
		0.314551,
		0.46483,
		-0.827642,
		0,
		0.084311,
		0.854771,
		0.512111,
		0,
		0.945489,
		-0.230864,
		0.229679,
		0,
		0.220712,
		0.043973,
		-0.096083,
		1
	},
	[0.166666666667] = {
		0.598192,
		0.534073,
		-0.597439,
		0,
		-0.005787,
		0.748397,
		0.663226,
		0,
		0.801332,
		-0.393278,
		0.450776,
		0,
		0.233166,
		0.031086,
		0.070981,
		1
	},
	[0.1] = {
		0.107679,
		0.152114,
		-0.98248,
		0,
		0.087481,
		0.982943,
		0.161774,
		0,
		0.990329,
		-0.103367,
		0.092535,
		0,
		0.184989,
		0.065718,
		-0.286579,
		1
	},
	[0.233333333333] = {
		0.939948,
		0.312102,
		-0.138165,
		0,
		-0.195632,
		0.824343,
		0.531213,
		0,
		0.279688,
		-0.472283,
		0.835897,
		0,
		0.184115,
		0.150229,
		0.244217,
		1
	},
	[0.266666666667] = {
		0.966978,
		0.253906,
		-0.022038,
		0,
		-0.230812,
		0.909121,
		0.346736,
		0,
		0.108073,
		-0.330199,
		0.937704,
		0,
		0.139365,
		0.312824,
		0.23988,
		1
	},
	[0.2] = {
		0.826654,
		0.440663,
		-0.349941,
		0,
		-0.122004,
		0.747449,
		0.65302,
		0,
		0.549325,
		-0.497127,
		0.671645,
		0,
		0.222672,
		0.038538,
		0.194629,
		1
	},
	[0.333333333333] = {
		0.920811,
		0.185569,
		-0.343032,
		0,
		-0.335996,
		0.824036,
		-0.456149,
		0,
		0.198024,
		0.535284,
		0.821132,
		0,
		0.085769,
		0.53607,
		0.115085,
		1
	},
	[0.366666666667] = {
		0.943154,
		0.089101,
		-0.32019,
		0,
		-0.329319,
		0.380492,
		-0.864162,
		0,
		0.044831,
		0.920482,
		0.388205,
		0,
		0.018427,
		0.644993,
		-0.080805,
		1
	},
	[0.3] = {
		0.95317,
		0.259802,
		-0.154823,
		0,
		-0.26351,
		0.96465,
		-0.003563,
		0,
		0.148424,
		0.044194,
		0.987936,
		0,
		0.117477,
		0.43065,
		0.211181,
		1
	},
	[0.433333333333] = {
		0.926516,
		-0.080704,
		-0.367497,
		0,
		-0.3529,
		-0.525153,
		-0.774387,
		0,
		-0.130496,
		0.847172,
		-0.515044,
		0,
		-0.094014,
		0.604057,
		-0.523101,
		1
	},
	[0.466666666667] = {
		0.886697,
		-0.125832,
		-0.4449,
		0,
		-0.402022,
		-0.685092,
		-0.607475,
		0,
		-0.228358,
		0.717506,
		-0.658056,
		0,
		-0.134649,
		0.444705,
		-0.723999,
		1
	},
	[0.4] = {
		0.960499,
		0.039006,
		-0.275537,
		0,
		-0.272571,
		-0.067744,
		-0.959748,
		0,
		-0.056102,
		0.99694,
		-0.054436,
		0,
		-0.034904,
		0.692358,
		-0.272142,
		1
	},
	[0.533333333333] = {
		0.917089,
		0.381353,
		-0.116266,
		0,
		0.28724,
		-0.834254,
		-0.470652,
		0,
		-0.27648,
		0.398233,
		-0.874625,
		0,
		-0.052619,
		0.040197,
		-0.786079,
		1
	},
	[0.566666666667] = {
		0.864769,
		0.496467,
		-0.075471,
		0,
		0.474771,
		-0.857264,
		-0.199226,
		0,
		-0.163608,
		0.136452,
		-0.977043,
		0,
		-0.031252,
		0.012111,
		-0.776929,
		1
	},
	[0.5] = {
		0.950148,
		0.219037,
		-0.221906,
		0,
		0.02243,
		-0.757865,
		-0.652025,
		0,
		-0.310993,
		0.614543,
		-0.724997,
		0,
		-0.072437,
		0.106644,
		-0.783451,
		1
	},
	[0.633333333333] = {
		0.866225,
		0.494494,
		-0.07162,
		0,
		0.473661,
		-0.858313,
		-0.197345,
		0,
		-0.159058,
		0.137021,
		-0.977715,
		0,
		-0.029119,
		-0.01458,
		-0.770659,
		1
	},
	[0.666666666667] = {
		0.866372,
		0.494128,
		-0.07237,
		0,
		0.473401,
		-0.858747,
		-0.196076,
		0,
		-0.159034,
		0.135614,
		-0.977915,
		0,
		-0.030755,
		-0.02959,
		-0.765989,
		1
	},
	[0.6] = {
		0.865687,
		0.495304,
		-0.072524,
		0,
		0.474159,
		-0.857785,
		-0.198438,
		0,
		-0.160497,
		0.137397,
		-0.977427,
		0,
		-0.028763,
		0.000267,
		-0.774401,
		1
	},
	[0.733333333333] = {
		0.865909,
		0.494551,
		-0.074968,
		0,
		0.4742,
		-0.859319,
		-0.191583,
		0,
		-0.159169,
		0.130344,
		-0.978609,
		0,
		-0.029219,
		-0.049124,
		-0.754847,
		1
	},
	[0.766666666667] = {
		0.865394,
		0.495192,
		-0.076674,
		0,
		0.475095,
		-0.859479,
		-0.188627,
		0,
		-0.159306,
		0.126809,
		-0.979051,
		0,
		-0.023362,
		-0.048146,
		-0.748933,
		1
	},
	[0.7] = {
		0.866249,
		0.494175,
		-0.07351,
		0,
		0.473612,
		-0.859077,
		-0.194111,
		0,
		-0.159075,
		0.133333,
		-0.978221,
		0,
		-0.031239,
		-0.042021,
		-0.760637,
		1
	},
	[0.833333333333] = {
		0.863997,
		0.497014,
		-0.080537,
		0,
		0.477511,
		-0.859578,
		-0.181959,
		0,
		-0.159664,
		0.118755,
		-0.980002,
		0,
		-0.006612,
		-0.027352,
		-0.738729,
		1
	},
	[0.866666666667] = {
		0.863197,
		0.498073,
		-0.082547,
		0,
		0.478888,
		-0.859534,
		-0.178513,
		0,
		-0.159865,
		0.114561,
		-0.980469,
		0,
		-0.002911,
		-0.030431,
		-0.735683,
		1
	},
	[0.8] = {
		0.864743,
		0.496033,
		-0.078554,
		0,
		0.476223,
		-0.859563,
		-0.185374,
		0,
		-0.159474,
		0.122892,
		-0.979523,
		0,
		-0.013623,
		-0.036324,
		-0.743286,
		1
	},
	[0.933333333333] = {
		0.861602,
		0.500187,
		-0.086346,
		0,
		0.481622,
		-0.859323,
		-0.172059,
		0,
		-0.16026,
		0.10666,
		-0.981295,
		0,
		-0.00225,
		-0.039446,
		-0.732384,
		1
	},
	[0.966666666667] = {
		0.86089,
		0.501127,
		-0.087976,
		0,
		0.482835,
		-0.859188,
		-0.169311,
		0,
		-0.160435,
		0.103281,
		-0.981628,
		0,
		-0.003862,
		-0.042578,
		-0.73158,
		1
	},
	[0.9] = {
		0.862385,
		0.49915,
		-0.084509,
		0,
		0.480282,
		-0.859444,
		-0.175169,
		0,
		-0.160067,
		0.110475,
		-0.980905,
		0,
		-0.001702,
		-0.035984,
		-0.733677,
		1
	},
	[1.03333333333] = {
		0.859852,
		0.502495,
		-0.090296,
		0,
		0.484597,
		-0.858952,
		-0.165428,
		0,
		-0.160687,
		0.098486,
		-0.98208,
		0,
		-0.007455,
		-0.047454,
		-0.730423,
		1
	},
	[1.06666666667] = {
		0.859611,
		0.502812,
		-0.090823,
		0,
		0.485005,
		-0.858891,
		-0.164551,
		0,
		-0.160745,
		0.0974,
		-0.982178,
		0,
		-0.008026,
		-0.04898,
		-0.729563,
		1
	},
	[1.1] = {
		0.859579,
		0.502855,
		-0.090893,
		0,
		0.485059,
		-0.858882,
		-0.164435,
		0,
		-0.160753,
		0.097256,
		-0.982191,
		0,
		-0.007697,
		-0.049467,
		-0.728953,
		1
	}
}

return spline_matrices

local spline_matrices = {
	[0] = {
		0.987441,
		0.058428,
		-0.146784,
		0,
		0.157913,
		-0.393023,
		0.905868,
		0,
		-0.004761,
		-0.91767,
		-0.397314,
		0,
		0.011899,
		0.001971,
		0.271895,
		1
	},
	{
		0.927092,
		-0.19108,
		-0.322474,
		0,
		-0.371997,
		-0.574676,
		-0.728948,
		0,
		-0.046031,
		0.795761,
		-0.603859,
		0,
		0.01793,
		-0.046779,
		-0.776499,
		1
	},
	[0.0166666666667] = {
		0.988145,
		0.045823,
		-0.146527,
		0,
		0.152624,
		-0.396483,
		0.905267,
		0,
		-0.016613,
		-0.916898,
		-0.398776,
		0,
		0.013987,
		0.014206,
		0.30669,
		1
	},
	[0.0333333333333] = {
		0.988812,
		0.035721,
		-0.144826,
		0,
		0.147181,
		-0.391494,
		0.908334,
		0,
		-0.024252,
		-0.919487,
		-0.392372,
		0,
		0.019081,
		0.047478,
		0.342683,
		1
	},
	[0.05] = {
		0.988938,
		0.030399,
		-0.145179,
		0,
		0.14621,
		-0.364582,
		0.919621,
		0,
		-0.024974,
		-0.930675,
		-0.364994,
		0,
		0.03264,
		0.096945,
		0.387374,
		1
	},
	[0.0666666666667] = {
		0.98795,
		0.031754,
		-0.151478,
		0,
		0.153965,
		-0.301319,
		0.941011,
		0,
		-0.015762,
		-0.952995,
		-0.302577,
		0,
		0.051081,
		0.157233,
		0.425876,
		1
	},
	[0.0833333333333] = {
		0.874345,
		-0.216225,
		-0.434474,
		0,
		0.399621,
		-0.187187,
		0.897365,
		0,
		-0.275361,
		-0.958231,
		-0.077258,
		0,
		0.078719,
		0.222844,
		0.415521,
		1
	},
	[0.116666666667] = {
		0.999617,
		-0.021377,
		0.017602,
		0,
		-0.007414,
		0.405864,
		0.913904,
		0,
		-0.02668,
		-0.913684,
		0.40555,
		0,
		0.068961,
		0.393447,
		0.348789,
		1
	},
	[0.133333333333] = {
		0.996628,
		-0.05896,
		-0.057071,
		0,
		0.07975,
		0.859714,
		0.504511,
		0,
		0.019319,
		-0.507361,
		0.861517,
		0,
		0.059094,
		0.522474,
		0.275503,
		1
	},
	[0.15] = {
		0.939282,
		0.206745,
		-0.273873,
		0,
		-0.218419,
		0.975775,
		-0.012492,
		0,
		0.264656,
		0.071552,
		0.961685,
		0,
		0.03587,
		0.614471,
		0.167509,
		1
	},
	[0.166666666667] = {
		0.999255,
		-0.015749,
		0.035246,
		0,
		0.032508,
		0.835713,
		-0.548203,
		0,
		-0.020822,
		0.54894,
		0.835602,
		0,
		0.017323,
		0.696277,
		0.023233,
		1
	},
	[0.183333333333] = {
		0.997171,
		-0.05094,
		0.055264,
		0,
		0.073838,
		0.526625,
		-0.846885,
		0,
		0.014037,
		0.84857,
		0.528897,
		0,
		0.0068,
		0.738577,
		-0.147654,
		1
	},
	[0.1] = {
		0.987011,
		0.008657,
		-0.160422,
		0,
		0.160599,
		-0.026799,
		0.986656,
		0,
		0.004242,
		-0.999603,
		-0.027841,
		0,
		0.08592,
		0.286107,
		0.382992,
		1
	},
	[0.216666666667] = {
		0.994602,
		0.100915,
		-0.024156,
		0,
		0.004729,
		-0.276631,
		-0.960965,
		0,
		-0.103658,
		0.955663,
		-0.275615,
		0,
		0.000404,
		0.674426,
		-0.469117,
		1
	},
	[0.233333333333] = {
		0.999391,
		0.009704,
		0.03352,
		0,
		0.034168,
		-0.467444,
		-0.883362,
		0,
		0.007097,
		0.883969,
		-0.467491,
		0,
		0.017544,
		0.594203,
		-0.582716,
		1
	},
	[0.25] = {
		0.998553,
		0.043971,
		0.030959,
		0,
		0.048819,
		-0.499802,
		-0.864763,
		0,
		-0.022551,
		0.865023,
		-0.501226,
		0,
		0.012235,
		0.507406,
		-0.669984,
		1
	},
	[0.266666666667] = {
		0.998009,
		0.058061,
		-0.024634,
		0,
		0.016736,
		-0.620366,
		-0.784134,
		0,
		-0.060809,
		0.782161,
		-0.620102,
		0,
		0.002315,
		0.41264,
		-0.73351,
		1
	},
	[0.283333333333] = {
		0.996207,
		0.069331,
		-0.052576,
		0,
		0.008573,
		-0.679514,
		-0.733612,
		0,
		-0.086589,
		0.730379,
		-0.677531,
		0,
		0.000737,
		0.343615,
		-0.775575,
		1
	},
	[0.2] = {
		0.999556,
		0.007398,
		0.028871,
		0,
		0.028915,
		-0.005987,
		-0.999564,
		0,
		-0.007222,
		0.999955,
		-0.006198,
		0,
		-0.003284,
		0.728697,
		-0.32945,
		1
	},
	[0.316666666667] = {
		0.992155,
		0.072717,
		-0.101689,
		0,
		-0.008954,
		-0.769996,
		-0.637986,
		0,
		-0.124692,
		0.633891,
		-0.763305,
		0,
		0.00432,
		0.24024,
		-0.802937,
		1
	},
	[0.333333333333] = {
		0.99022,
		0.067433,
		-0.122139,
		0,
		-0.018521,
		-0.804156,
		-0.59413,
		0,
		-0.138283,
		0.590581,
		-0.795042,
		0,
		0.008626,
		0.20772,
		-0.797118,
		1
	},
	[0.35] = {
		0.988474,
		0.0537,
		-0.141544,
		0,
		-0.029587,
		-0.848421,
		-0.528495,
		0,
		-0.148469,
		0.526592,
		-0.837053,
		0,
		0.013964,
		0.184148,
		-0.793081,
		1
	},
	[0.366666666667] = {
		0.986796,
		0.04279,
		-0.156215,
		0,
		-0.039498,
		-0.871781,
		-0.4883,
		0,
		-0.157079,
		0.488023,
		-0.85858,
		0,
		0.019914,
		0.162183,
		-0.789199,
		1
	},
	[0.383333333333] = {
		0.985243,
		0.031418,
		-0.168253,
		0,
		-0.049109,
		-0.889791,
		-0.453719,
		0,
		-0.163964,
		0.455286,
		-0.875117,
		0,
		0.025932,
		0.140988,
		-0.785246,
		1
	},
	[0.3] = {
		0.994187,
		0.073769,
		-0.078428,
		0,
		7.9e-05,
		-0.728907,
		-0.684613,
		0,
		-0.10767,
		0.680627,
		-0.724676,
		0,
		0.001553,
		0.287342,
		-0.799419,
		1
	},
	[0.416666666667] = {
		0.982435,
		0.011666,
		-0.186242,
		0,
		-0.066006,
		-0.911799,
		-0.405298,
		0,
		-0.174544,
		0.410472,
		-0.895013,
		0,
		0.036297,
		0.103943,
		-0.778404,
		1
	},
	[0.433333333333] = {
		0.981167,
		0.005273,
		-0.193091,
		0,
		-0.072259,
		-0.917029,
		-0.392219,
		0,
		-0.179139,
		0.398785,
		-0.899377,
		0,
		0.04047,
		0.088715,
		-0.775641,
		1
	},
	[0.45] = {
		0.979916,
		-0.001482,
		-0.199405,
		0,
		-0.076845,
		-0.925548,
		-0.37075,
		0,
		-0.184009,
		0.378627,
		-0.907074,
		0,
		0.044037,
		0.075134,
		-0.77265,
		1
	},
	[0.466666666667] = {
		0.9787,
		-0.00821,
		-0.205131,
		0,
		-0.08198,
		-0.931704,
		-0.353846,
		0,
		-0.188216,
		0.363126,
		-0.912532,
		0,
		0.046974,
		0.064426,
		-0.769887,
		1
	},
	[0.483333333333] = {
		0.977358,
		-0.014862,
		-0.21107,
		0,
		-0.087924,
		-0.935857,
		-0.341235,
		0,
		-0.19246,
		0.352067,
		-0.915974,
		0,
		0.049287,
		0.055173,
		-0.767427,
		1
	},
	[0.4] = {
		0.983792,
		0.020703,
		-0.178113,
		0,
		-0.058109,
		-0.902898,
		-0.425908,
		0,
		-0.169635,
		0.429355,
		-0.887061,
		0,
		0.031482,
		0.121468,
		-0.781573,
		1
	},
	[0.516666666667] = {
		0.974812,
		-0.027897,
		-0.221276,
		0,
		-0.101396,
		-0.939118,
		-0.328293,
		0,
		-0.198646,
		0.34246,
		-0.918292,
		0,
		0.052393,
		0.036313,
		-0.763814,
		1
	},
	[0.533333333333] = {
		0.973536,
		-0.034247,
		-0.225953,
		0,
		-0.109005,
		-0.938578,
		-0.327399,
		0,
		-0.200862,
		0.343365,
		-0.917472,
		0,
		0.053285,
		0.026809,
		-0.76261,
		1
	},
	[0.55] = {
		0.972258,
		-0.04048,
		-0.230382,
		0,
		-0.11716,
		-0.936736,
		-0.329847,
		0,
		-0.202454,
		0.347688,
		-0.915492,
		0,
		0.053814,
		0.017328,
		-0.761778,
		1
	},
	[0.566666666667] = {
		0.970979,
		-0.046598,
		-0.234582,
		0,
		-0.125823,
		-0.933657,
		-0.33534,
		0,
		-0.203393,
		0.355124,
		-0.912425,
		0,
		0.05401,
		0.007928,
		-0.761296,
		1
	},
	[0.583333333333] = {
		0.9697,
		-0.052608,
		-0.238569,
		0,
		-0.134947,
		-0.929381,
		-0.34357,
		0,
		-0.203646,
		0.365354,
		-0.90832,
		0,
		0.053898,
		-0.001336,
		-0.761102,
		1
	},
	[0.5] = {
		0.976086,
		-0.021432,
		-0.216326,
		0,
		-0.094362,
		-0.938259,
		-0.332814,
		0,
		-0.195837,
		0.345268,
		-0.917844,
		0,
		0.05108,
		0.045786,
		-0.765413,
		1
	},
	[0.616666666667] = {
		0.967148,
		-0.064352,
		-0.245935,
		0,
		-0.154359,
		-0.917329,
		-0.36699,
		0,
		-0.201987,
		0.392896,
		-0.897126,
		0,
		0.052842,
		-0.01923,
		-0.761357,
		1
	},
	[0.633333333333] = {
		0.965879,
		-0.070121,
		-0.24932,
		0,
		-0.164521,
		-0.909593,
		-0.381541,
		0,
		-0.200026,
		0.409541,
		-0.890093,
		0,
		0.051945,
		-0.027742,
		-0.761743,
		1
	},
	[0.65] = {
		0.964618,
		-0.075849,
		-0.252504,
		0,
		-0.174894,
		-0.900755,
		-0.397559,
		0,
		-0.19729,
		0.427654,
		-0.88215,
		0,
		0.05083,
		-0.035888,
		-0.762264,
		1
	},
	[0.666666666667] = {
		0.963368,
		-0.081563,
		-0.255479,
		0,
		-0.185406,
		-0.890858,
		-0.414726,
		0,
		-0.193769,
		0.446901,
		-0.873346,
		0,
		0.049521,
		-0.043608,
		-0.762892,
		1
	},
	[0.683333333333] = {
		0.96213,
		-0.087293,
		-0.258235,
		0,
		-0.195982,
		-0.879965,
		-0.432727,
		0,
		-0.189463,
		0.466949,
		-0.863749,
		0,
		0.048038,
		-0.050847,
		-0.763602,
		1
	},
	[0.6] = {
		0.968422,
		-0.058521,
		-0.242351,
		0,
		-0.144479,
		-0.923932,
		-0.354226,
		0,
		-0.203186,
		0.378055,
		-0.903211,
		0,
		0.053501,
		-0.010408,
		-0.761133,
		1
	},
	[0.716666666667] = {
		0.959705,
		-0.098885,
		-0.263038,
		0,
		-0.21698,
		-0.855568,
		-0.470024,
		0,
		-0.178568,
		0.508158,
		-0.842549,
		0,
		0.044638,
		-0.06365,
		-0.765188,
		1
	},
	[0.733333333333] = {
		0.958532,
		-0.104713,
		-0.265049,
		0,
		-0.227165,
		-0.842334,
		-0.488742,
		0,
		-0.172082,
		0.528685,
		-0.831192,
		0,
		0.042772,
		-0.069098,
		-0.766028,
		1
	},
	[0.75] = {
		0.957392,
		-0.110586,
		-0.266778,
		0,
		-0.237029,
		-0.828624,
		-0.507148,
		0,
		-0.164975,
		0.548774,
		-0.81953,
		0,
		0.041077,
		-0.072465,
		-0.764922,
		1
	},
	[0.766666666667] = {
		0.956288,
		-0.116535,
		-0.268204,
		0,
		-0.246513,
		-0.814625,
		-0.524993,
		0,
		-0.157305,
		0.568161,
		-0.807743,
		0,
		0.039385,
		-0.074773,
		-0.763473,
		1
	},
	[0.783333333333] = {
		0.954493,
		-0.122726,
		-0.271811,
		0,
		-0.257724,
		-0.79805,
		-0.544696,
		0,
		-0.15007,
		0.589961,
		-0.793363,
		0,
		0.037481,
		-0.076192,
		-0.762354,
		1
	},
	[0.7] = {
		0.960907,
		-0.093072,
		-0.26076,
		0,
		-0.206546,
		-0.868162,
		-0.451258,
		0,
		-0.184382,
		0.487476,
		-0.853446,
		0,
		0.046402,
		-0.057547,
		-0.764374,
		1
	},
	[0.816666666667] = {
		0.950759,
		-0.134734,
		-0.279113,
		0,
		-0.278884,
		-0.76478,
		-0.580806,
		0,
		-0.135206,
		0.630046,
		-0.764697,
		0,
		0.03347,
		-0.077159,
		-0.761225,
		1
	},
	[0.833333333333] = {
		0.948823,
		-0.14055,
		-0.282807,
		0,
		-0.288878,
		-0.748108,
		-0.597397,
		0,
		-0.127606,
		0.648521,
		-0.750424,
		0,
		0.031379,
		-0.076634,
		-0.76129,
		1
	},
	[0.85] = {
		0.946844,
		-0.146239,
		-0.286532,
		0,
		-0.298511,
		-0.731409,
		-0.613134,
		0,
		-0.119908,
		0.666075,
		-0.736184,
		0,
		0.02924,
		-0.075377,
		-0.761823,
		1
	},
	[0.866666666667] = {
		0.944821,
		-0.151799,
		-0.290292,
		0,
		-0.307802,
		-0.714667,
		-0.6281,
		0,
		-0.112117,
		0.682795,
		-0.721956,
		0,
		0.02706,
		-0.073335,
		-0.762861,
		1
	},
	[0.883333333333] = {
		0.942756,
		-0.157228,
		-0.294092,
		0,
		-0.316774,
		-0.697857,
		-0.642378,
		0,
		-0.104235,
		0.698767,
		-0.707715,
		0,
		0.024845,
		-0.070444,
		-0.764437,
		1
	},
	[0.8] = {
		0.95265,
		-0.128792,
		-0.275447,
		0,
		-0.268507,
		-0.781429,
		-0.563269,
		0,
		-0.142698,
		0.610558,
		-0.77901,
		0,
		0.035506,
		-0.076998,
		-0.761592,
		1
	},
	[0.916666666667] = {
		0.938499,
		-0.167673,
		-0.301836,
		0,
		-0.33383,
		-0.663899,
		-0.669176,
		0,
		-0.088186,
		0.728783,
		-0.679043,
		0,
		0.020664,
		-0.062555,
		-0.768864,
		1
	},
	[0.933333333333] = {
		0.936307,
		-0.172679,
		-0.305797,
		0,
		-0.341948,
		-0.646661,
		-0.681836,
		0,
		-0.080009,
		0.742974,
		-0.664521,
		0,
		0.019307,
		-0.058895,
		-0.770833,
		1
	},
	[0.95] = {
		0.934071,
		-0.177531,
		-0.30983,
		0,
		-0.349813,
		-0.629183,
		-0.694089,
		0,
		-0.071717,
		0.756711,
		-0.649804,
		0,
		0.018444,
		-0.055574,
		-0.772538,
		1
	},
	[0.966666666667] = {
		0.93179,
		-0.182222,
		-0.313946,
		0,
		-0.357436,
		-0.611403,
		-0.705993,
		0,
		-0.0633,
		0.770053,
		-0.634832,
		0,
		0.017987,
		-0.052507,
		-0.774024,
		1
	},
	[0.983333333333] = {
		0.929464,
		-0.186742,
		-0.318157,
		0,
		-0.364828,
		-0.593257,
		-0.717598,
		0,
		-0.054743,
		0.783054,
		-0.61954,
		0,
		0.017846,
		-0.049606,
		-0.775331,
		1
	},
	[0.9] = {
		0.940649,
		-0.16252,
		-0.297937,
		0,
		-0.325444,
		-0.680948,
		-0.656046,
		0,
		-0.096259,
		0.71407,
		-0.693425,
		0,
		0.022601,
		-0.066629,
		-0.766586,
		1
	},
	[1.01666666667] = {
		0.924672,
		-0.195222,
		-0.32691,
		0,
		-0.378949,
		-0.555585,
		-0.740083,
		0,
		-0.037146,
		0.808216,
		-0.587713,
		0,
		0.018174,
		-0.043835,
		-0.777426,
		1
	},
	[1.03333333333] = {
		0.922203,
		-0.199156,
		-0.33148,
		0,
		-0.385686,
		-0.535907,
		-0.751032,
		0,
		-0.02807,
		0.820451,
		-0.571027,
		0,
		0.018554,
		-0.04042,
		-0.777766,
		1
	},
	[1.05] = {
		0.919684,
		-0.202865,
		-0.336195,
		0,
		-0.392209,
		-0.51556,
		-0.76182,
		0,
		-0.018782,
		0.832493,
		-0.553718,
		0,
		0.018897,
		-0.036751,
		-0.778016,
		1
	},
	[1.06666666667] = {
		0.917115,
		-0.20633,
		-0.34107,
		0,
		-0.398516,
		-0.494458,
		-0.772461,
		0,
		-0.009263,
		0.844357,
		-0.535701,
		0,
		0.019123,
		-0.032696,
		-0.778165,
		1
	},
	[1.08333333333] = {
		0.914493,
		-0.209534,
		-0.346118,
		0,
		-0.404601,
		-0.472516,
		-0.78296,
		0,
		0.00051,
		0.856052,
		-0.51689,
		0,
		0.019148,
		-0.028125,
		-0.778197,
		1
	},
	[1.1] = {
		0.914493,
		-0.209534,
		-0.346118,
		0,
		-0.404601,
		-0.472516,
		-0.78296,
		0,
		0.00051,
		0.856052,
		-0.51689,
		0,
		0.019148,
		-0.028125,
		-0.778197,
		1
	}
}

return spline_matrices
local spline_matrices = {
	[0] = {
		0.450275,
		-0.06746,
		0.890338,
		0,
		-0.892872,
		-0.040234,
		0.448509,
		0,
		0.005565,
		-0.99691,
		-0.07835,
		0,
		-0.402203,
		0.125106,
		-0.070128,
		1
	},
	{
		0.486503,
		0.869109,
		0.08925,
		0,
		0.516338,
		-0.20361,
		-0.831828,
		0,
		-0.704776,
		0.45077,
		-0.547811,
		0,
		0.170742,
		0.132431,
		-0.511048,
		1
	},
	[0.0333333333333] = {
		0.473439,
		-0.077855,
		0.877379,
		0,
		-0.864192,
		0.151616,
		0.479776,
		0,
		-0.170378,
		-0.985369,
		0.004499,
		0,
		-0.418069,
		0.274262,
		-0.036893,
		1
	},
	[0.0666666666667] = {
		0.455013,
		-0.158224,
		0.876315,
		0,
		-0.773938,
		0.416465,
		0.47705,
		0,
		-0.440436,
		-0.895277,
		0.067042,
		0,
		-0.34394,
		0.422357,
		-0.007782,
		1
	},
	[0.133333333333] = {
		0.035017,
		-0.423635,
		0.905156,
		0,
		0.049306,
		0.905341,
		0.421814,
		0,
		-0.99817,
		0.029859,
		0.05259,
		0,
		-0.038642,
		0.66694,
		-0.017718,
		1
	},
	[0.166666666667] = {
		-0.141548,
		-0.247456,
		0.958504,
		0,
		0.720075,
		0.638691,
		0.271228,
		0,
		-0.679305,
		0.728587,
		0.087781,
		0,
		0.249083,
		0.658801,
		-0.041952,
		1
	},
	[0.1] = {
		0.192758,
		-0.362388,
		0.911877,
		0,
		-0.381236,
		0.828639,
		0.409897,
		0,
		-0.904159,
		-0.426651,
		0.021571,
		0,
		-0.241438,
		0.545126,
		-0.016203,
		1
	},
	[0.233333333333] = {
		-0.059186,
		-0.06146,
		0.996353,
		0,
		0.843376,
		-0.537056,
		0.016971,
		0,
		0.534054,
		0.841305,
		0.08362,
		0,
		0.596579,
		0.279027,
		-0.071178,
		1
	},
	[0.266666666667] = {
		-0.04487,
		-0.135216,
		0.9898,
		0,
		-0.987355,
		0.156799,
		-0.023339,
		0,
		-0.152044,
		-0.97833,
		-0.140542,
		0,
		0.632674,
		0.199349,
		-0.111383,
		1
	},
	[0.2] = {
		-0.006444,
		-0.103718,
		0.994586,
		0,
		0.989455,
		-0.144583,
		-0.008666,
		0,
		0.144699,
		0.984042,
		0.103556,
		0,
		0.513773,
		0.505999,
		-0.057557,
		1
	},
	[0.333333333333] = {
		0.17597,
		-0.004515,
		0.984385,
		0,
		0.436791,
		-0.8958,
		-0.08219,
		0,
		0.882184,
		0.444434,
		-0.155662,
		0,
		0.515528,
		-0.245598,
		-0.206299,
		1
	},
	[0.366666666667] = {
		0.256938,
		0.013014,
		0.96634,
		0,
		0.398051,
		-0.912581,
		-0.093547,
		0,
		0.880647,
		0.408688,
		-0.239657,
		0,
		0.485163,
		-0.241129,
		-0.229305,
		1
	},
	[0.3] = {
		-0.056687,
		-0.14765,
		0.987414,
		0,
		-0.880769,
		0.473116,
		0.020181,
		0,
		-0.470141,
		-0.868539,
		-0.156866,
		0,
		0.558896,
		-0.004795,
		-0.160538,
		1
	},
	[0.433333333333] = {
		0.427187,
		0.066153,
		0.90174,
		0,
		0.399867,
		-0.90831,
		-0.122796,
		0,
		0.810936,
		0.413033,
		-0.414471,
		0,
		0.421428,
		-0.210641,
		-0.277945,
		1
	},
	[0.466666666667] = {
		0.510938,
		0.107518,
		0.852867,
		0,
		0.434083,
		-0.888628,
		-0.148026,
		0,
		0.741966,
		0.445847,
		-0.500706,
		0,
		0.38933,
		-0.186213,
		-0.303181,
		1
	},
	[0.4] = {
		0.341428,
		0.035546,
		0.939236,
		0,
		0.386433,
		-0.916229,
		-0.1058,
		0,
		0.856794,
		0.399074,
		-0.326562,
		0,
		0.453626,
		-0.229268,
		-0.253252,
		1
	},
	[0.533333333333] = {
		0.654066,
		0.228099,
		0.721227,
		0,
		0.539265,
		-0.809228,
		-0.233117,
		0,
		0.530464,
		0.541406,
		-0.652294,
		0,
		0.327784,
		-0.124169,
		-0.354623,
		1
	},
	[0.566666666667] = {
		0.703067,
		0.306284,
		0.641784,
		0,
		0.594676,
		-0.74811,
		-0.294434,
		0,
		0.389945,
		0.58866,
		-0.708112,
		0,
		0.299267,
		-0.088545,
		-0.380379,
		1
	},
	[0.5] = {
		0.588295,
		0.161372,
		0.792382,
		0,
		0.483005,
		-0.856008,
		-0.184272,
		0,
		0.648549,
		0.49113,
		-0.581529,
		0,
		0.35794,
		-0.157057,
		-0.328803,
		1
	},
	[0.633333333333] = {
		0.737003,
		0.482387,
		0.473424,
		0,
		0.67269,
		-0.591594,
		-0.444416,
		0,
		0.065694,
		0.646003,
		-0.760503,
		0,
		0.248243,
		-0.013543,
		-0.430031,
		1
	},
	[0.666666666667] = {
		0.72128,
		0.570398,
		0.392938,
		0,
		0.685283,
		-0.505188,
		-0.524568,
		0,
		-0.100705,
		0.647634,
		-0.755267,
		0,
		0.226212,
		0.023214,
		-0.452729,
		1
	},
	[0.6] = {
		0.731289,
		0.392622,
		0.557732,
		0,
		0.641276,
		-0.674324,
		-0.366132,
		0,
		0.232341,
		0.625408,
		-0.744904,
		0,
		0.272678,
		-0.051262,
		-0.405691,
		1
	},
	[0.733333333333] = {
		0.641216,
		0.724476,
		0.252935,
		0,
		0.654639,
		-0.34448,
		-0.67289,
		0,
		-0.400362,
		0.59705,
		-0.695156,
		0,
		0.190928,
		0.087274,
		-0.490162,
		1
	},
	[0.766666666667] = {
		0.587269,
		0.785837,
		0.193843,
		0,
		0.617296,
		-0.279955,
		-0.735236,
		0,
		-0.523508,
		0.55144,
		-0.649502,
		0,
		0.178798,
		0.111101,
		-0.503388,
		1
	},
	[0.7] = {
		0.687673,
		0.652141,
		0.319091,
		0,
		0.678551,
		-0.420994,
		-0.60194,
		0,
		-0.258214,
		0.630457,
		-0.732017,
		0,
		0.206942,
		0.0574,
		-0.473029,
		1
	},
	[0.833333333333] = {
		0.474958,
		0.875636,
		0.087622,
		0,
		0.518985,
		-0.198304,
		-0.831463,
		0,
		-0.710683,
		0.440384,
		-0.548628,
		0,
		0.169079,
		0.133723,
		-0.515407,
		1
	},
	[0.866666666667] = {
		0.477967,
		0.87396,
		0.087991,
		0,
		0.518306,
		-0.19974,
		-0.831542,
		0,
		-0.709159,
		0.443056,
		-0.548448,
		0,
		0.169536,
		0.133358,
		-0.514253,
		1
	},
	[0.8] = {
		0.530604,
		0.836017,
		0.139767,
		0,
		0.570771,
		-0.230502,
		-0.788092,
		0,
		-0.626642,
		0.49794,
		-0.599479,
		0,
		0.171265,
		0.127151,
		-0.512017,
		1
	},
	[0.933333333333] = {
		0.483066,
		0.871079,
		0.088704,
		0,
		0.517138,
		-0.20209,
		-0.831702,
		0,
		-0.706552,
		0.447639,
		-0.548091,
		0,
		0.170277,
		0.132784,
		-0.512327,
		1
	},
	[0.966666666667] = {
		0.485025,
		0.869959,
		0.089008,
		0,
		0.516683,
		-0.202964,
		-0.831772,
		0,
		-0.705542,
		0.449419,
		-0.547936,
		0,
		0.170548,
		0.132579,
		-0.511596,
		1
	},
	[0.9] = {
		0.480691,
		0.872427,
		0.088359,
		0,
		0.517684,
		-0.201009,
		-0.831624,
		0,
		-0.70777,
		0.445496,
		-0.548265,
		0,
		0.169938,
		0.133044,
		-0.513219,
		1
	},
	[1.03333333333] = {
		0.487433,
		0.868571,
		0.08941,
		0,
		0.51612,
		-0.20401,
		-0.831865,
		0,
		-0.704293,
		0.451625,
		-0.547728,
		0,
		0.170852,
		0.132342,
		-0.510704,
		1
	},
	[1.06666666667] = {
		0.48775,
		0.868387,
		0.089467,
		0,
		0.516046,
		-0.204143,
		-0.831879,
		0,
		-0.704128,
		0.451918,
		-0.547698,
		0,
		0.170872,
		0.132314,
		-0.510585,
		1
	}
}

return spline_matrices

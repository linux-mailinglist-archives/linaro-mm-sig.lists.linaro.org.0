Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MHdGF19f5mkWvgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:16:15 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id EC142430DB4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:16:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4C6B440960
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:07:01 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
	by lists.linaro.org (Postfix) with ESMTPS id 89A923F80A
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Mar 2026 05:49:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=JbjaYFyu;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	spf=pass (lists.linaro.org: domain of vivek.kasireddy@intel.com designates 198.175.65.19 as permitted sender) smtp.mailfrom=vivek.kasireddy@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1773121772; x=1804657772;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=mTRHbA6ycXjWaH/OK3GBD0e247QlLlzqWjypIMOd4ro=;
  b=JbjaYFyuelpid27661wgHmKwim4cyQMlISpxI0rA0P27/iRvrMcJVApk
   L9moQmV2dqIX/YUM11OuzT2QPDDnySrJUYMbzAqjAlOIaDod3MplAn+JV
   Nmddt1HM9lRYrFxFVPnfs1lHl+uTNIc+R1JDAD4cpMua6/WeeVAi/eTo9
   +MG0l4Ux0bzkNnxpgouSAftjrFNmjw2nC01XvPneSbHXr4EHZeQMjPEjS
   6+J10bSvDzC3pYSVtWNImEesNy37+TQlGprv2N2RRmlR+IVDInkOnXf9a
   7989kkrepjRJljlQ7qwxb9tMQgj3CfPimmbwurbOsynDeK8kM2Ij1ZAJC
   A==;
X-CSE-ConnectionGUID: tkBUWMyrTPmXtPteaen+kA==
X-CSE-MsgGUID: wDiS08VsRVORwTblWQSTSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11724"; a="74058571"
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000";
   d="scan'208";a="74058571"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Mar 2026 22:49:28 -0700
X-CSE-ConnectionGUID: 2DvC/lDPRoG6pN7HemwCBw==
X-CSE-MsgGUID: zlA3eWnPQCGBxEt2LCNYfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000";
   d="scan'208";a="257910811"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
  by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Mar 2026 22:49:28 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 22:49:26 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 9 Mar 2026 22:49:26 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.36) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 22:49:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=esWc+kP8ClNA1HCn0jRuBl9XQwWChbTIslJ6AoYDnqFCobVU5Rn+LZ4wA2T3+PaqVNvDTXNjhcjvUFJT1jlgVxLRmueOVYsiQugQ0j1QdAXg+bmbhuC/9BCqCByMjQRbQ+M3+4NQUfKDISjD93q7aYhRKwo08HQ/p64kmv60v7zGvQgifNkbiB/fN4NM3x/fGM3aI72q6l5S8I+t3S0kh8kYXcEW0IARtPAlMk74NSyKaLldDXadJy3eOCu4yZwwGzJV42Ntemq1ijx/Ok2DsE5vXb6iC0X0iJ7jBduKaNGTHcnjmG+MwlwdF3gxDwwH/Ctk/bDuQaDbHa0j2SRTqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mTRHbA6ycXjWaH/OK3GBD0e247QlLlzqWjypIMOd4ro=;
 b=eupQVvvV08lheZd0Gv003pS9McyJ1jfacrK5L2WiNlRRAftxtguqdmVm3WdXIx1gm5tAf0sbiG7MYRFQ4m9wz9B5/nS7Me9bFgnN1Xie3sSynmxtWiOLNxqMI5wcEoA5fp8NH8KMT0GFpMA0ZxgIvvtsnVT11zjKjXKnJcgkKCPI93Fi6CTXYh8+Tu9PANrLP5s52zj/6TW67IrvWSgi/p6JlYvl9CXBJt+TbFy0leS9lokam/9qmqqVwL4PS7eNXVJTJ4AdZRYxXIOxf/f3kEtfYD6WrtbcALrnZUvGZoNFAlN0OicFc3Zw3MT/cv+oVeCMvnbbo5XycQ/oSbpRUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7185.namprd11.prod.outlook.com (2603:10b6:208:432::20)
 by SJ0PR11MB4893.namprd11.prod.outlook.com (2603:10b6:a03:2ac::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Tue, 10 Mar
 2026 05:49:23 +0000
Received: from IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::9f37:cb81:5463:300e]) by IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::9f37:cb81:5463:300e%5]) with mapi id 15.20.9700.010; Tue, 10 Mar 2026
 05:49:23 +0000
From: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
To: Julian Orth <ju.orth@gmail.com>, Jason Gunthorpe <jgg@ziepe.ca>
Thread-Topic: [PATCH] lib/scatterlist: fix sg_page_count and sg_dma_page_count
Thread-Index: AQHcrytGgNCxhmh1dUGazU9lY/+Y4bWmiV1Q
Date: Tue, 10 Mar 2026 05:49:23 +0000
Message-ID: <IA0PR11MB7185574E3A63285860017D69F846A@IA0PR11MB7185.namprd11.prod.outlook.com>
References: <20260308-scatterlist-v1-1-39c4566b0bba@gmail.com>
 <20260308180826.GG1687929@ziepe.ca>
 <CAHijbEX=LN_ntp6zwsqy3sW7EB+E6cBCWnrKZb_RqdNG=Et_3g@mail.gmail.com>
In-Reply-To: <CAHijbEX=LN_ntp6zwsqy3sW7EB+E6cBCWnrKZb_RqdNG=Et_3g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7185:EE_|SJ0PR11MB4893:EE_
x-ms-office365-filtering-correlation-id: e70b1da9-64e1-4eb4-588a-08de7e68c82b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|7416014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: FzpdGNT0yS6dYtWBiJl5DBCg0AgoGJv/hEZK4wCaXYyMAlnKh+kMvgcWNNs8CiE5bzVpwv+rMt1OXbOqJSi0SEDAcxHO0tkjP1ibX/nJRFk4qWnT/umsprxJYcEsC93nmu76+jnpPSmskDKY3+tIMlffFth0DgraDevmbZHzCKXk8wgQd0fiO9dfpVSYRDjBo0Uqspl2gsyMZRmO2aYf1HIQ2h8b5OUWT2ymlr3zu6GxolLZSkSBLN8tDhWAQEjNf7aUxY1VsyCb2STE9kTfmizCUShwTLtWBPf9sdrVqVTEPacVzKA5JEhaldy0ah4iyU6aN98ybj7JnusYlhLzXuzYYwxgswil53Z7lc8TRYFbgf6FWeI5dWoJtvVOKyycP+GgdnuaIFWNHBJ6c/zSIhvt9+eUMLNfGWEIIBDDLiKdLwgtwA/CZ/ktlSvNefaoTatXkMNhyXTMJIxkRLaOgLBnwqB1PTES8q2Gv3VJ+aX4lYyk2IesovJLxIVhmr2eck+raIylA1zwBFDNIrQ+x0KJ3kPDy75x5vG8rfJwsIvmcsI+NeZn2Z1OHJMFrBmA3Fs4Ir4N1gn2dFdt9o7OxGFNgLfMGxb27brnnEf58N7HGp+t+a6eZFFHdf3/ORSWA/ZwUWi3fVGvmQG7VMfygGKdDQGGvbDBHZ4jxnePm3t70aUf51eMIJ/lmIvqyRGz2OOUEL3HDxw9aLJbXVlX36ij2LnLsKSjYoKfIWPFP7Dd0xDEUonW69Np9sOWR6zBsXw6cXJZRZqWMrSgw3Nby3gJ3WXXfQ3HXhLCWVePzhA=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR11MB7185.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(1800799024)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?blM4OXh5ME9OUDlJb293aUVuZUVwV28xK3ZOcjFYTndNck9jZmhzTGtya28w?=
 =?utf-8?B?RUFzd0QyQnpSOG1VbTJ1RThsM25HMVkvR25JWkpMSmp4MDkyK1k2MzBtMnlT?=
 =?utf-8?B?dEpaNjI1OEJUa3hOZWxlckFvak9PQStkckdCaUc4cEZsRzB4SDd5a1Q3Y3RH?=
 =?utf-8?B?eGozZkFkeXBGaEMrVjVBYVg1RkdITUlPR29kYVRxbVlrWmFuc2JDcXZobGx4?=
 =?utf-8?B?RnA5ZEdSaUdDK3VMYXM4Qi9wMHpFRzB0dlo1c2F4U2RkZUxMNTlSREE3V3Fa?=
 =?utf-8?B?V2YxTVdscmdoVlRoZXpnUTFvcnFtdENTdUllWXA5YUZtdnE4NTJMbnJVNFZF?=
 =?utf-8?B?YVdUZWV6SWRjWDBzYlBNUDMvQy9BNVBiVWQ0eWQ2ekN0T1RaeWcrUmw3aDVr?=
 =?utf-8?B?THpLSDVrTFZzWUZoSmJaSG5sbkdETDAzRFRLYTNTUU54K29nMXd5YVJGSWN3?=
 =?utf-8?B?ejFPZVFKbmU2V1hMSTk2SFBNYmc0VlNSRDlXNUJ2ZUxDNVdpeEQ5Q0xZVkZS?=
 =?utf-8?B?bEEzSzU3SC9hbWY1ZEk3T2tZd2hxbk9HcTJlbFZsbzJoWlJ1cndDN2d1RWMy?=
 =?utf-8?B?eVVkKzFrN013L0lTUVQ5MVVsS1JGMGF4bzdrVENNYzYrR3poNG0wQXYybnJQ?=
 =?utf-8?B?WkRISW5PRjZnWWd4OEE2eVdKa04zWVFSTDQ3WXNuTXhUNUV3L3N2eXVYOUJQ?=
 =?utf-8?B?YXJlL2NRaGdWd3dxcVNJblF0YzFFbk1tNXdJUllCdUxUVTFocEE3SUFhYkdX?=
 =?utf-8?B?aGFhRFIrc0w0djd5K0hVYkVOeWcwZmF0VXBJUWljcTB6WWpNZWxrWjltQ3JB?=
 =?utf-8?B?RnE5d1pKNGJMNzVpVUZicGEzbDUrTzk1VWQwWFFQbTJjTngrN0Raa1VxNEpO?=
 =?utf-8?B?SE5ZN2J1dWxtQ1h5RW5yUStlbGwzZ3B2dFdHcFNLcDA3bzhvSm44aHRDd09W?=
 =?utf-8?B?bDdUMElMZEVsN2NnNU5Zc3JiT3cwb1JNUkZsSzVRZHBIbVJSOURCYks3Zmcz?=
 =?utf-8?B?Tm40aGFjQnI2dU1BTlEweU1SdmVBMnN3OFhaaUZleGJMVmlzSHVMTGJDUGtj?=
 =?utf-8?B?dW9DYzMxZk0rRUFjZzlYOWZCdW9CZjI3dkhtbXZBRWVwbGJKRHhzUHQ2WWZM?=
 =?utf-8?B?MkFEcFkxayt5bEgvb2M1YVJIQmZaMXNNUjNjSm5vMWxzMklFVU5Xb2NXS1ds?=
 =?utf-8?B?ZFNwQ2Y5L0RaQVVRMHR0MjZnR2dJcGl4M3dRM1dkNURRcVZkL1dmN3RQNDdS?=
 =?utf-8?B?Wkl1TVlEckd4SHNXNWhyb2Jkc1JoUEw2aVl6OUFpTEJLVE55YmQ3bCtaNFJJ?=
 =?utf-8?B?VWltMHY1MXplU1B1L04xRWZoS0w3SDhDaG5YVytkZkNMWlQ1T1p1TW9YV1pI?=
 =?utf-8?B?Ri9XcUwzMUNFWGxhNEZqa0w4T2d2eXAyeTdyZGdyaWRySUVVQ1RKUkJ4L1Vt?=
 =?utf-8?B?YkNxemJUbnFLR1NZekdkazEyMmt4bDUzUEEwT1ZJcjhpQWFWK2VEbFMzUjJL?=
 =?utf-8?B?cnF1UlJzd0JKSzJOT2I2Mi9vbWx3M1lpWkYxTVc0Zy9KdVNBQUtyQkQ2Q00x?=
 =?utf-8?B?NVUzRFZuNmphc2kvOVk2MDJIeXV4NVpHRVdPbzZRRjdMTmwwTW5VVW5ScU1F?=
 =?utf-8?B?Vm4xM2puWUNWRHczOWVwVVU1VFhOQkh4MHVZK2p6Y3M5MXVvdk9LQ1BlR1RQ?=
 =?utf-8?B?Sy9JYXFNUEdrUTJIUlozZVc3SFFJV0tvQ3Z0N1lWZWphbGpZUkZkcGQyRGVM?=
 =?utf-8?B?d0taQVRQRGJxQldVbkFyYXhVbHplN3FQa2QzblkxTnZ1TFRjZ0J5ak9oUHFj?=
 =?utf-8?B?WCsvaDNzeEgzbFdGd1RYSlRtK01Xa2l6UEhFWmZFL0N1c2xGN2lsMHBIQzFZ?=
 =?utf-8?B?K1VCbU5lQUoyU1hTYTFsMXZZOUVYanl5ODNPSEhFT01TWk5hZzZFNUc1Mk5L?=
 =?utf-8?B?ZFpjcjZzUEVsTUZqb2gzQVB6bnZrbEhEZ0x5Z0V0VHJHRmNENjRSL0tmeEpV?=
 =?utf-8?B?bDVsTVNCdHF6ZGpvR3o2M3BldFc3bHBsSGN4ZzlNaXZ2SkpjY1NFeVR3UUh3?=
 =?utf-8?B?NEdnWEJYeHd0OWxJUnBhbFBCbVJqV2ljUllQby9CTUtPV0l2TG9JZzdqNTBh?=
 =?utf-8?B?Z2cwSzJ0QmVEK3ovKzJuMlRRcXE0VFlJaG4vMlU3ejE2OGVkRnk3RC9uQXlp?=
 =?utf-8?B?d0hqNEdnSXUvMVl0WWRNbEYxRVFZN2lHVGZ0N3I2TzFzcCtJckFLdnp5VTI5?=
 =?utf-8?B?NEVvSGptS1ltT3RPbGF6dTh4TE01d0xpWUpCanNkR2tDVmVxS1RwSkwzbkxq?=
 =?utf-8?B?czcyTVlKZkVYdmhHOXJlb2huK1FFSitld1grd3RlSDFBR3BEOUpsZz09?=
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: dbppteC4r7jCzXfMHgETonwctkSihqzwxRxhRx7OYhUZf8lRD2Mer/geZTeAktclf/3od29+9ZDa4BZXcKmyrMKbmO5aHV5a01PXyEEHO/3DlB3TkiPHYpcw577r++ocif1TVSGPS0BOfJJ75xPSIXf3roSJEpN8W9tDjFFzV6dhAU+4ZMp91080yXzsyEdXBsRNR9R2bs0B93wVqzGckCcwXmIYGbOVnJuJ7gEh+63iedlJXpgVGAC8R6FMS/cJGLAMf8YiG3Tuatr/O+j9LmwQFfC2/2jP2yAwVpaYuKOEI5mZx4SWtV/R4Txc1DIziPlnS+0s77k6Co+7P25fPQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e70b1da9-64e1-4eb4-588a-08de7e68c82b
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2026 05:49:23.2850
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FZ3CSwpij1geqYKUbVYDrbWuB3JXvDKUuSeSvXq8iCJi7TBlzwEM53tB5Yros7Yt0WlabZB2Gs6wxAUGfn+xcRIfFBaxb+Kr39RoSXLjH+8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4893
X-OriginatorOrg: intel.com
X-Spamd-Bar: --------
X-MailFrom: vivek.kasireddy@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 355PI7C6OZTJYXPECF6QS2F7WVCHKZXI
X-Message-ID-Hash: 355PI7C6OZTJYXPECF6QS2F7WVCHKZXI
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:06:31 +0000
CC: Andrew Morton <akpm@linux-foundation.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, Thomas Hellstrom <thellstrom@vmware.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Gerd Hoffmann <kraxel@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?utf-8?B?Q2hyaXN0aWFuIEvDtm5pZw==?= <christian.koenig@amd.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] lib/scatterlist: fix sg_page_count and sg_dma_page_count
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/355PI7C6OZTJYXPECF6QS2F7WVCHKZXI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [4.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	DATE_IN_PAST(1.00)[995];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	GREYLIST(0.00)[pass,meta];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ziepe.ca];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,ziepe.ca:email,linaro.org:email,IA0PR11MB7185.namprd11.prod.outlook.com:mid];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vivek.kasireddy@intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.393];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: EC142430DB4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGkgSmFzb24sIEp1bGlhbiwNCg0KPiBTdWJqZWN0OiBSZTogW1BBVENIXSBsaWIvc2NhdHRlcmxp
c3Q6IGZpeCBzZ19wYWdlX2NvdW50IGFuZA0KPiBzZ19kbWFfcGFnZV9jb3VudA0KPiANCj4gT24g
U3VuLCBNYXIgOCwgMjAyNiBhdCA3OjA44oCvUE0gSmFzb24gR3VudGhvcnBlIDxqZ2dAemllcGUu
Y2E+IHdyb3RlOg0KPiA+DQo+ID4gT24gU3VuLCBNYXIgMDgsIDIwMjYgYXQgMDI6NTU6MjdQTSAr
MDEwMCwgSnVsaWFuIE9ydGggd3JvdGU6DQo+ID4gPiBBIHVzZXIgcmVwb3J0ZWQgbWVtb3J5IGNv
cnJ1cHRpb24gaW4gdGhlIEpheSB3YXlsYW5kIGNvbXBvc2l0b3IgWzFdLg0KPiBUaGUNCj4gPiA+
IGNvcnJ1cHRpb24gc3RhcnRlZCB3aGVuIGFyY2hsaW51eCBlbmFibGVkDQo+ID4gPiBDT05GSUdf
VFJBTlNQQVJFTlRfSFVHRVBBR0VfU0hNRU1fSFVHRV9XSVRISU5fU0laRSBpbg0KPiBrZXJuZWwg
Ni4xOS41Lg0KPiA+ID4NCj4gPiA+IFRoZSBjb21wb3NpdG9yIHVzZXMgdWRtYWJ1ZiB0byB1cGxv
YWQgbWVtb3J5IGZyb20gbWVtZmRzIHRvIHRoZQ0KPiBHUFUuDQo+ID4gPiBXaGVuIHJ1bm5pbmcg
YW4gYWZmZWN0ZWQga2VybmVsLCB0aGUgZm9sbG93aW5nIHdhcm5pbmdzIGFyZSBsb2dnZWQ6DQo+
ID4gPg0KPiA+ID4gICAgIGEgLSBhZGRycyA+PSBtYXhfZW50cmllcw0KPiA+ID4gICAgIFdBUk5J
Tkc6IGRyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYzoxMDg5IGF0DQo+IGRybV9wcmltZV9zZ190
b19kbWFfYWRkcl9hcnJheSsweDg2LzB4YzAsIENQVSMzMTogamF5LzE4NjQNCj4gPiA+ICAgICBb
Li4uXQ0KPiA+ID4gICAgIENhbGwgVHJhY2U6DQo+ID4gPiAgICAgIDxUQVNLPg0KPiA+ID4gICAg
ICBhbWRncHVfYm9fbW92ZSsweDE4OC8weDgwMCBbYW1kZ3B1DQo+IDNiNDUxNjQwMjM0OTQ4MDI3
YzA5ZTliMzllNjUyMGJjN2U1NDcxY2ZdDQo+ID4gPg0KPiA+ID4gRGlzYWJsaW5nIHRoZSB1c2Ug
b2YgaHVnZSBwYWdlcyBhdCBydW50aW1lIHZpYQ0KPiA+ID4gL3N5cy9rZXJuZWwvbW0vdHJhbnNw
YXJlbnRfaHVnZXBhZ2Uvc2htZW1fZW5hYmxlZCBmaXhlcyB0aGUNCj4gaXNzdWUuDQo+ID4gPg0K
PiA+ID4gdWRtYWJ1ZiBhbGxvY2F0ZXMgYSBzY2F0dGVybGlzdCB3aXRoIGJ1ZmZlcl9zaXplL1BB
R0VfU0laRSBlbnRyaWVzLg0KPiBFYWNoDQo+ID4gPiBlbnRyeSBoYXMgYSBsZW5ndGggb2YgUEFH
RV9TSVpFLiBXaXRoIGh1Z2UgcGFnZXMgZGlzYWJsZWQsIGl0IGFwcGVhcnMNCj4gPiA+IHRoYXQg
c2ctPm9mZnNldCBpcyBhbHdheXMgMC4gV2l0aCBodWdlIHBhZ2VzIGVuYWJsZWQsIHNnLT5vZmZz
ZXQgaXMNCj4gPiA+IGluY3JlbWVudGVkIGJ5IFBBR0VfU0laRSB1bnRpbCB0aGUgZW5kIG9mIHRo
ZSBodWdlIHBhZ2UuDQo+ID4NCj4gPiBUaGlzIHdhcyBicm9rZW4gYnkgMGM4YjkxZWY1MTAwICgi
dWRtYWJ1ZjogYWRkIGJhY2sgc3VwcG9ydCBmb3INCj4gPiBtYXBwaW5nIGh1Z2V0bGIgcGFnZXMi
KSB3aGljaCBzd2l0Y2hlZCBmcm9tIGEgd29ya2luZw0KPiA+IHNnX2FsbG9jX3RhYmxlX2Zyb21f
cGFnZXMoKSB0byBhIG1lc3NlZCB1cCBzZ19zZXRfcGFnZXMgbG9vcDoNCj4gPg0KPiA+ICsgICAg
ICAgZm9yX2VhY2hfc2coc2ctPnNnbCwgc2dsLCB1YnVmLT5wYWdlY291bnQsIGkpDQo+ID4gKyAg
ICAgICAgICAgICAgIHNnX3NldF9wYWdlKHNnbCwgdWJ1Zi0+cGFnZXNbaV0sIFBBR0VfU0laRSwg
dWJ1Zi0+b2Zmc2V0c1tpXSk7DQo+ID4gWy4uXQ0KPiA+ICsgICAgICAgICAgICAgICB1YnVmLT5v
ZmZzZXRzWypwZ2J1Zl0gPSBzdWJwZ29mZiA8PCBQQUdFX1NISUZUOw0KPiA+DQo+ID4gV2hpY2gg
aXMganVzdCB0aGUgd3Jvbmcgd2F5IHRvIHVzZSB0aGUgc2NhdHRlcmxpc3QgQVBJLg0KPiA+DQo+
ID4gVGhpcyB3YXMgbGF0ZXIgY2hhbmdlZCB0byBzZ19zZXRfZm9saW8oKSB3aGljaCBJJ20gYWxz
byBzdXNwZWN0aW5nIGhhcw0KPiA+IGEgYnVnLCBpdCBzaG91bGQgYmUgc2V0dGluZyBwYWdlX2xp
bmsgdG8gdGhlIHByb3BlciB0YWlsIHBhZ2UgYmVjYXVzZQ0KPiA+IGFzIHlvdSBvYnNlcnZlIHBh
Z2Vfb2Zmc2V0IG11c3QgZmFsbCB3aXRoaW4gMCB0byBQQUdFX1NJWkUtMSB0byBtYWtlDQo+ID4g
dGhlIGl0ZXJhdG9yIHdvcmsuDQo+ID4NCj4gPiBJIHRoaW5rIHRoZSB3aG9sZSBkZXNpZ24gaGVy
ZSBpbiB1ZG1hYnVmIG1ha2VzIHZlcnkgbGl0dGxlIHNlbnNlLiBJdA0KPiA+IHN0YXJ0cyBvdXQg
d2l0aCBhbiBhY3R1YWwgbGlzdCBvZiBmb2xpb3MgdGhlbiBleHBhbmRzIHRoZW0gdG8gYSBwZXIt
NEsNCj4gPiBkb3VibGUgYXJyYXkgb2YgZm9saW8vb2Zmc2V0LiBUaGlzIGlzIG5vbnNlbnNpY2Fs
LCBpZiBpdCB3YW50cyB0bw0KPiA+IGJ1aWxkIGEgd2F5IHRvIGRpcmVjdCBpbmRleCB0aGUgbWFw
cGluZyBmb3IgbW1hcCBpdCBzaG91bGQganVzdCBidWlsZA0KPiA+IGl0c2VsZiBhIHBhZ2UgKiBh
cnJheSBsaWtlIHRoZSBjb2RlIHVzZWQgdG8gZG8gYW5kIGNvbnRpbnVlIHRvIHVzZQ0KPiA+IHNn
X2FsbG9jX3RhYmxlX2Zyb21fcGFnZXMoKSB3aGljaCBidWlsZHMgcHJvcGVybHkgZm9ybWVkIHNj
YXR0ZXJsaXN0cy4NClRoZXJlIGFyZSBhIGNvdXBsZSBvZiByZWFzb25zIHdoeSB3ZSBnb3Qgcmlk
IG9mIHRoZSBwYWdlcyBhcnJheToNCi0gQmFjayB0aGVuLCB0aGVyZSB3YXMgc29tZSBjb25mdXNp
b24gYWJvdXQgd2hldGhlciBhIHN0cnVjdCBwYWdlIHdvdWxkDQogIGV4aXN0IG9yIG5vdCBmb3Ig
dGFpbCBwYWdlcyB3aGVuIEhWTyBpcyBlbmFibGVkLiBSZWdhcmRsZXNzLCB0aGVyZSB3YXMgYWxz
bw0KICBhIGNvbmNlcm4gYWJvdXQgZXhwb3NpbmcgdGFpbCBwYWdlcyBvdXRzaWRlIGh1Z2V0bGIg
Y29kZS4NCg0KLSBBbmQsIHdlIGFsc28gd2FudGVkIHRvIHByZXBhcmUgZm9yIGEgZnV0dXJlIHdo
ZXJlIHN0cnVjdCBwYWdlIHdvdWxkIG5vdA0KICBleGlzdCBhbnltb3JlLCBzbywgaXQgbWFkZSBz
ZW5zZSB0byBqdXN0IHVzZSBmb2xpb3Mgb25seS4NCg0KSSBhbSBub3Qgc3VyZSBpZiB0aGVzZSBj
b25jZXJucyBhcmUgdmFsaWQgYW55bW9yZS4gSWYgdGhleSBhcmUgbm90LCBJIGFtIE9LIHdpdGgN
Ckphc29uJ3MgcGF0Y2ggYmVsb3cgdGhhdCBicmluZ3MgYmFjayB0aGUgcGFnZXMgYXJyYXkuDQoN
ClRoYW5rcywNClZpdmVrDQoNCj4gPg0KPiA+IFRoaXMgd291bGQgc2F2ZSBtZW1vcnksIHVzZSB0
aGUgQVBJcyBwcm9wZXJseSBhbmQgYnVpbGQgYSBjb3JyZWN0IGFuZA0KPiA+IG9wdGltaXplZCBz
Y2F0dGVybGlzdCB0byBib290LiBJdCB1c2VzIHZtZl9pbnNlcnRfcGZuKCkgYW5kDQo+ID4gdm1f
bWFwX3JhbSgpIGFueWhvdyBzbyBpdCBkb2Vzbid0IGV2ZW4gdXNlIGEgZm9saW8gOlwNCj4gPg0K
PiA+IEhlcmUsIGEgZmV3IG1pbnMgb2YgQUkgc2hvd3Mgd2hhdCBJIHRoaW5rIHVkbWFidWYgc2hv
dWxkIGxvb2sgbGlrZS4gSWYNCj4gPiB5b3Ugd2lzaCB0byBwZXJzdWUgdGhpcyBwbGVhc2UgYWRk
IG15IHNpZ25lZC1vZmYtYnkgYW5kIGhhbmRsZSB0ZXN0aW5nDQo+ID4gaXQgYW5kIGdldHRpbmcg
aXQgbWVyZ2VkLiBJIHJldmlld2VkIGl0IGVub3VnaCB0byBzZWUgaXQgd2FzIHNob3dpbmcNCj4g
PiB3aGF0IEkgd2FudGVkLg0KPiANCj4gSSBkb24ndCBrbm93IGVub3VnaCBhYm91dCBmb2xpb3Mg
b3IgdWRtYWJ1ZiB0byBlZmZpY2llbnRseSB3b3JrIG9uIHRoaXMuDQo+IA0KPiBJZiBvZmZzZXQg
aXMgc3VwcG9zZWQgdG8gYmUgaW4gWzAsIFBBR0VfU0laRS0xXSwgdGhlbiBteSBwYXRjaCBpcw0K
PiBpbmNvcnJlY3QgYW5kIGl0J3MgcHJvYmFibHkgYmV0dGVyIGlmIHNvbWUgb2YgdGhlIHVkbWFi
dWYgbWFpbnRhaW5lcnMNCj4gdGFrZSBhIGxvb2sgYXQgdGhpcy4gSSd2ZSBhZGRlZCB0aGVtIHRv
IENDLg0KPiANCj4gPg0KPiA+IEphc29uDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9k
bWEtYnVmL3VkbWFidWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMNCj4gPiBpbmRleCA5
NGI4ZWNiODkyYmIxNy4uNWQ2ODc4NjA0NDUxMzcgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9k
bWEtYnVmL3VkbWFidWYuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMNCj4g
PiBAQCAtMjYsMTAgKzI2LDEwIEBAIE1PRFVMRV9QQVJNX0RFU0Moc2l6ZV9saW1pdF9tYiwgIk1h
eCBzaXplDQo+IG9mIGEgZG1hYnVmLCBpbiBtZWdhYnl0ZXMuIERlZmF1bHQgaXMNCj4gPg0KPiA+
ICBzdHJ1Y3QgdWRtYWJ1ZiB7DQo+ID4gICAgICAgICBwZ29mZl90IHBhZ2Vjb3VudDsNCj4gPiAt
ICAgICAgIHN0cnVjdCBmb2xpbyAqKmZvbGlvczsNCj4gPiArICAgICAgIHN0cnVjdCBwYWdlICoq
cGFnZXM7DQo+ID4NCj4gPiAgICAgICAgIC8qKg0KPiA+IC0gICAgICAgICogVW5saWtlIGZvbGlv
cywgcGlubmVkX2ZvbGlvcyBpcyBvbmx5IHVzZWQgZm9yIHVucGluLg0KPiA+ICsgICAgICAgICog
VW5saWtlIHBhZ2VzLCBwaW5uZWRfZm9saW9zIGlzIG9ubHkgdXNlZCBmb3IgdW5waW4uDQo+ID4g
ICAgICAgICAgKiBTbywgbnJfcGlubmVkIGlzIG5vdCB0aGUgc2FtZSB0byBwYWdlY291bnQsIHRo
ZSBwaW5uZWRfZm9saW9zDQo+ID4gICAgICAgICAgKiBvbmx5IHNldCBlYWNoIGZvbGlvIHdoaWNo
IGFscmVhZHkgcGlubmVkIHdoZW4gdWRtYWJ1Zl9jcmVhdGUuDQo+ID4gICAgICAgICAgKiBOb3Rl
IHRoYXQsIHNpbmNlIGEgZm9saW8gbWF5IGJlIHBpbm5lZCBtdWx0aXBsZSB0aW1lcywgZWFjaCBm
b2xpbw0KPiA+IEBAIC00MSw3ICs0MSw2IEBAIHN0cnVjdCB1ZG1hYnVmIHsNCj4gPg0KPiA+ICAg
ICAgICAgc3RydWN0IHNnX3RhYmxlICpzZzsNCj4gPiAgICAgICAgIHN0cnVjdCBtaXNjZGV2aWNl
ICpkZXZpY2U7DQo+ID4gLSAgICAgICBwZ29mZl90ICpvZmZzZXRzOw0KPiA+ICB9Ow0KPiA+DQo+
ID4gIHN0YXRpYyB2bV9mYXVsdF90IHVkbWFidWZfdm1fZmF1bHQoc3RydWN0IHZtX2ZhdWx0ICp2
bWYpDQo+ID4gQEAgLTU1LDggKzU0LDcgQEAgc3RhdGljIHZtX2ZhdWx0X3QgdWRtYWJ1Zl92bV9m
YXVsdChzdHJ1Y3QNCj4gdm1fZmF1bHQgKnZtZikNCj4gPiAgICAgICAgIGlmIChwZ29mZiA+PSB1
YnVmLT5wYWdlY291bnQpDQo+ID4gICAgICAgICAgICAgICAgIHJldHVybiBWTV9GQVVMVF9TSUdC
VVM7DQo+ID4NCj4gPiAtICAgICAgIHBmbiA9IGZvbGlvX3Bmbih1YnVmLT5mb2xpb3NbcGdvZmZd
KTsNCj4gPiAtICAgICAgIHBmbiArPSB1YnVmLT5vZmZzZXRzW3Bnb2ZmXSA+PiBQQUdFX1NISUZU
Ow0KPiA+ICsgICAgICAgcGZuID0gcGFnZV90b19wZm4odWJ1Zi0+cGFnZXNbcGdvZmZdKTsNCj4g
Pg0KPiA+ICAgICAgICAgcmV0ID0gdm1mX2luc2VydF9wZm4odm1hLCB2bWYtPmFkZHJlc3MsIHBm
bik7DQo+ID4gICAgICAgICBpZiAocmV0ICYgVk1fRkFVTFRfRVJST1IpDQo+ID4gQEAgLTczLDgg
KzcxLDcgQEAgc3RhdGljIHZtX2ZhdWx0X3QgdWRtYWJ1Zl92bV9mYXVsdChzdHJ1Y3QNCj4gdm1f
ZmF1bHQgKnZtZikNCj4gPiAgICAgICAgICAgICAgICAgaWYgKFdBUk5fT04ocGdvZmYgPj0gdWJ1
Zi0+cGFnZWNvdW50KSkNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICBicmVhazsNCj4gPg0K
PiA+IC0gICAgICAgICAgICAgICBwZm4gPSBmb2xpb19wZm4odWJ1Zi0+Zm9saW9zW3Bnb2ZmXSk7
DQo+ID4gLSAgICAgICAgICAgICAgIHBmbiArPSB1YnVmLT5vZmZzZXRzW3Bnb2ZmXSA+PiBQQUdF
X1NISUZUOw0KPiA+ICsgICAgICAgICAgICAgICBwZm4gPSBwYWdlX3RvX3Bmbih1YnVmLT5wYWdl
c1twZ29mZl0pOw0KPiA+DQo+ID4gICAgICAgICAgICAgICAgIC8qKg0KPiA+ICAgICAgICAgICAg
ICAgICAgKiBJZiB0aGUgYmVsb3cgdm1mX2luc2VydF9wZm4oKSBmYWlscywgd2UgZG8gbm90IHJl
dHVybiBhbg0KPiA+IEBAIC0xMDksMjIgKzEwNiwxMSBAQCBzdGF0aWMgaW50IG1tYXBfdWRtYWJ1
ZihzdHJ1Y3QgZG1hX2J1Zg0KPiAqYnVmLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSkNCj4g
PiAgc3RhdGljIGludCB2bWFwX3VkbWFidWYoc3RydWN0IGRtYV9idWYgKmJ1Ziwgc3RydWN0IGlv
c3lzX21hcCAqbWFwKQ0KPiA+ICB7DQo+ID4gICAgICAgICBzdHJ1Y3QgdWRtYWJ1ZiAqdWJ1ZiA9
IGJ1Zi0+cHJpdjsNCj4gPiAtICAgICAgIHN0cnVjdCBwYWdlICoqcGFnZXM7DQo+ID4gICAgICAg
ICB2b2lkICp2YWRkcjsNCj4gPiAtICAgICAgIHBnb2ZmX3QgcGc7DQo+ID4NCj4gPiAgICAgICAg
IGRtYV9yZXN2X2Fzc2VydF9oZWxkKGJ1Zi0+cmVzdik7DQo+ID4NCj4gPiAtICAgICAgIHBhZ2Vz
ID0ga3ZtYWxsb2Nfb2JqcygqcGFnZXMsIHVidWYtPnBhZ2Vjb3VudCk7DQo+ID4gLSAgICAgICBp
ZiAoIXBhZ2VzKQ0KPiA+IC0gICAgICAgICAgICAgICByZXR1cm4gLUVOT01FTTsNCj4gPiAtDQo+
ID4gLSAgICAgICBmb3IgKHBnID0gMDsgcGcgPCB1YnVmLT5wYWdlY291bnQ7IHBnKyspDQo+ID4g
LSAgICAgICAgICAgICAgIHBhZ2VzW3BnXSA9IGZvbGlvX3BhZ2UodWJ1Zi0+Zm9saW9zW3BnXSwN
Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1YnVmLT5vZmZzZXRz
W3BnXSA+PiBQQUdFX1NISUZUKTsNCj4gPiAtDQo+ID4gLSAgICAgICB2YWRkciA9IHZtX21hcF9y
YW0ocGFnZXMsIHVidWYtPnBhZ2Vjb3VudCwgLTEpOw0KPiA+IC0gICAgICAga3ZmcmVlKHBhZ2Vz
KTsNCj4gPiArICAgICAgIHZhZGRyID0gdm1fbWFwX3JhbSh1YnVmLT5wYWdlcywgdWJ1Zi0+cGFn
ZWNvdW50LCAtMSk7DQo+ID4gICAgICAgICBpZiAoIXZhZGRyKQ0KPiA+ICAgICAgICAgICAgICAg
ICByZXR1cm4gLUVJTlZBTDsNCj4gPg0KPiA+IEBAIC0xNDYsMjIgKzEzMiwxOCBAQCBzdGF0aWMg
c3RydWN0IHNnX3RhYmxlICpnZXRfc2dfdGFibGUoc3RydWN0DQo+IGRldmljZSAqZGV2LCBzdHJ1
Y3QgZG1hX2J1ZiAqYnVmLA0KPiA+ICB7DQo+ID4gICAgICAgICBzdHJ1Y3QgdWRtYWJ1ZiAqdWJ1
ZiA9IGJ1Zi0+cHJpdjsNCj4gPiAgICAgICAgIHN0cnVjdCBzZ190YWJsZSAqc2c7DQo+ID4gLSAg
ICAgICBzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnNnbDsNCj4gPiAtICAgICAgIHVuc2lnbmVkIGludCBp
ID0gMDsNCj4gPiAgICAgICAgIGludCByZXQ7DQo+ID4NCj4gPiAgICAgICAgIHNnID0ga3phbGxv
Y19vYmooKnNnKTsNCj4gPiAgICAgICAgIGlmICghc2cpDQo+ID4gICAgICAgICAgICAgICAgIHJl
dHVybiBFUlJfUFRSKC1FTk9NRU0pOw0KPiA+DQo+ID4gLSAgICAgICByZXQgPSBzZ19hbGxvY190
YWJsZShzZywgdWJ1Zi0+cGFnZWNvdW50LCBHRlBfS0VSTkVMKTsNCj4gPiArICAgICAgIHJldCA9
IHNnX2FsbG9jX3RhYmxlX2Zyb21fcGFnZXMoc2csIHVidWYtPnBhZ2VzLCB1YnVmLQ0KPiA+cGFn
ZWNvdW50LCAwLA0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1
YnVmLT5wYWdlY291bnQgPDwgUEFHRV9TSElGVCwNCj4gPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgR0ZQX0tFUk5FTCk7DQo+ID4gICAgICAgICBpZiAocmV0IDwgMCkN
Cj4gPiAgICAgICAgICAgICAgICAgZ290byBlcnJfYWxsb2M7DQo+ID4NCj4gPiAtICAgICAgIGZv
cl9lYWNoX3NnKHNnLT5zZ2wsIHNnbCwgdWJ1Zi0+cGFnZWNvdW50LCBpKQ0KPiA+IC0gICAgICAg
ICAgICAgICBzZ19zZXRfZm9saW8oc2dsLCB1YnVmLT5mb2xpb3NbaV0sIFBBR0VfU0laRSwNCj4g
PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVidWYtPm9mZnNldHNbaV0pOw0KPiA+IC0N
Cj4gPiAgICAgICAgIHJldCA9IGRtYV9tYXBfc2d0YWJsZShkZXYsIHNnLCBkaXJlY3Rpb24sIDAp
Ow0KPiA+ICAgICAgICAgaWYgKHJldCA8IDApDQo+ID4gICAgICAgICAgICAgICAgIGdvdG8gZXJy
X21hcDsNCj4gPiBAQCAtMjA3LDEyICsxODksOCBAQCBzdGF0aWMgdm9pZCB1bnBpbl9hbGxfZm9s
aW9zKHN0cnVjdCB1ZG1hYnVmDQo+ICp1YnVmKQ0KPiA+DQo+ID4gIHN0YXRpYyBfX2Fsd2F5c19p
bmxpbmUgaW50IGluaXRfdWRtYWJ1ZihzdHJ1Y3QgdWRtYWJ1ZiAqdWJ1ZiwgcGdvZmZfdA0KPiBw
Z2NudCkNCj4gPiAgew0KPiA+IC0gICAgICAgdWJ1Zi0+Zm9saW9zID0ga3ZtYWxsb2Nfb2Jqcygq
dWJ1Zi0+Zm9saW9zLCBwZ2NudCk7DQo+ID4gLSAgICAgICBpZiAoIXVidWYtPmZvbGlvcykNCj4g
PiAtICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9NRU07DQo+ID4gLQ0KPiA+IC0gICAgICAgdWJ1
Zi0+b2Zmc2V0cyA9IGt2emFsbG9jX29ianMoKnVidWYtPm9mZnNldHMsIHBnY250KTsNCj4gPiAt
ICAgICAgIGlmICghdWJ1Zi0+b2Zmc2V0cykNCj4gPiArICAgICAgIHVidWYtPnBhZ2VzID0ga3Zt
YWxsb2Nfb2JqcygqdWJ1Zi0+cGFnZXMsIHBnY250KTsNCj4gPiArICAgICAgIGlmICghdWJ1Zi0+
cGFnZXMpDQo+ID4gICAgICAgICAgICAgICAgIHJldHVybiAtRU5PTUVNOw0KPiA+DQo+ID4gICAg
ICAgICB1YnVmLT5waW5uZWRfZm9saW9zID0ga3ZtYWxsb2Nfb2JqcygqdWJ1Zi0+cGlubmVkX2Zv
bGlvcywgcGdjbnQpOw0KPiA+IEBAIC0yMjUsOCArMjAzLDcgQEAgc3RhdGljIF9fYWx3YXlzX2lu
bGluZSBpbnQgaW5pdF91ZG1hYnVmKHN0cnVjdA0KPiB1ZG1hYnVmICp1YnVmLCBwZ29mZl90IHBn
Y250KQ0KPiA+ICBzdGF0aWMgX19hbHdheXNfaW5saW5lIHZvaWQgZGVpbml0X3VkbWFidWYoc3Ry
dWN0IHVkbWFidWYgKnVidWYpDQo+ID4gIHsNCj4gPiAgICAgICAgIHVucGluX2FsbF9mb2xpb3Mo
dWJ1Zik7DQo+ID4gLSAgICAgICBrdmZyZWUodWJ1Zi0+b2Zmc2V0cyk7DQo+ID4gLSAgICAgICBr
dmZyZWUodWJ1Zi0+Zm9saW9zKTsNCj4gPiArICAgICAgIGt2ZnJlZSh1YnVmLT5wYWdlcyk7DQo+
ID4gIH0NCj4gPg0KPiA+ICBzdGF0aWMgdm9pZCByZWxlYXNlX3VkbWFidWYoc3RydWN0IGRtYV9i
dWYgKmJ1ZikNCj4gPiBAQCAtMzQ0LDggKzMyMSw4IEBAIHN0YXRpYyBsb25nIHVkbWFidWZfcGlu
X2ZvbGlvcyhzdHJ1Y3QgdWRtYWJ1Zg0KPiAqdWJ1Ziwgc3RydWN0IGZpbGUgKm1lbWZkLA0KPiA+
ICAgICAgICAgICAgICAgICB1YnVmLT5waW5uZWRfZm9saW9zW25yX3Bpbm5lZCsrXSA9IGZvbGlv
c1tjdXJfZm9saW9dOw0KPiA+DQo+ID4gICAgICAgICAgICAgICAgIGZvciAoOyBzdWJwZ29mZiA8
IGZzaXplOyBzdWJwZ29mZiArPSBQQUdFX1NJWkUpIHsNCj4gPiAtICAgICAgICAgICAgICAgICAg
ICAgICB1YnVmLT5mb2xpb3NbdXBnY250XSA9IGZvbGlvc1tjdXJfZm9saW9dOw0KPiA+IC0gICAg
ICAgICAgICAgICAgICAgICAgIHVidWYtPm9mZnNldHNbdXBnY250XSA9IHN1YnBnb2ZmOw0KPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgIHVidWYtPnBhZ2VzW3VwZ2NudF0gPSBmb2xpb19wYWdl
KGZvbGlvc1tjdXJfZm9saW9dLA0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHN1YnBnb2ZmID4+IFBBR0VfU0hJRlQpOw0KPiA+ICAgICAgICAgICAg
ICAgICAgICAgICAgICsrdXBnY250Ow0KPiA+DQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAg
aWYgKCsrY3VyX3BnY250ID49IHBnY250KQ0KPiA+DQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

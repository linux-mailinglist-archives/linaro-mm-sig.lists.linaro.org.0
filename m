Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AIBZOsVj5mkKvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:35:01 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3694E431821
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:35:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4910E3F9DC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:35:00 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
	by lists.linaro.org (Postfix) with ESMTPS id A6B163F69B
	for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Apr 2026 01:14:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=Ss+XoN0D;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (lists.linaro.org: domain of vivek.kasireddy@intel.com designates 192.198.163.13 as permitted sender) smtp.mailfrom=vivek.kasireddy@intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1775006079; x=1806542079;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=HtgVKmOVB2+1GpPJcN54lg6A+S2v+g/9ixHHhfIOjFk=;
  b=Ss+XoN0D9xCNzAwoTLCKqWOYgYoFPuHjB+kv15U3iB827SRH1zH5xwsZ
   7UeCyeAanCsVcie5lUPr2k9GryJ9cNAlRPDlaFahcnqA0Utbrro+9w7r7
   Esh0Kvtmh6lNzIj+v+8f1gkkQkx+yExLVYF9DlB8w3snmlpJyUlBcp+nS
   oInebNDNsXmG182PsLI9V0mOT7pjvBBD0R0RrMO/viHQuJ+lTiTu0f+/J
   jaViU5VTbNbWWr08JBQdz7KOHi4qFxH0z4OOGI/WBZL2KEMjJv8oyQbdY
   /pTxDtBuGiG7TajErmiBeRBbXBiG1lmLYMgbgy5RTYkW8NdbZIZymK5RP
   Q==;
X-CSE-ConnectionGUID: ci+H6elNTAOTca43280GYA==
X-CSE-MsgGUID: UYc8n48OR6aaKq7qgm2lww==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="78628956"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000";
   d="scan'208";a="78628956"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Mar 2026 18:14:37 -0700
X-CSE-ConnectionGUID: UskS0RJOTYG58g0FjAK+dg==
X-CSE-MsgGUID: DGNfCpilQTCVOw5hygfWwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000";
   d="scan'208";a="226510902"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
  by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Mar 2026 18:14:37 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 18:14:36 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 18:14:36 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.66) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 18:14:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T9CPWxiKvwxTFiZJPiqr/LZvoRXlERSaf3egfcjrDizwcqkObN9e55KBIUfFn2LWt4Pc8X7yCsCAJf+V4763nmTMLbs3pLonpycRnszHQCPSJa8oGN1xlS7DEi0secp81s8EaM/o5Xn9OP+JpymJgmCH6Ki5epPBhY550LAFQtgxmSdrcr6CEX7UXS1MJuccd1FuH6CJ6JtFSItTQXBtHMtl+cl1Nw6sEQ+QR8FOVDM1jCTQEUYdGVoaxwEWKArjHoef7Hwt4VzNZUfBv6UrQ1NmQrTIzzldFdhVHS/Ke8UnFvz6iZh4POxrI3a4SDmdK/vq5qH+l0BuGql1d0c97Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HtgVKmOVB2+1GpPJcN54lg6A+S2v+g/9ixHHhfIOjFk=;
 b=A3+4TO3fT66YZRFLBXuH7QaYF4IDlPmBGrbFNYpkObFMb0a1AkthOkd2o80y2fHB5oPIdsZpQ8uJYWyHIxR01Qaz1CzGiEn0d6OpniIEICUJKR1T/pvKyUo6WHM4EnKImx56G/1EHUYAn2lgMvrTrOn4V5do7MTHr+f7BZzICedTwmB3tzwAR+cNDPAe1nVOllC/WoZPumERUtshPHtcGRshRVIzhOKpczVWeylj2siDJXjLFnuokIwFgw1RryN+XOh/fDTKqnfxGqy2vNXrj61wgRvYBdqgQT0O3ODTdKp7Cf1DNYwyUu6Gk+XSIpGMdY3y0RD/k+EYCUrzVD6wuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7185.namprd11.prod.outlook.com (2603:10b6:208:432::20)
 by PH3PPF37A184CA6.namprd11.prod.outlook.com (2603:10b6:518:1::d15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Wed, 1 Apr
 2026 01:14:26 +0000
Received: from IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::9f37:cb81:5463:300e]) by IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::9f37:cb81:5463:300e%5]) with mapi id 15.20.9769.014; Wed, 1 Apr 2026
 01:14:26 +0000
From: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
To: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>
Thread-Topic: [PATCH] udmabuf: fix DMA direction mismatch in release_udmabuf()
Thread-Index: AQHctAo67aqV68mpy0SJuNvlJ8/kZLWyNgwggBX4VICAAPA1wA==
Date: Wed, 1 Apr 2026 01:14:26 +0000
Message-ID: <IA0PR11MB7185DDEA9CF27154EEEB9A0EF850A@IA0PR11MB7185.namprd11.prod.outlook.com>
References: <20260314232722.15555-1-mikhail.v.gavrilov@gmail.com>
 <CH3PR11MB7177D5538C726029D80BA6CEF841A@CH3PR11MB7177.namprd11.prod.outlook.com>
 <CABXGCsP+4pSyXHcOBokD5kSuVVa86xhjD+8OTy2woGavovhNKQ@mail.gmail.com>
In-Reply-To: <CABXGCsP+4pSyXHcOBokD5kSuVVa86xhjD+8OTy2woGavovhNKQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7185:EE_|PH3PPF37A184CA6:EE_
x-ms-office365-filtering-correlation-id: f2f3e0e0-18ac-4250-2d92-08de8f8c0447
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|366016|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: xWZzOQzN2C+9RzadGjgH5LwTA19UGvf0dHXPRK2ENGQMzpEPOJVmHwJVIY34rHONBpGSo9yUCxAspDqEU2ftUrn9/+NDw1dqWautLVPUCs6MOoZsXd59T3Svp6vRyiXbT59eQHgR6YGMqvamz15r/OhoDyAUU9+yzXBtbSnigMqCRGoFpLgKQkfCKwI6G0sL2E4Ey5i+8+JTXEg+NVCakMnIgXHrmfvNnK/d2ln8Rihxqby/LBWSltIIZh+rsap4dXkt6IZOG4x1eg3Ecmk+wv/4csL3rC487fDPtwOLcmcQDU9kUsHGggtGpvKkZpYHonKDkvD6BaeFalQHBDvl81DLHDO5A4DQnyXMAiW3H1xc1bue/R1N+794r/xfbgYqCCGDKdSUusSBC4DCN4uaqkr5wGMbprmu0tWrWCvMJbezdzS3urnZEIcs47bpMv2BwtLnmuE036FbvT8lb8zgh20XYp0hAJOUtRiPRl56A8LFpvqXrSprmNMaYlA4s1cxikJ1uTGmu/LwHsSXWgxGRhUXXdPnaOxSasHUjFx5PQMcVNbuoQ0OgDxYKrAH1DNRFPN40CdmWaBK3r+RBseXTGjUPNBj2OsJ0FTDaOyWTkSAmnL24ddnRv0P5w4TLcyZIkS6eUoqwyI+uoaHUuYfZC3iMsHBI2/r6gHENMyA0VKi+0A8OCI1FHVRJXURPlPvuLx4m4ZFsU3Zu4UUCo30jJjD5zw2WyRv47GU93AMZfLugQJbEmiDUyh42v+/QsPy4xv2LLrskX5Ern3w0y8qb/Lp0XPg4aJ1/mJXaL9raws=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR11MB7185.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(56012099003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aXFaY000eGRiWkFueVEzdEZYa28vL1lQMXRVM0lTSmZDU0V2dmNSdUVZbkZa?=
 =?utf-8?B?cER4dWRVamhjYnliSkxncGlqVU9MSnNibS9wREJlbHBaaC9XMjRtT3dsTUVK?=
 =?utf-8?B?ZkdmYW5GbzdGSVl5Qm5VbW5vMVQ5ZDJIR1pFYXViZUpXRk01MkZGazVuM2JQ?=
 =?utf-8?B?Sk9CcDRjQVBIVnBUcVQvbWtvMmJtOTcwd2U5MlhNVlpacWRINTA3VWhRSDNF?=
 =?utf-8?B?M1FVY2x2NzZBcUxkbGdEZWxSRTIvZDlIeHVzbXcrZmhYUnBCdzVCUWVla3dx?=
 =?utf-8?B?WjRmbDlnNnBPbERHdFF3RFRBdXBhQkFHZmdjZWUvaHJXSjlma21nRXJPQ0dN?=
 =?utf-8?B?Q1g5Q1F4ajBCSGljK1BtSkJVaUh4amxEN003UDFLOHFrc0g0ZEpYTitVQTcw?=
 =?utf-8?B?T2xsRHBhRk1WbGZvRFRiRCtsU0F5Q2oxbWQrZURVSmp3aEd0SS9FdUFMTkp6?=
 =?utf-8?B?ZG5rZVMrbk5SNXQ3NHVHZGdiSVZGV0FBL0R4dnJnM25YNVcwdWVRTFJoazdz?=
 =?utf-8?B?eE5LdTFEaGdJc050bHp4aHdvMzBnQWFGL2IwMXRXaEZoN292VTlBVE15ZThm?=
 =?utf-8?B?bDJEc2NkUlFka1UrN0VqbDc5THM2RHdtMFhEMzhUZjFjMXBUdThDMXczUjZ2?=
 =?utf-8?B?VXNqdWp0MlhNTDBKdUhveXI3TW95TzlxSHVtOTliL2xqMjBZSi95bCtEc1JI?=
 =?utf-8?B?VkRTRlZpOEorMGVGZjNwdDlFSGVEK1RVZHBLK2hDRXhTTlA5dnY5aW9tT3Fu?=
 =?utf-8?B?Y2E5b08xcEhSU2Z3c3pzR3R6U2tYRjV3b0ZHbGJZMDBXN0U5QTV0aDZlektz?=
 =?utf-8?B?TTNpM1dHQmZ2cXRKcElzUFFBL2M4THBDR05oTjBCcDVXbzB0ZXVUZDU1cGtD?=
 =?utf-8?B?TnR4QnRtazcwa2xDYzhxelVGNWlDazZwZm9Oc251TXBXTWRPbU51VENsWXc5?=
 =?utf-8?B?aVJPd3htNGxhVjVGWWNVVzlGRVcwK1RJTmJhM0orZXluQzJJMXF6ZmYxTS9l?=
 =?utf-8?B?b2tIMGNoUUlJS3FMK2wySlRRZ3VBdTNqeTZzbFdvUzYySjhpOHlDQkI4Qyti?=
 =?utf-8?B?Ty9kMEU5SjNDN0ZjeS9DeEdrUTFYTDJWVWJ5SjUwUGFpaVZlSitBWnRFM3Ez?=
 =?utf-8?B?WWpXK1Z4amgzRWpSdElha051elVQL040bi9RMjhwcHFDQzlaSEg1OWhXR1I4?=
 =?utf-8?B?UUg0TjkxUVg1QUswSFQ1U01kbmpmSldaZ21ucldGcHZlcWRsd1JmRUhVMEFB?=
 =?utf-8?B?ajhWZ1VaUVNITDJzRk9hY0gwa2RkbGpTZlZhTFNPQk5jUzZTcVhkQzlqeExR?=
 =?utf-8?B?SUdydGowREVrZ1BrZVB0N1YyT3ErWmVKL0MwUE5TRlpxQksrM0wzeW4rb1pl?=
 =?utf-8?B?UGczTm9yWGZmUUcwdG9hS0d5MnllOVhCU3kzRkhESFhMOHJLNXd0aHRWSkhk?=
 =?utf-8?B?c3R5Uy9kYjMxMFEzKzNZdGl0TEdCcTBTOGZxNjUrRWFqK1JHTHVFMnZMa0pU?=
 =?utf-8?B?bU93OWlZNFVOVkpMWEFMN1I4N1RUb3Vvd1V2ZXB6QUw2dENyRHZmL3JBZW9S?=
 =?utf-8?B?Y3ZDM0xlcnNkb1YwZU9uN0hoYkNkeHEzWFovNjEzdExNYnJ1aFpad2tFVWEz?=
 =?utf-8?B?YjVNTGhpUGpnc2doaWN2L29LUUV3SmFRTmZIaWJBcWtDTlMrKzFueldIUFN5?=
 =?utf-8?B?SzRPTkhVYVNmQXNFa0xLeW1IYWFnVTJrM1o5cUVCcjhrQk5BL05pWjd5T25W?=
 =?utf-8?B?UHQ4V0dFVGI0cXIrM1VqK25mRk1YVEh2cDZNQmJ1bzhpa3ltbFBCQWg5RzVV?=
 =?utf-8?B?ajc0clk4UnpqeFZGVmo2RERwb1c2dkVpUjdPT0t2NVdqbFNVVER2cm9zRURC?=
 =?utf-8?B?M2dhNEc1QjBySWk3YyttWFJSN0g3aDRLTUhnNnNMY0w3ZVRLRzJpaitHQXgr?=
 =?utf-8?B?cisrRStyb01abFYxSnhZc29NRXRhTmFNdk1lYlhjYWJUVlB1RHpyWHdPZUpW?=
 =?utf-8?B?WWp5dVRQYVQ3N0x3TkNPWVI3Q2d0L3EzRmlaWmg5V05DNjBmYlpXVWdiZ2cy?=
 =?utf-8?B?MSttVGE1NXRsRFNsS0tkQktUTjlzNENPc0ZUUTBSc3FPY3dCNE50djMrNW4w?=
 =?utf-8?B?dXhITUdSSFNyVitXNURrZ1FWTTR1N0o0MjZEOXFjN2VVVnpBazJTV08yMnY3?=
 =?utf-8?B?UkxjdVNQcHdQUGRYNGtKcHQvcTlvUjRNSHpvOWg5UWVMNEhaRTF1Tk9haUp6?=
 =?utf-8?B?VldZZTRkSXVKOXA3eWc1S1VyektBTHRWZHFzVFMwdTdjTnJRb084YTVjZ1VW?=
 =?utf-8?B?YzJGZjB2b2J0c0dWRDM5cDVrNkltclhXaXJVWkdzN1RKVDZSR0Jtdz09?=
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: u+6jqyAYBmjBIwbrJGHJqZf8vjRlplksEhDXsDMCI9EZ0iGDSWcYAqbUh0tRn8DLnmztwoVuVW1b0szyWrhfgZNjhPOBqGwbNfl2u5IEvOZ0Y1WBB40t9dHTlmDITBFUyRPmDvSNnEmLPb2yTeO7YPPXBZYIJurw9ph12BN0flMV9zHzj0fjH1GNBDgHnpBiCg+F0hfTwnTaQfpsWtmq/ZfvbXIuMm/j+X5PiM0qbf0RFg5OHf0yyw66VU1Rk2TvXm7b+Y4TTkeE4rt1T2ofULS51BaNMklGihTD27ROTaHiY3u17E92ZXDU8Ze/n20r59TyVqQ3RewAANtXgJAbEA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f2f3e0e0-18ac-4250-2d92-08de8f8c0447
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2026 01:14:26.2834
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1Z6l/W9DSvy3jeunj4EPIBnnzY/vzcLaQb1YWcng6rGEq1gVxRIQmqfeDr7r4OdH8gxSHixBBryR06qfEEoLTh2WxdA3ENHcXEpyz/xUPqQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF37A184CA6
X-OriginatorOrg: intel.com
X-Spamd-Bar: -----
X-MailFrom: vivek.kasireddy@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XRQAREB4ZMVUE6CYLROQJ5SHM43MM3XB
X-Message-ID-Hash: XRQAREB4ZMVUE6CYLROQJ5SHM43MM3XB
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:33:37 +0000
CC: "kraxel@redhat.com" <kraxel@redhat.com>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "christian.koenig@amd.com" <christian.koenig@amd.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "stable@vger.kernel.org" <stable@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] udmabuf: fix DMA direction mismatch in release_udmabuf()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XRQAREB4ZMVUE6CYLROQJ5SHM43MM3XB/>
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
	DATE_IN_PAST(1.00)[472];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TO_DN_SOME(0.00)[];
	GREYLIST(0.00)[pass,meta];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,intel.com:email,IA0PR11MB7185.namprd11.prod.outlook.com:mid];
	DKIM_TRACE(0.00)[intel.com:-];
	RCPT_COUNT_SEVEN(0.00)[8];
	FROM_NEQ_ENVFROM(0.00)[vivek.kasireddy@intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.092];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 3694E431821
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGkgTWlraGFpbCwNCg0KPiBTdWJqZWN0OiBSZTogW1BBVENIXSB1ZG1hYnVmOiBmaXggRE1BIGRp
cmVjdGlvbiBtaXNtYXRjaCBpbg0KPiByZWxlYXNlX3VkbWFidWYoKQ0KPiANCj4gT24gVHVlLCBN
YXIgMTcsIDIwMjYgYXQgMTA6NDLigK9BTSBLYXNpcmVkZHksIFZpdmVrDQo+IDx2aXZlay5rYXNp
cmVkZHlAaW50ZWwuY29tPiB3cm90ZToNCj4gPg0KPiA+IFJldmlld2VkLWJ5OiBWaXZlayBLYXNp
cmVkZHkgPHZpdmVrLmthc2lyZWRkeUBpbnRlbC5jb20+DQo+ID4NCj4gPiBUaGFua3MsDQo+ID4g
Vml2ZWsNCj4gPg0KPiANCj4gSGkgR2VyZCwNCj4gDQo+IEdlbnRsZSBwaW5nIG9uIHRoaXMgcGF0
Y2guIEl0IGhhcyBWaXZlaydzIFJldmlld2VkLWJ5IGFuZCBmaXhlcyBhDQo+IERNQS1BUEkgd2Fy
bmluZyBwcmVzZW50IHNpbmNlIHY1LjUuDQpUaGlzIHBhdGNoIGlzIGFscmVhZHkgaW4gZHJtLW1p
c2MtbmV4dC4gSSBoYXZlIHB1c2hlZCBpdCBhIGRheSBhZ28uDQoNClRoYW5rcywNClZpdmVrDQoN
Cj4gDQo+IC0tDQo+IEJlc3QgUmVnYXJkcywNCj4gTWlrZSBHYXZyaWxvdi4NCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

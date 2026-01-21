Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GI3oOrYM4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:22:14 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 74EA2411A3C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:22:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3C3C9409AA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:22:13 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
	by lists.linaro.org (Postfix) with ESMTPS id 510C23F7BA
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 17:18:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=IeJypeR5;
	spf=pass (lists.linaro.org: domain of matthew.brost@intel.com designates 192.198.163.12 as permitted sender) smtp.mailfrom=matthew.brost@intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1769015888; x=1800551888;
  h=date:from:to:cc:subject:message-id:references:
   content-transfer-encoding:in-reply-to:mime-version;
  bh=lwL1qv8BFrOUrq7fJbLbRqbPtPfipubEoOj6C40GtAM=;
  b=IeJypeR5yCP2uQ+fZYvPeWIniiHZnVJmuOCtyOCOHwMeCU/j4foUUa3h
   i0mvHAdM6ms0GYLCKgvIFrdgMfAKFITSRx8tAHwxUi4CO/33ArmCXCB/f
   lPWdnjxC0jdQ74YK2I0hkqMQXhK0QitkKjHIPnBRyTm97J1DqTd/PpTV4
   1fyUar0xGGiChJDO6OAQxFcmop9557xkwi3u+YE489+8QFdB8kgNh/9dy
   YC7o7ZNRtEmxGHLazKx2c8+bnbDBlXR21qZO4/wsNw89fs+SehmSf/qWJ
   vtTQ9BiuG+zks2rE+MCAsgVw1xt0CPVLpdgZfG91jqKllrp3oUJJ1ZiZ5
   g==;
X-CSE-ConnectionGUID: YHLW65imRGu+DzCdB/NQuw==
X-CSE-MsgGUID: IztWaqGWRX2R2tobYaQJ1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="74111604"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800";
   d="scan'208";a="74111604"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jan 2026 09:18:07 -0800
X-CSE-ConnectionGUID: //V6y56UReCQRE+Lk/xWKQ==
X-CSE-MsgGUID: VfE/fjMaRSyJCU+qCinUWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800";
   d="scan'208";a="205756618"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
  by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jan 2026 09:18:07 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 09:18:06 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 21 Jan 2026 09:18:06 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.63) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 09:18:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qU6g5KD+eUmhJvIWTPukcCasV0VvAiZjRGV96NEfiY4u10pqIJGQFSyn54KEH7UtwMQSJqkJrV2U25I/vQouMttIppiqhbD6UIZzw53Jwxv/cf9aQeRx/xMXBU8AkWRYrutYVHHS0lwAXvL/474l7CErZioTHRFnzqQgQfbiS4T9CUPit5wdNNTmwL+hx3gMytRHIYZgez3ZhpPs7NM8OFMogXQJgrgrHghAYr3A4eGvjDanPD8Z6MTxHybZcN58hT+f3eLcBjzyvd48yZsqMreG51EZaeG2SD93LZz15pis8cuAVgdovGfKnP/TulwTBJttkvMP9swZnmmSU4lalQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QSrw0juhLsxCgUPMHv7Geyq9KNZP6HIzd62D2rgpQSA=;
 b=M14SzGpR6eawrRSZ9sPrn5aNG8GhZFEded4YTw1rRN85oHeu4sKVoob3PQNG+6KY5I6LU+ZN7RqmI8M2kgL2cw3+6irbLLGcGN5zCWhWjKCeAaSp3w/EO4cQ5JBZphfXEP9eWvI28E3NKf+WE6pTa6R2xmcXFx2B83PXQxuiNsGiluI9GoBNQBPSWtf+TDmMPYSxTr7mZZ4v0Io9x8GJ2aFdTUkGSXen5+xpLD3+iA6N5sLAOzkEK/UweT44mlg8ntQ9/DtSZofZsDXzIu42g78W2xmZnv2c89urUFlLjixtKrhLWSMCH38LaimQx8jdilltJMSxd2mdpXmhI71wMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by PH3PPF179F31853.namprd11.prod.outlook.com (2603:10b6:518:1::d0b) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Wed, 21 Jan
 2026 17:18:03 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332%7]) with mapi id 15.20.9456.015; Wed, 21 Jan 2026
 17:18:03 +0000
Date: Wed, 21 Jan 2026 09:18:00 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <aXEKSKOwUk3soU3k@lstrano-desk.jf.intel.com>
References: <20260120-dmabuf-revoke-v3-0-b7e0b07b8214@nvidia.com>
 <20260120-dmabuf-revoke-v3-6-b7e0b07b8214@nvidia.com>
 <aW/pQmOO8komCgOK@lstrano-desk.jf.intel.com>
 <015b25e6-cfe1-4110-963f-5f8dc4720d1b@amd.com>
 <20260121104451.GB13201@unreal>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20260121104451.GB13201@unreal>
X-ClientProxiedBy: PH1PEPF0001330A.namprd07.prod.outlook.com
 (2603:10b6:518:1::19) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|PH3PPF179F31853:EE_
X-MS-Office365-Filtering-Correlation-Id: 9faf0def-f07d-42d9-9263-08de59110913
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VFF4d0l6NEZSKzc1RUN4L2FLTFVCcmU1ckpzQmk4bml0NjBGQzd0RkYveVBl?=
 =?utf-8?B?enJ6ZnhPU1ZYdm1iWGZhUXIwcmNwcERvd1R4U2pMSzZhallsWmE5c3owL05n?=
 =?utf-8?B?aG82TVpZMmVUY0ZwNlF3dVdqaXludC85YzZQMGtrQTl1Y3NXalJCek9DMkUz?=
 =?utf-8?B?QTYzOVZFZmhqczlBSE8yVkFaN21sdzZSTWlteFJCdlRCaloxTWI2UC83U1pO?=
 =?utf-8?B?NjMzMHlpMmdZRTF5UFQzejduRk9weWZYYTlQTXRSWEd2NkpFZ0ZIaG5PN1Ru?=
 =?utf-8?B?T3NPOTZlV0RkT1QrOXh3UHJJeGhHTHVoNTRJdkNEa2g1UXhEcnNKUkJTS3VL?=
 =?utf-8?B?OWFIMDBZMmRpa0dnSlgyS3QxTWJPaTYzOVZTa3ZXU1FvY05ZcVJqTmtBdnJF?=
 =?utf-8?B?S1dMOTMzQ3RkRWZEdVNvUlpORTliQlVTVkdZTW9VU3ZvTFNWMmUyeXZZYUlx?=
 =?utf-8?B?OWVhMXIvelY0VzdIZFdFYmpYdzNhWVpYaW8vc0FuSzJwekkrVVAzVzEyYWlI?=
 =?utf-8?B?Q1RVbEd3WVZXaVZ1dGd0UFE5RUlGTjhTa3hNRTU1VmVkQWV3WHhWVnJzMVV4?=
 =?utf-8?B?akdSdjg5WExFTHdYem9JUndDZEhCUHJ4Vmc4NE4rL2lFQldjTE1ha1NuNWlM?=
 =?utf-8?B?OEhwdnVWQ0lPZTEweFBBeDJ4dkUrdDE3ZzZwY3c1RHFsWGJlLzlyK2s2UGNP?=
 =?utf-8?B?YUk0ekhBMUNMbjk1Q2x6WnJ4YXhnU0hPSk5vUE1kemVvMDRnVWxtTTIxZU5k?=
 =?utf-8?B?c1NvemJJaDhDYUlOSDF6RVpJUUZCZVRkTGxROGJ5MXNScURRMTN3Ym1ib0FG?=
 =?utf-8?B?WmttM0VyNFQwejNGa3owZXY4ZTZOY29UZHpjaHdLWUJoVytNNUNvYUVaL0RZ?=
 =?utf-8?B?VGdGNHhibkcxZ2RiR2pvc1liT09CTXBXaFlOb1p4Z3kwU3k5cFJ0NkkvNmNW?=
 =?utf-8?B?ckltUGlLLzdCdnlZaEw5V3JkazdDemhaU2Z2Y3hzQk9wWHI3ZGh5QUNxTGVS?=
 =?utf-8?B?MVJMN3RIOTlhNFBROHErb0VFVWdhNXdObXBwT2VuSk53NTRDVE92cE5QVWdk?=
 =?utf-8?B?MU9uTTN2VEYvTmZzNnptNjlmaGFvTFUvN3gxYkRrb2xJekJEcVp4aHBlNmll?=
 =?utf-8?B?WEFYZ2llMFU1WE1CZ1ozaE5kT1l3ekpTM3RVTG8wNnFCeXhxN1k2SDVZYUxS?=
 =?utf-8?B?dzh4RjREQmxMQW9GUTQwYmRtSDV0c1NCeEE5enNIb0FGTGNHZ0FWcTEybS8w?=
 =?utf-8?B?ZHJvY0E3c1FPRGxuUExFdEVGN0hCaHljb0pDMVFYdEZST0lDV2h5YTFHZjVH?=
 =?utf-8?B?YngvWnB5dEl0b0RocEtZN1NwZC91eG5WVURzYkQ3Q2toa3BGQWxva3BRYzhj?=
 =?utf-8?B?YzZUZkZTeGlNRm9zSVhQbitmd3MrVHhtaWluWXpHTFhma3dCcGJPcm5weEhL?=
 =?utf-8?B?V0NacGtUcmc2aHRqL0NaOHJyU3ZWZGtNZWRmMkxOaFdiOWl0K3ZqOW1hZmVQ?=
 =?utf-8?B?YVRwakwxV0laa0JidUVXZFR1ZFVKYW1sZUJncWRVYmZKcWJyQ2JrVkZ3Vyt3?=
 =?utf-8?B?ZHBzU1piM244dTk2WVJSUkdQYmN0Z1pTQUM1eGdQcW5Uakc0blFvVFZIaW9i?=
 =?utf-8?B?MllZd0dNT1p0QmFDaTUrUS9NR05Nazg1MzBaRGQrVVQ2ZWFxamZNR3l0OVUy?=
 =?utf-8?B?YUxSVG5OMmZvUjNGYXduaU9kMGJ5YndBNHJlL1NwR1NFd0FxeVJCTDNxaEVM?=
 =?utf-8?B?cjVPVHF1NDQ5cnExaVpvejhZMlBPU2tSYkV3TG5NRjd4TEZTUlN0cE1pSlVI?=
 =?utf-8?B?ek1iN25aSU5QQXNoWmowQy9XeURRK3R0SktzVHBpcFBpTjArVjFObXJLanZO?=
 =?utf-8?B?aGpQMmk1ekJnb0dVNklIa283ZDdiN05SQTVYREh3bXI4clFBTVhFdVlHTjdj?=
 =?utf-8?B?ZUcyVStEd1M3OHNxSjFOdE92d0pjMnlQMWlLQk45aXp3cmZMaU9ldG9XQUhN?=
 =?utf-8?B?RXlIUG15R1Z4UDUwYTQ5Sy80WXdWclZTYnhLbkhqZFcwQVNOSUNEdTJNNUEz?=
 =?utf-8?B?azRmQ3N1Um5weGRDRkR4VkpRUVplK3htSnZ3OE14Z0JqSzgwTlpmcEVBM2di?=
 =?utf-8?Q?PV6M=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR11MB6522.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(7416014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZVRpOFNvcmVOVElzc01aSnlQUGEzd0VVendsa2FPZithSXpKaUJuTmcrQnBH?=
 =?utf-8?B?WXpQME00TXN3YTF5ZGJiaG9NejVyVlp4V3RxeHNSSmIxOVd4cTZFRVZqVGlX?=
 =?utf-8?B?TFBEay9YZXFzZVVtRk5zc0dzWTV3eTB1aEhLbVZ2SEdKL3UrdmJYUUlMRFc0?=
 =?utf-8?B?ZlljTWVvTlROMkpQbVpld2NlNzlZSkVyY2o5ZWs5dTFsSys3MXR0Uk9mUnJ6?=
 =?utf-8?B?d2ZML2thWGRSdDAyUWxSNFdQY1ZoUVF6TnNUdWt3SVRkVkkzV1ZoVlBaaGtC?=
 =?utf-8?B?Rnk5bktKUnY1NnI0Q3JuWWZ4MUxYRExzZWZyampOWktCOVF4SXU1NGxYM2VK?=
 =?utf-8?B?MDExTzl0Q2YrOGFaK3BDSkZBWXppMFMxMWNWWEp5NkJvTC9RNk1Iak0ybDJJ?=
 =?utf-8?B?WGlVdTdwb2V2TW1sNWY5VFlHbk1ERGdSSXozdDZkYS83SWxqejJqSjA2bDBD?=
 =?utf-8?B?cit1WEhkdWVlY0JVZDFsVUc1Zy9ZWGVxbGxiaHdJWTRQTjJFWlQrbU1JUTMy?=
 =?utf-8?B?S3FEVHd4Z21aR2E0RFIrZE5NQ05EMWlib3BjeVBtbUNrUWJGamhnbXhhaitB?=
 =?utf-8?B?YnRiNXRVd2tJclB2aFZlQ09tU2lnNkJvNzlyTDJXMUk4WDFHNnlsWmpSQ0Qy?=
 =?utf-8?B?UmtSQXhvdDM4QTNGekpOQTNrbWpaa3R0cDd5cXRycFRBK0tJelNXS3pYWFVq?=
 =?utf-8?B?d2VoU0RJZWtTY0tpbllrUlJoY0s4U29mWExiamIzTUtsWGNCMkUvZ1JVeUZR?=
 =?utf-8?B?M2ZBZkl5aTZjV2hFY2pGRnBqREhaL3k0TzlVUzZQVWppWXpsZHpwV2NKT3ZX?=
 =?utf-8?B?MWN6ZGQzSGFncmVnN1Y4UjBjN2VOQ3AwcjNXK0dMUThwcTFYOU9xa2VIOXV0?=
 =?utf-8?B?MU56TXJlellTeHkyQkgxOXgrWXZRa2phcTBkS0VEMXNRTFBDNVhCd2JMdGxN?=
 =?utf-8?B?Z2VobHJMRDRnTGZ3cllqQzRyclBtaWVmanhMMHlLWDVwK3lGc3pHbDM5WE4w?=
 =?utf-8?B?enh4cW5GQmJ5UVhlMFFaU2FnWU52cEVGbGJZdkJrRmZ3dFVUWWtMVCtBLzlt?=
 =?utf-8?B?S0FnWEE4VmltYmZtS3NidFNiZHo2Vnp2T3ZwR3QwVVBQNkRPaWVPMmJrT0ts?=
 =?utf-8?B?M0FYRFc5U3YwY0VBUlhYendxNmUwYmJkQ3hBUHYrai93WFhVdmIyOThhVHQ0?=
 =?utf-8?B?LzFmOXRlbFkvQ0oxRDhCTlF1V2NMRzVvZ0l2QVhPbUdKdGl2clV0MngzS3Fn?=
 =?utf-8?B?OEFqUGE1eGlzR3lTTmJ3ek14NnJ1WjVrZmExSlR6SEg2cEQwRExOMnlrYnda?=
 =?utf-8?B?RXR3QmhqbC9hU291V2VRZmQ0L2RzWFE3QmVYWkZCTUN2Nyt3OVRaVGFQT2du?=
 =?utf-8?B?U1Bqem90VW9tU2I1djhGQVFCSnN0d2g0b3BLTFRKeTR1a1YrZG56LzUvUkdE?=
 =?utf-8?B?RGFqUnJQUGRRVkRmVm1VRWFiemdNU3FKSnRHMCtmeXh4NEV3SFpCOTRPbVJG?=
 =?utf-8?B?c2lVUkhvTXVCNmRsc1pydzRDdTBFdnUrVFUwTThHUFBxZzFVWlR0bWVUMjV4?=
 =?utf-8?B?Q0tJLzJoaWxPMU9yTzZSTEx3cmV4dlhTN3RiY1hwd3c4U1VmMkNXU3N4aGs2?=
 =?utf-8?B?ZVUwaVdjcFFwSW5EUEZYQjY1N1VVY0x2VldXbG5URTU1cUwvcnpTUEs1b2xB?=
 =?utf-8?B?V3MyWW50YlQyRi9CZ3l0UkF6YWZmclh5WDk5TkhlYm0vdHVMWGIvSVkyYXBi?=
 =?utf-8?B?cG82VFlIclh0cHBXZ20rS2tCdU9UTnd1MUVvdWt3N1BpeXJDUHlxNERwaGhW?=
 =?utf-8?B?K2kwUDVRNzlVajVQMHNaZ1gxTlNOWVIwdDZQZ1B1ZmNYeE9SSTNjdWVKbktJ?=
 =?utf-8?B?WGNxVGg5SWhhRnpqNHpXeXE4N3NiUVN3UHhyeE9tRW9qYWpSeUo1UjMrSHZI?=
 =?utf-8?B?SDJmK3JpN3EwMHB1K0I5bFBtK1kxVFZNVkJsRExZQnRQYkVWdENBY0Myd1dw?=
 =?utf-8?B?eGdDdDl0aXVHZ1hJaE9kU2hiLzhGTjVqcWk4U1pGWVhoT1dnYUlpbVQ5SzB5?=
 =?utf-8?B?QzFVN25Uemh1MEZoaFN1bHdnbUpQendCY2w0L096Wm1YdlZKMURwaTJTNFM1?=
 =?utf-8?B?WitZTFpXSUJVMXRwTDdBYkFpVnNFUUk5amNFczFqOUFjQTErYndVbU0zcDgy?=
 =?utf-8?B?aVM1SWxVMzZ2anhmRk9iWjBUcEVUWEszZjNjTDhXbThOcW1waHRvaVpaWVFF?=
 =?utf-8?B?NUJyeFBwNm1Gc29UZ1d2eFY3TGRVUnVXL0NnZ1hTQmdGeDlsT1liMTM5cThR?=
 =?utf-8?B?cmdIa0FNSE9JOS9XK2dIajNKQUtJejVib1ZxcCtlSnBoNDNueUkrRTAxN1dR?=
 =?utf-8?Q?UN0S5f2Pl8HUBwIE=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9faf0def-f07d-42d9-9263-08de59110913
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2026 17:18:03.6257
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Mr0YAPsl985aV9gCmQPLpuLY5e7oG6gwshVz9HqRmvH0W0x1mj01uGs9Ok4C8L2HsUSu+hgbhJTPrAWhta48oQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF179F31853
X-OriginatorOrg: intel.com
X-Spamd-Bar: --------
X-MailFrom: matthew.brost@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: X6KSEF2TP5CXKSQXWYYRARVZXUNJGUZP
X-Message-ID-Hash: X6KSEF2TP5CXKSQXWYYRARVZXUNJGUZP
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:12:18 +0000
CC: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-med
 ia@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 6/7] vfio: Wait for dma-buf invalidation to complete
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/X6KSEF2TP5CXKSQXWYYRARVZXUNJGUZP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.69 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	DATE_IN_PAST(1.00)[2039];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lstrano-desk.jf.intel.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,nvidia.com:email];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[35];
	FREEMAIL_CC(0.00)[amd.com,linaro.org,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.860];
	FROM_NEQ_ENVFROM(0.00)[matthew.brost@intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 74EA2411A3C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gV2VkLCBKYW4gMjEsIDIwMjYgYXQgMTI6NDQ6NTFQTSArMDIwMCwgTGVvbiBSb21hbm92c2t5
IHdyb3RlOg0KPiBPbiBXZWQsIEphbiAyMSwgMjAyNiBhdCAxMTo0MTo0OEFNICswMTAwLCBDaHJp
c3RpYW4gS8O2bmlnIHdyb3RlOg0KPiA+IE9uIDEvMjAvMjYgMjE6NDQsIE1hdHRoZXcgQnJvc3Qg
d3JvdGU6DQo+ID4gPiBPbiBUdWUsIEphbiAyMCwgMjAyNiBhdCAwNDowNzowNlBNICswMjAwLCBM
ZW9uIFJvbWFub3Zza3kgd3JvdGU6DQo+ID4gPj4gRnJvbTogTGVvbiBSb21hbm92c2t5IDxsZW9u
cm9AbnZpZGlhLmNvbT4NCj4gPiA+Pg0KPiA+ID4+IGRtYS1idWYgaW52YWxpZGF0aW9uIGlzIHBl
cmZvcm1lZCBhc3luY2hyb25vdXNseSBieSBoYXJkd2FyZSwgc28gVkZJTyBtdXN0DQo+ID4gPj4g
d2FpdCB1bnRpbCBhbGwgYWZmZWN0ZWQgb2JqZWN0cyBoYXZlIGJlZW4gZnVsbHkgaW52YWxpZGF0
ZWQuDQo+ID4gPj4NCj4gPiA+PiBGaXhlczogNWQ3NDc4MWViYzg2ICgidmZpby9wY2k6IEFkZCBk
bWEtYnVmIGV4cG9ydCBzdXBwb3J0IGZvciBNTUlPIHJlZ2lvbnMiKQ0KPiA+ID4+IFNpZ25lZC1v
ZmYtYnk6IExlb24gUm9tYW5vdnNreSA8bGVvbnJvQG52aWRpYS5jb20+DQo+ID4gPj4gLS0tDQo+
ID4gPj4gIGRyaXZlcnMvdmZpby9wY2kvdmZpb19wY2lfZG1hYnVmLmMgfCA1ICsrKysrDQo+ID4g
Pj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykNCj4gPiA+Pg0KPiA+ID4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL3ZmaW8vcGNpL3ZmaW9fcGNpX2RtYWJ1Zi5jIGIvZHJpdmVycy92Zmlv
L3BjaS92ZmlvX3BjaV9kbWFidWYuYw0KPiA+ID4+IGluZGV4IGQ0ZDBmN2QwOGM1My4uMzNiYzZh
MTkwOWRkIDEwMDY0NA0KPiA+ID4+IC0tLSBhL2RyaXZlcnMvdmZpby9wY2kvdmZpb19wY2lfZG1h
YnVmLmMNCj4gPiA+PiArKysgYi9kcml2ZXJzL3ZmaW8vcGNpL3ZmaW9fcGNpX2RtYWJ1Zi5jDQo+
ID4gPj4gQEAgLTMyMSw2ICszMjEsOSBAQCB2b2lkIHZmaW9fcGNpX2RtYV9idWZfbW92ZShzdHJ1
Y3QgdmZpb19wY2lfY29yZV9kZXZpY2UgKnZkZXYsIGJvb2wgcmV2b2tlZCkNCj4gPiA+PiAgCQkJ
ZG1hX3Jlc3ZfbG9jayhwcml2LT5kbWFidWYtPnJlc3YsIE5VTEwpOw0KPiA+ID4+ICAJCQlwcml2
LT5yZXZva2VkID0gcmV2b2tlZDsNCj4gPiA+PiAgCQkJZG1hX2J1Zl9tb3ZlX25vdGlmeShwcml2
LT5kbWFidWYpOw0KPiA+ID4+ICsJCQlkbWFfcmVzdl93YWl0X3RpbWVvdXQocHJpdi0+ZG1hYnVm
LT5yZXN2LA0KPiA+ID4+ICsJCQkJCSAgICAgIERNQV9SRVNWX1VTQUdFX0tFUk5FTCwgZmFsc2Us
DQo+ID4gPj4gKwkJCQkJICAgICAgTUFYX1NDSEVEVUxFX1RJTUVPVVQpOw0KPiA+ID4gDQo+ID4g
PiBTaG91bGQgd2UgZXhwbGljaXRseSBjYWxsIG91dCBpbiB0aGUgZG1hX2J1Zl9tb3ZlX25vdGlm
eSgpIC8NCj4gPiA+IGludmFsaWRhdGVfbWFwcGluZ3Mga2VybmVsLWRvYyB0aGF0IEtFUk5FTCBz
bG90cyBhcmUgdGhlIG1lY2hhbmlzbQ0KPiA+ID4gZm9yIGNvbW11bmljYXRpbmcgYXN5bmNocm9u
b3VzIGRtYV9idWZfbW92ZV9ub3RpZnkgLw0KPiA+ID4gaW52YWxpZGF0ZV9tYXBwaW5ncyBldmVu
dHMgdmlhIGZlbmNlcz8NCj4gPiANCj4gPiBPaCwgSSBtaXNzZWQgdGhhdCEgQW5kIG5vIHRoYXQg
aXMgbm90IGNvcnJlY3QuDQo+ID4gDQoNCisxIG9uIERNQV9SRVNWX1VTQUdFX0JPT0tLRUVQLCBJ
IHJlYXNvbmVkIHdlIGhhdmUgdG8gd2FpdCBmb3IgYWxsIGZlbmNlcw0KYWZ0ZXIgSSB0eXBlZCB0
aGUgb3JpZ2luYWwgcmVzcG9uc2UuIEZvciBleGFtcGxlIHByZWVtcHQgZmVuY2VzIEdQVQ0KZHJp
dmVycyBhcmUgaW4gQk9PS0tFRVAgd2hpY2ggeW91J2QgY2VydGFpbmx5IGhhdmUgdG8gd2FpdCBv
biBmb3IgbW92ZQ0Kbm90aWZ5IHRvIGNhbGxlZCBjb21wbGV0ZS4gTGlrZXdpc2UgYSB1c2VyIGlz
c3VlZCB1bmJpbmQgb3IgVExCDQppbnZhbGlkYXRpb24gZmVuY2Ugd291bGQgdHlwaWNhbGx5IGJl
IGluIEJPT0tLRUVQIGFzIHdlbGwsIHdoaWNoIGFnYWluDQp3b3VsZCBuZWVkIHRvIGJlIHdhaXRl
ZCBvbi4NCg0KTWF0dA0KDQo+ID4gVGhpcyBzaG91bGQgYmUgRE1BX1JFU1ZfVVNBR0VfQk9PS0tF
RVAgc28gdGhhdCB3ZSB3YWl0IGZvciBldmVyeXRoaW5nLg0KPiANCj4gV2lsbCBjaGFuZ2UuDQo+
IA0KPiA+IA0KPiA+IFJlZ2FyZHMsDQo+ID4gQ2hyaXN0aWFuLg0KPiA+IA0KPiA+ID4gDQo+ID4g
PiBZZXMsIHRoaXMgaXMgcHJvYmFibHkgaW1wbGllZCwgYnV0IGl0IHdvdWxkbuKAmXQgaHVydCB0
byBzdGF0ZSB0aGlzDQo+ID4gPiBleHBsaWNpdGx5IGFzIHBhcnQgb2YgdGhlIGNyb3NzLWRyaXZl
ciBjb250cmFjdC4NCj4gPiA+IA0KPiA+ID4gSGVyZSBpcyB3aGF0IHdlIGhhdmUgbm93Og0KPiA+
ID4gDQo+ID4gPiAgCSAqIC0gRHluYW1pYyBpbXBvcnRlcnMgc2hvdWxkIHNldCBmZW5jZXMgZm9y
IGFueSBhY2Nlc3MgdGhhdCB0aGV5IGNhbid0DQo+ID4gPiAJICogICBkaXNhYmxlIGltbWVkaWF0
ZWx5IGZyb20gdGhlaXIgJmRtYV9idWZfYXR0YWNoX29wcy5pbnZhbGlkYXRlX21hcHBpbmdzDQo+
ID4gPiAgCSAqICAgY2FsbGJhY2suDQo+ID4gPiANCj4gPiA+IE1hdHQNCj4gPiA+IA0KPiA+ID4+
ICAJCQlkbWFfcmVzdl91bmxvY2socHJpdi0+ZG1hYnVmLT5yZXN2KTsNCj4gPiA+PiAgCQl9DQo+
ID4gPj4gIAkJZnB1dChwcml2LT5kbWFidWYtPmZpbGUpOw0KPiA+ID4+IEBAIC0zNDIsNiArMzQ1
LDggQEAgdm9pZCB2ZmlvX3BjaV9kbWFfYnVmX2NsZWFudXAoc3RydWN0IHZmaW9fcGNpX2NvcmVf
ZGV2aWNlICp2ZGV2KQ0KPiA+ID4+ICAJCXByaXYtPnZkZXYgPSBOVUxMOw0KPiA+ID4+ICAJCXBy
aXYtPnJldm9rZWQgPSB0cnVlOw0KPiA+ID4+ICAJCWRtYV9idWZfbW92ZV9ub3RpZnkocHJpdi0+
ZG1hYnVmKTsNCj4gPiA+PiArCQlkbWFfcmVzdl93YWl0X3RpbWVvdXQocHJpdi0+ZG1hYnVmLT5y
ZXN2LCBETUFfUkVTVl9VU0FHRV9LRVJORUwsDQo+ID4gPj4gKwkJCQkgICAgICBmYWxzZSwgTUFY
X1NDSEVEVUxFX1RJTUVPVVQpOw0KPiA+ID4+ICAJCWRtYV9yZXN2X3VubG9jayhwcml2LT5kbWFi
dWYtPnJlc3YpOw0KPiA+ID4+ICAJCXZmaW9fZGV2aWNlX3B1dF9yZWdpc3RyYXRpb24oJnZkZXYt
PnZkZXYpOw0KPiA+ID4+ICAJCWZwdXQocHJpdi0+ZG1hYnVmLT5maWxlKTsNCj4gPiA+Pg0KPiA+
ID4+IC0tIA0KPiA+ID4+IDIuNTIuMA0KPiA+ID4+DQo+ID4gDQo+ID4gDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

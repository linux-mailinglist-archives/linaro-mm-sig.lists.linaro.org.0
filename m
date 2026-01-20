Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GAjAM34M4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:21:18 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 740BB4119F3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:21:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9113C40518
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:21:17 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
	by lists.linaro.org (Postfix) with ESMTPS id C69063F912
	for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jan 2026 20:44:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=WMGCffTX;
	spf=pass (lists.linaro.org: domain of matthew.brost@intel.com designates 192.198.163.10 as permitted sender) smtp.mailfrom=matthew.brost@intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1768941900; x=1800477900;
  h=date:from:to:cc:subject:message-id:references:
   content-transfer-encoding:in-reply-to:mime-version;
  bh=Kc4liheu6Njnr241Fd1UiR4b26GUKb23sUtoQQGl79U=;
  b=WMGCffTXyTcOdOz/UoVFN3+CgIwiBKSwAvaUeV8kKJq+KHBSdj1dT4It
   ZRI8Nzzt/TB8rMpjLclWRntQRIF7uXCXR2jR185gqma3U42p9JzHm9LNN
   SS3uJTvVMBnTRd33FhEdsVEv4YSMQoA5wCCc7aJzJ22iZnQgPtM3yeBHY
   tVsg3XZ4en1q/gyjJa1ncdALvByQx5K4/91v/uakMcC1r/TJRPOnLPLud
   YVL8gjxu9Z3HDITkeWeOGt0MrrIOp1l5/iS4/JOTMe/w93TGMGyp8FoRu
   uXS/qKWS78LS5HWG8UBO0gVuIM/r+dLFOca9dVz2x9MoPW5mQTEfcUQWO
   g==;
X-CSE-ConnectionGUID: IUh7+wrXS9uYiPH1vS3K7A==
X-CSE-MsgGUID: mZf+wOk5QGOsA8cLXFJJlg==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="81538638"
X-IronPort-AV: E=Sophos;i="6.21,241,1763452800";
   d="scan'208";a="81538638"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Jan 2026 12:44:58 -0800
X-CSE-ConnectionGUID: 0vp2fGysToa5lme9xQsjWA==
X-CSE-MsgGUID: dcHRdWRCQ0qYK1TOGvh8jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,241,1763452800";
   d="scan'208";a="211239871"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
  by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Jan 2026 12:44:59 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 12:44:58 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 20 Jan 2026 12:44:58 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.30) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 12:44:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ORt1494PpdUuo/xUv9pWnGhkLBuBDOIFml+Xsoaqbt6OW6gi05fJWjo/6GXBpfCMrL8rncCBq9xGCJZe9mRIuxQvp7BIDuGsPbp8M/lqJN5ZxIhz9g8sEUvNKXiW0KfZLE/3bH41VobL721GXuoTa73WwRdn0ncnzVnrEd4RxyzKYVY38zZSEyc1tOPKukU2ntlMKfzA1sZVDQjt1aREVeVkfr1f/oiGJ+4xZKeYcU4aQIzk36fa0co5c2qP9FVxNbab8nyBrB+N4y3eMNuFbJ9GWKJuizyVtuPBwLWVYqqFHJl4viF5FEkiHpAdGWh0I4kEf34C2995JFmMOUD1JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4b1hKylSeqVM3xSgKLuexEMCxLkw5B+mxP/e+Y/PZ4E=;
 b=CmQTLENI0TyqdBzptvAjhumqOZjpk+XTeJVvm+DVMAmdKLgv+WxVWlupPF2+LNRoFrHNkEhlU4E8KkKoXZM7jR6/NmiQ7UuvGD7r55tuYBDgaJzvg7fCxJoPwNZWzN44JzFobnny4X6FVlkUS/N82Hxs1tXii/GkNK3KDNqrAtOS6SuDWcBb2nAooA+dR5GRBl9RhpzTz4YXMVOq9JEUuks1Q3F5bZjMGotKkAH2mI5f+WPc7tbQpsPovuzbOX01Kzow2mapgT9PPYk+LB79I+cJHhoULGtuUfcQxoXxh1npnePzPtHVAok2oXeE+UGcdzA/3hBRPEurk+Koy6kfLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by PH7PR11MB7662.namprd11.prod.outlook.com (2603:10b6:510:27d::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.12; Tue, 20 Jan
 2026 20:44:54 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332%7]) with mapi id 15.20.9456.015; Tue, 20 Jan 2026
 20:44:54 +0000
Date: Tue, 20 Jan 2026 12:44:50 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <aW/pQmOO8komCgOK@lstrano-desk.jf.intel.com>
References: <20260120-dmabuf-revoke-v3-0-b7e0b07b8214@nvidia.com>
 <20260120-dmabuf-revoke-v3-6-b7e0b07b8214@nvidia.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20260120-dmabuf-revoke-v3-6-b7e0b07b8214@nvidia.com>
X-ClientProxiedBy: MW4PR03CA0043.namprd03.prod.outlook.com
 (2603:10b6:303:8e::18) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|PH7PR11MB7662:EE_
X-MS-Office365-Filtering-Correlation-Id: f359e98e-6b2f-4798-3a57-08de5864c3fe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NTV3d3FUMzNyOUJtNWUvYUdyUlNlRzVNTDk2a1o2S1FzeXg1VTJOR0FOYXNR?=
 =?utf-8?B?aUp3MFBvcEo5UWc1SGRwK0RrbG1rMVA4M3dtd3JtbVZEVTkzSk5DL2JYSm5U?=
 =?utf-8?B?dVUrY0dHdkhObXRaRXRaS2ZOSHpPL2twMkl1SzBZaGlBYnQwMmdMd1ZBMEc3?=
 =?utf-8?B?NWkrMWFlQ2hwaVpZenc0QU9zRkVZMXNMWml5dlhJcGRCM0ZOSnBDd0dMYTlo?=
 =?utf-8?B?THlNZDJaUmVQTktYWG42Q2g1OFIvSWZwWk8rc2VJWDFZRXFzK2FydDBaWXNx?=
 =?utf-8?B?M3A3Y0pIZGs2MUJuODdITVFyZ2dKSFJGd0J1S3IvZi9OL0prQnBUY0FLYWYw?=
 =?utf-8?B?V1owVlM4eHZSZzQycTFKWmlaaVBDemtkS2lQN2wxdEptSEZBRythcFNTSCt4?=
 =?utf-8?B?NzVDVTZRTUZWNEZMN1p4d3h6MWsxTU8zNzZmYzcxQjZrV05JMEdYczhrRDRJ?=
 =?utf-8?B?ZWptVGNUTWxBZndaZ2FQOFNiVkJPY2RjY0k5T21mWm4wQ2RmMnhKbnRpN0dC?=
 =?utf-8?B?R1pLYXFGOXh0dy9oRE80QnZzTG5vZXlreUZUbFlyQWhRZ1phUFdOclhsR2dr?=
 =?utf-8?B?VEhsTnU0R2NsSzZZNUpsVGs1SWdLZ3ZQaUZya1FablZONUVWaS9KandRU3Vm?=
 =?utf-8?B?VkQxS1ZXMCtwaGloZmoyaDVmRnVnS2YwTzFkYUFWZGNrMklrOWltcExLRlZI?=
 =?utf-8?B?TVB0RURzVk1HZUZUTFc0NTFmTUhydVpKN0V3NC9mYW9uVTFXRTdTQ1VWY1Na?=
 =?utf-8?B?ZDBab0wxWHJzVFd4aFNaME15ZFV2Vll4MHIrU2xkSk95cFovWjIyUnlGeGda?=
 =?utf-8?B?OEhOd3RwaW5HeTdhOEpVNUs0VGlhNkd3cWxoQ0lUUEptYTF5TGRlWGhBV3kx?=
 =?utf-8?B?REc1L0pHOFBmZjAxZUxFeUgyRHJiQWNXb0ZMRVloZmR5RGF5NG8xNURPWC91?=
 =?utf-8?B?aUlIK0wzbkNCVC9mcGp6eElYRlVITmhocUVpelJNNnV1d3lTMnJ3RVlvMTYz?=
 =?utf-8?B?Q2pJSlpZaEZhWVdieGllUHNkSjA1R3Jiak96bFZmYnNrdklrTVEyMTFlMmhX?=
 =?utf-8?B?dWppVVRkclBrYjQ3VTE0eVNFN252dlA4QjA5WCt1Z1JiaENjR2JhZUQzNDZF?=
 =?utf-8?B?ZFhhbTZpS1hwY211OGltazErMnhhbEdIMlR3em5vNDlaRW9QWnZLZnRidk5Y?=
 =?utf-8?B?cXZmbUNRTC9vWXRUczFuUk1TTW1Tb3BNbUdTQzdFNW1aWW9FaW9raDRxeVNz?=
 =?utf-8?B?a3I4cDE0bU5NcGVaOG94cXlwYUdnZ0V0ejlSNXJyNjYvRkRYVDQzcGZoR3Fr?=
 =?utf-8?B?bzYvYUhncEd0a241MTJud252RWpIRnMra2JiYWtUM3o0N3FzeUhlejVuNUlz?=
 =?utf-8?B?UUF1aTZXd05wS1BTWnR4WEphL3IyUk1sM2F6akRvcmhmSUcrd2YySE5jZU9a?=
 =?utf-8?B?V0V6Tlg2T0N3S01XNkdLNUpvQm9TblFReHppREpDN1ZvSWR4Tkp6cGt4U01V?=
 =?utf-8?B?TVdVYnlLdVlVUE55VU81ejJzaWVNY0dMeTZYL25jUFBiNnZoYUo4cmIrVHNY?=
 =?utf-8?B?OG81NjE0SG1iTll2ekRvSEZXOGZ0VmVVdGlEczdUdzdrbFlZaU1iTG9IY1BU?=
 =?utf-8?B?ZDE2N2YyYXR5SEI4V01qSWRZV1dRQnZkZnlpK0Vrc1FlaWZjZU0vcFpiSGtl?=
 =?utf-8?B?dVI0Y2wycE1ldWYza042SzdOMFZQa2l5S1IvNXFIV0Nob0RIWDlYTWNNRXBR?=
 =?utf-8?B?MkNQVW4wcW9pOENtaVNjcnhXWTZrY2ZJZmoxK3o4U29hY3RJUHFmMUpNU1cz?=
 =?utf-8?B?ZUVVYTRhRngxTHMzSVoxU1pjKzZHSWYxTkZTK2hVNEJLVjRYYVphcFUzbSsw?=
 =?utf-8?B?TmVWREhuM0ZwTzBrMFg4WWRUZU9hTjFyYWxsTWNUd1JFSzYvbk5GYVkwZ3Nw?=
 =?utf-8?B?YmdIK09hanZFYnlVNXpPOUtCVjRuWXVoa256TEQzSUxxcjFKR2Z4dTdyWFFx?=
 =?utf-8?B?SDUwKzhyS2tHT1pqY0hJNFRPZ3VHUFRkUVloaTZnbnB1VndUZjRNMWFGd1ZY?=
 =?utf-8?B?SHhxRG1xZWIyMmdYczFRWjdVTzA5V3NsL0dBMVN0bTZOVitnN1d2WGFmdGUw?=
 =?utf-8?Q?/wmg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR11MB6522.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T2ZORjZHbnZ4ODZub1pmZ3lUWk1aQUo2VmhxZGdaMGlKRXlyZnR5MHZMN3gx?=
 =?utf-8?B?QW9FZk9TNUM5am9PM3dnRUI0ZUg2YkFBcjNNTXBYeUd3WUFPV1F2c0U4QzlE?=
 =?utf-8?B?U2VKV1dLUEh4UlZJeHhHOGlyRXlINDlrMzUzLytEaGc5SlRQN000b1hjR2l6?=
 =?utf-8?B?RktQNEEvc29EUC96QVdrVWx0Q3hLYVFHSzhSM3Y1OEN4M3FyRDdKWlovb0hJ?=
 =?utf-8?B?MjhyU1FTL0tCZHdYL21ZRUZ4bk4rNXZEMGwwMUh0eE9KV1ZEbkVsRnNuNEdu?=
 =?utf-8?B?RUlKTUN2M3AxUng3c0dtME4rbmIrREkyUjVKV21WYWJTbjh4YSsxMkM2UDBQ?=
 =?utf-8?B?WmV0dzNGWnlVOThVREhPbTFOMlBNMWt0VGN0bHMyd1doWTdoS2FNbmYvalhi?=
 =?utf-8?B?UTRzek1GTHpMa20vK3NRSzhCaExUNkZiSjZ2SG1NaldwaGdIT2ZMWWhpNk1F?=
 =?utf-8?B?akVRUmFxOWZNeW90Q2x4V2lHV2I1aGdKcHJKT3F0ajZWdE5CYU0zU2VXcTdH?=
 =?utf-8?B?WmQwNEt2YWtmK0MrZjJNUVBRMWM0LzRSQVFQZWkwbmVKaUhlTmxzMnUzTXZE?=
 =?utf-8?B?dVhsdHk3MnlycmpkWXYzSHVmdmJhRER1SzBFRjB6aDJSMHFmRFo0bmNKUWRm?=
 =?utf-8?B?NWV0YjBtQ3FhUjUyYXlvMVZqVGMwc216OHk1bDhwUEx3Q1RzQkp4SXR4azBQ?=
 =?utf-8?B?bXd5TnBwNzlZYkRpYURJUXlKY2ZENzVwN1BXYkp5RjBNWXZPSWJ4Nm42ays5?=
 =?utf-8?B?a1BlcEQ3R2x4eWM2SDViZlpBMDNDZXFWWkRjZ0RZb1pKOFJaMEVRaGFpNDgr?=
 =?utf-8?B?aWQyeVNVQzBLMmRJb2xOZ0I1VEREWUhGVjA5VWZtVGZuRkd3Szh1bnBLV05N?=
 =?utf-8?B?YUx4ODVRSVBNOW9iZEtQSHFiUVFBOGVlYW9pRisyWjllMkhUUllOU0szaGNO?=
 =?utf-8?B?NUFqYm1TY0t2ZGpna01Ea0x5SGdIaWx4Rlk2UmRXb1RrQW1WZVg5alh1RGw3?=
 =?utf-8?B?b291bEt5cnIycFZZcGdPOFJseVQvcDh4WWtwd1RrLzcyeGE1MGpGcWZzZDc0?=
 =?utf-8?B?ekN1OFQ5ZmF6S2E0RE5EN00vdEJRTVdHNW5RVzhtMUpac0FRWERiWWtGTGJF?=
 =?utf-8?B?K1lYNVR4cVNtdkh2NVN0NFhMNGtkV2JYQmxKU1VtRmlLTGVSYkQwUTBvUDh3?=
 =?utf-8?B?VDNPUEZrcWFocUloVERlMnlUeC96MXpJa1lNRDBSLzlSNE5xaGZEVlVUd3o1?=
 =?utf-8?B?bThDKzhPdWI1WlBNZm5TSW8wWkp6SXBldEFtbldqUGlZTVhJTUQxb3JLSE5Q?=
 =?utf-8?B?NDh2cGp5Z3ZIb3YrSmVmSDZpM3BVbUJyMTRubmRUNDRTMVBlZGpyM2RuTXFP?=
 =?utf-8?B?eEl3L3p5YmhIdnNrM3ZpeEdmdUgyUCtGc3Y4QUFVdE5CQzF5ZTRoL1VEUHhJ?=
 =?utf-8?B?WGUyenU3M2pZUlRkT3g3czJQRmp4TDFPY3JMOGFqRElKWVVTWW1Lb1ZKa2kw?=
 =?utf-8?B?eVdFcFRFbUV4Y24yM1l6WFQ5a2V2TDBSaU1QcmFIWS9TVTArcmRLdTJmcFBm?=
 =?utf-8?B?dmZQVzQ5ZzlNZGpBd0dMNCs1aUdKRXVBNWczZW13aEdMYTdFdm1BMDhKUU9p?=
 =?utf-8?B?UzJFSU9DRTdXbXZZTEx5amltRWp1YlpKZktleW1USW1ZbXY0VkYwREJLbmdm?=
 =?utf-8?B?amRyeEVpd0hJS0k5NWxuYXVPTmtYamhybytYZ05RSHVGeXo4U01JUzhlLzFW?=
 =?utf-8?B?TFNsRk5TYktGN1lBUU82bGVmazVGVjBaS0xqUFVndkwrdnJZSGZ2aXZiYWcy?=
 =?utf-8?B?cFBDSC9NTEZvMmE0Wk1wSGRpOFYrbnBSWm9CQy9vRW8xSmZ6TFBqRWp6WEFO?=
 =?utf-8?B?dW5tRi93UDExNU9hY0xkRVJQZmZjcTBCbUYveTdSMmJxRVJzWlhJbVNZTGpX?=
 =?utf-8?B?SWlNdUZFaEYyVkpOOWdnVTN6d1BDeWVSV3NzcnlOZFpOd2JIbGpvSG9jRFRv?=
 =?utf-8?B?U09ZY3FPUGVZQkFqdE5TK0gyZlVOTzJ3dHRmSUxPY09rdFdZTndsa3E4dHpX?=
 =?utf-8?B?YitSeEpsaGcyR0h3ck82ditVVTRIdUpib1pJWm4yNkVULzh6STVNZHZWRFB2?=
 =?utf-8?B?MGJOWk5zUndJKzVBb2ZoUWhScVZKbUVKVzlqOW80aVFoY1lrK21hMjUzdVVw?=
 =?utf-8?B?dnYwSG1pVUpYUThhcHl2SWd5VUlqRlNoQjBhQlRXY3FxdTB3U2RadTZxNW5U?=
 =?utf-8?B?dTlYVzBndSt4OWtiTFdwL3JYOHpHUW9tV1JvTVhnRWUrUnJSYjQ0c24xK1VC?=
 =?utf-8?B?NWNUOFdWMkpOcnd1azR0QVJaYlVWeWFxWVBKZW96SDh3R1IrNHJmY245TGI4?=
 =?utf-8?Q?5BaeixfDs8DZ99rI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f359e98e-6b2f-4798-3a57-08de5864c3fe
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2026 20:44:54.2548
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X+BexZPCozMroN+pvZSbETMG0njgTfqm5BNxDds78vRf92t+PrG9Fzy1FgeGvFkR5xI03ptIx9Clc4K0n5YGtA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7662
X-OriginatorOrg: intel.com
X-Spamd-Bar: --------
X-MailFrom: matthew.brost@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XKWBJ6W7775TQNLNQHOASNGY6U7FT2JL
X-Message-ID-Hash: XKWBJ6W7775TQNLNQHOASNGY6U7FT2JL
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:12:14 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-med
 ia@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 6/7] vfio: Wait for dma-buf invalidation to complete
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XKWBJ6W7775TQNLNQHOASNGY6U7FT2JL/>
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
	DATE_IN_PAST(1.00)[2059];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lstrano-desk.jf.intel.com:mid];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[35];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.844];
	FROM_NEQ_ENVFROM(0.00)[matthew.brost@intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 740BB4119F3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCBKYW4gMjAsIDIwMjYgYXQgMDQ6MDc6MDZQTSArMDIwMCwgTGVvbiBSb21hbm92c2t5
IHdyb3RlOg0KPiBGcm9tOiBMZW9uIFJvbWFub3Zza3kgPGxlb25yb0BudmlkaWEuY29tPg0KPiAN
Cj4gZG1hLWJ1ZiBpbnZhbGlkYXRpb24gaXMgcGVyZm9ybWVkIGFzeW5jaHJvbm91c2x5IGJ5IGhh
cmR3YXJlLCBzbyBWRklPIG11c3QNCj4gd2FpdCB1bnRpbCBhbGwgYWZmZWN0ZWQgb2JqZWN0cyBo
YXZlIGJlZW4gZnVsbHkgaW52YWxpZGF0ZWQuDQo+IA0KPiBGaXhlczogNWQ3NDc4MWViYzg2ICgi
dmZpby9wY2k6IEFkZCBkbWEtYnVmIGV4cG9ydCBzdXBwb3J0IGZvciBNTUlPIHJlZ2lvbnMiKQ0K
PiBTaWduZWQtb2ZmLWJ5OiBMZW9uIFJvbWFub3Zza3kgPGxlb25yb0BudmlkaWEuY29tPg0KPiAt
LS0NCj4gIGRyaXZlcnMvdmZpby9wY2kvdmZpb19wY2lfZG1hYnVmLmMgfCA1ICsrKysrDQo+ICAx
IGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy92ZmlvL3BjaS92ZmlvX3BjaV9kbWFidWYuYyBiL2RyaXZlcnMvdmZpby9wY2kvdmZpb19wY2lf
ZG1hYnVmLmMNCj4gaW5kZXggZDRkMGY3ZDA4YzUzLi4zM2JjNmExOTA5ZGQgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvdmZpby9wY2kvdmZpb19wY2lfZG1hYnVmLmMNCj4gKysrIGIvZHJpdmVycy92
ZmlvL3BjaS92ZmlvX3BjaV9kbWFidWYuYw0KPiBAQCAtMzIxLDYgKzMyMSw5IEBAIHZvaWQgdmZp
b19wY2lfZG1hX2J1Zl9tb3ZlKHN0cnVjdCB2ZmlvX3BjaV9jb3JlX2RldmljZSAqdmRldiwgYm9v
bCByZXZva2VkKQ0KPiAgCQkJZG1hX3Jlc3ZfbG9jayhwcml2LT5kbWFidWYtPnJlc3YsIE5VTEwp
Ow0KPiAgCQkJcHJpdi0+cmV2b2tlZCA9IHJldm9rZWQ7DQo+ICAJCQlkbWFfYnVmX21vdmVfbm90
aWZ5KHByaXYtPmRtYWJ1Zik7DQo+ICsJCQlkbWFfcmVzdl93YWl0X3RpbWVvdXQocHJpdi0+ZG1h
YnVmLT5yZXN2LA0KPiArCQkJCQkgICAgICBETUFfUkVTVl9VU0FHRV9LRVJORUwsIGZhbHNlLA0K
PiArCQkJCQkgICAgICBNQVhfU0NIRURVTEVfVElNRU9VVCk7DQoNClNob3VsZCB3ZSBleHBsaWNp
dGx5IGNhbGwgb3V0IGluIHRoZSBkbWFfYnVmX21vdmVfbm90aWZ5KCkgLw0KaW52YWxpZGF0ZV9t
YXBwaW5ncyBrZXJuZWwtZG9jIHRoYXQgS0VSTkVMIHNsb3RzIGFyZSB0aGUgbWVjaGFuaXNtDQpm
b3IgY29tbXVuaWNhdGluZyBhc3luY2hyb25vdXMgZG1hX2J1Zl9tb3ZlX25vdGlmeSAvDQppbnZh
bGlkYXRlX21hcHBpbmdzIGV2ZW50cyB2aWEgZmVuY2VzPw0KDQpZZXMsIHRoaXMgaXMgcHJvYmFi
bHkgaW1wbGllZCwgYnV0IGl0IHdvdWxkbuKAmXQgaHVydCB0byBzdGF0ZSB0aGlzDQpleHBsaWNp
dGx5IGFzIHBhcnQgb2YgdGhlIGNyb3NzLWRyaXZlciBjb250cmFjdC4NCg0KSGVyZSBpcyB3aGF0
IHdlIGhhdmUgbm93Og0KDQogCSAqIC0gRHluYW1pYyBpbXBvcnRlcnMgc2hvdWxkIHNldCBmZW5j
ZXMgZm9yIGFueSBhY2Nlc3MgdGhhdCB0aGV5IGNhbid0DQoJICogICBkaXNhYmxlIGltbWVkaWF0
ZWx5IGZyb20gdGhlaXIgJmRtYV9idWZfYXR0YWNoX29wcy5pbnZhbGlkYXRlX21hcHBpbmdzDQog
CSAqICAgY2FsbGJhY2suDQoNCk1hdHQNCg0KPiAgCQkJZG1hX3Jlc3ZfdW5sb2NrKHByaXYtPmRt
YWJ1Zi0+cmVzdik7DQo+ICAJCX0NCj4gIAkJZnB1dChwcml2LT5kbWFidWYtPmZpbGUpOw0KPiBA
QCAtMzQyLDYgKzM0NSw4IEBAIHZvaWQgdmZpb19wY2lfZG1hX2J1Zl9jbGVhbnVwKHN0cnVjdCB2
ZmlvX3BjaV9jb3JlX2RldmljZSAqdmRldikNCj4gIAkJcHJpdi0+dmRldiA9IE5VTEw7DQo+ICAJ
CXByaXYtPnJldm9rZWQgPSB0cnVlOw0KPiAgCQlkbWFfYnVmX21vdmVfbm90aWZ5KHByaXYtPmRt
YWJ1Zik7DQo+ICsJCWRtYV9yZXN2X3dhaXRfdGltZW91dChwcml2LT5kbWFidWYtPnJlc3YsIERN
QV9SRVNWX1VTQUdFX0tFUk5FTCwNCj4gKwkJCQkgICAgICBmYWxzZSwgTUFYX1NDSEVEVUxFX1RJ
TUVPVVQpOw0KPiAgCQlkbWFfcmVzdl91bmxvY2socHJpdi0+ZG1hYnVmLT5yZXN2KTsNCj4gIAkJ
dmZpb19kZXZpY2VfcHV0X3JlZ2lzdHJhdGlvbigmdmRldi0+dmRldik7DQo+ICAJCWZwdXQocHJp
di0+ZG1hYnVmLT5maWxlKTsNCj4gDQo+IC0tIA0KPiAyLjUyLjANCj4gDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 39FBA92D0D0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jul 2024 13:39:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E8C39447B4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jul 2024 11:39:10 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2049.outbound.protection.outlook.com [40.107.220.49])
	by lists.linaro.org (Postfix) with ESMTPS id 7DBD63F4BE
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jul 2024 11:39:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=1qUQcv8M;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.220.49 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U4DUmbcld0/ufhwF5WlBf/XLx+hq6MCG97GwiqlXdS7jUQNx6DrYphAEYfESR7hBDS39ji/iqJgni+umg80/a6tvkxBFjrQ7JHk1QSX24fKYuey+RC6ZUZE0PA9BmRCwBSChMIA/8wTEW9b0irWSpMOq6wWq4fUj2H7eg39PGKbe+W2FzoSJN/nFVqBy4g4kb00ep2nB5pwiMcquBCtITvDydK1aUq+uCGkWYMLeIKUhc9R4ds3rbJmLYeDdg8r3iiXkcJgu0dONA2xakAKON03Agl9e5Byv8yyoGj/Yr9fhhYprEvXP2GhsCTozA06ZIsq0sBwgmQSTUUih1RAb5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RfuQRcuIxLzAxfvzWzqzfyV6HuP/jRUUHy+iznS4luo=;
 b=kH9OKxiWsBVbiUuyUPb4un/O7iYLVb5DPT1Q04x7zDzSlLzJ1B5skKKqKjg76KrdaucenpQclA8SmE8PyshOceheu6AefxaxTCWLFaut74TlP1qUsXSAYMKklnco9H1LouDQkUQGoD3RWhNdQfklyTyJIVFnF6Y6KvmRxTCLMVQDzANhVrTb3wjfA57rGZsrcGh6gSjsrIJpXnp1sDpgdo7Ivp+wuiNhbmH3s8pWO4pJYyBMZaLm0/57NCGSTyyL/OkTArdeVal/FDb+ZHUNhHnNr0nSBidT/BHyUUZpoCySDFBmLugHduja2m5snqW3x/rZ5/o0iVLI1w+C7ltuvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RfuQRcuIxLzAxfvzWzqzfyV6HuP/jRUUHy+iznS4luo=;
 b=1qUQcv8MSFOhI+Iy/CKKXxGdq8cGzLnA7S4pI3AsSYu5KAFf6Mxswq0suP+cPvte9oLDKZmwNRDouq3ie24kKC8flDpB1u5QyJ+xllpBa0DPM3J+gb7euMvIDq+Jrg8ENFZjc6Nr/E414nmjbLwYDe7WRmeuQi/IAKDbLXiUzSc=
Received: from SJ0PR12MB5673.namprd12.prod.outlook.com (2603:10b6:a03:42b::13)
 by CH3PR12MB9196.namprd12.prod.outlook.com (2603:10b6:610:197::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.21; Wed, 10 Jul
 2024 11:39:03 +0000
Received: from SJ0PR12MB5673.namprd12.prod.outlook.com
 ([fe80::ec7a:dd71:9d6c:3062]) by SJ0PR12MB5673.namprd12.prod.outlook.com
 ([fe80::ec7a:dd71:9d6c:3062%3]) with mapi id 15.20.7741.027; Wed, 10 Jul 2024
 11:39:03 +0000
Message-ID: <03f7e2ad-fd5c-4da7-a14c-34c2c158c513@amd.com>
Date: Wed, 10 Jul 2024 13:38:56 +0200
User-Agent: Mozilla Thunderbird
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>
References: <20240710093120.732208-1-daniel.vetter@ffwll.ch>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20240710093120.732208-1-daniel.vetter@ffwll.ch>
X-ClientProxiedBy: FR3P281CA0132.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:94::12) To SJ0PR12MB5673.namprd12.prod.outlook.com
 (2603:10b6:a03:42b::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR12MB5673:EE_|CH3PR12MB9196:EE_
X-MS-Office365-Filtering-Correlation-Id: 551be219-4c24-4d18-754c-08dca0d4e637
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?Ry9IeFZjSlRaak9vUWR0eWV2UzBJc1BJSkRMd3hEWTZTTHAwRHdvSDFlNEZx?=
 =?utf-8?B?dk94eEh5OE1CU0dmNWp4dVF2VlVzMFlydS81M2Jyb25qVmxLVWxMdkpGaFdj?=
 =?utf-8?B?dGMrTWZBbEI2ck5yQnpyOFFJRmJwSjAzWVJ6aS9xUjZGa1JIY3FjRHN4QVdW?=
 =?utf-8?B?SFNYcEx3OWNXNXdQaFhqbHdoYzM5U2ZBYko0bzhqL3cwdmZPcFhNTGFPSVho?=
 =?utf-8?B?ZC9zRUNTYzBiM3FIRUJJOU9VTGhZUzZ0RXVoWXlxcEplUFhYVjR4UmUwcWhX?=
 =?utf-8?B?UzdoNUI4OEw5UXhOd1R1cUZVRENMd0dhSE44SVhZN1ArcDM3RDlFYzZtYlZS?=
 =?utf-8?B?SDRwaXY5azRuYjlMbFYwOTV1bWJTTFpoUlM0bEcrQ3NUVUg0ZXFjeVhoZFJD?=
 =?utf-8?B?dlRuT2xhZ05Vc01rbU9pWG9hWDJEZDg0RzN3TzZ0WSt3NVE1cmQya2xKZERN?=
 =?utf-8?B?dXhvck15SUM0dUF4RjFZWkFBaHdxZTBQQm5UeTFsS0tBT05zTGt1NjlFYkdn?=
 =?utf-8?B?cmFQV0xjczRuRW94bGFTbW1XTi9zeHZWTklZNmIzYUNUdCtJeE9sSitMaXVV?=
 =?utf-8?B?ZzhwU3ZEUUx0WnkzUC9NN3FBelR5c25oNXZKejdtWjFjQ1JsK292eFpDK1Vl?=
 =?utf-8?B?TndXbEJtNXEyRHR5c0Fsby9JSFZ2eGhLckR5OGI3bzlTNnYvaHAxbHc0RTBD?=
 =?utf-8?B?S2NwUzVlRnlGNFdzTFRxY0M5S1E0azhZNXRibElZL2hVKzlYQ1VUenFOeWFP?=
 =?utf-8?B?UlJ1UTNtcmNxMFVKN2VOcU1oSU94RzI5K0M4clcxZmNBZTBRaXV1OXdOYmlq?=
 =?utf-8?B?aUdZcGI2ZjRMVnFES0gvMlBSQm93ejAxblJYZVRMRzl5eXpVczdHN0I2eFlT?=
 =?utf-8?B?RVhIZ1crMTB4M1QwV2RMS05xbFFlVmZYQ2lKOWkwcm5jM0lCbitLM1QwZDdE?=
 =?utf-8?B?MEtzUGtsQ3JDTTdxRHRLRzlaYXc3QnVsSjk2RDBmMjRtaDBsZjlEOHBtVWk2?=
 =?utf-8?B?MnhyS0RVREpIWjVtVnF0Q2s2UTRpTjJBRUlJcWFhY1lNbDRWcnRGVUdrRlVr?=
 =?utf-8?B?U3JobDFLLzBmV1JmNnV0MXlQYjhxdE9BSEIraXAyMXBsc2xzR2plVjAxb014?=
 =?utf-8?B?K3VvQTE1MEFYaGZKYURjU0I4VHJHc1M2SjJzVTNnOHVWMXltR1RlYWpJc0Uz?=
 =?utf-8?B?eWJFdVBiVUE0S2xTS2lGOTQ0aVF2UlVCT0VZSW1MVWR3VEcwRVExd1pBUDQ1?=
 =?utf-8?B?VTdjVFA3MHNZTXNMMVlOOVA4RFdvKytpRGRIMUlOdVcrVUo1UFpqeExPVWJQ?=
 =?utf-8?B?SERlZWUwYUNDWXBldnM0Y1Q4NG52cC9oWUQ0S294RkZJQUhGTGdtMmVqSUNC?=
 =?utf-8?B?Y2I1L1dVZFZvbC94L2dYcVVQSUh3NDU1M0RlZG1aWEJ6NHE5WWpKbWtNNVZH?=
 =?utf-8?B?WjVnMERVRHBKcnhNMnM1NURjalNkck14dENUdktBMTF6bXU0SEtKTjQyODEv?=
 =?utf-8?B?L0svNEQwc0dmMUNpcWNVWjdxV1lGQnVvTEQ5UTU0Tm0rVjlVTVdqWWdtS0dZ?=
 =?utf-8?B?bWtud2IrbkJNbU43cDJvRlFvazEzOEFoQ05sNFB1L28xN1QwK1o5dDRvTEJC?=
 =?utf-8?B?SVI0cXJWU3pHYldCYU9DblpUSGxDSDVhZXdhYVpBN0dyZFVKQlFLUDlSekxM?=
 =?utf-8?B?cnRPd01zdUt6cUpFeUxvWXp6SHpnSXBZNnU4Y2pwNW4zZGQ3aERLd0hRVDg0?=
 =?utf-8?Q?614vC8rlYNKhu0KeI0=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR12MB5673.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?c2djLzdXQzh1Z0FkcEZRNXFyVExoVno0azdNYXZEZzQyd2ZDQmJFakdXZWZJ?=
 =?utf-8?B?UEJjRG8xS3FoU2NURDJPQThBVS95cjljNklRVlQ1Y1RuNGwvYjY3elZydlFk?=
 =?utf-8?B?b0Y4bzVLY2Nya2JrczlBUUczZElrUDVXQmpPalI0Smo1K0tyczlzZnhJVUhD?=
 =?utf-8?B?L1l6UDQ0MlE4ajBlOURjNVpDM0NjaEE2a1kwQ1I0bnFMTklLdm1admdBSVJw?=
 =?utf-8?B?VkROU2cxSzVmYWxtTEdOd0NRd1BtY2hlUzlYQk5BTUkxUmFsYWFxOHluamhX?=
 =?utf-8?B?MmxtdVVaSC9OQzdoazAzNGhidlE3TUpnZ1VzRVdtZnhxbjFKMlYxWFdJdmw3?=
 =?utf-8?B?dUtkc1o2b3FLN2dUV3pld3M2RHpRdzdCenpiOFRaQ0kycWFxQ2RNeG1VOUg3?=
 =?utf-8?B?OHplNjVxT2RkdXhKaytmODhsM3p5T0ViNk42NVh2djF5NGd6Z0xHeU9SNlVZ?=
 =?utf-8?B?ZXZ3Z0VOcFV3YllyeTg2RkdzWWlPUHAyUkl6bm5GN1dkcEJnSlNxa05SSlJT?=
 =?utf-8?B?T2ltY21wd2d4bW1tQmlwZzJiU1dhenB2RDhVaUlueVgrTlp6bnJzZG5mODZY?=
 =?utf-8?B?S2IvRjZtU3lkVXZ3WGoxZ3ZrUkp0a2hiOEFHMWtPZm5sWFI4MitnckhXS29P?=
 =?utf-8?B?eFJ5YUp3enpBQ2QyS0ZyTjBFdmVFQmNCdVN3cVhFY0Qyc3BYaG4zMXY5MWNn?=
 =?utf-8?B?ekZXVjRjOFJOV3d3L3dYdVNJbEVmMFhjN3dvM3FBb3d5TnZDenQxYjhiS3Bh?=
 =?utf-8?B?VUxwVkRHdTc2dk80QXNyY3ZES0RCOUNRYXN5NHMxTXovVkVhOVhzSmNWak1O?=
 =?utf-8?B?V0RFL0dEbGFjU1Rjb1RrNFVSZDExVCthUDFhUFB4cDNPd1o2U2xZMHZ4N2x1?=
 =?utf-8?B?V0ozTEJybytLcU5iUVhlTnFrdlVZT1JQUS9kL21haTBqY0FjY05oNlJEb3FP?=
 =?utf-8?B?Q0daWXpmcHp3L1VIUVZUaVFCNTFKaUJyeURuQzlQb3c1aXM3S2V5OW5wQUV6?=
 =?utf-8?B?QXlmMkk2TTE4QjQ1UTl1UGdweG5ybFRRUlhnYllCU2V3c2h5WWZCenFDQXZh?=
 =?utf-8?B?TklIOTZYU00xQ21qNVJ6MmRGMm02cWFDOHlkSjFpZ0dhVzZHQ3pJVHo4dGMy?=
 =?utf-8?B?VTR0RXdPUU1UZFdRTWttYlZOM0FFZ0lGVXVPSkNIYnN3YVIzRUNZUHpSanlH?=
 =?utf-8?B?SEQwSUFUUi95TUNqSWlhVlBRWElRM1hwbDUyeHZRUmVsd3l3bmF1OWJYRHRa?=
 =?utf-8?B?cU1XTFRCTjFRaHZ5aXVldjZSY3ZQVDRvb2xRMXVHVnY3RnVNTXJ4RWVGMG9k?=
 =?utf-8?B?cjRpNmZhZkFhL1JrUUdRN1NrWlZMYWxHa0ErcGliNkRmcDdPcTZOVjNoaWk1?=
 =?utf-8?B?VjFCVkxYWFRkcjRNajdmWmJ6b1FnNjdRQXhFT2RsUmx6UXRVaXVjbUJLYnhG?=
 =?utf-8?B?cHlwZlhUdVl0OEhPRmRCY1RqVVBrSlhPeU5PTnVoQklLYTVWN1I4TXBIc0tU?=
 =?utf-8?B?aE1jVm0vNW1OcDFmVUo2NS92dGhFL2FxdnRrSlhFNGo0NmJNKzRaekVUV3U2?=
 =?utf-8?B?Q0F1NzJ4anI5WEwvZk9GNlpmcVYrTTJkRmNVNGc3WWhXMkNDQ0ljcWlnaUFv?=
 =?utf-8?B?RjEyaEhzRWtyOTZDYTVhaWY3eU1lMzJQM2Nhc2gvQVorNEtFVkk3T2tCVHcw?=
 =?utf-8?B?UFpJeVlSS2xVNE1rd2U5UUJXamVwWE5HVHNtK3RUY2dGVmx0bmxHWUR6c1ll?=
 =?utf-8?B?SW5wV3c5WldKVFdJLzk0R3QvMXFkTkxFQ05FbEtXYXlmVVIySXFDUEg1TjlF?=
 =?utf-8?B?ZWoyVUticU9qS0JYM1VUZnFnQnFKc1UvTGtJcTZ5ckFqV3dyUmMxWWY0eTRq?=
 =?utf-8?B?eEhMNU5kcWhsYUNlTEZCZ0t0MklQQUxtdlVHOGhCTkUzRUs1a1VVcGs1ZnBG?=
 =?utf-8?B?eWcxTjh2STBSempLOUo2dnd4eVJnb0RONkNLQkh5cWplUFVKaGRLZUVWVG11?=
 =?utf-8?B?dHRIR1lkVDN2MnVyUU9TRnVPbFV4VXVrSWdab3pIZVBhVzVCdHF2aU53R1JZ?=
 =?utf-8?B?SGZkeXdYL1hOYWRaZHduTTBkYkFBUitFTGtBREVEaWdPOEhiQzBZMm5qTGYr?=
 =?utf-8?Q?Sp67dEcaQGiMeyr1cBWULYJe0?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 551be219-4c24-4d18-754c-08dca0d4e637
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR12MB5673.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2024 11:39:03.7400
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Hlhzq8AvSXhM8NAsoN6CcILGqAkqzcTYJHEVlJgyqdSY9I9sbSkJ+WxzBFVD1l1t
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB9196
X-Rspamd-Queue-Id: 7DBD63F4BE
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.99 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	DWL_DNSWL_BLOCKED(0.00)[amd.com:dkim];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.220.49:from];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[40.107.220.49:from];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[2603:10b6:a03:42b::13:received];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 7DL4CZMN5VXQT4WNRKS6SXFW6DRJPDYL
X-Message-ID-Hash: 7DL4CZMN5VXQT4WNRKS6SXFW6DRJPDYL
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Intel Graphics Development <intel-gfx@lists.freedesktop.org>, Daniel Vetter <daniel.vetter@intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/2] drm: Add might_fault to drm_modeset_lock priming
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7DL4CZMN5VXQT4WNRKS6SXFW6DRJPDYL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTAuMDcuMjQgdW0gMTE6MzEgc2NocmllYiBEYW5pZWwgVmV0dGVyOg0KPiBXZSBhbHJlYWR5
IHRlYWNoIGxvY2tkZXAgdGhhdCBkbWFfcmVzdiBuZXN0cyB3aXRoaW4gZHJtX21vZGVzZXRfbG9j
aywNCj4gYnV0IHRoZXJlJ3MgYSBsb3QgbW9yZTogQWxsIGRybSBrbXMgaW9jdGwgcmVseSBvbiBi
ZWluZyBhYmxlIHRvDQo+IHB1dC9nZXRfdXNlciB3aGlsZSBob2xkaW5nIG1vZGVzZXQgbG9ja3Ms
IHNvIHdlIHJlYWxseSBuZWVkIGENCj4gbWlnaHRfZmF1bHQgaW4gdGhlcmUgdG9vIHRvIGNvbXBs
ZXRlIHRoZSBwaWN0dXJlLiBBZGQgaXQuDQoNCk1obSwgbG9ja2RlcCBzaG91bGQgYmUgYWJsZSB0
byBkZWR1Y2UgdGhhdCB3aGVuIHRoZXJlIG1pZ2h0IGJlIGZhdWx0cyANCnVuZGVyIHRoZSBkbWFf
cmVzdiBsb2NrIHRoZXJlIG1pZ2h0IGFsc28gYmUgZmF1bHRzIHVuZGVyIHRoZSANCmRybV9tb2Rl
c2V0X2xvY2suDQoNCj4NCj4gTW90aXZhdGVkIGJ5IGEgc3l6Ym90IHJlcG9ydCB0aGF0IGJsZXcg
dXAgb24gYmNhY2hlZnMgZG9pbmcgYW4NCj4gdW5jb25kaXRpb25hbCBjb25zb2xlX2xvY2sgd2F5
IGRlZXAgaW4gdGhlIGxvY2tpbmcgaGllcmFyY2h5LCBhbmQNCj4gbG9ja2RlcCBvbmx5IG5vdGlj
aW5nIHRoZSBkZXBlbmN5IGxvb3AgaW4gYSBkcm0gaW9jdGwgaW5zdGVhZCBvZiBtdWNoDQo+IGVh
cmxpZXIuIFRoaXMgYW5ub3RhdGlvbiB3aWxsIG1ha2Ugc3VyZSBzdWNoIGlzc3VlcyBoYXZlIGEg
bXVjaCBoYXJkZXINCj4gdGltZSBlc2NhcGluZy4NCj4NCj4gUmVmZXJlbmNlczogaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLzAwMDAwMDAwMDAwMDczZGI4YjA2MWNkNDM0OTZAZ29v
Z2xlLmNvbS8NCj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBp
bnRlbC5jb20+DQo+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGlu
dXguaW50ZWwuY29tPg0KPiBDYzogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPg0K
PiBDYzogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+DQo+IENjOiBTdW1p
dCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KPiBDYzogIkNocmlzdGlhbiBLw7Zu
aWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtl
cm5lbC5vcmcNCj4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZw0KDQpPbiB0aGUg
b3RoZXIgaGFuZCBwb2ludGluZyBpdCBvdXQgZXhwbGljaXRseSBkb2Vzbid0IGh1cnRzIHVzIGF0
IGFsbCwgc28gDQpSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5p
Z0BhbWQuY29tPi4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPiAtLS0NCj4gICBkcml2ZXJz
L2dwdS9kcm0vZHJtX21vZGVfY29uZmlnLmMgfCAyICsrDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKQ0KPg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9tb2Rl
X2NvbmZpZy5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9tb2RlX2NvbmZpZy5jDQo+IGluZGV4IDU2
ODk3MjI1ODIyMi4uMzdkMmUwYTRlZjRiIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
ZHJtX21vZGVfY29uZmlnLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9tb2RlX2NvbmZp
Zy5jDQo+IEBAIC00NTYsNiArNDU2LDggQEAgaW50IGRybW1fbW9kZV9jb25maWdfaW5pdChzdHJ1
Y3QgZHJtX2RldmljZSAqZGV2KQ0KPiAgIAkJaWYgKHJldCA9PSAtRURFQURMSykNCj4gICAJCQly
ZXQgPSBkcm1fbW9kZXNldF9iYWNrb2ZmKCZtb2Rlc2V0X2N0eCk7DQo+ICAgDQo+ICsJCW1pZ2h0
X2ZhdWx0KCk7DQo+ICsNCj4gICAJCXd3X2FjcXVpcmVfaW5pdCgmcmVzdl9jdHgsICZyZXNlcnZh
dGlvbl93d19jbGFzcyk7DQo+ICAgCQlyZXQgPSBkbWFfcmVzdl9sb2NrKCZyZXN2LCAmcmVzdl9j
dHgpOw0KPiAgIAkJaWYgKHJldCA9PSAtRURFQURMSykNCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==

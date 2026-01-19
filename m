Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC4ED3AB93
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 15:21:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8D9DD3F9D9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 14:21:29 +0000 (UTC)
Received: from CY7PR03CU001.outbound.protection.outlook.com (mail-westcentralusazon11010019.outbound.protection.outlook.com [40.93.198.19])
	by lists.linaro.org (Postfix) with ESMTPS id C15C83F734
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 14:21:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=FV58vSGR;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.198.19 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V4CwrO+wMVL3t17v3iXWCtWeJjlZ2z6Cm1IUmZOKCuIJmBE0/GGpMEJbVw7RFZEVIflxlwEOs1Jr9WGfien6RHUy/kFgm7Qkc8Dt56lSxVVR4mnE4F1qLcBr2u6YSxF5OzINQkzEr4jSb9l66mEmyJ0KaR0FL7HufvErl+qPspbM8aedm24rgcNypMAn40cNQQvxL+HjcPWq2KY+WIOkB6erQVV/9+16fDXYiSpMBMxUH9oR8eOX9NCzwuuKf+uMBlJgXBhTLXh/7C3dEJS3/cE1BTgXsKxy6czD2YJbuvz9Gfqvyw4d4gJvDTa4eiDXZcGvxOs0yO+vQ/TN/XvMvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GrnHJMK4C6g4RG0ei88aLmlPvSAUcceN453tcQ+An0w=;
 b=f8JqQb/l30msHY2GgApSOlzEgICCn2pXbIHvnoK10DBNftg7+uXpEFSJhZkh0IGy7u/f8wFM7wSeMsq0PAcO00GRDw9wch+ZR02SZi1/RhFaRe0tVHthwKQXSZ+eljHS+2+w/eLTEbPQZ8S5c3WAfGXwfs4sF0SqEBITjIidlT87XWjt05NqBFd3LG615rJ60808iqA5614vYoai5Vw8S5zdK5NYqiKzavSLx9MUaJwLFw9sHoQbGEUXB+GO4qk53JfK6MOWUHq/SNgoUzHMadZeH062X4GaqH9NOgdR3FKex19/f7vjn19DgPZ/t6FSkl1TFbD6J/e5xGyzlzjxFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GrnHJMK4C6g4RG0ei88aLmlPvSAUcceN453tcQ+An0w=;
 b=FV58vSGRpaU1lIrroo+FILBS4I43MNhTyijxXI9wNXRwP277Pd6/isLO/53bsb5gzQq5ltVlQXTkrilrZThHw3ufxyN7/1RPm6KOUV6Ned4Xz/gRdM93LvYH8zn0TjdG829DJ+oMxR5sBM0XOLiF2GeilqGwYcQ56U1ENXz8O7M=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MW3PR12MB4377.namprd12.prod.outlook.com (2603:10b6:303:55::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.9; Mon, 19 Jan
 2026 14:21:21 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9520.011; Mon, 19 Jan 2026
 14:21:21 +0000
Message-ID: <a397ff1e-615f-4873-98a9-940f9c16f85c@amd.com>
Date: Mon, 19 Jan 2026 15:21:11 +0100
User-Agent: Mozilla Thunderbird
To: Leon Romanovsky <leon@kernel.org>
References: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
 <20260118-dmabuf-revoke-v2-4-a03bb27c0875@nvidia.com>
 <bd37adf0-afd0-49c4-b608-7f9aa5994f7b@amd.com>
 <20260119130244.GN13201@unreal>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260119130244.GN13201@unreal>
X-ClientProxiedBy: BN0PR04CA0018.namprd04.prod.outlook.com
 (2603:10b6:408:ee::23) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MW3PR12MB4377:EE_
X-MS-Office365-Filtering-Correlation-Id: 915ed456-0634-4146-bca8-08de5766048c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?bnJzQTZiK0NaOVRGbXQ3UXhoQzQrdmtyajN3RFNmYnl0NEhEM0JtMm1SUm50?=
 =?utf-8?B?eVFtRGtxenc1Y3h5MkRXZHpVcHlhaXM1clNSSndJckdiOWpEdU1oai9Nb2xG?=
 =?utf-8?B?WGJVbnd0eWFEMlhEYXM5MWxLcy9lMFJOQ2g3dlZ4Z3JxTHpmMzh0Z2VVNngv?=
 =?utf-8?B?TUEvUDE2clkzeVFmQWJyRGpZbkpmbDZ2WUE2eVFSVHU2dEZjcGpsUWx2UVlN?=
 =?utf-8?B?WHVnZW41UzNSNXB2MXd3V3JlaE5FSkhCS1duSkliNGZQR0FHdzZtaGNjSnI2?=
 =?utf-8?B?ejA0UU9HWWZqSkRodEFIZ283dmZMcDFEcG1sWDhCTlFTTEwydHJEVDJHTm9G?=
 =?utf-8?B?cFRQL2xkMHhvYktIRGpKNVVBMnZBbEVDaytCdVVKOEhPNjE5SlpBZTBPOW80?=
 =?utf-8?B?YytPRHRHQWZZNitNVlNYWUs0WDU4dk42eHVpSXRwTDl3SGxNWUUwRC80c0l2?=
 =?utf-8?B?UjhrdkhSR1JyVzZnZGNuQ2l4TVYvbDE4ellITWZUWVZvOVJQc3BYMEdEem15?=
 =?utf-8?B?QUpsTWZaT1FEZTduZmZac0lubkg2SzN1bGNQNEZOcWFUeHRUMFdWSzFMYU9h?=
 =?utf-8?B?Z3ZVOUVkZFIxaEVDUUhxZHhYQUU1MC9TSWRHNGd6b1FuUm9XcEVuMVlja3Z3?=
 =?utf-8?B?dWtiblFYNEJtQWUzWkkwZ2lsMHlDUUNCeExGNUZEU3NKZjVXRm5RbUxRQUtM?=
 =?utf-8?B?cVZjaHNibDAwdEtoWUNYeEt3L0t5S1ZaY0VoclFlbnlCQXlUN1ZLZElEKzJF?=
 =?utf-8?B?d0tleEgwVUZzZUMrUTRDTHBydXVlN0g2WGV5YmlSVHY1NWJTZmsyRmt2SG5p?=
 =?utf-8?B?VDErUS9pNUw5T3NYdTA4d3YxM1RuWVd2WCsvaWhkQ0NXNld4dTM2Rms0V2Nw?=
 =?utf-8?B?OFkzakQ1cjRNZkVNYVJYTXpMQ3ZUalB2Q1NnZXZqdkw0WVo1czA0MzA2N0FQ?=
 =?utf-8?B?ZjJzcEhCd0l2aS91TTFnSFMwZ1ZnaVVrTG15NzBKSDcrSDNnanhNV1BVNTVw?=
 =?utf-8?B?WC9CenJuTnZ5SXNxV3FxTmJMYS9IWnppNnp3M1hOYm5GaDlmUGJNUmFGNFYx?=
 =?utf-8?B?Sy9jemowVkZRRzM2M1lNOVFSY2RCSFlTZmZlY3BveU5wN3F0NkZ4MUJjTlcv?=
 =?utf-8?B?cms3TVBqSEthcm5yUXdhdXZSNk52YkRoc1ltUFVFVWFaeTRDc3lqV3AxSDM0?=
 =?utf-8?B?TkJjNkxFR0VOdlpRc0hhSFdON000TU9GZ2RKSEsrbFVKaXlGVVg5Zngxejkr?=
 =?utf-8?B?Q09NNmxRaUlsNlJBUVpndHpiVW5BZkVXZkx2S2NKbmlYb2krblBPc1IwOHY5?=
 =?utf-8?B?c2tWcWNqdVl6S0l6Ni9GQ2xwWTlPRFRIYitxbmdmTjZtcE9ZMWNyTFE5Z3Mv?=
 =?utf-8?B?WFRjZ3dXS1c2RXpzM3VMK3AxM0RqNXRyOVQxUXFoQVhTZW4ycE1LVXp4Wm5O?=
 =?utf-8?B?cytpWEwyd1pBY0g1VHp6NGNZclBnOW9VTU9NWDBNdi9ZWG94K3pGeDBZRXRN?=
 =?utf-8?B?alNkNVlCOU1BQ0dySzcvczhqdytvWGlnVTZEUFFITHVkc2J4RUE0YUUyWGZv?=
 =?utf-8?B?VFJWczEvdkZSdVhqZHNzVDBCWFVKZGZPelVHYzBhQUdTZU1lK044L2J5QkYw?=
 =?utf-8?B?VjgrbEg3ZWZ3TjVVQVBycGxUcnVvWmMxVmpqQ0NnN2xwY3h1Qnd5ckFHbjcw?=
 =?utf-8?B?SEVGU25vSHdBRUd0SWtYT2VqY3BObnNBTlVYdGU1UHArcmQydFFhU3VjS2pN?=
 =?utf-8?B?a1J2ODZEQll3blBlb0ZPVUdycWNLS2Y1S3FlbW1ZMTRQWTJkeGRwS1FoV081?=
 =?utf-8?B?NHdiNTdUVUVVdFcwMGdsQmJJSHNad1VDaWd0UkRzWnlEN3dESEJxSVVFa0RD?=
 =?utf-8?B?bXMvczYzNndqMGR6ZTJQdnl4WWtjdVBzNjFnd25RblQzV2M2RlpaaHh3UGtk?=
 =?utf-8?B?a3p3MnlHRXdIaHRpc0FLSGIvM25mc3ZXNWl3N3Qza29LTFZ6cE0wdTVjZ3U5?=
 =?utf-8?B?TWRoTU9kMkVmQkVQTUx6L0tTR25FK3lHQVg2OG1vL29tL3ptVzl1TFRyWGZS?=
 =?utf-8?B?dEpZbWNmVFBpWWVEOExMbUVpU250R1V6cm40UmZGUjFubmFYVEhMcjRmVE5a?=
 =?utf-8?Q?sX6U=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?T0RieW1HcVh6WlltK1FITzhmYS8xY1VkYUtqMVNhUExCYitMR3BBWm16NkVG?=
 =?utf-8?B?UEd2RlpRVGZ0VjRReWFMTnpCeTFNa2Y3QWNlejIwSTRCNVZ4V0NEN0pkWW1r?=
 =?utf-8?B?bWVFK0tUbWlzNWNlNHVFWC9ESHhsZWdwZnFCWExaNjhKeitmK0VBY0J5THU3?=
 =?utf-8?B?Q0NGODlUUVZCSmg4aEFod1gxZzUva3pUNzV5ZENLbjBHQm9waGozMjJpRWw3?=
 =?utf-8?B?RE5kTi9ld0gvSU1pUGUxeUVKbGorMEJvZE5VbThrYk5EdnpGSTFUaU9ycWho?=
 =?utf-8?B?bE9SOXovYmJEaEp5QUVhT0pMVnZLVlZ4bFFRTStHM1VaV3VTU0M0bzFVVDk5?=
 =?utf-8?B?dXZkazBXLzl4bDZQK3BVQzJUQjlyMkJ1UUw0R2lOQWZyMzNyNlVBVEZUR3dm?=
 =?utf-8?B?Y1MxVStVcEtTZC9iV1dMUG5ReHJNZDc1aXhlcERsOEZpbDd1TzFYOUJ0ZURr?=
 =?utf-8?B?K3krbmw1YjBmNkNoWnJXc2cxV0FzYllXeGpsY2dFeDJIRzNiY3UxVWhtSkx1?=
 =?utf-8?B?K3hKWGREUUc3Q0pLcnlyT2RQSHhDQzN4bHdQVWNqSVowVnBBREtPZHBlVHds?=
 =?utf-8?B?WXo3a0x5YXM2d0swOVhpQlJDeFFsNXpJZEtlTHZCZ0tzOEltYzVqSEd5azFU?=
 =?utf-8?B?YjR1dmg5UzZ1V3o3a0h4WHovTTJoaCt3b2dSc1hETVpiYnJIOXFuN0U0OXBN?=
 =?utf-8?B?WlVnNTRVMXpuTGs1SGxqejdUdEVvZmJacmRCcWw1aExXaXViOUVQTExaRnox?=
 =?utf-8?B?ZnlXdFo0N2FGRXpBSzJJSUI3SWpHRkRmb0JnRGwwZE1UK2g5VTlDL08wSkpT?=
 =?utf-8?B?VHFVb2YzYU1TUnlMOHErRTkyaFFSRnpkMERGc1FpNDc4ZFVhT1BNcE9wd2Nr?=
 =?utf-8?B?QkFJQTFvbnZ1OVBaTFVsWGJ0NVY0UUtrVmhxU1NRaUwwUlRyaFFad0NyNlha?=
 =?utf-8?B?MmV0MWhIRGYwUXZROE1GNjFGcmJvbTNvRTJGY2FFTmZUM2J4ZnRlbnczSjhQ?=
 =?utf-8?B?WGV1S0lZZnl6eFBFbXduWndIMGhrVkY1OGV0YTRUaVF5bXJQSW8zNmlNdW4w?=
 =?utf-8?B?bzlRaVg2N3VIL1ZlTGhZamN1MEhHN25QYmxTZjZjZDVFSTExdUNMUkVKNlUz?=
 =?utf-8?B?YkRXK21EbmxwbE51NEJsOUJZcUNHdzRXQzV3RlM2SExRRXY5Mk90WTZDM2oy?=
 =?utf-8?B?S3lUUVk4SEl5S29lV0FFMXRUYmpJMUQ0Z2dBTi9ZVzdJaVlLc0liQWNiWS81?=
 =?utf-8?B?WGR2ZGFaYzIvOGFZZnZucmpVZE1sN2ppNk90akVjZWtpdlp2VnZIV1ozN1A3?=
 =?utf-8?B?eFFTb0lydjIrcll1ZVVsRmI0d0pDS0tNWEpubFlLZ1o1OFhsZllJT2RJa2Rm?=
 =?utf-8?B?NUM3NkNDMTI0RHVtRnVSMUdKVEFIZmp1WVowM1hQSk9YMjBEQ1ZsbVNRZHk3?=
 =?utf-8?B?RkUzaDUyZW0vRk1iMG1ZaW8rblh2ZVlnRmJaZWJidzZFaGFNYllNeThsK0di?=
 =?utf-8?B?UE5ad2IxaG9YZEYwMlBRN1FycGpXamRJQUdENW0xVkYyZXdicEpuTFdJb3Fp?=
 =?utf-8?B?aGVMNUx0dkp3enB1bldmbzBlWEE0R2tkWERZcU5MQm1pQlZwSEJxc0V4azd5?=
 =?utf-8?B?RjFtZXdWTXI1ejJqeUdXaGdDS1BISWxvZVRWaWxQTHdabHRpWXZnRlJYOVRq?=
 =?utf-8?B?bWhKQzRzZ1E0Q3V2YU9CWUdOMG1vQkdzeFcwYUw2NkJQcEY0YURFUnBKUk5v?=
 =?utf-8?B?NXJqRDFiYjBNNGxmWjZhV2FvK1VkaW9JY3BQSEoxQXJVSVhscndULzhNTDdD?=
 =?utf-8?B?UTZ1Z0ZndnlXTVRTSldRejVzUGFYQ1FPY0J4TVozcEh1eXNwZ2pzNXFIYlJW?=
 =?utf-8?B?RzJ5Vlp3Q3NZbW01UlIzS2NycHJVdWFDRFE0N2RPbTkyWnJkbnUvZ3NYZkhT?=
 =?utf-8?B?aWs2UGVXU0diaEhONXVZVHVqWm9NdU83c21ENkE5YXFodlR1YTNRSEJyZXlh?=
 =?utf-8?B?ckphdHlMcGl2OWVxWloxLzJrZUM3bHo3N2VhNUM3YU5iRnBNK0pZNk0vNHlp?=
 =?utf-8?B?WUNYWUVUbTVvNmRYbE1Qbk5hTlBNM1FKRE1FVHg2a2FFbWU2aHdiSmNTYXJ1?=
 =?utf-8?B?STlOMkl5cWFlaFNFbmgwcFlXL0EvdE04NlJuV3pjdi9sMW1CSXRjajFUdVpa?=
 =?utf-8?B?c3VVcFd1QzRxV1FUMkwyTlloYnc5aUdFTmhKS2hkd2oyZkRmRXh6NStTUFZt?=
 =?utf-8?B?RE1xNENXQTRoNmdhZS9UOWtwOHcrbFhXa05JVmhNQ2QwVHU2OW5ZdTBMVDFN?=
 =?utf-8?Q?WVvG8tfo0ot2i7cPKa?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 915ed456-0634-4146-bca8-08de5766048c
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2026 14:21:20.9979
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zwd4glkPGw8vvmzahsejUPWzb8asERqPe5fBFbCoxJlhmF5vfAomO67/Csb6q82i
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR12MB4377
X-Rspamd-Queue-Id: C15C83F734
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.92.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:40.80.0.0/12, country:US];
	RCPT_COUNT_TWELVE(0.00)[31];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.93.198.19:from];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: YN3WPVCMLDTMJUKBF6MQFTQYBWTMRBYX
X-Message-ID-Hash: YN3WPVCMLDTMJUKBF6MQFTQYBWTMRBYX
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma
 @vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 4/4] vfio: Add pinned interface to perform revoke semantics
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YN3WPVCMLDTMJUKBF6MQFTQYBWTMRBYX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMS8xOS8yNiAxNDowMiwgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPiBPbiBNb24sIEphbiAx
OSwgMjAyNiBhdCAwMToxMjo0NVBNICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4g
T24gMS8xOC8yNiAxMzowOCwgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPj4+IEZyb206IExlb24g
Um9tYW5vdnNreSA8bGVvbnJvQG52aWRpYS5jb20+DQo+Pj4NCj4+PiBETUFCVUYgLT5waW4oKSBp
bnRlcmZhY2UgaXMgY2FsbGVkIHdoZW4gdGhlIERNQUJVRiBpbXBvcnRlciBwZXJmb3JtDQo+Pj4g
aXRzIERNQSBtYXBwaW5nLCBzbyBsZXQncyB1c2UgdGhpcyBvcHBvcnR1bml0eSB0byBjaGVjayBp
ZiBETUFCVUYNCj4+PiBleHBvcnRlciByZXZva2VkIGl0cyBidWZmZXIgb3Igbm90Lg0KPj4+DQo+
Pj4gU2lnbmVkLW9mZi1ieTogTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZpZGlhLmNvbT4NCj4+
PiAtLS0NCj4+PiAgZHJpdmVycy92ZmlvL3BjaS92ZmlvX3BjaV9kbWFidWYuYyB8IDE2ICsrKysr
KysrKysrKysrKysNCj4+PiAgMSBmaWxlIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKykNCj4+Pg0K
Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3ZmaW8vcGNpL3ZmaW9fcGNpX2RtYWJ1Zi5jIGIvZHJp
dmVycy92ZmlvL3BjaS92ZmlvX3BjaV9kbWFidWYuYw0KPj4+IGluZGV4IGQ0ZDBmN2QwOGM1My4u
YWY5YzMxNWRkZjcxIDEwMDY0NA0KPj4+IC0tLSBhL2RyaXZlcnMvdmZpby9wY2kvdmZpb19wY2lf
ZG1hYnVmLmMNCj4+PiArKysgYi9kcml2ZXJzL3ZmaW8vcGNpL3ZmaW9fcGNpX2RtYWJ1Zi5jDQo+
Pj4gQEAgLTIwLDYgKzIwLDIwIEBAIHN0cnVjdCB2ZmlvX3BjaV9kbWFfYnVmIHsNCj4+PiAgCXU4
IHJldm9rZWQgOiAxOw0KPj4+ICB9Ow0KPj4+ICANCj4+PiArc3RhdGljIGludCB2ZmlvX3BjaV9k
bWFfYnVmX3BpbihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2htZW50KQ0KPj4+ICt7
DQo+Pj4gKwlzdHJ1Y3QgdmZpb19wY2lfZG1hX2J1ZiAqcHJpdiA9IGF0dGFjaG1lbnQtPmRtYWJ1
Zi0+cHJpdjsNCj4+PiArDQo+Pj4gKwlkbWFfcmVzdl9hc3NlcnRfaGVsZChwcml2LT5kbWFidWYt
PnJlc3YpOw0KPj4+ICsNCj4+PiArCXJldHVybiBkbWFfYnVmX2F0dGFjaG1lbnRfaXNfcmV2b2tl
KGF0dGFjaG1lbnQpID8gMCA6IC1FT1BOT1RTVVBQOw0KPj4NCj4+IEl0J3MgcHJvYmFibHkgYmV0
dGVyIHRvIGRvIHRoYXQgY2hlY2sgaW4gdmZpb19wY2lfZG1hX2J1Zl9hdHRhY2guDQo+IA0KPiBJ
IGFzc3VtZSB5b3UgYXJlIHByb3Bvc2luZyB0byBhZGQgdGhpcyBjaGVjayBpbiBib3RoDQo+IHZm
aW9fcGNpX2RtYV9idWZfYXR0YWNoKCkgYW5kIHZmaW9fcGNpX2RtYV9idWZfcGluKCkuIE90aGVy
d2lzZSwNCj4gaW1wb3J0ZXJzIHRoYXQgbGFjayAuaW52YWxpZGF0ZV9tYXBwaW5nKCkgd2lsbCBp
bnZva2UgZG1hX2J1Zl9waW4oKQ0KPiBhbmQgd2lsbCBub3QgZmFpbC4NCg0KdmZpb19wY2lfZG1h
X2J1Zl9hdHRhY2goKSBhbG9uZSBzaG91bGQgYmUgc3VmZmljaWVudC4gSXQgaXMgYWx3YXlzIGNh
bGxlZCwgZXZlbiBmb3IgaW1wb3J0ZXJzIGxhY2tpbmcgaW52YWxpZGF0ZV9tYXBwaW5nKCkuDQoN
ClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4gDQo+Pg0KPj4gQW5kIEJUVyB0aGUgZnVuY3Rpb24g
dmZpb19wY2lfZG1hX2J1Zl9tb3ZlKCkgc2VlbXMgdG8gYmUgYnJva2VuOg0KPj4NCj4+IHZvaWQg
dmZpb19wY2lfZG1hX2J1Zl9tb3ZlKHN0cnVjdCB2ZmlvX3BjaV9jb3JlX2RldmljZSAqdmRldiwg
Ym9vbCByZXZva2VkKQ0KPj4gew0KPj4gICAgICAgICBzdHJ1Y3QgdmZpb19wY2lfZG1hX2J1ZiAq
cHJpdjsNCj4+ICAgICAgICAgc3RydWN0IHZmaW9fcGNpX2RtYV9idWYgKnRtcDsNCj4+DQo+PiAg
ICAgICAgIGxvY2tkZXBfYXNzZXJ0X2hlbGRfd3JpdGUoJnZkZXYtPm1lbW9yeV9sb2NrKTsNCj4+
DQo+PiAgICAgICAgIGxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZShwcml2LCB0bXAsICZ2ZGV2LT5k
bWFidWZzLCBkbWFidWZzX2VsbSkgew0KPj4gICAgICAgICAgICAgICAgIGlmICghZ2V0X2ZpbGVf
YWN0aXZlKCZwcml2LT5kbWFidWYtPmZpbGUpKQ0KPj4gICAgICAgICAgICAgICAgICAgICAgICAg
Y29udGludWU7DQo+Pg0KPj4gICAgICAgICAgICAgICAgIGlmIChwcml2LT5yZXZva2VkICE9IHJl
dm9rZWQpIHsNCj4+ICAgICAgICAgICAgICAgICAgICAgICAgIGRtYV9yZXN2X2xvY2socHJpdi0+
ZG1hYnVmLT5yZXN2LCBOVUxMKTsNCj4+ICAgICAgICAgICAgICAgICAgICAgICAgIHByaXYtPnJl
dm9rZWQgPSByZXZva2VkOw0KPj4gICAgICAgICAgICAgICAgICAgICAgICAgZG1hX2J1Zl9tb3Zl
X25vdGlmeShwcml2LT5kbWFidWYpOw0KPj4NCj4+IEEgZG1hX2J1Zl9tb3ZlX25vdGlmeSgpIGp1
c3QgdHJpZ2dlcnMgYXN5bmNocm9ub3VzIGludmFsaWRhdGlvbiBvZiB0aGUgbWFwcGluZyENCj4+
DQo+PiBZb3UgbmVlZCB0byB1c2UgZG1hX3Jlc3Zfd2FpdCgpIHRvIHdhaXQgZm9yIHRoYXQgdG8g
ZmluaXNoLg0KPiANCj4gV2UgKFZGSU8gYW5kIElPTU1VRkQpIGZvbGxvd2VkIHRoZSBzYW1lIHBh
dHRlcm4gdXNlZCBpbiAgDQo+IGFtZGdwdV9ib19tb3ZlX25vdGlmeSgpLCB3aGljaCBhbHNvIGRv
ZXMgbm90IHdhaXQuDQo+IA0KPiBJJ2xsIGFkZCB3YWl0IGhlcmUuDQo+IA0KPiBUaGFua3MNCj4g
DQo+Pg0KPj4gICAgICAgICAgICAgICAgICAgICAgICAgZG1hX3Jlc3ZfdW5sb2NrKHByaXYtPmRt
YWJ1Zi0+cmVzdik7DQo+PiAgICAgICAgICAgICAgICAgfQ0KPj4gICAgICAgICAgICAgICAgIGZw
dXQocHJpdi0+ZG1hYnVmLT5maWxlKTsNCj4+ICAgICAgICAgfQ0KPj4gfQ0KPj4NCj4+IFJlZ2Fy
ZHMsDQo+PiBDaHJpc3RpYW4uDQo+Pg0KPj4NCj4+PiArfQ0KPj4+ICsNCj4+PiArc3RhdGljIHZv
aWQgdmZpb19wY2lfZG1hX2J1Zl91bnBpbihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRh
Y2htZW50KQ0KPj4+ICt7DQo+Pj4gKwkvKiBEbyBub3RoaW5nICovDQo+Pj4gK30NCj4+PiArDQo+
Pj4gIHN0YXRpYyBpbnQgdmZpb19wY2lfZG1hX2J1Zl9hdHRhY2goc3RydWN0IGRtYV9idWYgKmRt
YWJ1ZiwNCj4+PiAgCQkJCSAgIHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaG1lbnQp
DQo+Pj4gIHsNCj4+PiBAQCAtNzYsNiArOTAsOCBAQCBzdGF0aWMgdm9pZCB2ZmlvX3BjaV9kbWFf
YnVmX3JlbGVhc2Uoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikNCj4+PiAgfQ0KPj4+ICANCj4+PiAg
c3RhdGljIGNvbnN0IHN0cnVjdCBkbWFfYnVmX29wcyB2ZmlvX3BjaV9kbWFidWZfb3BzID0gew0K
Pj4+ICsJLnBpbiA9IHZmaW9fcGNpX2RtYV9idWZfcGluLA0KPj4+ICsJLnVucGluID0gdmZpb19w
Y2lfZG1hX2J1Zl91bnBpbiwNCj4+PiAgCS5hdHRhY2ggPSB2ZmlvX3BjaV9kbWFfYnVmX2F0dGFj
aCwNCj4+PiAgCS5tYXBfZG1hX2J1ZiA9IHZmaW9fcGNpX2RtYV9idWZfbWFwLA0KPj4+ICAJLnVu
bWFwX2RtYV9idWYgPSB2ZmlvX3BjaV9kbWFfYnVmX3VubWFwLA0KPj4+DQo+Pg0KDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

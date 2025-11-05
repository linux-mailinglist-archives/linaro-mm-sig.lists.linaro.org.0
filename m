Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 719BFC35093
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 05 Nov 2025 11:07:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 707F93F85D
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Nov 2025 10:07:52 +0000 (UTC)
Received: from BYAPR05CU005.outbound.protection.outlook.com (mail-westusazon11010013.outbound.protection.outlook.com [52.101.85.13])
	by lists.linaro.org (Postfix) with ESMTPS id E2C903F820
	for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Nov 2025 10:07:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=WPHUt4b1;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.85.13 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sJe2SmknfTqK6fEAoITjkI8hNPoOG8Xrwmfjg35DSheQ6VnzWXZPp8zfbhev/62cuehns9NANE5ssl9QEeTWYwnV+GHWI6nyW9qgbjSPgdbrxX4v5eL6EsBvpQJHcAQYQ41RXJSqDhVFIdCZ5dxy1aj8ZCg39a7iPJuxHldhbofgGfVTbhCSOGiTzcN99KLa6nfbV8crM+gE2j3JIpqt21xzfjqqhdVtX/egdU0GdPH5Np1Vo4U/8CsDoLLbaYV1wmIYjyanvDNuWEgjbcibHbeAYtK2aPQ9aq6MNB0qEFLXOimm2xDw8tW54zNw7x/XoSe3bgdWRTcIMz/GUCeeAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ac7lMtAupSsNw9cLRk18OYqLm4HZWAQuy1jpzRff6bI=;
 b=wVVsjaJYuTFq5nx3NROuQe8OKkfmn76Kr2aAERnx4C2Pwb0mJKJ08xqPYTN9pa0fqKpFuNfC2rcgy+YwHf4hVWfdP+ubW88PpHw3nfC1rhk/CuXoMmp4C6TwZ1Qr97Q6pRn+yHG90NgUAsEMOEr1VtmXjF8b1KyTjSN5+LO+DqZsCHJgswGGtqenSjz1/ttOtBkMBOjXG2dQ1pZdGMSeqn10fWap/Qbi0kBVqbjwBKR+KMQ9omTJV0esdigRp3TavMHY3WzC+s4gAmyZvIpYZRjZAjUT70/wezNC9RFgrOBwkayn8Viund8M7dNcBhiEDANTenjlA86nJ8tzI8lzhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ac7lMtAupSsNw9cLRk18OYqLm4HZWAQuy1jpzRff6bI=;
 b=WPHUt4b1B1Jnku1Hodm0s7BrrhN4a6deyU96Nk86G9VBLJaEVFK4+MqN3349u6T76tffd/mxsTRfo09Mh9YPJK3CJtyTMSNmpwX5yp6dGZeREnZw8vkx4c3ujgX++Dah1OxkbypgDk9j9j+mSEztEpyr4k3E3A1pFtoeZDgAC+U=
Received: from SJ0PR12MB5673.namprd12.prod.outlook.com (2603:10b6:a03:42b::13)
 by DS2PR12MB9799.namprd12.prod.outlook.com (2603:10b6:8:270::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.7; Wed, 5 Nov
 2025 10:07:37 +0000
Received: from SJ0PR12MB5673.namprd12.prod.outlook.com
 ([fe80::ec7a:dd71:9d6c:3062]) by SJ0PR12MB5673.namprd12.prod.outlook.com
 ([fe80::ec7a:dd71:9d6c:3062%4]) with mapi id 15.20.9275.015; Wed, 5 Nov 2025
 10:07:37 +0000
Message-ID: <9d3fb5f6-6e54-46e0-9b49-23bce4f4bfd9@amd.com>
Date: Wed, 5 Nov 2025 11:07:32 +0100
User-Agent: Mozilla Thunderbird
To: Pierre-Eric Pelloux-Prayer <pierre-eric@damsy.net>,
 Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>
References: <20251104083605.13677-1-pierre-eric.pelloux-prayer@amd.com>
 <20251104083605.13677-18-pierre-eric.pelloux-prayer@amd.com>
 <ca139b41-b4c3-4f0a-a2c1-8cfab6032625@amd.com>
 <9742acac-9402-4351-8cff-559ba6536629@damsy.net>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <9742acac-9402-4351-8cff-559ba6536629@damsy.net>
X-ClientProxiedBy: LV3P220CA0026.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:408:234::27) To SJ0PR12MB5673.namprd12.prod.outlook.com
 (2603:10b6:a03:42b::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR12MB5673:EE_|DS2PR12MB9799:EE_
X-MS-Office365-Filtering-Correlation-Id: 8485eabd-8ea2-45d6-47e9-08de1c5325cf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?V2pURGJlODBmWmJqd3o1OUg4RFZlOGFoN09lWWQrTDJmNHU2eHJrQkFMQVNM?=
 =?utf-8?B?ejM2QXhxODBYcHlmVDhOSUpMeTJzaTJJYXlVUTY4cHh2T282ajBUSE9JK2Ji?=
 =?utf-8?B?Z052WWpBVVNpdmNtUnRhVUk5aXZIVjVXTnNNOW9NMVJORzBqYTl4Z3FGNjNN?=
 =?utf-8?B?T01YM1FZUkN2Kytma0VPTGwyaXNVR212bi9CZlAxUXo0R0kyTUszSWQ2ZUMv?=
 =?utf-8?B?Yk9pU2FNT2hua2pjVWFzNzRGZHZTcTRBS3prMmFJTnNaTUd4WXBoK1F6ak11?=
 =?utf-8?B?ZGRMUnVRaHRoTVZVWTJqaEpMTHNKR3FuaTFod0hEVjF6MUhDMnJwQjJRMjhV?=
 =?utf-8?B?ZlJ4b0gycnBadXdLTlpqWm1zbzNrUFhVS0crRy9XQkFJS2c0RFM3aGtaQm14?=
 =?utf-8?B?RVhKZnZWM0ZrZE9sRGltZnNRblJhOHlpcmxxUzhzZVRGVURhWUtycFZQeTFt?=
 =?utf-8?B?SEt6SzhxVUREdzllSGdESFRjNXY4ajRJcXgzdG5vaFpZTG9BTHF4VUQvZ05n?=
 =?utf-8?B?eWpUakhMOTJqaHg0R2tVUE4vVGU3djdweTdCVi84UC9QcnAvMW9jVU1VYXFo?=
 =?utf-8?B?NTdwaWxmM0hRaWpsdXRvLzF6NVY2eUZWSnIzd3pqSVF3WExvb05mUWxYcnpl?=
 =?utf-8?B?bGRzWnBNVVBSaUUxL3VBZXhqMDNVRWFxRytxYW4velVkdTdUbndGSmx2VGtn?=
 =?utf-8?B?dndKdE54KzB5eGp0T0VBNk95Q2I1eUF6S0ZWQlNrL0IvN3dZK0JsNUVtSzJH?=
 =?utf-8?B?Vk1IQ204OGJOcisyWnJURU50T3hjWXZ4cUxBRTNBRDV4ODRhSW9vZEN6RWVK?=
 =?utf-8?B?QjVRSXRURExDVWI4ODRlZXBwOVhhRUtwS2tQeVUzRUVPMUs3MHJFMTlrRE41?=
 =?utf-8?B?VGF0UFZEUVZxYXdua1BmdFNnTEdHMzJ2ZzJCUTQrVEhEd1dwR3VBeE1udmxx?=
 =?utf-8?B?Y0lHSHVYVU1LRytjd29VZlBNR2c5eVdMVlhVbTRKc2dsSng5NjRHczIwZWJy?=
 =?utf-8?B?OEFJSy94M2NWM1k3WEtsRzY2SFpGV1k1YytvNENQOFArZ2ErWi9XNkxwMDIr?=
 =?utf-8?B?U0YrTk5aNCtDaVFZbHhiRkhQR3Q1SjB2RGNXK3FKUjFLZi85Zk9UdFNEemlw?=
 =?utf-8?B?QUx2cWlJWWNNVzNRVGRGbjl1cyt2WURiZnptUG1peW1GdGI4OCs1WVVWQmhT?=
 =?utf-8?B?NU9PT1dPeFZNdmVUU3lXMXZQc0laL1drMDZxNDNTU2NzVURxR2VoY25ER3ZN?=
 =?utf-8?B?aEtRcllpOFRaSlFuSi9kZ28zSUo4aitldE5jNGJJeERMY2NTc1JjZXJoOXZ6?=
 =?utf-8?B?THZpaWpha3MwSlc2QkhOYkVSMnFrTlM1U0lvbkVWT05QTDRLYlVlbS9QL1hq?=
 =?utf-8?B?M29wMmRZL0hpVkxmMnF3SGRtMmdVRUJiYXp2dkVHOXowTXFnQkRhN1ZFTThv?=
 =?utf-8?B?eTduRVh5V0Ezc0lUWC9ISm1MZFcyK0hhWExFWFgramViU1hMMkVLTjIrUkdT?=
 =?utf-8?B?Mkxwa0pSR3ZzQXhkT3FYT09mN0NYb3RiVE5uOFFkUVpsVW45Q3FyYzl3cmlP?=
 =?utf-8?B?YWozdis3TGFUV3pvTHBuVVhqVWxmbVZYamNaMTEwdld0aW5YZ21aSzYzc1Ju?=
 =?utf-8?B?Si82RDl3SE5pMjZCRXZiU045a0xNQUNWT1VSWnNNMXN0cy84a0xYWGkvcXhY?=
 =?utf-8?B?MjNsbXdVSU1NajgyWkdjQllyQ0VZcnNsSmx4SnZRMmsvQnJIU1htYjhVS0V4?=
 =?utf-8?B?RHI5VFdKWHpSNzl4dko1ejVTenRGUXJWZEg5eDcrUzBNZW1FQktlenZwWWRJ?=
 =?utf-8?B?UXFMK0UyQkZnOXhOaUEwaWhVM0xjZVFjTkdkb2ZidE0zMDE5ZnRndXNqUndV?=
 =?utf-8?B?NWRFWlA2VkpnakN3STBXZUJXaDYrZm41c0d1RWIyTFBBd0xPS1RBejN2V2Qr?=
 =?utf-8?Q?65/bk8AkZHE/3GDoJdJE5vWWmnKr+iyC?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR12MB5673.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cVh4T0UyckdzSkllTG5EYmV3MHRvRitXMWpPdkxRTnptSVZTeEYrY2NwWWdl?=
 =?utf-8?B?U0xaVDhWdHVDb3drU2RjTDBBZHFEUWNCNXBBbkZoUVpTeG90akhKM052UGFw?=
 =?utf-8?B?Uzk0N3lGOHZEa3hqMjkzNVZGWi9wMFlGdURYOTVYT2pQbXpzUkNaMDVWT1hJ?=
 =?utf-8?B?bWRRbnhUYXlqcXdTU3drZU9jMG0vemNqOGxNZFdMTXZEQU9xZmFnMTk2T3Iv?=
 =?utf-8?B?UytWWU90SVN5bGg4dDRhQmlVU1k2cWdsa09PeWs3TU9mc3VnRU5vS1VXeCtX?=
 =?utf-8?B?MGorUzZWaVViYkZYN3Ftb1ZIclovRXROYXJyYWFRbS9GNVpBVGFJQ2F0eUM2?=
 =?utf-8?B?ckV6R2tLSnNkYlhlZEV4Z2dIRzcvT1JmdHdqOHo2b3Q2WVJtenY1c1hqd2JT?=
 =?utf-8?B?MEZXcThaV2xOSnowRGplU2FHRTk1aWNUcGlOMFN1MjY4MTF4bVRJTUhIaW1p?=
 =?utf-8?B?ZlE3bVZUMmFhU0dZTGM4UGlPUGJNQ0ROejNQK3ZpWk0wT1FaMWVKRS9wR1gz?=
 =?utf-8?B?K20wbzhabEwrY2dGS082WjYxeXJ3YnFrdFJWcUpSZ3JFdXVvd1NSc2ZuaVVK?=
 =?utf-8?B?ancxY1Jxdy9PRTZVYUxuTW5HVXY4NllXT2Foak1LcGU2a1QwcDh4SStYNnpa?=
 =?utf-8?B?Nm96cjVtY1NuNEFvandNUlNaV1EzdmI5RSt5L2xUS0RTV1JMQUl1a1JlcDBE?=
 =?utf-8?B?RUt5SGl5Z28vV1Q2REI4WjRxcUhFRmwyeHU2bFlKZnFWZEdvWkE1a1RLWVNB?=
 =?utf-8?B?eUtaTk42Q3BmZEJFLzRuVDFRYjVqTmZvRnA3aGhFekJRUWlYcDFlaDh6Syty?=
 =?utf-8?B?QzlyaHE3bVhhdlUyTW1objBxQklxZ1NpYysrZ1VQUnljMW94VWJzOFRnNDAx?=
 =?utf-8?B?U2tRSUlqK1hKM0MvNXo5WjVyRG9EMzhRVThNcW02NWRxcUFUam94Yjh6MHlY?=
 =?utf-8?B?Y1U5UDljSk52WUdvYTNPSlYzR0ZOY0VPVnhzUXZKZHpyOHJ2WUluaURkd0tC?=
 =?utf-8?B?TldVZGlhZ1ZacTVmVmMwbjdoY090SlVUSk1OM0kvVE12QVBtam9KaVRsb1o5?=
 =?utf-8?B?NURGT1JPdmJHVUpNemZGdXdGMGdrVld0ZkdSRzBHTXlFMWtEODg4SGIyN3ZQ?=
 =?utf-8?B?cVlvRFkrRU1CdHVHRVJRRnQ1RmdlQTFxa2tLUG4rTGdxcHNaVExMU2VVTkIx?=
 =?utf-8?B?djQ0b29wSEFWdExGSmd1MDlrdUdCeGtENDc0Y0F4ZjR2VDI2RFNqdDdGWGZh?=
 =?utf-8?B?eCttRHFWalJabXdic09yQ0JwRXFsSVZzM3FLR1QyNVhENThXY28wdUN5VVFo?=
 =?utf-8?B?VXpsQWRwY2V2NnVWbUZaNVNpZ2xpNXgwZGc4YmVkelNQamR6bTFzRGJSZEFR?=
 =?utf-8?B?NCs1bXRyWHJhUk8wUDk5dzlVTEVBSGdpRUk0M3Bmc1h6YTlTZG5yMWdnbU1F?=
 =?utf-8?B?V0RnU09RdjB2dTZkZ3JqbHFET09KSFpYTkZrYTJZUWlSMUhob1FMNTdCeENt?=
 =?utf-8?B?OHRPRlVldnJ2bWU2eWhqbGtJYmZPZjJWVVh0YjI1emVMSmJyU25RUzlPNnFH?=
 =?utf-8?B?T2M5M3pTdDlGVWg3SjZ4OVB6aUozY01Fa1ZGTWNQNVhrMVpoTXdhSHlsVFVC?=
 =?utf-8?B?N2dEeE1NaWc1dEtJMzQvSldVY2tHaFBWSmREcGFxbzRjNVBuTTZJUFVUb1RC?=
 =?utf-8?B?b0pvVDBnSWtFUTZOSVd3YnYrYnAzR0pDNjM1WS9wZ2ZlNXZIekROTGk0R0NL?=
 =?utf-8?B?U3JPN1ZCTHhrbGMxNHRNeGIwTVJNa2wxSk9tOUVOOUhaT1k4MWZEWXlCeUly?=
 =?utf-8?B?UDVnaVNZemdhS3ozYTR3NmhWYm84OFZrcHRnUmNCSEs2TEhHVHkxZE5QdEVG?=
 =?utf-8?B?Y0IvMUlCUUlxdlZyVGdSMENxbFRyb28ya2ZIUHVVbjlpUmk1RHgxRjc2Z0VS?=
 =?utf-8?B?bi94VFVma1lNWUZ5dkxTdjFGMmlzR0d6SmhFZUN4L2tGNU9zS2FjQlluZDZh?=
 =?utf-8?B?Y0hOaExYKzFlZElaMUZsWHZWT1BpQXZMYkd3U0I4K2VDclpqeGRKcHJ5T2lO?=
 =?utf-8?B?TW9nOVgvUytjZjlwb0lWcGgyQUE0ZUNIZEhRazVCOU1SNTZpWlEzSE9KV0pS?=
 =?utf-8?Q?LobcKTTH1yJKP8ngyZYCl/6zr?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8485eabd-8ea2-45d6-47e9-08de1c5325cf
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR12MB5673.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 10:07:37.6568
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /gTE3K+8j7cS/yPZlXGNOc7zCr7E9ELv3oMB+NV7gjsaI4Iq0CA7dV10W45217d3
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS2PR12MB9799
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E2C903F820
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.85.13:from];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[damsy.net,amd.com,gmail.com,ffwll.ch,linaro.org];
	ASN(0.00)[asn:8075, ipnet:52.96.0.0/12, country:US];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: GTYMTITNV6U2WIOJOUWQ3RPXRZVHVO5R
X-Message-ID-Hash: GTYMTITNV6U2WIOJOUWQ3RPXRZVHVO5R
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1 17/20] drm/amdgpu: get rid of amdgpu_ttm_clear_buffer
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GTYMTITNV6U2WIOJOUWQ3RPXRZVHVO5R/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvNS8yNSAxMDozMCwgUGllcnJlLUVyaWMgUGVsbG91eC1QcmF5ZXIgd3JvdGU6DQo+IA0K
PiANCj4gTGUgMDUvMTEvMjAyNSDDoCAwOTo0NiwgQ2hyaXN0aWFuIEvDtm5pZyBhIMOpY3JpdMKg
Og0KPj4NCj4+DQo+PiBPbiAxMS80LzI1IDA5OjM1LCBQaWVycmUtRXJpYyBQZWxsb3V4LVByYXll
ciB3cm90ZToNCj4+PiBJdCdzIGRvaW5nIHRoZSBzYW1lIHRoaW5nIGFzIGFtZGdwdV9maWxsX2J1
ZmZlcihzcmNfZGF0YT0wKSwgc28gZHJvcCBpdC4NCj4+Pg0KPj4+IFRoZSBvbmx5IGNhdmVhdCBp
cyB0aGF0IGFtZGdwdV9yZXNfY2xlYXJlZCgpIHJldHVybiB2YWx1ZSBpcyBvbmx5IHZhbGlkDQo+
Pj4gcmlnaHQgYWZ0ZXIgYWxsb2NhdGlvbi4NCj4+Pg0KPj4+IFNpZ25lZC1vZmYtYnk6IFBpZXJy
ZS1FcmljIFBlbGxvdXgtUHJheWVyIDxwaWVycmUtZXJpYy5wZWxsb3V4LXByYXllckBhbWQuY29t
Pg0KPj4+IC0tLQ0KPj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9vYmpl
Y3QuYyB8wqAgOSArLS0NCj4+PiDCoCBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVf
dHRtLmPCoMKgwqAgfCA4NiArKysrLS0tLS0tLS0tLS0tLS0tLS0tDQo+Pj4gwqAgZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5owqDCoMKgIHzCoCAzIC0NCj4+PiDCoCAzIGZp
bGVzIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDgwIGRlbGV0aW9ucygtKQ0KPj4+DQo+Pj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9vYmplY3QuYyBi
L2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9vYmplY3QuYw0KPj4+IGluZGV4IDRh
NjkzMjRiYjczMC4uNDEwZTliNjhmZjgxIDEwMDY0NA0KPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdV9vYmplY3QuYw0KPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2FtZGdwdV9vYmplY3QuYw0KPj4+IEBAIC03MjMsMTUgKzcyMywxMCBAQCBpbnQg
YW1kZ3B1X2JvX2NyZWF0ZShzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiwNCj4+PiDCoCDCoMKg
wqDCoMKgIGlmIChicC0+ZmxhZ3MgJiBBTURHUFVfR0VNX0NSRUFURV9WUkFNX0NMRUFSRUQgJiYN
Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgYm8tPnRiby5yZXNvdXJjZS0+bWVtX3R5cGUgPT0gVFRN
X1BMX1ZSQU0pIHsNCj4+PiAtwqDCoMKgwqDCoMKgwqAgc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7
DQo+Pj4gLQ0KPj4+IC3CoMKgwqDCoMKgwqDCoCByID0gYW1kZ3B1X3R0bV9jbGVhcl9idWZmZXIo
Ym8sIGJvLT50Ym8uYmFzZS5yZXN2LCAmZmVuY2UpOw0KPj4+ICvCoMKgwqDCoMKgwqDCoCByID0g
YW1kZ3B1X2ZpbGxfYnVmZmVyKE5VTEwsIGJvLCAwLCBOVUxMLA0KPj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBOVUxMLCBBTURHUFVfS0VSTkVMX0pPQl9J
RF9UVE1fQ0xFQVJfQlVGRkVSKTsNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKHVubGlrZWx5
KHIpKQ0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gZmFpbF91bnJlc2VydmU7
DQo+Pj4gLQ0KPj4+IC3CoMKgwqDCoMKgwqDCoCBkbWFfcmVzdl9hZGRfZmVuY2UoYm8tPnRiby5i
YXNlLnJlc3YsIGZlbmNlLA0KPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgRE1BX1JFU1ZfVVNBR0VfS0VSTkVMKTsNCj4+PiAtwqDCoMKgwqDCoMKgwqAgZG1hX2ZlbmNl
X3B1dChmZW5jZSk7DQo+Pj4gwqDCoMKgwqDCoCB9DQo+Pj4gwqDCoMKgwqDCoCBpZiAoIWJwLT5y
ZXN2KQ0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBhbWRncHVfYm9fdW5yZXNlcnZlKGJvKTsNCj4+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jDQo+Pj4gaW5kZXggZDg4YmRi
MmFjMDgzLi4xZjU1M2M1NmYzMWQgMTAwNjQ0DQo+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2Ft
ZC9hbWRncHUvYW1kZ3B1X3R0bS5jDQo+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvYW1kZ3B1X3R0bS5jDQo+Pj4gQEAgLTI0MTIsNzUgKzI0MTIsNiBAQCBzdGF0aWMgaW50IGFt
ZGdwdV90dG1fZmlsbF9tZW0oc3RydWN0IGFtZGdwdV9yaW5nICpyaW5nLA0KPj4+IMKgwqDCoMKg
wqAgcmV0dXJuIDA7DQo+Pj4gwqAgfQ0KPj4+IMKgIC0vKioNCj4+PiAtICogYW1kZ3B1X3R0bV9j
bGVhcl9idWZmZXIgLSBjbGVhciBtZW1vcnkgYnVmZmVycw0KPj4+IC0gKiBAYm86IGFtZGdwdSBi
dWZmZXIgb2JqZWN0DQo+Pj4gLSAqIEByZXN2OiByZXNlcnZhdGlvbiBvYmplY3QNCj4+PiAtICog
QGZlbmNlOiBkbWFfZmVuY2UgYXNzb2NpYXRlZCB3aXRoIHRoZSBvcGVyYXRpb24NCj4+PiAtICoN
Cj4+PiAtICogQ2xlYXIgdGhlIG1lbW9yeSBidWZmZXIgcmVzb3VyY2UuDQo+Pj4gLSAqDQo+Pj4g
LSAqIFJldHVybnM6DQo+Pj4gLSAqIDAgZm9yIHN1Y2Nlc3Mgb3IgYSBuZWdhdGl2ZSBlcnJvciBj
b2RlIG9uIGZhaWx1cmUuDQo+Pj4gLSAqLw0KPj4+IC1pbnQgYW1kZ3B1X3R0bV9jbGVhcl9idWZm
ZXIoc3RydWN0IGFtZGdwdV9ibyAqYm8sDQo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3YsDQo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBzdHJ1Y3QgZG1hX2ZlbmNlICoqZmVuY2UpDQo+Pj4gLXsNCj4+PiAtwqDCoMKgIHN0
cnVjdCBhbWRncHVfZGV2aWNlICphZGV2ID0gYW1kZ3B1X3R0bV9hZGV2KGJvLT50Ym8uYmRldik7
DQo+Pj4gLcKgwqDCoCBzdHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmcgPSBhZGV2LT5tbWFuLmJ1ZmZl
cl9mdW5jc19yaW5nc1swXTsNCj4+PiAtwqDCoMKgIHN0cnVjdCBhbWRncHVfdHRtX2VudGl0eSAq
ZW50aXR5Ow0KPj4+IC3CoMKgwqAgc3RydWN0IGFtZGdwdV9yZXNfY3Vyc29yIGN1cnNvcjsNCj4+
PiAtwqDCoMKgIHU2NCBhZGRyOw0KPj4+IC3CoMKgwqAgaW50IHIgPSAwOw0KPj4+IC0NCj4+PiAt
wqDCoMKgIGlmICghYWRldi0+bW1hbi5idWZmZXJfZnVuY3NfZW5hYmxlZCkNCj4+PiAtwqDCoMKg
wqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7DQo+Pj4gLQ0KPj4+IC3CoMKgwqAgaWYgKCFmZW5jZSkN
Cj4+PiAtwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7DQo+Pj4gLcKgwqDCoCBlbnRpdHkg
PSAmYWRldi0+bW1hbi5jbGVhcl9lbnRpdGllc1swXTsNCj4+PiAtwqDCoMKgICpmZW5jZSA9IGRt
YV9mZW5jZV9nZXRfc3R1YigpOw0KPj4+IC0NCj4+PiAtwqDCoMKgIGFtZGdwdV9yZXNfZmlyc3Qo
Ym8tPnRiby5yZXNvdXJjZSwgMCwgYW1kZ3B1X2JvX3NpemUoYm8pLCAmY3Vyc29yKTsNCj4+PiAt
DQo+Pj4gLcKgwqDCoCBtdXRleF9sb2NrKCZlbnRpdHktPmdhcnRfd2luZG93X2xvY2spOw0KPj4+
IC3CoMKgwqAgd2hpbGUgKGN1cnNvci5yZW1haW5pbmcpIHsNCj4+PiAtwqDCoMKgwqDCoMKgwqAg
c3RydWN0IGRtYV9mZW5jZSAqbmV4dCA9IE5VTEw7DQo+Pj4gLcKgwqDCoMKgwqDCoMKgIHU2NCBz
aXplOw0KPj4+IC0NCj4+PiAtwqDCoMKgwqDCoMKgwqAgaWYgKGFtZGdwdV9yZXNfY2xlYXJlZCgm
Y3Vyc29yKSkgew0KPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGFtZGdwdV9yZXNfbmV4dCgm
Y3Vyc29yLCBjdXJzb3Iuc2l6ZSk7DQo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29udGlu
dWU7DQo+Pj4gLcKgwqDCoMKgwqDCoMKgIH0NCj4+PiAtDQo+Pj4gLcKgwqDCoMKgwqDCoMKgIC8q
IE5ldmVyIGNsZWFyIG1vcmUgdGhhbiAyNTZNaUIgYXQgb25jZSB0byBhdm9pZCB0aW1lb3V0cyAq
Lw0KPj4+IC3CoMKgwqDCoMKgwqDCoCBzaXplID0gbWluKGN1cnNvci5zaXplLCAyNTZVTEwgPDwg
MjApOw0KPj4+IC0NCj4+PiAtwqDCoMKgwqDCoMKgwqAgciA9IGFtZGdwdV90dG1fbWFwX2J1ZmZl
cigmZW50aXR5LT5iYXNlLA0KPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgJmJvLT50Ym8sIGJvLT50Ym8ucmVzb3VyY2UsICZjdXJzb3IsDQo+Pj4gLcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbnRpdHktPmdhcnRfd2luZG93
X2lkMSwgcmluZywgZmFsc2UsICZzaXplLCAmYWRkciwNCj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIE5VTEwsIE5VTEwpOw0KPj4+IC3CoMKgwqDCoMKgwqDC
oCBpZiAocikNCj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIGVycjsNCj4+PiAtDQo+
Pj4gLcKgwqDCoMKgwqDCoMKgIHIgPSBhbWRncHVfdHRtX2ZpbGxfbWVtKHJpbmcsICZlbnRpdHkt
PmJhc2UsIDAsIGFkZHIsIHNpemUsIHJlc3YsDQo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgICZuZXh0LCB0cnVlLA0KPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBBTURHUFVfS0VSTkVMX0pPQl9JRF9UVE1fQ0xFQVJfQlVGRkVSKTsN
Cj4+PiAtwqDCoMKgwqDCoMKgwqAgaWYgKHIpDQo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
Z290byBlcnI7DQo+Pj4gLQ0KPj4+IC3CoMKgwqDCoMKgwqDCoCBkbWFfZmVuY2VfcHV0KCpmZW5j
ZSk7DQo+Pj4gLcKgwqDCoMKgwqDCoMKgICpmZW5jZSA9IG5leHQ7DQo+Pj4gLQ0KPj4+IC3CoMKg
wqDCoMKgwqDCoCBhbWRncHVfcmVzX25leHQoJmN1cnNvciwgc2l6ZSk7DQo+Pj4gLcKgwqDCoCB9
DQo+Pj4gLWVycjoNCj4+PiAtwqDCoMKgIG11dGV4X3VubG9jaygmZW50aXR5LT5nYXJ0X3dpbmRv
d19sb2NrKTsNCj4+PiAtDQo+Pj4gLcKgwqDCoCByZXR1cm4gcjsNCj4+PiAtfQ0KPj4+IC0NCj4+
PiDCoCAvKioNCj4+PiDCoMKgICogYW1kZ3B1X2ZpbGxfYnVmZmVyIC0gZmlsbCBhIGJ1ZmZlciB3
aXRoIGEgZ2l2ZW4gdmFsdWUNCj4+PiDCoMKgICogQGVudGl0eTogb3B0aW9uYWwgZW50aXR5IHRv
IHVzZS4gSWYgTlVMTCwgdGhlIGNsZWFyaW5nIGVudGl0aWVzIHdpbGwgYmUNCj4+PiBAQCAtMjUw
OCw2ICsyNDM5LDkgQEAgaW50IGFtZGdwdV9maWxsX2J1ZmZlcihzdHJ1Y3QgYW1kZ3B1X3R0bV9l
bnRpdHkgKmVudGl0eSwNCj4+PiDCoMKgwqDCoMKgIHN0cnVjdCBhbWRncHVfcmVzX2N1cnNvciBk
c3Q7DQo+Pj4gwqDCoMKgwqDCoCB1aW50NjRfdCBjdXJfc2l6ZSwgdG87DQo+Pj4gwqDCoMKgwqDC
oCBpbnQgciwgZSwgbl9mZW5jZXM7DQo+Pg0KPj4+ICvCoMKgwqAgLyogVGhlIGNsZWFyIGZsYWcg
aXMgb25seSB2YWxpZCBkaXJlY3RseSBhZnRlciBhbGxvY2F0aW9uLiAqLw0KPj4+ICvCoMKgwqAg
Ym9vbCBjb25zaWRlcl9jbGVhcl9mbGFnID0NCj4+PiArwqDCoMKgwqDCoMKgwqAgc3JjX2RhdGEg
PT0gMCAmJiBrX2pvYl9pZCA9PSBBTURHUFVfS0VSTkVMX0pPQl9JRF9UVE1fQ0xFQVJfQlVGRkVS
Ow0KPj4NCj4+IEFic29sdXRlbHkgY2xlYXIgTkFLIHRvIHRoYXQuDQo+IA0KPiBJIHN1cHBvc2Ug
dGhlIE5BSyBhcHBsaWVzIHRvIHRoZSBjaGVjaywgbm90IHRoZSBnZW5lcmFsIGlkZWEgb2YgdGhl
IHBhdGNoPw0KDQpDb3JyZWN0Lg0KDQo+IEluIHRoYXQgY2FzZSwgd291bGQgcGFzc2luZyAiYm9v
bCBjb25zaWRlcl9jbGVhcl9mbGFnIiBhcyBhIHBhcmFtZXRlciBiZSBvayA/DQoNCkFuZCB0aGVu
IGRldGVybWluaW5nIHRoZSBrX2pvYl9pZCBiYXNlZCBvbiB0aGlzIG5ldyBmbGFnPyBZZWFoLCB0
aGF0IHNvdW5kcyBtdWNoIGNsZWFuZXIuDQoNCkNocmlzdGlhbi4NCg0KPiANCj4gUGllcnJlLUVy
aWMNCj4gDQo+Pg0KPj4gQ2hyaXN0aWFuLg0KPj4NCj4+PiDCoCDCoMKgwqDCoMKgIC8qIFRoZSBm
ZW5jZXMgd2lsbCBiZSBlaXRoZXIgYWRkZWQgdG8gdGhlIHJlc3Ygb2JqZWN0IG9yIHRoZSBsYXN0
IGZlbmNlDQo+Pj4gwqDCoMKgwqDCoMKgICogd2lsbCBiZSByZXR1cm5lZCB0byB0aGUgY2FsbGVy
LiBJbiB0aGUgbGF0dGVyIGNhc2UsIGFsbCBmaWxsIGpvYnMgd2lsbA0KPj4+IEBAIC0yNTMxLDYg
KzI0NjUsMTEgQEAgaW50IGFtZGdwdV9maWxsX2J1ZmZlcihzdHJ1Y3QgYW1kZ3B1X3R0bV9lbnRp
dHkgKmVudGl0eSwNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgd2hpbGUgKGRzdC5yZW1haW5pbmcp
IHsNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjdXJfc2l6ZSA9IG1pbihkc3Quc2l6
ZSwgMjU2VUxMIDw8IDIwKTsNCj4+PiDCoCArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoY29u
c2lkZXJfY2xlYXJfZmxhZyAmJiBhbWRncHVfcmVzX2NsZWFyZWQoJmRzdCkpIHsNCj4+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGFtZGdwdV9yZXNfbmV4dCgmZHN0LCBkc3Quc2l6
ZSk7DQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb250aW51ZTsNCj4+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9DQo+Pj4gKw0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIG5fZmVuY2VzICs9IDE7DQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYW1k
Z3B1X3Jlc19uZXh0KCZkc3QsIGN1cl9zaXplKTsNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfQ0K
Pj4+IEBAIC0yNTUwLDYgKzI0ODksMTEgQEAgaW50IGFtZGdwdV9maWxsX2J1ZmZlcihzdHJ1Y3Qg
YW1kZ3B1X3R0bV9lbnRpdHkgKmVudGl0eSwNCj4+PiDCoMKgwqDCoMKgIGFtZGdwdV9yZXNfZmly
c3QoYm8tPnRiby5yZXNvdXJjZSwgMCwgYW1kZ3B1X2JvX3NpemUoYm8pLCAmZHN0KTsNCj4+PiDC
oCDCoMKgwqDCoMKgIHdoaWxlIChkc3QucmVtYWluaW5nKSB7DQo+Pj4gK8KgwqDCoMKgwqDCoMKg
IGlmIChjb25zaWRlcl9jbGVhcl9mbGFnICYmIGFtZGdwdV9yZXNfY2xlYXJlZCgmZHN0KSkgew0K
Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGFtZGdwdV9yZXNfbmV4dCgmZHN0LCBkc3Quc2l6
ZSk7DQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29udGludWU7DQo+Pj4gK8KgwqDCoMKg
wqDCoMKgIH0NCj4+PiArDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIC8qIE5ldmVyIGZpbGwgbW9y
ZSB0aGFuIDI1Nk1pQiBhdCBvbmNlIHRvIGF2b2lkIHRpbWVvdXRzICovDQo+Pj4gwqDCoMKgwqDC
oMKgwqDCoMKgIGN1cl9zaXplID0gbWluKGRzdC5zaXplLCAyNTZVTEwgPDwgMjApOw0KPj4+IMKg
IEBAIC0yNTc0LDggKzI1MTgsMTAgQEAgaW50IGFtZGdwdV9maWxsX2J1ZmZlcihzdHJ1Y3QgYW1k
Z3B1X3R0bV9lbnRpdHkgKmVudGl0eSwNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBn
b3RvIGVycm9yOw0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCB9DQo+Pj4gwqAgKw0KPj4+IMKgwqDC
oMKgwqDCoMKgwqDCoCByID0gYW1kZ3B1X3R0bV9maWxsX21lbShyaW5nLCAmZW50aXR5LT5iYXNl
LA0KPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzcmNfZGF0YSwg
dG8sIGN1cl9zaXplLCByZXN2LA0KPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBzcmNfZGF0YSwgdG8sIGN1cl9zaXplLA0KPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCByZXN2LA0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAmZmVuY2UsIHRydWUsIGtfam9iX2lkKTsNCj4+PiDCoMKgwqDCoMKg
wqDCoMKgwqAgaWYgKHIpIHsNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtdXRleF91
bmxvY2soJmVudGl0eS0+Z2FydF93aW5kb3dfbG9jayk7DQo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uaCBiL2RyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV90dG0uaA0KPj4+IGluZGV4IGMwNTlhM2Q1MmI1Ny4uOTdlNzM5MTljYjBj
IDEwMDY0NA0KPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0u
aA0KPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uaA0KPj4+
IEBAIC0xODIsOSArMTgyLDYgQEAgaW50IGFtZGdwdV9jb3B5X2J1ZmZlcihzdHJ1Y3QgYW1kZ3B1
X3JpbmcgKnJpbmcsDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0
IGRtYV9yZXN2ICpyZXN2LA0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0
cnVjdCBkbWFfZmVuY2UgKipmZW5jZSwNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBib29sIHZtX25lZWRzX2ZsdXNoLCB1aW50MzJfdCBjb3B5X2ZsYWdzKTsNCj4+PiAtaW50
IGFtZGdwdV90dG1fY2xlYXJfYnVmZmVyKHN0cnVjdCBhbWRncHVfYm8gKmJvLA0KPj4+IC3CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGRtYV9yZXN2ICpyZXN2LA0KPj4+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGRtYV9mZW5jZSAqKmZlbmNlKTsN
Cj4+PiDCoCBpbnQgYW1kZ3B1X2ZpbGxfYnVmZmVyKHN0cnVjdCBhbWRncHVfdHRtX2VudGl0eSAq
ZW50aXR5LA0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBhbWRn
cHVfYm8gKmJvLA0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHVpbnQzMl90
IHNyY19kYXRhLA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK

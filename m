Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 33EF1C64E1E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Nov 2025 16:32:46 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 508423F8EB
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Nov 2025 15:32:45 +0000 (UTC)
Received: from CH1PR05CU001.outbound.protection.outlook.com (mail-northcentralusazon11010005.outbound.protection.outlook.com [52.101.193.5])
	by lists.linaro.org (Postfix) with ESMTPS id DFAE33F8EB
	for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Nov 2025 15:32:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=pO1t+XRx;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.193.5 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hTVVQOewk08KBun8kYmtSdnQRouj9kNrQZeH/xQrM1rZF7C3L5sKpRBjKCOiAlSz4wloY1AQMuL/NRJaNL1Oq1xSHeT5tuSVJEpSicAxIueNJWpY34KaIxqkgM+9lf1bH7WddvzM99hAw9u5DCVFgVk+QNYWTw/72cwfb80wDfGw8sSlrW43SZ8rN84rGRK0fpkSlvlrbNgzxobIpr3w8iRgxZbaE0B+72Zx8gZjeKHqBv2rOgpW2G5Ba/6J7Zih+0OHs4DiTx4uezTHr1v1ThmGjvrHdqGea8fz5w2pvpkNiFdKFzbLVXTcNoRrAYyq87xEEoTNdf7c4yhwO+8KPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IFul3CnH8KTgJxhxP7eTO1IILvRCcgLbG4BQ+WVcWHE=;
 b=svYOFwUqgb12E5ddf6uPVyELmy5E2vrl483icj8cJIaJxJSBw86s+xfpjnw0iN5splE9rF5M6Q06URHdL2QHIlFtvIjokEXkowdOtjHpLQ62Sd75irc07S5oe4YuC9qJsR7zS9QqLa7vTCQnerX3qFkxJy+GeuYYpqL4dNQs35UWCWc3nhSxVThRW14WNH72P+OlcpzFrsMWGurMoEbCtgGKzaZ+P3kFfqAs4thBmb2VYZL5wFnj1yrvwA7eEAGbJS8EbpCLYVyACeE88pfcqcHB9dxzwP8wu3Ekb8jFJU/ECeaL1q1Sbad7D3urm3W97GZBOigwcqObYevf5YIZDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IFul3CnH8KTgJxhxP7eTO1IILvRCcgLbG4BQ+WVcWHE=;
 b=pO1t+XRxK4KJiohJzt/8ZqWNh28CMPZU6I+otsX9xQC8Ty67BgZRp91k7cRBoC/rs2oaK2ea91AMqzwI68hWAh2kyP3IGwZ5TnUmHxvTgHiZfiypMsU/GwQCU7jomsFhiLqmO7VpySd1mu4QThPVVMrtU04jw8hj4OpHh4M51Vs=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DM6PR12MB4354.namprd12.prod.outlook.com (2603:10b6:5:28f::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.22; Mon, 17 Nov
 2025 15:32:25 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9320.021; Mon, 17 Nov 2025
 15:32:25 +0000
Message-ID: <6862f4a8-a23f-4930-aef7-802bc65a4d36@amd.com>
Date: Mon, 17 Nov 2025 16:32:18 +0100
User-Agent: Mozilla Thunderbird
To: phasta@kernel.org, alexdeucher@gmail.com, simona.vetter@ffwll.ch,
 tursulin@ursulin.net, matthew.brost@intel.com,
 dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org
References: <20251113145332.16805-1-christian.koenig@amd.com>
 <20251113145332.16805-9-christian.koenig@amd.com>
 <cfa60e2d9902602c41b277fd8bd254576b2f4187.camel@mailbox.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <cfa60e2d9902602c41b277fd8bd254576b2f4187.camel@mailbox.org>
X-ClientProxiedBy: BN9PR03CA0075.namprd03.prod.outlook.com
 (2603:10b6:408:fc::20) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DM6PR12MB4354:EE_
X-MS-Office365-Filtering-Correlation-Id: cd33d5f0-ca87-4223-b332-08de25ee8235
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?RjR2ZnBzQ0x5MGFERDdZMFV3V2E0bkYzUjA2dWpBT3dtRTRBL0k0Y0Vhalhj?=
 =?utf-8?B?TDkwa0ZIUnREWThUeHBad2JmYnJ4V29yY3A3YXdGaE91MnVsWHFQbVY3eSts?=
 =?utf-8?B?SUJkRHdNNFF5Mjl3RW9sWU5HQlZxbTZtdllYRjQ1dFo2Z1VvcmlUbXRHZldr?=
 =?utf-8?B?L0VOZnd3WGxIaHNUV0hzZGdOTXQ0bFdEQUZISVh2ZlN1SVRhRU9tNWpuQ0tG?=
 =?utf-8?B?MU4yLzlYZlR2aXVPUEV1QVhaem40WXJTRDRkZjdiVGJjUGlUTmhhTmdFYlFo?=
 =?utf-8?B?TzExNFB0WVVMcXhodmZCTHVHL3hGc2RxU0EvbTNjOFVCSWNDZURQZnJ4TXRk?=
 =?utf-8?B?cEovTmtOMUJOek56WDRZeGM0aUEwS2V2LzJXaXkxQzRHU1dCSDZ2cDArNEx2?=
 =?utf-8?B?MC9xYnJwOTZrRTRXTEErbnJGc0svUmIrZVFSMkhPcGdJdGVLbEhRcHdHcGtO?=
 =?utf-8?B?SU16VHVIZXl5cVo3SHFQSEljWHZ6b0w4SVhyV1dSdkJwOXBPNEQrbm5WRDQw?=
 =?utf-8?B?dTdWUHVaNlBZc1RIUU1sWnRHQVE5UU5EcnFRaER2VzdjLzUzcU1DNmZLWGNp?=
 =?utf-8?B?NjZLMzR6dHpFNk1scUxQdGc3bHpWYmNORVd3WHRXNW5jenBLMm5jOXN4MGRJ?=
 =?utf-8?B?VkRuN2x3S01CcXRrdmwyTG9IeFE5L3pCaHA2L2ZITCtPbGhZUHF6bi9jK25R?=
 =?utf-8?B?UzVuTFB2aEdWSmxsWGI0aTBoRG9SUWVPRGJ3bS80MkZrL01Idk1XUFBaN0tT?=
 =?utf-8?B?Rlo0SmFoQlVnUElWWkRaY2x5SFdvamV1VStJd2xvakpRSzNaVTBMcGp3TkIx?=
 =?utf-8?B?QTNMNjRrQVNHckR0eGl3NWRBaGYrSDhVKzZKcnkyWU1rNk4wbDltaHFSSE8z?=
 =?utf-8?B?ZTBSMWZuK2V6YzBvMlEwM3pNdDFIR1FxZDhlbnY5U2V2UnpOWFo5ekdObUxn?=
 =?utf-8?B?dG53U1FvVW5JR2h0ZSswQ1d1MmtIUG9FSGVESUwvbW10U015NExpek14Ukxi?=
 =?utf-8?B?Z1hmNHpoNU5jS2JpNFpPM2V5NFFldEUxSGJnaS9KT0lTcThXdDhyNHhDc2Vr?=
 =?utf-8?B?bDk2eWUzZ0VWYWI0MzQwVjZIWmVYQ3F3Y1JhZHo2QkN3N0YrK3VWd3RaRmhJ?=
 =?utf-8?B?NE1nS0Zhem91d0lmQUlERkVyeXBqZFVadG5hUlhIMW1qMnFMV3BCVmtCMTZX?=
 =?utf-8?B?eWN5K0I3QjNmUU9jU0tLUHpYY2huR2lnYXhHYXFrYUNtMC9ZSTFVTk1EWnB1?=
 =?utf-8?B?b0pkQ1JhYkpYc3ZDNi8rb2VMT1A1S1dPTEsyY0plVWJZL0VtaFliNVZPN2tK?=
 =?utf-8?B?TmtIZFV3b2lhUHlRNmNmTzZHSzlyMXZhSjZycjRKRG53KzdKck8ydTVocGRm?=
 =?utf-8?B?b2EwbmdhSjRyMXozaFlHMi9DczN3ZUhhK1ZPTWtqSmRaRkR3a3B6RExIRTY3?=
 =?utf-8?B?a3NQU0JQTjFsVUx6eDRGdVJleDZTN0kzaHJPZmdvNHlwK1k3R01NbmhGdmE1?=
 =?utf-8?B?Mm84RVBqYlEvQ0lkcC9IdmdTeWt0VHZ3cUZyZVJJNUhhZzIwbjV0NENZWCtF?=
 =?utf-8?B?UVFPTFpXUFNLamRtc0xiYU1XMDdXV1QzMkxTT09MblRpZEFjK1haK1dzRGwy?=
 =?utf-8?B?Ni85Rk40cXJlQzFKSVZOODdSbEg2VW53VU9jYWdaTTNtMXJpZDVTZFJXZjY5?=
 =?utf-8?B?M2lqeTRSUGUyL3BMRUdpVzZ0NGtpZjh0clRYcHJtRXFpR3dNVlFhVzJCQzZ3?=
 =?utf-8?B?SjRLeTU4a3VhQkI1VDNudjdUanhHSXZydkJJaGlLRU9USncyd3I3Rjk0Nm5T?=
 =?utf-8?B?OGRDcXJBQmhqOU8wVnh4aUxIMG4wbUt3YjJzdnBpek15YkZ6U0tzc2JFM3Iv?=
 =?utf-8?B?ZHZ6d2FjbkpQU0xvVTROU0ZEbGhja1VJR1JsR2ZEWDFkQ2E4dGJwY1JDZ2ht?=
 =?utf-8?Q?dSXC5bRh2NZRWmczfworI5oWZc1kCUn4?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?OEdIclVGZUQvai9HSUtSejZJY0c1dmRKcXJ3U0xOdGhuaE5maW1ISDRGZkxL?=
 =?utf-8?B?OGdoZklhYjcxdmp0OE9Kb2wvZUo5ckpYK1JHVHJVWmZ6bDlucGlvZlY2MEtk?=
 =?utf-8?B?R2Y0YzFON21EU3B4KzdubGJlZlF3dTVJMjA0UHNkNG1yajJzQ0JJNHFBaVdV?=
 =?utf-8?B?cUcrVjJwUWVYZ1NZajAydFhyaTlzT2ZGMldCb2l0WnA4Skx6b1ZTTUVnY1ly?=
 =?utf-8?B?YmVpTUJRTmJKWW4wLzVNaVJiUkl6ZFNSRmN6ekU0UmM5aEtZWUJLcUMxUkRm?=
 =?utf-8?B?U0N5S2h5MENvazk0NkdEaDFYQ3oxcVJMemhqbC9STEFmVVZVQTg0MFJORUVz?=
 =?utf-8?B?eW1xQkpRdGg2bWJQa0RWcEphTE4yQ0k0UGJWWVZhelJybzQwaTM0VnJ1Yzhx?=
 =?utf-8?B?eTVZZHIrQ1ZGb01Gckx1SUZYOVNiQ1dMNjBzL3hyWEkzemQ4Lyt2aWVVWmFS?=
 =?utf-8?B?bVlrNHVWU05OZlVZdEVBZ1NJYWgwalZhSTBjSUtpb3JQY1ZNVlZqL3RTOERU?=
 =?utf-8?B?OHcxNEZKYU1Ld05iSUpsZEIxTjNSVGowUVMxQ3dhVG94L2VLKzFGNnNIVmNx?=
 =?utf-8?B?MzErYlFKbU0zTFJLYTNVUld0U2NOQmpQdDhXOXBXNEVxeTl1dk1QeE4zSHVH?=
 =?utf-8?B?MTFmT0pTOEdXblU2V1lnZU1zSTVTMWd5SGhYTVVRODI0UmpNakl2RmEzb0da?=
 =?utf-8?B?RzhNQUhFeXhkZUkvcHA1eEMrOUpwazhpNWMxc1ArUmUzYllkcFRHaGNqWGRp?=
 =?utf-8?B?NUdyKzZlZndDdzdFRnV4RkJjWmVKYjRtZUVQQ2FnYU1Ya0N0U1FDVTZBS0xv?=
 =?utf-8?B?WkNua29YUk1pcWVuT2NDTUpTN1VaMDVaTDg3dm01a0NteGJvSDg4cVZEMzZN?=
 =?utf-8?B?ZndCSTY4djU0VFVtRS8xanV1bnpGNThQc3dhZG0vck1aK3lFczZOcmo1cHFI?=
 =?utf-8?B?V1FvYUp2SS84VGU3OWZJOHp1Vk1HeDhzQ29xVWZCazQzTStTbDJsN2VDY21W?=
 =?utf-8?B?R3VMRTBGT21JczNtSjY0MW1GUVAzVGxrQnVhUk5zZ1JBYm4vQ2RTN3hxN3hI?=
 =?utf-8?B?bW1hQmlxNEZScTZIOWFncWtNdjVyUC9TSWZFdkdYM1pJSHloY29adzJwMlhL?=
 =?utf-8?B?dnpaM1p2QkZiL0VkMmZtNGx5dGJnSGwwZUNqTjI3WGZGL3BZbmZBY2tuYzlW?=
 =?utf-8?B?MDFBRkdTcDQxcHc0OXZ2NkZqdnh6R3Vmc1A3a0lvaHZoa3h2OWtoL2srNzYr?=
 =?utf-8?B?ci85K2dENXoycVJuV2RpZHNPeEtiZjUwdG51cDNVWENidEFYRXpKcS9paUVo?=
 =?utf-8?B?bGdkRVpIL2ZOSVRkdTZOUm0vUWptN0lJTUxFc0Nub0lCV2haOHlCSWthclds?=
 =?utf-8?B?Z2ZsdDZOWWNiWGdVYkQ4RXlmK1l1L1B2SU0zTEdkS0QvaVd4RU05MVBDYTMr?=
 =?utf-8?B?dmtidEN0bithWGhvRGZzUytRNzIyenZBVStKcmgvQUhBS3psQUw3QmI1V1BO?=
 =?utf-8?B?cFI5VWw4cXNpbTdIcnBRVVJ2RlNxUjYzeXJBVlhsenRUMHhjWVBVUjhnaWd6?=
 =?utf-8?B?ZWhXMUUxRjdjeVZOS1NtV1prZmY0bnVNdE9RcmZLMnRPMU5Wc2dqd3F2cC9R?=
 =?utf-8?B?djJ3WUh1M1NIL1BrbWdxcVkraXR4dDJzaXV1K293cVArSGhCajMvS3Q4Lzln?=
 =?utf-8?B?SDZFOWlyY2FiWkZON1BydFpiTE8xWWs4cERURkw0RzdVOWd4Z0NRWG9DQXYx?=
 =?utf-8?B?OW1KNEV6c2QxeUoxTnpHUjNWd21ndVZPME5BamNEc0MvRHdVNitqVmlUeEQ3?=
 =?utf-8?B?bG9vb3VjR0FNUC9xdE1yZnV3VHJNOWNIeC92ekJjYThxTzRLSTdiWGtmSG1O?=
 =?utf-8?B?QTJiN3k2SVdtOHE0SjJXd3lReWVPbGNVV0R4V09HTkpwWE9NWnk5M1dWUFdy?=
 =?utf-8?B?MWI5N0xjeUIwdE9GQVFiaGQ1YmhDSjNTMlhMRUhOS21mYjhMbGVnVkZBdHVu?=
 =?utf-8?B?S1d4c29zc1NGNldVTjVibUh0aDF0dHNVd3VzUnhFNFp1NEhPUnoxZUpsNFJs?=
 =?utf-8?B?WDN5V3pTc2ZGSWs3end3K2ttT3dkT3RsVjVHWVBJZnA1MlREK0VaNGpzdVI0?=
 =?utf-8?Q?b4ENGqSEgm4i5RCbqvjYyuKMH?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd33d5f0-ca87-4223-b332-08de25ee8235
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2025 15:32:25.2960
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r1vQoFgqLeYrUVqs777s4Uj2nQ8MRGZtX/z8vHugL1VptgJGkFkXJjG1oRZb3hC5
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4354
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,ffwll.ch,ursulin.net,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.193.5:from];
	ASN(0.00)[asn:8075, ipnet:52.96.0.0/12, country:US];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DFAE33F8EB
X-Spamd-Bar: ----
Message-ID-Hash: NGNCX7O276DVUX54VUJV6AWKSYDHABIQ
X-Message-ID-Hash: NGNCX7O276DVUX54VUJV6AWKSYDHABIQ
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 08/18] drm/sched: use inline locks for the drm-sched-fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NGNCX7O276DVUX54VUJV6AWKSYDHABIQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMTMvMjUgMTc6MjMsIFBoaWxpcHAgU3Rhbm5lciB3cm90ZToNCj4gT24gVGh1LCAyMDI1
LTExLTEzIGF0IDE1OjUxICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4gVXNpbmcg
dGhlIGlubGluZSBsb2NrIGlzIG5vdyB0aGUgcmVjb21tZW5kZWQgd2F5IGZvciBkbWFfZmVuY2Ug
aW1wbGVtZW50YXRpb25zLg0KPj4NCj4+IFNvIHVzZSB0aGlzIGFwcHJvYWNoIGZvciB0aGUgc2No
ZWR1bGVyIGZlbmNlcyBhcyB3ZWxsIGp1c3QgaW4gY2FzZSBpZg0KPj4gYW55Ym9keSB1c2VzIHRo
aXMgYXMgYmx1ZXByaW50IGZvciBpdHMgb3duIGltcGxlbWVudGF0aW9uLg0KPj4NCj4+IEFsc28g
c2F2ZXMgYWJvdXQgNCBieXRlcyBmb3IgdGhlIGV4dGVybmFsIHNwaW5sb2NrLg0KPiANCj4gU28g
eW91IGNoYW5nZWQgeW91ciBtaW5kIGFuZCB3YW50IHRvIGtlZXAgdGhpcyBwYXRjaD8NCg0KQWN0
dWFsbHkgaXQgd2FzIHlvdSB3aG8gY2hhbmdlZCBteSBtaW5kLg0KDQpXaGVuIHdlIHdhbnQgdG8g
ZG9jdW1lbnQgdGhhdCB1c2luZyB0aGUgaW50ZXJuYWwgbG9jayBpcyBub3cgdGhlIG5vcm0gYW5k
IGFsbCBpbXBsZW1lbnRhdGlvbnMgc2hvdWxkIHN3aXRjaCB0byB0aGF0IGlmIHBvc3NpYmxlIHdl
IHNob3VsZCBwdXNoIGFzIG11Y2ggYXMgcG9zc2libGUgZm9yIHVzaW5nIHRoaXMgaW4gdGhlIGRy
aXZlciBjb21tb24gY29kZSBhcyB3ZWxsLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLiANCg0KPiAN
Cj4gUC4NCj4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 292FCAA053A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Apr 2025 10:13:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 11D294552B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Apr 2025 08:13:14 +0000 (UTC)
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (mail-mw2nam04on2048.outbound.protection.outlook.com [40.107.101.48])
	by lists.linaro.org (Postfix) with ESMTPS id 116FF43FEB
	for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Apr 2025 08:12:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=oyDpcRt9;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.101.48 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DdcYj2A/dTxctByKgZJo9x0DN1oSP/kqdwc6NP/44SIB3qPBVqvjGuaFvr0BdnxZGTsm2IuK0YEjvrrnLnklclsezCLpGjgpL6nNjY+05LK+w/zAre/Kzn/Z+/HnoeATsx/+jmACKWygscGTnXto+j/EomB/C8u+k36UOh8ThoUHp57FqMveOZ9ie0h+ZKh6JUBbTZ3+2jep65Wz52kZhplWoAc4V5yQq60ZaaZcPdO996y3Od01qMFzY3ckZsDnZPSeJFIQPg4+1L+GxYtyoS0uiNm3w2dNdiRO8KNWq7RO7cFgHnNKNhpnApN+LgJOHyF6NEOv8UDGWCcHKzrlPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WeX3rMeEJ2I+horWWVpFZy1fQBt/2ys/vpfhp/9FGmg=;
 b=igRq+eYc9dsdMmIqumMMMHKz63vntqg2LlwQ4fL1Ow593776JL9lB4Sj0zzkOJg3Qjtd+Eo3QdvinRogGWyrKnVsTIVLEils8iZ8i2tYjtCgoE1bXT7lNc9+BVT1TeNfi5FFj5ZogmR1RV9b3aZv1G8/ievU1G3PiVjc4cqWRQKsYyswt4LUzTLRaQ/OPxoq+bp6qs7MqP5/9jNYc9ss6NuXSjVcNO24PCAYYq9qcjrL9Jx/quNIJuQAaokj8A6NH2vQPZm4oZT3/9nqw9IytrUKhThld2khuUtbNApqeaYryhshJsZZfCAzMW77RIpFy8tpyHREKqzqK0iGMP1xBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WeX3rMeEJ2I+horWWVpFZy1fQBt/2ys/vpfhp/9FGmg=;
 b=oyDpcRt9WOrEedgZIbPzYIk5FcZB/S+lcJ35fdgeKNQarDlD7EQiElOix/rSVogO48df56tZQ8puQllNjaTv2pIiTsAYRKniK41Q7Gc0p0UvgD5OwzDj1y0bnp2VKAsrnQ00LOrtZSwdUbhF38IP19+YtDithQ1ugJWUVzN91HI=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by PH7PR12MB6836.namprd12.prod.outlook.com (2603:10b6:510:1b6::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.34; Tue, 29 Apr
 2025 08:12:55 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%7]) with mapi id 15.20.8678.028; Tue, 29 Apr 2025
 08:12:55 +0000
Message-ID: <72b7e968-10cb-4db6-8a1a-dc39187c7855@amd.com>
Date: Tue, 29 Apr 2025 10:12:50 +0200
User-Agent: Mozilla Thunderbird
To: Nicolas Dufresne <nicolas@ndufresne.ca>,
 Bastien Curutchet <bastien.curutchet@bootlin.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20250410-uio-dma-v1-0-6468ace2c786@bootlin.com>
 <20250410-uio-dma-v1-2-6468ace2c786@bootlin.com>
 <d19639fb0fbe5c0992a69d7783e6fad91c50561b.camel@ndufresne.ca>
 <aBB0NNOg47XHIjpq@phenom.ffwll.local>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <aBB0NNOg47XHIjpq@phenom.ffwll.local>
X-ClientProxiedBy: FR4P281CA0093.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:cb::12) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|PH7PR12MB6836:EE_
X-MS-Office365-Filtering-Correlation-Id: 9e408065-92ac-422a-d264-08dd86f5a4f1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?cTNnYTd2QnBYY1pBY3A1REZ5eDdCdWdhc0xQTDFzeStHWURRbHNtVTBUdmFH?=
 =?utf-8?B?RWd0bWw4MGZpVGZDb0loU0EwSE9MQ2RRS0dCOUx2d0M1blRtTDVSQWNmbjZr?=
 =?utf-8?B?eDJoVHNvK1hKY2FtNUhIazZidk4vVjdBKzNCdVMrOUdWZ1pxdzdVVEdBQzZF?=
 =?utf-8?B?WUpwVzlZTWRMTVl6VG1UMGFaZFZnUEZqSjExaFdINVBNb0dXLzNhUU56cGla?=
 =?utf-8?B?THlZNW9HcnhSaVBxam44Qk1JdG1XYTJSaU1BUDYrZ1B4S0RVK2o1OXB6MVBZ?=
 =?utf-8?B?N003Y2FJNkFHK3J4NlJ3cTZKYnhWS3lVRWk3TkFQK3ZLb2lGWjdNMWRKUnZv?=
 =?utf-8?B?WUFpU2U5cW1DeldSd0RsSGdyNlF1K3htWlMvR0dYbkpaOTNYMFRKYnZ4dWdo?=
 =?utf-8?B?bVF0aXhDaXl5bUxMeG5IWkUxTkpzejNyZGxZVkY1U2ptQlpGb2VFNXVNcW1a?=
 =?utf-8?B?ai9DdVVzT3QzUExOSW8wOXJMajI5K25yblV1di9lUVk3ZkNCdzVXZEpUblh0?=
 =?utf-8?B?R3BRNnRNR0hMd1Z4T3lxUGpOWktEeFIwV1FXK0J2T1lzMUlsZHMwdTZ5eXVW?=
 =?utf-8?B?VE56QkNtazE1M0cxUmxKaXBuWlNCQjFJY0QxNHFFS0hZekpxWE9EZFZVVUp3?=
 =?utf-8?B?dytGUzhab0I2ZS81VWdjcCtwYkZvak5xTXQzWkZBUWxMbVZEL09va2tHcG1a?=
 =?utf-8?B?Ujc4QUFOTDZoVm8xcmxPVmI5cy9pYjU0dHR4ZGFMd3BvR3RmbnlmZVZrRW5h?=
 =?utf-8?B?OTE3dzR5QlNwQTZnckFvTDBVbmlQWDhBcEpTZmRMZmJMSVNDcVlST2FNai9y?=
 =?utf-8?B?c0VRTmNvNEsvU3NITG0xSExiQkpGSEp2QmNrVE10c1A2VGFqTnpMdkRJVy9l?=
 =?utf-8?B?bHh6K0lLRWVWOE9RMmkxNEpZOU52VU5OS1ZxbkVEWFBJbVQvRGg4RGE5d1li?=
 =?utf-8?B?MjBUeWVIYUtlU2kycGZrbWdxWW9WTjNBcDQ3UE8wc09tY0ZFZEg4VW8zOGlR?=
 =?utf-8?B?NlA1enZJbWlkSUNZVS9Cd3psUktubTM3MlM1M1VwLzVEVUVSV09aUXZsOWdl?=
 =?utf-8?B?ZkJlcHRNdytVQ2RkblRZcXI4amxvQ3JXSDdkNWRRNThvdVZIajhnRnV5ME9t?=
 =?utf-8?B?NHhvZzVybzZMSTJRZjd1UlNrQXZWbVJ0U2UrM3JQM1c1dGFwbmJsVWZSUWNF?=
 =?utf-8?B?Z1FKOWMwaXBDVnlWS2poNzB1MW44cTRaUk1JR05Ra01NcUppU3RhQjF6a2xT?=
 =?utf-8?B?M0p0ekFQNm5pTExxQjA2b1lINnI0MEZYU1JGS2h0TzRRcFdtRUZtSzhGYWpp?=
 =?utf-8?B?L25TTTF3TmlhN05pc1o0NEZ1NHljRGpUeTdTUVJXRzBDNVE4ZVlITVI3VlBF?=
 =?utf-8?B?WE5OQUNHSTg3RDVIK2l6ME9oQ0ZjeG5tRG83S0FxYkNVWHlIYTh4SGVMRDUz?=
 =?utf-8?B?RmJwTWNhTE5GVnBRck5yYUxvamcvamdBTEpNNkNGbENSNXArTlBCVXhFUkdq?=
 =?utf-8?B?WXZSY25JUnFQVS9FN09rUEd1VzUzdVdDbzJhd1p1QU81bUN2YnpCUjRmTnI4?=
 =?utf-8?B?WTZxSjM5UjI5OWd0Z0U1VzhTME9vaWpXYS9YOGdYeXYyRjlLMTdoL2hNMUtN?=
 =?utf-8?B?eFE0dE9EbHp6cmF3dEV6WFIwbW15dlEvZk1leFNUdmE4a25Cb2txSmY4a1VX?=
 =?utf-8?B?QUc3U2dJajlCRUF3Z0t0MHBjUEJQeXZRWmFnYUNKdEJsaWlSaXNTL2djbkhx?=
 =?utf-8?B?YUlGSHg0QlQ4ZlhndHNHb2RFYXMvN2srb2lVSXVzdFlWQWxYWEtyTHJ1Tkw0?=
 =?utf-8?B?em1rMGNhclhDa1h5RHhyeXg2UitQMlRMNzhRakRQOGkvcE9JUG5zclVRVE4x?=
 =?utf-8?B?ZDB2SjlaZEVhQkl1VXFWUm0vSEw5d2EvdTBKS0ZIRFhWeUg1V0ZsSTRKa2xR?=
 =?utf-8?Q?sJ2zybJJyKY=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?a2VTZ2lxaUhMR09aWFlzMWFHa0l2M0ZUWTR1MTdGTWhPS1AyM2pTYkxZb2xR?=
 =?utf-8?B?K3F0Vmk2ZFdmdkhRNDROTm5uL1BndzkrWGFtVnJCelVtTjlFNXZlQWNPY1da?=
 =?utf-8?B?L3p0TXZZR1FPb1JsbmgzZmVQMzVnTTdVaGNHVmNQNGdVZkpGYzlMdjZ4VjQ1?=
 =?utf-8?B?UHhTWHdiVzVPR1RUbjJCRmV6Y2NkdDBrR0lUY2lOc0RTTS91ZC9mS1pzM2Fa?=
 =?utf-8?B?WFA1STRmTGlWZGlDM3p6Z0tXUWZJRDBBcjBxYnRWRG1Ed2pCS0R6VTg5Y3lD?=
 =?utf-8?B?ZWwrREoyamJFYlZPVHpTY1dZam5xRkhqTjdyaWFjbThLaTZ1U3Zic3lmRnJL?=
 =?utf-8?B?VzI4bjFPTWRRNm1SVEJGQXhrQUhRNWd1d3NHU1FQNFF4K283WlZ3ZjhONlZa?=
 =?utf-8?B?a2xnY3k4d0pDZGl6UkJwd1A4YTNsS3YvUEhCd2hIbmJQQlkrbUNaRnNDZ1B1?=
 =?utf-8?B?QXE5NnlDV2M0N2MvQWh4enBwRnU2eXBnUWFDRGVtOE5xNjdUWDc4dG5aTE5K?=
 =?utf-8?B?ZEtXZmRVK0dkM05Na1VlMGJvZHRNQWNZMkhRUVhZQ3BwZStvelQvQ3JmSjVL?=
 =?utf-8?B?Q2hNc0xheDRBNHkxTllRcCtVU3ZhdHlmY1BVcms5L1QzNlg0MVBPczNrUkEv?=
 =?utf-8?B?amxyNDE3WkJOanNZNUN2SGdXeGRyK0YxbmdnTGdmSDRIU05IUVJJUW93UXQw?=
 =?utf-8?B?bmFGZDhnbUJNK083SjBoOTQ1U0hjTUhhWXpoWkVhTVJwaFFtOEpaTXZBaDdK?=
 =?utf-8?B?bFM5L3pPWW04MTFXMHhFN0lOdWNIQkJMZXVqWVZvWTlRUGlSc0FBTnNkc3lV?=
 =?utf-8?B?N0pSVjY0UjdDcmtKb2R4ZUtuQWhkL2VjU3RUc2NDbnRjN1FmMVpSWXNUbDdw?=
 =?utf-8?B?b2p4MlFETmpNSzFUdTcrWEFXM0c4Uk1Bb1RBNlk1QnBGbFZUN0RQT3o4OWh5?=
 =?utf-8?B?OUZzelIxSVM5Yks4OTIzMnZSaGdqWkFwL01QYlA1bXBFSmFKbDZKcEVqbXJo?=
 =?utf-8?B?c0VIWTl5ZzJ3d05OR2RURGRTQVFOSGVnSU1EK2NMaTVUTDdUaFBXR1JDVHNX?=
 =?utf-8?B?Q2FIWHlzMXFDMzk5enBRQlVycllrcTAwa3RuS1VNb3ZTV3dzVWR5RTg1YlJ6?=
 =?utf-8?B?TnFFODljQUVRcElFRFR6WWpwNXlZQzNNSXFhTS9NeENmRjlDeENkY1N5VjdH?=
 =?utf-8?B?U0cvWVpBeVBxbUVvTUc5bGtEYjZNWjArT08xU3A3dFBXV3RQN0J0Y2dtR1g4?=
 =?utf-8?B?N2t4R2FsMVpDZE1YY1RvN2pYVVhEYVZjQWFqaXk3cVNFUHc5bzVpbWlPc25M?=
 =?utf-8?B?UkFSTlBaa25nT0U2Um1PQ3hYLyt2N2VRRnEzM1cvZ1lWaHN4QkFFejZFS3Mx?=
 =?utf-8?B?T1lFbldQY2ZkeHFiWXMxRGlxSUN3dmtNM3NNZUtpWHFyVW4wR2FnOXpRL2U2?=
 =?utf-8?B?cVU2SFg1T0xLVzd4SEVzK0xoYjFqV1F3U3dvd3FQYXVrQ1FHa094d2RkSUlO?=
 =?utf-8?B?WU51V0ErTFRDTGJ6dGoxWkpMNEd2S2thSHlHck1OM0JwNXF3U253TklTU0RX?=
 =?utf-8?B?ekphOFhZVG5sVTRBTFJOd1p1Um5KLzg1NmJlcjUwNDU1Y1ZvRHpwdFE2S00z?=
 =?utf-8?B?UWVmb2FKZVZ6Uk51UTFIRk04a28vN2xOc0NUaDE2U0FoUStuVThnUE40M3po?=
 =?utf-8?B?cisxLzhhL0NjMmpFTjdieFQ4UFBDYWwyUDJXRjliUmZGa2owYTFMdWJYRU0y?=
 =?utf-8?B?U2ljbVc3Wm9pb01UUFZhVXZzRVRnZDRqS3czcXUwMHNJaVVtbkNlSGVaSUFi?=
 =?utf-8?B?YmxCNzF6RTAvcWRLOTV5R3lycENpL1l5WmxIdWdVMlFxMFJxN1dRbjZ4aTRT?=
 =?utf-8?B?cXJwcjlRckE0WjFVTlZLM3pCMkI4QTRHaHV1VUt1WGx5ZTBnaEZwYTViSTBF?=
 =?utf-8?B?SzIweHVDQW9UYjRwYlhzK3czWUNZS0F2MlJ1ZlloVzBTWk11alhxeGVjaW5W?=
 =?utf-8?B?b1FGc2l5bm1VWTN6WG52RllDaXpyeHVpdjVHMm5Jb1Q0QTljdUJHem9IWEVD?=
 =?utf-8?B?dnMwYzFsVE9sNVF2Mktyb3BnT29leitmWnY4dzBtc2xZNTVWRFQwc1BmS2g1?=
 =?utf-8?Q?65uEzf6HUPsNFCBPYvruzc67i?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e408065-92ac-422a-d264-08dd86f5a4f1
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2025 08:12:55.0143
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5ICx6Ei5SKdrpVlS5qFpD7eczb7wJMSn9sq4l0BkV2Jm+ImE9JRyqhmHk46Ho6la
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB6836
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 116FF43FEB
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[40.107.101.48:from];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.101.48:from];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[40.107.101.48:from];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: KVN3WQ7CNH3MIVJYPRDVRGRR252XDHXU
X-Message-ID-Hash: KVN3WQ7CNH3MIVJYPRDVRGRR252XDHXU
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/3] dma-buf: Add DMA_BUF_IOCTL_GET_DMA_ADDR
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KVN3WQ7CNH3MIVJYPRDVRGRR252XDHXU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNC8yOS8yNSAwODozOSwgU2ltb25hIFZldHRlciB3cm90ZToNCj4gQ2F0Y2hpbmcgdXAgYWZ0
ZXIgc3ByaW5nIGJyZWFrLCBoZW5jZSB0aGUgbGF0ZSByZXBseSAuLi4NCj4gDQo+IE9uIEZyaSwg
QXByIDExLCAyMDI1IGF0IDAyOjM0OjM3UE0gLTA0MDAsIE5pY29sYXMgRHVmcmVzbmUgd3JvdGU6
DQo+PiBMZSBqZXVkaSAxMCBhdnJpbCAyMDI1IMOgIDE2OjUzICswMjAwLCBCYXN0aWVuIEN1cnV0
Y2hldCBhIMOpY3JpdMKgOg0KPj4+IFRoZXJlIGlzIG5vIHdheSB0byB0cmFuc21pdCB0aGUgRE1B
IGFkZHJlc3Mgb2YgYSBidWZmZXIgdG8gdXNlcnNwYWNlLg0KPj4+IFNvbWUgVUlPIHVzZXJzIG5l
ZWQgdGhpcyB0byBoYW5kbGUgRE1BIGZyb20gdXNlcnNwYWNlLg0KPj4NCj4+IFRvIG1lIHRoaXMg
QVBJIGlzIGFnYWluc3QgYWxsIHNhZmUgcHJhY3RpY2Ugd2UndmUgYmVlbiBwdXNoaW5nIGZvcndh
cmQNCj4+IGFuZCBoYXMgbm8gcGxhY2UgaW4gRE1BX0JVRiBBUEkuDQo+Pg0KPj4gSWYgdGhpcyBp
cyBmaW5lIGZvciB0aGUgVUlPIHN1YnN5c3RlbSB0byBwYXNzIGFyb3VuZCBwaHlzaWNpYWwNCj4+
IGFkZHJlc3NlcywgdGhlbiBtYWtlIHRoaXMgcGFydCBvZiB0aGUgVUlPIGRldmljZSBpb2N0bC4N
Cj4gDQo+IFllYWgsIHRoaXMgaGFzIG5vIGJ1c2luZXNzIGluIGRtYS1idWYgc2luY2UgdGhlIGVu
dGlyZSBwb2ludCBvZiBkbWEtYnVmDQo+IHdhcyB0byBzdG9wIGFsbCB0aGUgbmFzdHkgImp1c3Qg
cGFzcyByYXcgZG1hIGFkZHIgaW4gdXNlcnNwYWNlIiBoYWNrcyB0aGF0DQo+IHByZWNlZWRlZCBp
dC4NCj4gDQo+IEFuZCBvdmVyIHRoZSB5ZWFycyBzaW5jZSBkbWEtYnVmIGxhbmRlZCwgd2UndmUg
cmVtb3ZlZCBhIGxvdCBvZiB0aGVzZSwNCj4gbGlrZSBkcmkxIGRyaXZlcnMuIE9yIHdoZXJlIHRo
YXQncyBub3QgcG9zc2libGUgbGlrZSB3aXRoIGZiZGV2LCBoaWQgdGhlDQo+IHJhdyBkbWEgYWRk
ciB1YXBpIGJlaGluZCBhIEtjb25maWcuDQo+IA0KPiBJIGNvbmN1ciB3aXRoIHRoZSBvdmVyYWxs
IHNlbnRpbWVudCB0aGF0IHRoaXMgc2hvdWxkIGJlIGRvbmUgaW4NCj4gdmZpby9pb21tdWZkIGlu
dGVyZmFjZXMsIG1heWJlIHdpdGggc29tZSBzdXBwb3J0IGFkZGVkIHRvIG1hcCBkbWEtYnVmLiBJ
DQo+IHRoaW5rIHBhdGNoZXMgZm9yIHRoYXQgaGF2ZSBiZWVuIGZsb2F0aW5nIGFyb3VuZCBmb3Ig
YSB3aGlsZSwgYnV0IEkgbG9zdCBhDQo+IGJpdCB0aGUgc3RhdHVzIG9mIHdoZXJlIGV4YWN0bHkg
dGhleSBhcmUuDQoNCk15IHRha2UgYXdheSBpcyB0aGF0IHdlIG5lZWQgdG8gaGF2ZSBhIGRvY3Vt
ZW50ZWQgd2F5IGZvciBzcGVjaWFsIGRyaXZlciBzcGVjaWZpYyBpbnRlcmZhY2VzIGluIERNQS1i
dWYuDQoNCkluIG90aGVyIHdvcmRzIERNQS1idWYgaGFzIHNvbWUgc3RhbmRhcmRpemVkIHJ1bGVz
IG9mIGRvaW5nIHRoaW5ncyB3aGljaCBldmVyeSBpbXBsZW1lbnRhdGlvbiBzaG91bGQgZm9sbG93
LiBUaGUgaW1wbGVtZW50YXRpb25zIG1pZ2h0IG9mIGNvdXJzZSBzdGlsbCBoYXZlIGJ1Z3MgKGUu
Zy4gYWxsb2NhdGUgbWVtb3J5IGZvciBhIGRtYV9mZW5jZSBvcGVyYXRpb24pLCBidXQgYXQgbGVh
c3Qgd2UgaGF2ZSBkb2N1bWVudGVkIHdoYXQgc2hvdWxkIGJlIGRvbmUgYW5kIHdoYXQncyBmb3Ji
aWRkZW4uDQoNCldoYXQgaXMgc3RpbGwgbWlzc2luZyBpbiB0aGUgZG9jdW1lbnRhdGlvbiBpcyB0
aGUgdXNlIGNhc2Ugd2hlbiB5b3UgaGF2ZSBmb3IgZXhhbXBsZSB2ZmlvIHdoaWNoIHdhbnRzIHRv
IHRhbGsgdG8gaW9tbXVmZCB0aHJvdWdoIGEgc3BlY2lhbGl6ZWQgaW50ZXJmYWNlLiBUaGlzIGRv
ZXNuJ3QgbmVjZXNzYXJpbHkgbmVlZHMgdG8gYmUgcGFydCBvZiBETUEtYnVmLCBidXQgd2Ugc2hv
dWxkIHN0aWxsIGRvY3VtZW50ICJkbyBpdCB0aGlzIHdheSIgYmVjYXVzZSB0aGF0IGhhcyBhbHJl
YWR5IHdvcmtlZCBpbiB0aGUgbGFzdCB0ZW4gdXNlIGNhc2VzIGFuZCB3ZSBkb24ndCB3YW50IHBl
b3BsZSB0byByZS1pbnZlbnQgdGhlIHdoZWVsIGluIGEgbmV3IGZ1bmt5IHdheSB3aGljaCB0aGVu
IGxhdGVyIHR1cm5zIG91dCB0byBub3Qgd29yay4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0K
PiANCj4gQ2hlZXJzLCBTaW1hDQo+IA0KPj4NCj4+IHJlZ2FyZHMsDQo+PiBOaWNvbGFzDQo+Pg0K
Pj4+DQo+Pj4gQWRkIGEgbmV3IGRtYV9idWZfb3BzIG9wZXJhdGlvbiB0aGF0IHJldHVybnMgdGhl
IERNQSBhZGRyZXNzLg0KPj4+IEFkZCBhIG5ldyBpb2N0bCB0byB0cmFuc21pdCB0aGlzIERNQSBh
ZGRyZXNzIHRvIHVzZXJzcGFjZS4NCj4+Pg0KPj4+IFNpZ25lZC1vZmYtYnk6IEJhc3RpZW4gQ3Vy
dXRjaGV0IDxiYXN0aWVuLmN1cnV0Y2hldEBib290bGluLmNvbT4NCj4+PiAtLS0NCj4+PiDCoGRy
aXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmPCoMKgwqAgfCAyMSArKysrKysrKysrKysrKysrKysrKysN
Cj4+PiDCoGluY2x1ZGUvbGludXgvZG1hLWJ1Zi5owqDCoMKgwqDCoCB8wqAgMSArDQo+Pj4gwqBp
bmNsdWRlL3VhcGkvbGludXgvZG1hLWJ1Zi5oIHzCoCAxICsNCj4+PiDCoDMgZmlsZXMgY2hhbmdl
ZCwgMjMgaW5zZXJ0aW9ucygrKQ0KPj4+DQo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+Pj4gaW5kZXgNCj4+PiAz
OTg0MThiZDk3MzFhZDdhM2ExZjEyZWFlYTZhMTU1ZmE3N2EyMmZlLi5jYmJiNTE4OTgxZTU0ZTUw
ZjQ3OWMzZDFmY2YNCj4+PiA2ZGE2OTcxZjYzOWMxIDEwMDY0NA0KPj4+IC0tLSBhL2RyaXZlcnMv
ZG1hLWJ1Zi9kbWEtYnVmLmMNCj4+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+
Pj4gQEAgLTQ1NCw2ICs0NTQsMjQgQEAgc3RhdGljIGxvbmcgZG1hX2J1Zl9pbXBvcnRfc3luY19m
aWxlKHN0cnVjdA0KPj4+IGRtYV9idWYgKmRtYWJ1ZiwNCj4+PiDCoH0NCj4+PiDCoCNlbmRpZg0K
Pj4+IMKgDQo+Pj4gK3N0YXRpYyBpbnQgZG1hX2J1Zl9nZXRfZG1hX2FkZHIoc3RydWN0IGRtYV9i
dWYgKmRtYWJ1ZiwgdTY0IF9fdXNlcg0KPj4+ICphcmcpDQo+Pj4gK3sNCj4+PiArCXU2NCBhZGRy
Ow0KPj4+ICsJaW50IHJldDsNCj4+PiArDQo+Pj4gKwlpZiAoIWRtYWJ1Zi0+b3BzLT5nZXRfZG1h
X2FkZHIpDQo+Pj4gKwkJcmV0dXJuIC1FSU5WQUw7DQo+Pj4gKw0KPj4+ICsJcmV0ID0gZG1hYnVm
LT5vcHMtPmdldF9kbWFfYWRkcihkbWFidWYsICZhZGRyKTsNCj4+PiArCWlmIChyZXQpDQo+Pj4g
KwkJcmV0dXJuIHJldDsNCj4+PiArDQo+Pj4gKwlpZiAoY29weV90b191c2VyKGFyZywgJmFkZHIs
IHNpemVvZih1NjQpKSkNCj4+PiArCQlyZXR1cm4gLUVGQVVMVDsNCj4+PiArDQo+Pj4gKwlyZXR1
cm4gMDsNCj4+PiArfQ0KPj4+ICsNCj4+PiDCoHN0YXRpYyBsb25nIGRtYV9idWZfaW9jdGwoc3Ry
dWN0IGZpbGUgKmZpbGUsDQo+Pj4gwqAJCQnCoCB1bnNpZ25lZCBpbnQgY21kLCB1bnNpZ25lZCBs
b25nIGFyZykNCj4+PiDCoHsNCj4+PiBAQCAtNTA0LDYgKzUyMiw5IEBAIHN0YXRpYyBsb25nIGRt
YV9idWZfaW9jdGwoc3RydWN0IGZpbGUgKmZpbGUsDQo+Pj4gwqAJCXJldHVybiBkbWFfYnVmX2lt
cG9ydF9zeW5jX2ZpbGUoZG1hYnVmLCAoY29uc3Qgdm9pZA0KPj4+IF9fdXNlciAqKWFyZyk7DQo+
Pj4gwqAjZW5kaWYNCj4+PiDCoA0KPj4+ICsJY2FzZSBETUFfQlVGX0lPQ1RMX0dFVF9ETUFfQURE
UjoNCj4+PiArCQlyZXR1cm4gZG1hX2J1Zl9nZXRfZG1hX2FkZHIoZG1hYnVmLCAodTY0IF9fdXNl
cg0KPj4+ICopYXJnKTsNCj4+PiArDQo+Pj4gwqAJZGVmYXVsdDoNCj4+PiDCoAkJcmV0dXJuIC1F
Tk9UVFk7DQo+Pj4gwqAJfQ0KPj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYu
aCBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQo+Pj4gaW5kZXgNCj4+PiAzNjIxNmQyOGQ4YmRj
MDFhOWM5YzQ3ZTI3YzM5MjQxM2Y3ZjZjNWZiLi5lZDRiZjE1ZDNjZTgyZTdhODYzMjNmZmY0NTkN
Cj4+PiA2OTlhOWJjOGJhYTNiIDEwMDY0NA0KPj4+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWJ1
Zi5oDQo+Pj4gKysrIGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCj4+PiBAQCAtMjg1LDYgKzI4
NSw3IEBAIHN0cnVjdCBkbWFfYnVmX29wcyB7DQo+Pj4gwqANCj4+PiDCoAlpbnQgKCp2bWFwKShz
dHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1Y3QgaW9zeXNfbWFwICptYXApOw0KPj4+IMKgCXZv
aWQgKCp2dW5tYXApKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBpb3N5c19tYXANCj4+
PiAqbWFwKTsNCj4+PiArCWludCAoKmdldF9kbWFfYWRkcikoc3RydWN0IGRtYV9idWYgKmRtYWJ1
ZiwgdTY0ICphZGRyKTsNCj4+PiDCoH07DQo+Pj4gwqANCj4+PiDCoC8qKg0KPj4+IGRpZmYgLS1n
aXQgYS9pbmNsdWRlL3VhcGkvbGludXgvZG1hLWJ1Zi5oIGIvaW5jbHVkZS91YXBpL2xpbnV4L2Rt
YS0NCj4+PiBidWYuaA0KPj4+IGluZGV4DQo+Pj4gNWE2ZmRhNjZkOWFkZjAxNDM4NjE5ZTdlNjdm
YTY5ZjBmZWMyZDg4ZC4uZjNhYmE0Njk0MjA0MmRlNmEyZTNhNGNjYTNlDQo+Pj4gYjNmODcxNzVl
MjljOSAxMDA2NDQNCj4+PiAtLS0gYS9pbmNsdWRlL3VhcGkvbGludXgvZG1hLWJ1Zi5oDQo+Pj4g
KysrIGIvaW5jbHVkZS91YXBpL2xpbnV4L2RtYS1idWYuaA0KPj4+IEBAIC0xNzgsNSArMTc4LDYg
QEAgc3RydWN0IGRtYV9idWZfaW1wb3J0X3N5bmNfZmlsZSB7DQo+Pj4gwqAjZGVmaW5lIERNQV9C
VUZfU0VUX05BTUVfQglfSU9XKERNQV9CVUZfQkFTRSwgMSwgX191NjQpDQo+Pj4gwqAjZGVmaW5l
IERNQV9CVUZfSU9DVExfRVhQT1JUX1NZTkNfRklMRQlfSU9XUihETUFfQlVGX0JBU0UsIDIsDQo+
Pj4gc3RydWN0IGRtYV9idWZfZXhwb3J0X3N5bmNfZmlsZSkNCj4+PiDCoCNkZWZpbmUgRE1BX0JV
Rl9JT0NUTF9JTVBPUlRfU1lOQ19GSUxFCV9JT1coRE1BX0JVRl9CQVNFLCAzLCBzdHJ1Y3QNCj4+
PiBkbWFfYnVmX2ltcG9ydF9zeW5jX2ZpbGUpDQo+Pj4gKyNkZWZpbmUgRE1BX0JVRl9JT0NUTF9H
RVRfRE1BX0FERFIJX0lPUihETUFfQlVGX0JBU0UsIDQsIF9fdTY0DQo+Pj4gKikNCj4+PiDCoA0K
Pj4+IMKgI2VuZGlmDQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF18A72B5C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Mar 2025 09:23:45 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A51BB4624F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Mar 2025 08:23:44 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2062.outbound.protection.outlook.com [40.107.223.62])
	by lists.linaro.org (Postfix) with ESMTPS id 8D51C43FCE
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Mar 2025 08:23:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=ViYCWhyF;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.223.62 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QqkWQ4rLVZzs8XHa+y6WoVw0Abk9tkpHqrNl4XUH+w3n96e4XQzob14b/JXJoB50pFi8dtuMqm084qh4UsRG/A4lJOA7vSCPaVJTSK34ghubfGkhfnGWtTv03tujU6WxTRdBzS0mQVytdIuAN6DKHnfpo7dBOR1zEroq7e7REPANKH0SxDvP1NTH0yx2TvJYeW4WmAJFjgouZE5KFAeh/+mT/3vFYnxrAI5VxHryOTjzD9hr5e/PegSntrgXPvTkdDSp3Cf/gq8NgpoSQlvq9OnlXdIq5sImnC5NfGvlG8V/MLvwnT+FVqIv3DTw+lYBKRj5BCGf4dO+tmrbR3RqQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fAozeP+mCD2MxzQ7GjGEx0I+OU4RG+ocPGCNOooUK3I=;
 b=BsNDdxkHwXxoGWnu0cjfvbWBhgMK+U9xP/2JWI+EbhIyvQwoe99ILJ2xFRyF8zqKdEwUimsEQfPA1Clt+thsgNVjaiyXRwADb2rjlil/N5dcUwLSCTUw/ew747Fg190FygtVuejXu2SkS5WEIluMOp/6LXYMwnLZe6qKfSRW+q+xnzSsAQRFX5sEg6hKEA0SMd3YO2U+FHcg/5Zb8x58u2ZhditJ3Fqx4ItykkaBlnck4SrlStnrkeziG6MAPEkMgIEEx7xE6EE+IRI8oYVhcO6VdLvwNSo5IZ+g1kB0KD7bd7Xp5HRHfTjZNJL3VbpnnirJed0C7zZ5sg99c26vSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fAozeP+mCD2MxzQ7GjGEx0I+OU4RG+ocPGCNOooUK3I=;
 b=ViYCWhyFBcffFbKdFbRUfTPcBNyBJs/6qc1w8xk/J3A0/95UT+a1X17DPHNV/BRXdFbbPh3qDwnfWNN2p+dTUtQQ2se0qKiqCcO1PBpQllHOjOit2ci5bxT0lfBZpuBo4fouskelwqijKdmZeKC+3FwI5eBs0AKVzMX/9V3kfYk=
Received: from SJ0PR12MB5673.namprd12.prod.outlook.com (2603:10b6:a03:42b::13)
 by DS7PR12MB9473.namprd12.prod.outlook.com (2603:10b6:8:252::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Thu, 27 Mar
 2025 08:23:28 +0000
Received: from SJ0PR12MB5673.namprd12.prod.outlook.com
 ([fe80::ec7a:dd71:9d6c:3062]) by SJ0PR12MB5673.namprd12.prod.outlook.com
 ([fe80::ec7a:dd71:9d6c:3062%7]) with mapi id 15.20.8511.026; Thu, 27 Mar 2025
 08:23:28 +0000
Message-ID: <054797fb-ee9e-408a-a28b-81f174c7b89e@amd.com>
Date: Thu, 27 Mar 2025 09:23:21 +0100
User-Agent: Mozilla Thunderbird
To: Rob Clark <robdclark@gmail.com>
References: <20250326143903.24380-1-robdclark@gmail.com>
 <342ee079-ee0e-470d-afd2-c2870115b489@amd.com>
 <CAF6AEGu2Ax+u3QmD2VADwh4A4s5TAmP5Lq4DcYYadKP4csH-=g@mail.gmail.com>
 <CAF6AEGv-Zad2GF-=gDdYQdZGkJ_u+eyBFvTNK49m5+1ycaZu9Q@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <CAF6AEGv-Zad2GF-=gDdYQdZGkJ_u+eyBFvTNK49m5+1ycaZu9Q@mail.gmail.com>
X-ClientProxiedBy: FR2P281CA0003.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a::13) To SJ0PR12MB5673.namprd12.prod.outlook.com
 (2603:10b6:a03:42b::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR12MB5673:EE_|DS7PR12MB9473:EE_
X-MS-Office365-Filtering-Correlation-Id: fefd38fb-9bea-4472-c9db-08dd6d08a6d8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|366016|7416014|376014|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?YnhvZnVDZmhjeDhaelRRL1p1a0MwYmVpdUswbWRGdWF1NTArc0xHdTd5K2hr?=
 =?utf-8?B?ckFvQ2hzcHlteWtRaVhFbTNVWG1LekpCN2Qrc25BYmswNWVpZ1dqeG5lT3dF?=
 =?utf-8?B?MDQ3NGRlb2o4ZXUrUkhlQm4veE1lZ3AzRVlxbHloUFhqemFhOEdSa1N4MjV4?=
 =?utf-8?B?S3pGSk5wNUtOLzllazl3eVpOMHBYVTBtcUZGUzFwRG9ZNGtiR0VOSW1pQzk1?=
 =?utf-8?B?aS9tQlRDV2hOTWN6ekk2SnRkWmNydGJTVlRGYTh4TnFUN296Wm9IVmZ6eVFX?=
 =?utf-8?B?QjhRUzFhUWFnUVhMZ0dZYzlROWdmRSttaEhNYjIrSXBOQis2T2dOU0xVaW9j?=
 =?utf-8?B?T0JkRStRUDVEeWllcHg4UUw5c2pZR0twdXlYNm5ubmExY1lrNEtRNXAvTlJV?=
 =?utf-8?B?UHN6SXpPVnRzNklnb0NncXNaT2RBMHV6YUdWanZlWmVwU1I0cUhIcTNpTFBR?=
 =?utf-8?B?RnRJWG9DNXdIZ29OdStpL0JoRGpqY0xrM25XWTVRWk91UWVOcFBGWjV0Rlcw?=
 =?utf-8?B?dFU1UkZYbXl5SDFOcytYQmdnc0kxWGZza0dEeGNHSTlMcEJodVNKWFo1NC9u?=
 =?utf-8?B?U3g2RjNmbDExRWZ2NW9QY3FBbHlDK2dIY0M3N25WWjRmSkJoUTFxaVJIaDA3?=
 =?utf-8?B?L29KRnRpU1BMWkIzemhwS2NRY29EcnZWbXlMb2hoZmpMeW5tbVhsSzBCcEhU?=
 =?utf-8?B?VWJ0Vms3dm1xcWJEZWc4WldjbVBjdEpsSUN0S0t1SHVuUTFyQVlEclFpQ3dM?=
 =?utf-8?B?cFZ4VGJqb2wzNE16TEVIdE4xT0FTdEJwNDEwSTc2bmd4WDkxaW1EWVllaDM3?=
 =?utf-8?B?RTRmZGlhMXZ3bmJOYkhOUGdPSFRrUHMvOHhEUWF1ZmNTeU9KaEtMem55aHpq?=
 =?utf-8?B?OEU3Nm5rb0RTb2U1Q0lacEc2ai9QN3pzdkZNaE5lUVhkTkluUEJ2TE9GZkNT?=
 =?utf-8?B?SEtzVG1YUldXWVFxM3IzNytOcmhvckJUSEZPYXUzMzNEdDhkQmtteHJPRVFx?=
 =?utf-8?B?cWJxeFliYXRvNGdMcHRPYWZlb05qaTdXY0VvQld4STNGc3h4UXJ3cjcvbjRR?=
 =?utf-8?B?Q25IWnpnNFpNMml6ME9rb1dvUk5iakV1MlpaNWFjaEhGU0dmMEV6akNvQnRo?=
 =?utf-8?B?Vk1seUJFTXVGMjFiUS91b0tpRFZlM0d5amx6WjE4WXZjNFdOQWNlbFNXYWN0?=
 =?utf-8?B?T0tsVG9tVDQ1MnBhSG52M2F2dzJHeTF0OFhNMDlnbWJQRVVqRDZNcGYwbVpP?=
 =?utf-8?B?YXU4UEJXOU92bTlyTjZQT2RRalBtVzJEWjV3bmdRQXBKZjVnREFTcHkrSGNk?=
 =?utf-8?B?RkFrN256Q2dYNzUybDBVOGl1UURUdEtoOVhLRGt4anozMzIvL0srbUlxT3Rj?=
 =?utf-8?B?YTIvWGY1YllUYlVEUTBMRWl5TFNaYW5KaUg4a0dGakYyUER2ZkZISmtuZS9B?=
 =?utf-8?B?V1prczBDK0pzaEFlU2lrcVFoSHcxZ2RmTVdKb1hhZStKQ0lSaG5adGFGUW45?=
 =?utf-8?B?cUxHVzF0cXIyQXMvQW9HRG5aUTc0MFg3cGtYNktDOEk0cVJCVk56eXd5S2pp?=
 =?utf-8?B?cHNicER5UnoybVA1ZVZxVFRRSno0a2VlYVIvUnRxVmliWllBanlCSGhwNSt1?=
 =?utf-8?B?SHEzdFVaYnR6ZlRHd3k3em5hd0VIMldEYW8wWkZWK2xFVTBOdHdYV0FBRTlR?=
 =?utf-8?B?OEpoNFZGL0g0eEI0OGhDSEE3OVYrN0s0OVhzQVdMZXZob0xZcEtEYUFTKzZw?=
 =?utf-8?B?Y0ptWEZySzIzcll3QkJ3S1VXKzdCL2ZoRklodW1ndlZ1UHB6L3FQV0NzMmtQ?=
 =?utf-8?B?RnBoZkJPNTRxUXkrc0hYZz09?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR12MB5673.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(7416014)(376014)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bUNGMWJVSCsyUXREYkhDYVJYQjF2bTE4d0xHR215MVZwTFpDMFJIbUlmaGNZ?=
 =?utf-8?B?UXhDRmRGWmNVUjJQNG9MeUdRVW1xb3VucVdQZmlocGkyeG5GR3JCTjR1NzRw?=
 =?utf-8?B?Qm03NXZjTHlYNCtnb3lCaEpqcFRhb3dYSFdpK1laMmZReWNINzM0Q1V5T2FM?=
 =?utf-8?B?Q1R5cTJ4NUpueVFIMFF1ckV5V05Edy9JbWttNUd2RkpMaDBWTDBlYURaTWNl?=
 =?utf-8?B?YWRpYlNBNjRNL1BwOFFXYWdZa1N2M0praHV4cGx3ZXBRUzlBOTNVQ0UxbDNJ?=
 =?utf-8?B?dWN6bGJlRG5QMi9rVzlkOEJ0TVlkRm5OK28ydXcyVi9GeWcyaXlNQkZPaVl0?=
 =?utf-8?B?aHdWRHRkWStZZ3dacDVqT3VCREp2VjVNTCtjc1MrVHpyN3N6QzgvV2ZYbHU3?=
 =?utf-8?B?MDVKbGVFNk9uaTNpNXIvZHI4SEtrOUQzY2liVnRFeTJhME83ZC9qT3B3aXFZ?=
 =?utf-8?B?VVBaaUtNZlhvRjVjc1V5UHZwcS90ZGppdW5hWmFIMVVEZE5HaVUrblhRRE9t?=
 =?utf-8?B?cDYzQnc2NGROT05Fd0ZMT25lOWFQVWk4TFk0ajRab2FPNnMyd241UXdFU0Nm?=
 =?utf-8?B?SzltanllWWU3VzNmVnhiV24vQ3IrTVVyS1NvcWdLcUZycjRNOUpsQWJodXA3?=
 =?utf-8?B?L09OU0NQbWJQZ3JxOEM0aXlERURtZVV1UlI3MXZ0UkM1TFVlSll1M2U3WnJk?=
 =?utf-8?B?NldHSFhQdUg1VmIxZ2Urd2NvbHRCak43VGJrV2ZOSDl2SWo5U0ZKVzI4aFV4?=
 =?utf-8?B?VDc0L1lKRHJtNW5SV016RWM2dW9wQTU3RXlOc0U1MG5nUjV0Rk9PdGZLQytW?=
 =?utf-8?B?Mys0STFHdGp0RGMvdU5Dc2UwczNsc1p2eGZ0cHBPejR4V0hsZjA5Mm8zVk9w?=
 =?utf-8?B?cVhmTUJqV2N2UlVKdUNud01LeTkzR1pVK21hTkg4djROYUczRWt2V2dqTjNT?=
 =?utf-8?B?ejZENWM5OWg2WHA5STA3cG1tVHhTdDVqVG5wN2ltNDE2K05oZjFzNnMrVkoy?=
 =?utf-8?B?a0U2Kzl5Z1Y4RHFGZW54OTlmQnp2NVdzZTAyRlAwTVlQY2hUUitqdkNRR0hi?=
 =?utf-8?B?Y25NQ1V2ODMvcmxWRk9RdDJOMGQvSXBFMjNIT1dyZkhFZXViSzBjTkZFMVFX?=
 =?utf-8?B?aGRxNnhRQk5zdXFUdHNHeFYwQ3lnbmhMSnFoL25HbnFZOWNGUno1WjhDTGph?=
 =?utf-8?B?cVdUbzRybTlFamlYY0J5cEtFd01qK3hFUlp4NlhKVG1iaGw4bFFsRkNqV2Nq?=
 =?utf-8?B?VHkxN28zQ0h0aUlDMk5lWFBvRmhkQ1hMVHd1bFppT3dVc1psZFZjVWlwWm8y?=
 =?utf-8?B?T0lZMkRvV0pFaFo1b0FmeWlCR1ZRVkRjN1pYd2lqVlV2WC84QXUyT09VNFZi?=
 =?utf-8?B?ZUduakI2bXJXM1l0RGRHQ2FqT2puTnNOWEc0TXZTOGJFYW9QYnVqcHdlM0ZH?=
 =?utf-8?B?b0l3T3h5aWdCdDF1L2lMRWsrQXl5YU8rZGUwUFRhTmNoeHFWdHpiYWQzT2ZU?=
 =?utf-8?B?ZVc1cWNLbkNpZFYzQU5kNFZhbFpJeWdPM3VqK3pYU0Ivc0g4SWptdkZQcE4z?=
 =?utf-8?B?d1ZJaCt6VDRXQkh1YTlaTXlhc29IMVFjRk5QOFVHOHZuOWtCN0xXWkIwUFJX?=
 =?utf-8?B?b0tSSzFiM25hMHhGTUpDRitjMExqYVZqVkw3Ynl1ZnJPT1FKMjltayswS2pE?=
 =?utf-8?B?cVZoOHY3bTg4RUprcjNocFBSS3VVcHRoQnNsYmg1NHRSMFdRaTVZdjJQT1Qy?=
 =?utf-8?B?UjkyNCtaamVlbWY4VmJPaUZkZWM1VG1oS1F4UkRWVEYzZFZyTWI0VWsxRkxm?=
 =?utf-8?B?Vjc5ZnQ3SUVRLy9yb29aSFREZStnUWVwZTRnSUwxanNJcURralJnMnZYei9x?=
 =?utf-8?B?QVhmWjZNanJWWi9vRjNQQTZ4a0ErTmQ4K0xicnQ0dlJkTTVyWGxLS0NEYXJ2?=
 =?utf-8?B?YS9KUk5PRXNUaDFlZXJvZUdMQU5GS3Y5bjdlNnlrUkVRWWg5Rm5pNU82Z0Nj?=
 =?utf-8?B?UnFTdHQyNUorOEVmaUFiaWdwQkhLeFJpd2NTSDVNR1hibFN3MEpxbnN5eDlQ?=
 =?utf-8?B?SDB2RXhnZWJMK0NzU1g5aEhHamRNQ2l0LzRFczlPVFdaT2tNTGdhbWJPZHdF?=
 =?utf-8?Q?YY5odj9hyZ/tHtoo/CUsTcF4s?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fefd38fb-9bea-4472-c9db-08dd6d08a6d8
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR12MB5673.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Mar 2025 08:23:28.5730
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7e/uSf6BAnMgIvhSHU2AqwSRObrUtr00KF/nMs+mnoxzP8HeeUzGVo7z861/Bkcm
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR12MB9473
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8D51C43FCE
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.223.62:from];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[40.107.223.62:from];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: SR552PG5MST6BD6RGJDAII2SHXIZK6JS
X-Message-ID-Hash: SR552PG5MST6BD6RGJDAII2SHXIZK6JS
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Rob Clark <robdclark@chromium.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_(?:buf|fence|resv)b" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_(?:buf|fence|resv)b" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/syncobj: Extend EXPORT_SYNC_FILE for timeline syncobjs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SR552PG5MST6BD6RGJDAII2SHXIZK6JS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QW0gMjYuMDMuMjUgdW0gMjE6NDYgc2NocmllYiBSb2IgQ2xhcms6DQo+IE9uIFdlZCwgTWFyIDI2
LCAyMDI1IGF0IDc6NDbigK9BTSBSb2IgQ2xhcmsgPHJvYmRjbGFya0BnbWFpbC5jb20+IHdyb3Rl
Og0KPj4gT24gV2VkLCBNYXIgMjYsIDIwMjUgYXQgNzo0MeKAr0FNIENocmlzdGlhbiBLw7ZuaWcN
Cj4+IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPj4+IEFtIDI2LjAzLjI1IHVt
IDE1OjM5IHNjaHJpZWIgUm9iIENsYXJrOg0KPj4+PiBGcm9tOiBSb2IgQ2xhcmsgPHJvYmRjbGFy
a0BjaHJvbWl1bS5vcmc+DQo+Pj4+DQo+Pj4+IEFkZCBzdXBwb3J0IGZvciBleHBvcnRpbmcgYSBk
bWFfZmVuY2UgZmQgZm9yIGEgc3BlY2lmaWMgcG9pbnQgb24gYQ0KPj4+PiB0aW1lbGluZS4NCj4+
PiBMb29rcyBnb29kIG9uIGZpcnN0IGdsYW5jZS4gV2hhdCdzIHRoZSB1c2Vyc3BhY2UgdXNlIGNh
c2U/DQo+PiBUaW1lbGluZSBzeW5jb2JqIHN1cHBvcnQgZm9yIHZ0ZXN0L3ZwaXBlWzFdWzJdLi4g
c2luY2UgY29yZQ0KPj4gdmlyZ2xyZW5kZXIgYW5kIGRybSBuYXRpdmUgY3R4IHdvcmtzIGluIHRl
cm1zIG9mIGZlbmNlcyAoc2luY2UgaW4gdGhlDQo+PiBWTSBjYXNlLCBldmVyeXRoaW5nIGlzIGEg
ZmVuY2UgYmVsb3cgdGhlIGd1ZXN0IGtlcm5lbCB1YWJpKSwgd2UgbmVlZA0KPj4gdG8gYmUgYWJs
ZSB0byB0dXJuIGEgcG9pbnQgb24gYSB0aW1lbGluZSBiYWNrIGludG8gYSBmZW5jZSBmZC4gIChQ
bHVzDQo+PiBpdCBzZWVtZWQgbGlrZSBhbiBvZGQgb21pc3Npb24gZnJvbSB0aGUgZXhpc3Rpbmcg
dWFiaS4pDQo+Pg0KPj4gQlIsDQo+PiAtUg0KPj4NCj4+IFsxXSBodHRwczovL2dpdGxhYi5mcmVl
ZGVza3RvcC5vcmcvbWVzYS9tZXNhLy0vbWVyZ2VfcmVxdWVzdHMvMzM0MzMNCj4+IFsyXSBodHRw
czovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvdmlyZ2wvdmlyZ2xyZW5kZXJlci8tL21lcmdlX3Jl
cXVlc3RzLzgwNQ0KPj4NCj4+PiBSZWdhcmRzLA0KPj4+IENocmlzdGlhbi4NCj4+Pg0KPj4+PiBT
aWduZWQtb2ZmLWJ5OiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+DQo+Pj4+IC0t
LQ0KPj4+PiAgZHJpdmVycy9ncHUvZHJtL2RybV9zeW5jb2JqLmMgfCA4ICsrKysrKy0tDQo+Pj4+
ICBpbmNsdWRlL3VhcGkvZHJtL2RybS5oICAgICAgICB8IDIgKysNCj4+Pj4gIDIgZmlsZXMgY2hh
bmdlZCwgOCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPj4+Pg0KPj4+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9zeW5jb2JqLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJt
X3N5bmNvYmouYw0KPj4+PiBpbmRleCA0ZjJhYjhhN2I1MGYuLmViN2EyZGQyZTI2MSAxMDA2NDQN
Cj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9zeW5jb2JqLmMNCj4+Pj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2RybV9zeW5jb2JqLmMNCj4+Pj4gQEAgLTc2Miw3ICs3NjIsNyBAQCBzdGF0
aWMgaW50IGRybV9zeW5jb2JqX2ltcG9ydF9zeW5jX2ZpbGVfZmVuY2Uoc3RydWN0IGRybV9maWxl
ICpmaWxlX3ByaXZhdGUsDQo+Pj4+ICB9DQo+Pj4+DQo+Pj4+ICBzdGF0aWMgaW50IGRybV9zeW5j
b2JqX2V4cG9ydF9zeW5jX2ZpbGUoc3RydWN0IGRybV9maWxlICpmaWxlX3ByaXZhdGUsDQo+Pj4+
IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaW50IGhhbmRsZSwgaW50ICpw
X2ZkKQ0KPj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGludCBoYW5k
bGUsIHU2NCBwb2ludCwgaW50ICpwX2ZkKQ0KPj4+PiAgew0KPj4+PiAgICAgICBpbnQgcmV0Ow0K
Pj4+PiAgICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsNCj4+Pj4gQEAgLTc3Miw3ICs3NzIs
NyBAQCBzdGF0aWMgaW50IGRybV9zeW5jb2JqX2V4cG9ydF9zeW5jX2ZpbGUoc3RydWN0IGRybV9m
aWxlICpmaWxlX3ByaXZhdGUsDQo+Pj4+ICAgICAgIGlmIChmZCA8IDApDQo+Pj4+ICAgICAgICAg
ICAgICAgcmV0dXJuIGZkOw0KPj4+Pg0KPj4+PiAtICAgICByZXQgPSBkcm1fc3luY29ial9maW5k
X2ZlbmNlKGZpbGVfcHJpdmF0ZSwgaGFuZGxlLCAwLCAwLCAmZmVuY2UpOw0KPj4+PiArICAgICBy
ZXQgPSBkcm1fc3luY29ial9maW5kX2ZlbmNlKGZpbGVfcHJpdmF0ZSwgaGFuZGxlLCBwb2ludCwg
MCwgJmZlbmNlKTsNCj4+Pj4gICAgICAgaWYgKHJldCkNCj4+Pj4gICAgICAgICAgICAgICBnb3Rv
IGVycl9wdXRfZmQ7DQo+Pj4+DQo+Pj4+IEBAIC04ODIsOCArODgyLDEyIEBAIGRybV9zeW5jb2Jq
X2hhbmRsZV90b19mZF9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLA0K
Pj4+Pg0KPj4+PiAgICAgICBpZiAoYXJncy0+ZmxhZ3MgJiBEUk1fU1lOQ09CSl9IQU5ETEVfVE9f
RkRfRkxBR1NfRVhQT1JUX1NZTkNfRklMRSkNCj4+Pj4gICAgICAgICAgICAgICByZXR1cm4gZHJt
X3N5bmNvYmpfZXhwb3J0X3N5bmNfZmlsZShmaWxlX3ByaXZhdGUsIGFyZ3MtPmhhbmRsZSwNCj4+
Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBhcmdz
LT5wb2ludCwNCj4+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAmYXJncy0+ZmQpOw0KPiBIbW0sIG1heWJlIEkgc2hvdWxkIGFkZCBEUk1fU1lOQ09C
Sl9IQU5ETEVfVE9fRkRfRkxBR1NfVElNRUxJTkUgc28NCj4gdGhhdCB1c2Vyc3BhY2UgZ2V0cyBh
IGNsZWFuIGVycm9yIG9uIG9sZGVyIGtlcm5lbHMsIHJhdGhlciB0aGFuIGhhdmluZw0KPiB0aGUg
cG9pbnQgcGFyYW0gYmUgc2lsZW50bHkgaWdub3JlZC4uDQoNClNvdW5kcyByZWFzb25hYmxlIHRv
IG1lIGFzIHdlbGwuDQoNCkFuZCBwbGVhc2UgaW5jbHVkZSB0aGUgbGlua3MgdG8gdGhlIHVzZXJz
cGFjZSBjb2RlIGluIHRoZSBjb21taXQgbWVzc2FnZS4NCg0KQXBhcnQgZnJvbSB0aGF0IGxvb2tz
IHRvdGFsbHkgcmVhc29uYWJsZSB0byBtZS4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPg0K
PiBCUiwNCj4gLVINCj4NCj4+Pj4gKyAgICAgaWYgKGFyZ3MtPnBvaW50KQ0KPj4+PiArICAgICAg
ICAgICAgIHJldHVybiAtRUlOVkFMOw0KPj4+PiArDQo+Pj4+ICAgICAgIHJldHVybiBkcm1fc3lu
Y29ial9oYW5kbGVfdG9fZmQoZmlsZV9wcml2YXRlLCBhcmdzLT5oYW5kbGUsDQo+Pj4+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJmFyZ3MtPmZkKTsNCj4+Pj4gIH0NCj4+
Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9kcm0vZHJtLmggYi9pbmNsdWRlL3VhcGkvZHJt
L2RybS5oDQo+Pj4+IGluZGV4IDdmYmEzN2I5NDQwMS4uYzcxYThmNDQzOWYyIDEwMDY0NA0KPj4+
PiAtLS0gYS9pbmNsdWRlL3VhcGkvZHJtL2RybS5oDQo+Pj4+ICsrKyBiL2luY2x1ZGUvdWFwaS9k
cm0vZHJtLmgNCj4+Pj4gQEAgLTkxMiw2ICs5MTIsOCBAQCBzdHJ1Y3QgZHJtX3N5bmNvYmpfaGFu
ZGxlIHsNCj4+Pj4NCj4+Pj4gICAgICAgX19zMzIgZmQ7DQo+Pj4+ICAgICAgIF9fdTMyIHBhZDsN
Cj4+Pj4gKw0KPj4+PiArICAgICBfX3U2NCBwb2ludDsNCj4+Pj4gIH07DQo+Pj4+DQo+Pj4+ICBz
dHJ1Y3QgZHJtX3N5bmNvYmpfdHJhbnNmZXIgew0KDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

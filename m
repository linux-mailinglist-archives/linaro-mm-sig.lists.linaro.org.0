Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 74388A0600F
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Jan 2025 16:26:15 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4D8A644761
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Jan 2025 15:26:14 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2054.outbound.protection.outlook.com [40.107.236.54])
	by lists.linaro.org (Postfix) with ESMTPS id E5B523F791
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Jan 2025 15:26:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=nog92lPj;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.236.54 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cdW08KipcwwTlPRkGQArqsiLj/rt63QNaUZOMYfg61vfeSuBBbQtozlxe4tagEXxC4HpodVb/ftNfzEN2jnk67LSnuph6PdiCjWfnf3uOxCNbnKRLg6mnFnnjiNOZDOjSaTm/xnLQ35udm9wcM2szoAoWGajWpUlsJF5EjTG/ginBF92N9MoDcaiqnyojN4IbY32C9gcvzzqgo+jhOVeUbl7i0kaE40J2D+dVajoj6eKGknfjtzN9OFPERJG9FYQuFBxw3dl14q7fElpL13/K+GXsF5OmL8cZ59Rq+QwwbZzf2Fzscfb7qiJvXgPSm/TTSnPMgJadai63nOdp1uPQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W5rkTErMfe8CC5GxlunhDeU1Bpr371i9i8RsZwoFEkg=;
 b=nEAQ9x6AEwPBXjwtHZRRSGaR4N6qcKjvygI+dspoOz3xl2T5atkOWNO2hKVyu4i+5JyWLZ8W/BYIkwXL3bhbmNNTqptB3JlShJ4FndRfik/nfocvwMiwL8TgE2V808d1g6Bj2El/qJraBy+4u7HH+i6DvZWJYGWp5p7YeGgZfyEG/nvoPZsgHpJs2K9H6Dgx2gOpG6Y78FdlC+qKIjlAQi1nmrAlpuSTBvubllGnw3e4I/bJMiG4hbBDDVRmwg0agEHWnnnQV1YjtE7kBNcmwHFnAF8zRXLlPMT9a/GXt/zJkuu8VHqBx9WNkrtVCsAgIkpymX+8/QRhL7qks/dX6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W5rkTErMfe8CC5GxlunhDeU1Bpr371i9i8RsZwoFEkg=;
 b=nog92lPjyQ331vxwT4f0ncODzInFODdNL1xm4cLhA77uBlSfRF+JsNSVlMli0H5rG5Pa9NT/+9tX1y+csG/tihYpBgGRA/D3KR9fIoeikQ0V+OgvSLLNqUDQt1KnsKJMWOzqjBTt9j08NSg5NddSEUAweHSz63abLBpWT0uCOa8=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DM6PR12MB4041.namprd12.prod.outlook.com (2603:10b6:5:210::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.12; Wed, 8 Jan
 2025 15:26:03 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8335.010; Wed, 8 Jan 2025
 15:26:03 +0000
Message-ID: <5a858e00-6fea-4a7a-93be-f23b66e00835@amd.com>
Date: Wed, 8 Jan 2025 16:25:54 +0100
User-Agent: Mozilla Thunderbird
To: Jason Gunthorpe <jgg@nvidia.com>
References: <20250107142719.179636-1-yilun.xu@linux.intel.com>
 <20250107142719.179636-2-yilun.xu@linux.intel.com>
 <b1f3c179-31a9-4592-a35b-b96d2e8e8261@amd.com>
 <20250108132358.GP5556@nvidia.com>
 <f3748173-2bbc-43fa-b62e-72e778999764@amd.com>
 <20250108145843.GR5556@nvidia.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20250108145843.GR5556@nvidia.com>
X-ClientProxiedBy: FR5P281CA0029.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f1::13) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DM6PR12MB4041:EE_
X-MS-Office365-Filtering-Correlation-Id: ad192753-616f-43ee-acbb-08dd2ff8c34d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|7416014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?RUcxT1V5dWczTnVTWmNLK3pqSCtGaGJHbFE4RmpKVDhhdjBRQm52a0E0YmxY?=
 =?utf-8?B?OWJYQjhCaWR3UGpUTTg0WTMzd05UenBJUGU1UUFENFYxZ2d0eFlCNmFUODJ1?=
 =?utf-8?B?WSsvSjM4bGxlSEx3RGZhclpuaG55R1kxWkZzZ25WOHdvbE83bDRCWXhIS0l3?=
 =?utf-8?B?djVhd0kxalI2RS9qNFYrWDU1MnVPTnd4NGtUNTQ1Vm85U3A4VmoyTGZ3MVJv?=
 =?utf-8?B?QWtpWDRwbG5QamQ5aFNkeDVmUWltTFJ1WG5HKzFhNmh5VGZyZWRNU25mdUlq?=
 =?utf-8?B?MEx6eEswRDZINFdVcE1vTHNaWUZycGdhSGVQaCs3cGRJaklaUDRrQTVVRE01?=
 =?utf-8?B?M1FKWVpIL1RSaTIvR0IvVUlCZHl3TlA0YmpmZFRuRU9pdEg3T1JpS2tjTjV4?=
 =?utf-8?B?OXV6bURBNGlmRHI1TVhTQWFHZ0NnNkVaWEdZMWFWWUFGWDFpYW1LV0NKV01D?=
 =?utf-8?B?UUNNWjJJNjB2VlNvQW5QSDVkTm9UV21DdVluZGVZZHVSdFdIbFZGeEYzR0lI?=
 =?utf-8?B?V01LSlNneG8vWkY4blFGQlc3N3Y2dnNhZzk0d0N0V2JJYmRuVVNsSEl2K0Nk?=
 =?utf-8?B?cUhqR0VUOTNjeGFJYk41T0lWcGlpK29PTXA4T0JaVndRUFVJWG9WeC9TN0RR?=
 =?utf-8?B?VTJJT1F6TzJaYTc3eEZwV1ozTUk1UWJISmgyZjd0QkpBUnR2bDl1NzNleUhx?=
 =?utf-8?B?QlZNa280c2VRMGMzMEp0R3dqejFnbVFWTjdidUwxRlVaMStGSzQ2dXJpU0lC?=
 =?utf-8?B?YmY4TVZXV1NHOEEzNUpEZE9zQTBUUVpoK09Qb3VyeldsWThFSUN3QVA3ckl0?=
 =?utf-8?B?SE5uK1NBZGx0djVFNXFKS1hFaWdjQUdPaE1WODRwcCtBaVVzOEZOcXc3SElm?=
 =?utf-8?B?ZHkwRkVwbnVsbmRXaXlNMHRYSnl5MUZreitheUcrZWVXMzZTT3VJMmluR2gz?=
 =?utf-8?B?VmR1bkpOZ005aFFpQ0MrQ1NodnlJSFlQQk5mZFBvRFNuRnRqR3RjZ0crcHkr?=
 =?utf-8?B?S2V4aVF2UDA1dFpERGpNeWUxMk1jYzZOSzZhUXRzN25UQ3MvYXFkbE5oS0pN?=
 =?utf-8?B?SHM1aHZ6WXRPcXJFRW9uS2NZbUVnT3RPN1VSNUdsbFFMckZOOGdsVUlrQlBI?=
 =?utf-8?B?R3Iwam04N3F3QXFqV09pOE8zeXVPWFlKS1kzQ2paZE5sekdvUjB2QmszeG44?=
 =?utf-8?B?OUtJZ0ZCMmw4WmovRXVTSGN1OGJYcEErdFpwMkpyWGRtd3BFRENBR2NndVZU?=
 =?utf-8?B?MFh3QUc3d3VLaVlnanIwSFVGWCtSS3o0NGM2SFl5ZWtDZnFYTmVpYW51dXdU?=
 =?utf-8?B?Wm0vVGRvTU9OOSs1MHVvMGlJRmhZcStQVUdMOUM0RVJ3aDd2ekR0VFpTb1hG?=
 =?utf-8?B?aC8zTFd2cEtGYWE0cTlrUUUzTzBUL1BQeFVVOFZRS2FmWGlycHRoZnhvZDhR?=
 =?utf-8?B?cVQ0RDRwaForeEFLL0gyVVFEdjcrd2xZMzE2bWdqZkdqZ0VKK0MrOHJ1QU5X?=
 =?utf-8?B?OS94dDAzSkM3cDhqNmZ1ZFMybDQ2ejF6S1VzOUpEUC9zaG5INFgrRDUzWE5r?=
 =?utf-8?B?UjVNNHZ6QjdzeU1pYTFjT0ltSHUxVDlKbG1SOW5mVTFwTzZlUDVCY1RQOWRt?=
 =?utf-8?B?bEVWM1Rwb2tvY01yNzh4YUM0bXRoN1dNUk1qSGdHY3Y3dHNGdmJWV2ZEZGVx?=
 =?utf-8?B?cGwrdkNmTmhqWERIQUJJa0pVaUF1NUFIVExQdmZZTDVQTEk5dE5vTTYwdHZk?=
 =?utf-8?B?MUNRV3hYbnV2UzczWTBqd1pDSDFDaFp1VGIvVXlxRWlTRjZIV3lzZktEQity?=
 =?utf-8?B?N2FENEpFMjVIQWZjUzVTM1g3ZFcrd21La1cyNG5mZjlCNVJBbm15UmwyVlgv?=
 =?utf-8?Q?UfI7V+r6sXg7t?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Wk1HdTAzcXVFdThMRWZGUGdWT3FNZ29PT0d4d2pxRzRyQncwYjdIT3dxWjQz?=
 =?utf-8?B?SFFRYW9xWmNuSEhRa3A5VkJhOHBFSG8xQjFQUGtWZUh0cEZ2VVZNMVRPSkhz?=
 =?utf-8?B?aFBSVzhTM1I2N2ZNeTRzYmNOdUh2TjdRRDJvakZhTjBuZS81VjNDb2xDcUtk?=
 =?utf-8?B?M054NzhDcnpvcTZka0VpMVVCQ2VHS0hadE5RR09RL1pOc3dpQVVpUnR4TFVU?=
 =?utf-8?B?OFNuSWp0QnF5Um83UWRoSE9wMVk5Y1NudmdBM0F2a0FUSjRuWmowb0xOdXR0?=
 =?utf-8?B?OFRTMXh5cndmejdTNkhxYnhBSjROQk1LcHQzOXNxV2VoRFFIQjVlZmphS3dK?=
 =?utf-8?B?V29QWDNkZllMeEFIR054aXNIdDhaUEVHaHFHWFl4QjlLWU1VeEsvNjFDeGUr?=
 =?utf-8?B?OXI4MEVJN3NTc2Z3a1AxaWd2emhFTlN1Qm5ENDkxSDFxa0xjNXZhRDBNeUM3?=
 =?utf-8?B?RDZ0eFpRbHpJUnVIMFZsVC9wSG5FbmxoMFVlQjdlYWg1Mml4NTVBdmpSbzNm?=
 =?utf-8?B?NHFhWFBvN3ZIVUhoSUIwY1Z3ZmdDTC9lTVFvUVk5Q3krQzB1aURHd1F0STR1?=
 =?utf-8?B?dGw4cVhDN3c5RTM4ZWk4eU1vSFQ3eXhXa2FUUWhmZCtIRmZqMmFjZkR6R2hB?=
 =?utf-8?B?MGIrTENySWZKbytRRytRUi82cFAwdVdNMXZjVnVSVUl3L1JNYjd1cC8wR0Fx?=
 =?utf-8?B?SllOd0FKSVF6MWl2ZytWcFBtSTZFS0VsTFBNd016Z1AyV3NRb0hvbkxKRWl0?=
 =?utf-8?B?Tk1hdFBsVmxtNkxlQ2pLelRwMTQ2N0hLa2RnWnNUQ1FkU0VsRUk2aWNvZGNW?=
 =?utf-8?B?Vjd2SE11czFybkRBMnJQYVJydTlzV0hzMUtuaGZnVmVkd3NETnhKWG51YmVS?=
 =?utf-8?B?YzBuWER0M2VwVUNHa05Pa0FvQTc1MjNQNDM4RkhFckpMT1c0SFZMQ09JK3Zz?=
 =?utf-8?B?MTJMUVloR1QwYzhGWndFZzROZ2FCVU1Ba2ZFejI4R0ZWUTJjN2ZtRWpaay9v?=
 =?utf-8?B?OGdUcnczMkk3Z1NxK1NEcHVaUzhVeFJMUEFlbVI1VmlxYzNzUnk2RTNCU25P?=
 =?utf-8?B?VlhoRXhxNmo0cnJpYzFwVmhNZmEwdzZWNHlqejU1K3hpZm5Tc1NvWGxYMGhu?=
 =?utf-8?B?RHpjUDNWY0Nab1FEYkg1SGZ3YXJDRHpsZ1VEdGlWZCtRL05rcDRZbEN5YU5n?=
 =?utf-8?B?bkVmcUZLMDlnUng3NElFWEttOGRLa3I4VUJqTWx3TEdyNU1Ja2ZKSHpTRHcz?=
 =?utf-8?B?aGRSa0pKcHMydzUyc1JwK1pSY0hFV3JJSlNXRW9Qc0haK2tXcW9XdHJkUWhv?=
 =?utf-8?B?MEh5bWJNbnFwV0dVdlF0cU5PdWgwbFBwSGp5bVhjZDFSM0ltSnNjUWNoRk1B?=
 =?utf-8?B?SnQ3RWRMNTQ2dzVCQVNXdTdDU09Vb1QvNkcyUlFya1pZeHRzNHA1WmVGNXZ4?=
 =?utf-8?B?YUhGTHp2OGJUd2xaMTBXQW90NzNuSFBDR05GcUhXVnBYb3A1S2IwcFZnZlNw?=
 =?utf-8?B?alB4N09yTkc0ZzFaemFvOXdva01wNVNVdUdreGpLeDdKNnppNnhwWnB0MVpr?=
 =?utf-8?B?aXBLK09zWHhmYnR0cHYvRWJVRjgxd2szZ0IwY010V1Iya2Z2WC8ra1F3M1Zy?=
 =?utf-8?B?U1hUb0NCUElUT1Y5bEJoR0tWMjJyYVM0MGFaUUgyZ1J2MVdXTTlYeDJyOGFF?=
 =?utf-8?B?ZzUyM3J0VUoxRzA4UGFhUnNGY21SQnNvUUljVW11M1kyWU5rTnlmVmsvWkZq?=
 =?utf-8?B?L0ZNcitldUZCTTlTbnFrbVNXVEF4VkhhNGlVT1piTjRycTVUck9tWTMrSmc3?=
 =?utf-8?B?d3dqNVFhaHhWUmI5NGxyenptdjJNVDdGREdDTFZwekd1dEViS0NKTDNZVjJk?=
 =?utf-8?B?cWY3Q3NOeTdTZ1hCOHZNN3ZoaW45SUVVU2pDK25qZDFUbXl4dmFDWWRxcVNi?=
 =?utf-8?B?S0tsTFBydi95VlVwSXlJNThWNUp4WmVuRFQ2QUYxUk9mNzZpQUlmU0hWZTVo?=
 =?utf-8?B?dCtJZzZING83TzRoUmViQ1NDN1ZUVjdCYkZtaTczcFE4U0wwaDdRNWlwTTk1?=
 =?utf-8?B?dEtrVVNWMlMwdENJaWdZRUpUbGZGSHZXWTcreE5uVkRhMWhoWkhZSUxieTht?=
 =?utf-8?Q?6LxV1RKd/ztOzTqc9PfIevguJ?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad192753-616f-43ee-acbb-08dd2ff8c34d
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2025 15:26:03.2780
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2KoFYhWyaoGl6vniW8wwJLyPcXqPO87p/jqTs5KBI6nejjwhDEE+/bPRSwboYkXJ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4041
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E5B523F791
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-10.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[40.107.236.54:from];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.236.54:from];
	RCPT_COUNT_TWELVE(0.00)[25];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: GN4HYCTOEDQZAWHKIE6NTW2IGLC26NSD
X-Message-ID-Hash: GN4HYCTOEDQZAWHKIE6NTW2IGLC26NSD
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christoph Hellwig <hch@lst.de>, Leon Romanovsky <leonro@nvidia.com>, Xu Yilun <yilun.xu@linux.intel.com>, kvm@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org, pbonzini@redhat.com, seanjc@google.com, alex.williamson@redhat.com, vivek.kasireddy@intel.com, dan.j.williams@intel.com, aik@amd.com, yilun.xu@intel.com, linux-coco@lists.linux.dev, linux-kernel@vger.kernel.org, lukas@wunner.de, yan.y.zhao@intel.com, leon@kernel.org, baolu.lu@linux.intel.com, zhenzhong.duan@intel.com, tao1.su@intel.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 01/12] dma-buf: Introduce dma_buf_get_pfn_unlocked() kAPI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GN4HYCTOEDQZAWHKIE6NTW2IGLC26NSD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDguMDEuMjUgdW0gMTU6NTggc2NocmllYiBKYXNvbiBHdW50aG9ycGU6DQo+IE9uIFdlZCwg
SmFuIDA4LCAyMDI1IGF0IDAyOjQ0OjI2UE0gKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6
DQo+DQo+Pj4gSGF2aW5nIHRoZSBpbXBvcnRlciBkbyB0aGUgbWFwcGluZyBpcyB0aGUgY29ycmVj
dCB3YXkgdG8gb3BlcmF0ZSB0aGUNCj4+PiBETUEgQVBJIGFuZCB0aGUgbmV3IEFQSSB0aGF0IExl
b24gaGFzIGJ1aWx0IHRvIGZpeCB0aGUgc2NhdHRlcmxpc3QNCj4+PiBhYnVzZSBpbiBkbWFidWYg
cmVsaWVzIG9uIGltcG9ydGVyIG1hcHBpbmcgYXMgcGFydCBvZiBpdCdzDQo+Pj4gY29uc3RydWN0
aW9uLg0KPj4gRXhhY3RseSBvbiB0aGF0IEkgc3Ryb25nbHkgZGlzYWdyZWUgb24uDQo+Pg0KPj4g
RE1BLWJ1ZiB3b3JrcyBieSBwcm92aWRpbmcgRE1BIGFkZHJlc3NlcyB0aGUgaW1wb3J0ZXIgY2Fu
IHdvcmsgd2l0aCBhbmQNCj4+ICpOT1QqIHRoZSB1bmRlcmx5aW5nIGxvY2F0aW9uIG9mIHRoZSBi
dWZmZXIuDQo+IFRoZSBleHBlY3RhdGlvbiBpcyB0aGF0IHRoZSBETUEgQVBJIHdpbGwgYmUgdXNl
ZCB0byBETUEgbWFwIChtb3N0KQ0KPiB0aGluZ3MsIGFuZCB0aGUgRE1BIEFQSSBhbHdheXMgd29y
a3Mgd2l0aCBhIHBoeXNhZGRyX3QvcGZuDQo+IGFyZ3VtZW50LiBCYXNpY2FsbHksIGV2ZXJ5dGhp
bmcgdGhhdCBpcyBub3QgYSBwcml2YXRlIGFkZHJlc3Mgc3BhY2UNCj4gc2hvdWxkIGJlIHN1cHBv
cnRlZCBieSBpbXByb3ZpbmcgdGhlIERNQSBBUEkuIFdlIGFyZSBvbiBjb3Vyc2UgZm9yDQo+IGZp
bmFsbHkgZ2V0dGluZyBhbGwgdGhlIGNvbW1vbiBjYXNlcyBsaWtlIFAyUCBhbmQgTU1JTyBzb2x2
ZWQNCj4gaGVyZS4gVGhhdCBhbG9uZSB3aWxsIHRha2UgY2FyZSBvZiBhbG90Lg0KDQpXZWxsLCBm
cm9tIGV4cGVyaWVuY2UgdGhlIERNQSBBUEkgaGFzIGZhaWxlZCBtb3JlIG9mdGVuIHRoYW4gaXQg
YWN0dWFsbHkgDQp3b3JrZWQgaW4gdGhlIHdheSByZXF1aXJlZCBieSBkcml2ZXJzLg0KDQpFc3Bl
Y2lhbGx5IHRoYXQgd2UgdHJpZWQgdG8gaGlkZSBhcmNoaXRlY3R1cmFsIGNvbXBsZXhpdHkgaW4g
dGhlcmUgDQppbnN0ZWFkIG9mIHByb3Blcmx5IGV4cG9zZSBsaW1pdGF0aW9ucyB0byBkcml2ZXJz
IGlzIG5vdCBzb21ldGhpbmcgSSANCmNvbnNpZGVyIGEgZ29vZCBkZXNpZ24gYXBwcm9hY2guDQoN
ClNvIEkgc2VlIHB1dHRpbmcgZXZlbiBtb3JlIGludG8gdGhhdCBleHRyZW1lbHkgY3JpdGljYWwu
DQoNCj4gRm9yIFAyUCBjYXNlcyB3ZSBhcmUgZ29pbmcgdG93YXJkIChQRk4gKyBQMlAgc291cmNl
IGluZm9ybWF0aW9uKSBhcw0KPiBpbnB1dCB0byB0aGUgRE1BIEFQSS4gVGhlIGFkZGl0aW9uYWwg
IlAyUCBzb3VyY2UgaW5mb3JtYXRpb24iIHByb3ZpZGVzDQo+IGEgZ29vZCB3YXkgZm9yIGNvLW9w
ZXJhdGluZyBkcml2ZXJzIHRvIHJlcHJlc2VudCBwcml2YXRlIGFkZHJlc3MNCj4gc3BhY2VzIGFz
IHdlbGwuIEJvdGggaW1wb3J0ZXIgYW5kIGV4cG9ydGVyIGNhbiBoYXZlIGZ1bGwgdW5kZXJzdGFu
ZGluZw0KPiB3aGF0IGlzIGJlaW5nIG1hcHBlZCBhbmQgZG8gdGhlIGNvcnJlY3QgdGhpbmdzLCBz
YWZlbHkuDQoNCkkgY2FuIHNheSBmcm9tIGV4cGVyaWVuY2UgdGhhdCB0aGlzIGlzIGNsZWFybHkg
bm90IGdvaW5nIHRvIHdvcmsgZm9yIGFsbCANCnVzZSBjYXNlcy4NCg0KSXQgd291bGQgbWVhbiB0
aGF0IHdlIGhhdmUgdG8gcHVsbCBhIG1hc3NpdmUgYW1vdW50IG9mIGRyaXZlciBzcGVjaWZpYyAN
CmZ1bmN0aW9uYWxpdHkgaW50byB0aGUgRE1BIEFQSS4NCg0KVGhpbmdzIGxpa2UgcHJvZ3JhbW1p
bmcgYWNjZXNzIHdpbmRvd3MgZm9yIFBDSSBCQVJzIGlzIGNvbXBsZXRlbHkgZHJpdmVyIA0Kc3Bl
Y2lmaWMgYW5kIGFzIGZhciBhcyBJIGNhbiBzZWUgY2FuJ3QgYmUgcGFydCBvZiB0aGUgRE1BIEFQ
SSB3aXRob3V0IA0KdGhpbmdzIGxpa2UgY2FsbGJhY2tzLg0KDQpXaXRoIHRoYXQgaW4gbWluZCB0
aGUgRE1BIEFQSSB3b3VsZCBiZWNvbWUgYSBtaWQgbGF5ZXIgYmV0d2VlbiBkaWZmZXJlbnQgDQpk
cml2ZXJzIGFuZCB0aGF0IGlzIHJlYWxseSBub3Qgc29tZXRoaW5nIHlvdSBhcmUgc3VnZ2VzdGlu
ZywgaXNuJ3QgaXQ/DQoNCj4gU28sIG5vLCB3ZSBkb24ndCBsb29zZSBwcml2YXRlIGFkZHJlc3Mg
c3BhY2Ugc3VwcG9ydCB3aGVuIG1vdmluZyB0bw0KPiBpbXBvcnRlciBtYXBwaW5nLCBpbiBmYWN0
IGl0IHdvcmtzIGJldHRlciBiZWNhdXNlIHRoZSBpbXBvcnRlciBnZXRzDQo+IG1vcmUgaW5mb3Jt
YXRpb24gYWJvdXQgd2hhdCBpcyBnb2luZyBvbi4NCg0KV2VsbCwgc291bmRzIGxpa2UgSSB3YXNu
J3QgYWJsZSB0byB2b2ljZSBteSBjb25jZXJuLiBMZXQgbWUgdHJ5IGFnYWluOg0KDQpXZSBzaG91
bGQgbm90IGdpdmUgaW1wb3J0ZXJzIGluZm9ybWF0aW9uIHRoZXkgZG9uJ3QgbmVlZC4gRXNwZWNp
YWxseSBub3QgDQppbmZvcm1hdGlvbiBhYm91dCB0aGUgYmFja2luZyBzdG9yZSBvZiBidWZmZXJz
Lg0KDQpTbyB0aGF0IGltcG9ydGVycyBnZXQgbW9yZSBpbmZvcm1hdGlvbiBhYm91dCB3aGF0J3Mg
Z29pbmcgb24gaXMgYSBiYWQgdGhpbmcuDQoNCj4gSSBoYXZlIGltYWdpbmVkIGEgc3RhZ2VkIGFw
cHJvYWNoIHdlcmUgRE1BQlVGIGdldHMgYSBuZXcgQVBJIHRoYXQNCj4gd29ya3Mgd2l0aCB0aGUg
bmV3IERNQSBBUEkgdG8gZG8gaW1wb3J0ZXIgbWFwcGluZyB3aXRoICJQMlAgc291cmNlDQo+IGlu
Zm9ybWF0aW9uIiBhbmQgYSBncmFkdWFsIGNvbnZlcnNpb24uDQoNClRvIG1ha2UgaXQgY2xlYXIg
YXMgbWFpbnRhaW5lciBvZiB0aGF0IHN1YnN5c3RlbSBJIHdvdWxkIHJlamVjdCBzdWNoIGEgDQpz
dGVwIHdpdGggYWxsIEkgaGF2ZS4NCg0KV2UgaGF2ZSBhbHJlYWR5IGdvbmUgZG93biB0aGF0IHJv
YWQgYW5kIGl0IGRpZG4ndCB3b3JrZWQgYXQgYWxsIGFuZCB3YXMgDQphIHJlYWxseSBiaWcgcGFp
biB0byBwdWxsIHBlb3BsZSBiYWNrIGZyb20gaXQuDQoNCj4gRXhwb3J0ZXIgbWFwcGluZyBmYWxs
cyBkb3duIGluIHRvbyBtYW55IGNhc2VzIGFscmVhZHk6DQo+DQo+IDEpIFByaXZhdGUgYWRkcmVz
c2VzIHNwYWNlcyBkb24ndCB3b3JrIGZ1bGx5IHdlbGwgYmVjYXVzZSBtYW55IGRldmljZXMNCj4g
bmVlZCBzb21lIGluZGljYXRpb24gd2hhdCBhZGRyZXNzIHNwYWNlIGlzIGJlaW5nIHVzZWQgYW5k
IHNjYXR0ZXIgbGlzdA0KPiBjYW4ndCByZWFsbHkgcHJvcGVybHkgY29udmV5IHRoYXQuIElmIHRo
ZSBETUFCVUYgaGFzIGEgbWl4dHVyZSBvZiBDUFUNCj4gYW5kIHByaXZhdGUgaXQgYmVjb21lcyBh
IFBJVEENCg0KQ29ycmVjdCwgeWVzLiBUaGF0J3Mgd2h5IEkgc2FpZCB0aGF0IHNjYXR0ZXJsaXN0
IHdhcyBhIGJhZCBjaG9pY2UgZm9yIA0KdGhlIGludGVyZmFjZS4NCg0KQnV0IGV4cG9zaW5nIHRo
ZSBiYWNraW5nIHN0b3JlIHRvIGltcG9ydGVycyBhbmQgdGhlbiBsZXQgdGhlbSBkbyANCndoYXRl
dmVyIHRoZXkgd2FudCB3aXRoIGl0IHNvdW5kcyBsaWtlIGFuIGV2ZW4gd29yc2UgaWRlYS4NCg0K
PiAyKSBNdWx0aS1wYXRoIFBDSSBjYW4gcmVxdWlyZSB0aGUgaW1wb3J0ZXIgdG8gbWFrZSBtYXBw
aW5nIGRlY2lzaW9ucw0KPiB1bmlxdWUgdG8gdGhlIGRldmljZSBhbmQgcHJvZ3JhbSBkZXZpY2Ug
c3BlY2lmaWMgaW5mb3JtYXRpb24gZm9yIHRoZQ0KPiBtdWx0aS1wYXRoLiBXZSBhcmUgZG9pbmcg
dGhpcyBpbiBtbHg1IHRvZGF5IGFuZCBoYXZlIGhhY2tzIGJlY2F1c2UNCj4gRE1BQlVGIGlzIGRl
c3Ryb3lpbmcgdGhlIGluZm9ybWF0aW9uIHRoZSBpbXBvcnRlciBuZWVkcyB0byBjaG9vc2UgdGhl
DQo+IGNvcnJlY3QgUENJIHBhdGguDQoNClRoYXQncyB3aHkgdGhlIGV4cG9ydGVyIGdldHMgdGhl
IHN0cnVjdCBkZXZpY2Ugb2YgdGhlIGltcG9ydGVyIHNvIHRoYXQgDQppdCBjYW4gcGxhbiBob3cg
dGhvc2UgYWNjZXNzZXMgYXJlIG1hZGUuIFdoZXJlIGV4YWN0bHkgaXMgdGhlIHByb2JsZW0gDQp3
aXRoIHRoYXQ/DQoNCldoZW4geW91IGhhdmUgYW4gdXNlIGNhc2Ugd2hpY2ggaXMgbm90IGNvdmVy
ZWQgYnkgdGhlIGV4aXN0aW5nIERNQS1idWYgDQppbnRlcmZhY2VzIHRoZW4gcGxlYXNlIHZvaWNl
IHRoYXQgdG8gbWUgYW5kIG90aGVyIG1haW50YWluZXJzIGluc3RlYWQgb2YgDQppbXBsZW1lbnRp
bmcgc29tZSBoYWNrLg0KDQo+IDMpIEltcG9ydGluZyBkZXZpY2VzIG5lZWQgdG8ga25vdyBpZiB0
aGV5IGFyZSB3b3JraW5nIHdpdGggUENJIFAyUA0KPiBhZGRyZXNzZXMgZHVyaW5nIG1hcHBpbmcg
YmVjYXVzZSB0aGV5IG5lZWQgdG8gZG8gdGhpbmdzIGxpa2UgdHVybiBvbg0KPiBBVFMgb24gdGhl
aXIgRE1BLiBBcyBmb3IgbXVsdGktcGF0aCB3ZSBoYXZlIHRoZSBzYW1lIGhhY2tzIGluc2lkZSBt
bHg1DQo+IHRvZGF5IHRoYXQgYXNzdW1lIERNQUJVRnMgYXJlIGFsd2F5cyBQMlAgYmVjYXVzZSB3
ZSBjYW5ub3QgZGV0ZXJtaW5lDQo+IGlmIHRoaW5ncyBhcmUgUDJQIG9yIG5vdCBhZnRlciBiZWlu
ZyBETUEgbWFwcGVkLg0KDQpXaHkgd291bGQgeW91IG5lZWQgQVRTIG9uIFBDSSBQMlAgYW5kIG5v
dCBmb3Igc3lzdGVtIG1lbW9yeSBhY2Nlc3Nlcz8NCg0KPiA0KSBUUEggYml0cyBuZWVkcyB0byBi
ZSBwcm9ncmFtbWVkIGludG8gdGhlIGltcG9ydGVyIGRldmljZSBidXQgYXJlDQo+IGRlcml2ZWQg
YmFzZWQgb24gdGhlIE5VTUEgdG9wb2xvZ3kgb2YgdGhlIERNQSB0YXJnZXQuIFRoZSBpbXBvcnRl
ciBoYXMNCj4gbm8gaWRlYSB3aGF0IHRoZSBETUEgdGFyZ2V0IGFjdHVhbGx5IHdhcyBiZWNhdXNl
IHRoZSBleHBvcnRlciBtYXBwaW5nDQo+IGRlc3Ryb3llZCB0aGF0IGluZm9ybWF0aW9uLg0KDQpZ
ZWFoLCBidXQgYWdhaW4gdGhhdCBpcyBjb21wbGV0ZWx5IGludGVudGlvbmFsLg0KDQpJIGFzc3Vt
ZSB5b3UgbWVhbiBUTFAgcHJvY2Vzc2luZyBoaW50cyB3aGVuIHlvdSBzYXkgVFBIIGFuZCB0aG9z
ZSBzaG91bGQgDQpiZSBwYXJ0IG9mIHRoZSBETUEgYWRkcmVzc2VzIHByb3ZpZGVkIGJ5IHRoZSBl
eHBvcnRlci4NCg0KVGhhdCBhbiBpbXBvcnRlciB0cmllcyB0byBsb29rIGJlaGluZCB0aGUgY3Vy
dGFpbiBhbmQgZGV0ZXJtaW5lcyB0aGUgDQpOVU1BIHBsYWNlbWVudCBhbmQgdG9wb2xvZ3kgdGhl
bXNlbHZlcyBpcyBjbGVhcmx5IGEgbm8tZ28gZnJvbSB0aGUgDQpkZXNpZ24gcGVyc3BlY3RpdmUu
DQoNCj4gNSkgaW9tbXVmZCBhbmQga3ZtIGFyZSBib3RoIHVzaW5nIENQVSBhZGRyZXNzZXMgd2l0
aG91dCBETUEuIE5vDQo+IGV4cG9ydGVyIG1hcHBpbmcgaXMgcG9zc2libGUNCg0KV2UgaGF2ZSBj
dXN0b21lcnMgdXNpbmcgYm90aCBLVk0gYW5kIFhFTiB3aXRoIERNQS1idWYsIHNvIEkgY2FuIGNs
ZWFybHkgDQpjb25maXJtIHRoYXQgdGhpcyBpc24ndCB0cnVlLg0KDQpSZWdhcmRzLA0KQ2hyaXN0
aWFuLg0KDQo+DQo+IEphc29uDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

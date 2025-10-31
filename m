Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 08659C24FDD
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 31 Oct 2025 13:26:45 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CC0DD3F802
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 31 Oct 2025 12:26:22 +0000 (UTC)
Received: from CH1PR05CU001.outbound.protection.outlook.com (mail-northcentralusazon11010007.outbound.protection.outlook.com [52.101.193.7])
	by lists.linaro.org (Postfix) with ESMTPS id 04ECB3F785
	for <linaro-mm-sig@lists.linaro.org>; Fri, 31 Oct 2025 12:26:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=F4P8ZEDm;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.193.7 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CzlmPRH2+4NQyrVJHT4TaremDrRnkEL542mqrtcRjIo+Tm+YN0kJsp0aedXEWQY/qOoJhtyF8fiSFeaFjN0NuResd/3b4pVcNDsfA3ZohFHM1tIec27538f6n75BwPXdwQ88xoCyHaxiU6Fvzeb/vJa3f7HiuozRGT9UTNi+qiwt/bAY4QIoxBWuMA9rLANsSKhTpEslvu2ekwwP183Jn71YZf1jlvT9EBwY9JkxWqavsjCGddqe0UAzv03lLK3l/v97c7cKD1tEJgf1JDYKw7Js4VnFJuApd/cVb8uTT+Wz9XJ7ol318ex+/D19cIzUopWJlCUJlqIwUsAjwBRVDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6xYPudzhUHgpM70N6sxlO7ghhLabLbOuLSQrBPApUD8=;
 b=d0XqwhUnJZGFPq8CpnDfYljEIoIdWLVKX1/jM+tXLpZ3Q/tcpPj4u2ti4MvMckhqQdbF+RZ99JbHFn5irtZ2YSgVhIIDXn2dO0Fbvuhbeg7/PGZ9AgydyZjTQOxLQ7zAGHxk60GBOoMZnBwpUC44o9x8Yy71SAaldet1P+ggeFtc+mgoDGmJxcl+tVI8+BJ1pAb1Lxc/m93KfTtA2/MC31OoSg+N7TGAodmduHapU/FyZozJIXkvUnhRqyr71PcRiEURBeqbQ+PXWZtfidv8zhgKtiWU1n4fT9qrM69g/FWsu9AFSW8GUCb+RTqs2zht7x2nFIqe+KVWYuUPDufMUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6xYPudzhUHgpM70N6sxlO7ghhLabLbOuLSQrBPApUD8=;
 b=F4P8ZEDmu0RqeXd4RN7sarHHSSWAU05InWqd4BtXhvBYq9FU8gCxM4j5r9wzC/hE3JnolNCdUpKUIMApRds6S2txEl7HfkZx1UDfUQ5wblc5qwnAFRIoSNc13v0CstBmuULmXRTQhYSVKbLTFDfXnBt8lCuQwuQc8wbItbgrUOc=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SJ2PR12MB8882.namprd12.prod.outlook.com (2603:10b6:a03:537::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.14; Fri, 31 Oct
 2025 12:26:05 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9275.013; Fri, 31 Oct 2025
 12:26:04 +0000
Message-ID: <50f3743f-8b83-42de-87c8-1c7d52df3ab0@amd.com>
Date: Fri, 31 Oct 2025 13:25:58 +0100
User-Agent: Mozilla Thunderbird
To: Tvrtko Ursulin <tursulin@ursulin.net>,
 Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>,
 Matthew Brost <matthew.brost@intel.com>, Danilo Krummrich <dakr@kernel.org>,
 Philipp Stanner <phasta@kernel.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>
References: <20251031090704.1111-1-pierre-eric.pelloux-prayer@amd.com>
 <411190d4-92d7-4e95-acac-b39afa438c0f@ursulin.net>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <411190d4-92d7-4e95-acac-b39afa438c0f@ursulin.net>
X-ClientProxiedBy: BN1PR13CA0023.namprd13.prod.outlook.com
 (2603:10b6:408:e2::28) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SJ2PR12MB8882:EE_
X-MS-Office365-Filtering-Correlation-Id: 78b1c3dc-15a4-49e6-80b2-08de1878a89c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|1800799024|376014|7416014|921020;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?cndxWlBnS0Ftd29HQmlFaHpFN015dmtVREIxOFlscHZZZVRTaS9zWVc0ZG9W?=
 =?utf-8?B?dUMwMXZJM0dvbVNrZ0MxU21NeDZUNG81cllXbkp1K2xmM3pzQmhNdWlXc0lL?=
 =?utf-8?B?R0ZwVHdrLzJlenNndjlyWGZkUzNlTzJNcG81Qmk4bjVvM2VuMXpPR1dEVEd5?=
 =?utf-8?B?SkdLMWxTSTgvTjhjbG5rUUUxU2tOMTk2Y0NVdmVMUzhVQVZKeWdEK0xvazAx?=
 =?utf-8?B?eWZRY241eFNuZDllNHFNU1lSdU8xb1d4Ulo2QVgvUTRxdHVJREpZcndrWXg1?=
 =?utf-8?B?MHpnaVVURm8vdUpuL1o0eHVaWGhuMm5uK3Z3RDJYcCtpZmV4aVhGc2hDWkxx?=
 =?utf-8?B?d29ORWw5akljNjZLb1FvTGYrcFp5aDF2VHN6c1JCWkVIdUgxM05sa0cwdjJW?=
 =?utf-8?B?MjZWSW5wVS92V3k2NWJMY1RuVmh4Q3dUbFB6MlVCYW90SkM3a1NyS0JXT2ds?=
 =?utf-8?B?Y3poeTc3TExIa1A1WWV5dHUvUFJCWGk2aXVnNE1pc2praDNrSmt5S1NvMlc5?=
 =?utf-8?B?eTQ3c0xzQVZkZ1FGVm1MTXo1eGxwYkFZdE1FMk9CbFlNZVowS1g1ZjVHMnBV?=
 =?utf-8?B?QnJFdXo4WlhYOWJmRWpZL21iVWYzR080akRGZEZ6a2tuZjlMNHJMUS83OWts?=
 =?utf-8?B?ZERDNzE1N244UnkydEJOM2dONE5CbUxWUDE2dTdnSlpTQTNsYnNEeFV2a1Z1?=
 =?utf-8?B?S3hWbXNuaFBONWpjN0tjUml5VDRXSDNqY2U0c29zaFg0SW5OekVCZHJGRVg0?=
 =?utf-8?B?MVFQSzVObFBpSTJWNWxXczg4MW1WLzNpWUJWL1NSMHJwc2pBaEU3aVRjWUJa?=
 =?utf-8?B?TmE1UHgxM1lqREV2TWZXS1BucFRvSkdLQ1BnRjFzaUxvcGxRNVAzRld5SmQw?=
 =?utf-8?B?bEt4Sm9IZTlSK0E3RzJRT0NYME9WbUJlY2xBZHVHbVVWeEV5V0k4SUovVnh6?=
 =?utf-8?B?ZmEvMUY2ajNpTzZUNmk4NGNZT3hQU2ZyMExnellLME8reGNWUFk2V1FoWWov?=
 =?utf-8?B?d0l0ekxqSlQ5d2Jhby8wWGlscUZLOU1BdWtnWFhEOXZ0enRXWjAyQkh6bXM1?=
 =?utf-8?B?SWlubUNvY28yWkJGcjB2MEFhd1VWUEhEaUlodXM0TnBOTzZoNHdqOGtacEVo?=
 =?utf-8?B?VXJKdDB3RVRudTBPUUpJTTJQVlp3RmFrWGdSU3FRSmZxQnVVMnFrWUJQL010?=
 =?utf-8?B?SCs2NWg5aERadDlaQW5WclN3bXFKeE0zNENmbHBZci9yVlBGeGd5QVpqeTcz?=
 =?utf-8?B?TGRBdzJGOFRIWWgyNGc1OFkzNDZIamV6bEhudmNVMHFTcWpVSzFXTi91aVdV?=
 =?utf-8?B?ZjFBd2twUnJvOVRFSnAwNEVTUmYxUUVqMm9OM1ppYmdycXd1UG81WlV3Q0h5?=
 =?utf-8?B?engybGhnd1pGTnRoRFpBWkY3Q2tJMlJIVHprR1BQb2MyT3A0UTRheEV6MVdN?=
 =?utf-8?B?eEh4eWg5SEU1NGFNSHVLN1F1dmJoNTVKN3hXcG1MUmhiYTdQQkZXNzJIRXl1?=
 =?utf-8?B?ek5ndExiOThrNGxsOHpjZE1rTVEvdVp1UENKc1BQaW9VSkR2S3ZJUGtYL0xY?=
 =?utf-8?B?S0pwL2hCTDU5bXBmaFJxTUlJTTlQMnh1aEJkdzFRc1FGSS80L0JjeWlFZjJE?=
 =?utf-8?B?b3ZuUi9oZzUvRkZLdFo4LzBidlFja1J0Z3pWbWpWTXNDUEdJM1IvcGgvd0Fl?=
 =?utf-8?B?dzFVczVxVWN6Y3VLVDhkU3MyY1BJdWxJUWxBKzd0aUpLSk11OFJ5L1FQWTFi?=
 =?utf-8?B?elBZY3dGdG1tY2hHaE9STkVNVkJPWjYvWFlZSW9RcFF3bEliSzNkb09JbG5k?=
 =?utf-8?B?Uy8wenZ1dFhtVkpLMzdyZ252eG5IWEZJaUovTWVTcmJZdkduUmI4ek9VdkpC?=
 =?utf-8?B?dFhGWEVRT0RYSkRUdWZIa2lXY1ZhdCtwRDN6ank5bDlZSDQ4S1ZEVHRiWHNi?=
 =?utf-8?Q?QKRdbdIRvcAgWQMIU0EXHHa4/QAyP7dG?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7416014)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YTVRSGtSMlAweGg3Sk9xR3pUTHVFZHFxLzZ0TGlRUHFPVnl1Ums2WWdDRHBh?=
 =?utf-8?B?UmYyVVJqMkhmNHhYM0UrZTRGcEt6d215K0VlZnVIUW5BVGlwWmZLRHp4NDlu?=
 =?utf-8?B?ZFFlV0JCSEdlaU94ZFozVzlia282MW42VEN2c09tb3hHSSt5aU9KNXIrQXFX?=
 =?utf-8?B?OWJ1U3R1cGNadTREY0dkYlk3ZUg3R0ZrWXpZZURtUUM0clJTUDZPY05pNmFB?=
 =?utf-8?B?SVRyZzFvN1RvMjVwcXJhL0l3V2hNYThaUk5aQm11UmNVMDJIM3J0NEtScGhm?=
 =?utf-8?B?V1BtUTVUamRybXpSaG1DL1pZZ1psU0Rad3F3eHhIRjAveXZVa3hMeE1mQUxm?=
 =?utf-8?B?WE9ZRzg5U3pKcU91SjhQUWFRWWlMU0hXaWhkb2tHQ3czbUFENXRjc3hvV2p0?=
 =?utf-8?B?WEYrenpZVFlTNWxLS20wR0tLTTdVV05tYW4rcXhPelIxTk1kTFYwMFM2RGc5?=
 =?utf-8?B?S3NlKzRwTEc0RzdvUzN2QlIwNnljM3M2SW1Ybkw0YlI5cjhWOTBPVDQ3R0VN?=
 =?utf-8?B?ZmhLM1RFbjIxWDFsNHRJTmtLUTRqbitJT2o5M3V4NEkwOFhEeFdGSllWeHEw?=
 =?utf-8?B?cWYxWlVLTmVXaCtXM3pydHQyY0FvMWhpVlYwbE4yRjNmd2kxeEVVdUR1ejE5?=
 =?utf-8?B?eTJlcno5SHRMOHBiRXdXY2tzaCszbG8rdDFjT09hSXUwWXZXRnRHZnFxSHpp?=
 =?utf-8?B?LzBhYUlHbE5xdWl6L1JnVytvTFMxZElOa2k4SHE2eEE5SnBiUFl4bVlMWG1L?=
 =?utf-8?B?ZC9rWFNLZjUwL0hZN0l0WTZZYkVkS3pua0NuWUFJUTZLQ3JLeGZQL21Tcy80?=
 =?utf-8?B?TGlhbndGNzVQUG85TVl6aDl3bVdROXpxWEVqYy9iMzAvZDRGd1NKb0YvMktP?=
 =?utf-8?B?WVRob1VBc1k2aGpobHAvdGR5LzFXMjRjRnp5em9VZktQL240RWc3WlpjaVJs?=
 =?utf-8?B?NUxVNjBqdUt1L0VHald6K1M3eXNyVHVibG8vbzZ6WVJja2FaUERiVVZNSTd4?=
 =?utf-8?B?cXJPbldkMmVwR0pTajhNMkF3OEQxY2ZNcERLbUwwTEV0cGpqblprRlNtSmlv?=
 =?utf-8?B?enhyMVJzM3hjZGQ2RFh0bG5ndW5LcDNaRkkzQzJiS1JIT01XOFY3QVpqLzFs?=
 =?utf-8?B?R0ZIZHBsOVlkMmtKUW5sOXFtVzAweEZXTTV4OFRQQ3ptTG40YUdlbEkzV2E5?=
 =?utf-8?B?MmF3S0lmdW9VT3N1UzRQd2paUk80WVhoeldGem55emFYOWpITDM1T3Vwb0Zi?=
 =?utf-8?B?N3o5VHVmYkd5WDJzWHFWdFA2alptZFZZeFdmaEF1N0tsRDB0SnJGem1KVXAx?=
 =?utf-8?B?KyszNkUxL1ZTamFubTIvZzBuK0hueEoxbG9QWllrR2tHMmdqZmtFOGRZQXd1?=
 =?utf-8?B?cXlBY2xkdm90UUVlM2x6UTZYL0paZUNyVURUK2F2K0pOMEVTU1RnclpSRHhS?=
 =?utf-8?B?VWxHb1Y2dHVYZFlQZVNTMWNjOXkveEpVQjVIZThIVDZOdVdHZDZqZmlGamdU?=
 =?utf-8?B?cm9uUGRYOHo2aG91VnUwcEpVbnR2MlFVMm5rWW5jaEVmTWgzeEdDMUwxT055?=
 =?utf-8?B?NmpiQlRiQ1Y1NFJQOVpTRmlXNmtUUyt0ajlxME9TZUZRUEYzemtUc1F0M0Rz?=
 =?utf-8?B?aHptMEtsRC92cmdkUEJwQTZ6WDI3aHJlczFQZDR3MFBLM2MvTktLL0NqVTdx?=
 =?utf-8?B?R3ZiVzhhbXNTYXg4ak9mYVRsTlRKUWdpZFJaUUd2UFdXeWNEZTVOMFhaZ2dI?=
 =?utf-8?B?eFFqV3BmTzJqeUxyV1B1REtkQklHbWlhSVFMbW1ORmV1aE9ZZ3RISWtSOWZU?=
 =?utf-8?B?U3JUaFVRdHNHZm5DOGtrUmJhclN2eWZ4VTl0RndvOGhnNkVrLytWQVNIeWo2?=
 =?utf-8?B?RDNHeUtPVWpvQjZjc0ZWS0ZIc3llaFRSd3VXUFluMXRTSWtyNDIwOVVlamh3?=
 =?utf-8?B?Y3NHMlJsNElRYi94ZWNvVFAwbVphQS84QzZTOUkvZW1aNjR3QzVxdi9pRzJp?=
 =?utf-8?B?Vlo2TXk4NzdEbjlhbkZCZysvUkFoTjRNeHMvSks2UjJyQVplTmVMbHBvMEJC?=
 =?utf-8?B?TVhLU1EwRzdIbjU4UGJISnlJY2hvVy9UNmdLQWFydEdubG5WUjlZeklORVFW?=
 =?utf-8?Q?pSCKEgyKGKyqJyyavsfvI4sCm?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78b1c3dc-15a4-49e6-80b2-08de1878a89c
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2025 12:26:03.8729
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ujwhLLZPSuIbw5Vm3NL+C5GG2Tzo3HiUPowf3zPl6O8vMEQgbUe3SKc+4/FiHIDb
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR12MB8882
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 04ECB3F785
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_TO(0.00)[ursulin.net,amd.com,intel.com,kernel.org,gmail.com,linux.intel.com,suse.de,ffwll.ch,linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.193.7:from];
	ASN(0.00)[asn:8075, ipnet:52.96.0.0/12, country:US];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	URIBL_BLOCKED(0.00)[amd.com:dkim,amd.com:email,amd.com:mid,mail-northcentralusazon11010007.outbound.protection.outlook.com:rdns];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: 5VOJZVXOVZLHUS4MNGYJVIJ4IWRANIHU
X-Message-ID-Hash: 5VOJZVXOVZLHUS4MNGYJVIJ4IWRANIHU
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] drm/sched: Fix deadlock in drm_sched_entity_kill_jobs_cb
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5VOJZVXOVZLHUS4MNGYJVIJ4IWRANIHU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCk9uIDEwLzMxLzI1IDEyOjUwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToNCj4gDQo+IE9uIDMx
LzEwLzIwMjUgMDk6MDcsIFBpZXJyZS1FcmljIFBlbGxvdXgtUHJheWVyIHdyb3RlOg0KPj4gVGhl
IE1lc2EgaXNzdWUgcmVmZXJlbmNlZCBiZWxvdyBwb2ludGVkIG91dCBhIHBvc3NpYmxlIGRlYWRs
b2NrOg0KPj4NCj4+IFsgMTIzMS42MTEwMzFdwqAgUG9zc2libGUgaW50ZXJydXB0IHVuc2FmZSBs
b2NraW5nIHNjZW5hcmlvOg0KPj4NCj4+IFsgMTIzMS42MTEwMzNdwqDCoMKgwqDCoMKgwqAgQ1BV
MMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIENQVTENCj4+IFsgMTIzMS42
MTEwMzRdwqDCoMKgwqDCoMKgwqAgLS0tLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIC0tLS0NCj4+IFsgMTIzMS42MTEwMzVdwqDCoCBsb2NrKCZ4YS0+eGFfbG9jayMxNyk7
DQo+PiBbIDEyMzEuNjExMDM4XcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGxvY2FsX2lycV9kaXNhYmxlKCk7DQo+PiBbIDEyMzEu
NjExMDM5XcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGxvY2soJmZlbmNlLT5sb2NrKTsNCj4+IFsgMTIzMS42MTEwNDFdwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
bG9jaygmeGEtPnhhX2xvY2sjMTcpOw0KPj4gWyAxMjMxLjYxMTA0NF3CoMKgIDxJbnRlcnJ1cHQ+
DQo+PiBbIDEyMzEuNjExMDQ1XcKgwqDCoMKgIGxvY2soJmZlbmNlLT5sb2NrKTsNCj4+IFsgMTIz
MS42MTEwNDddDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqKiogREVBRExP
Q0sgKioqDQo+Pg0KPj4gSW4gdGhpcyBleGFtcGxlLCBDUFUwIHdvdWxkIGJlIGFueSBmdW5jdGlv
biBhY2Nlc3Npbmcgam9iLT5kZXBlbmRlbmNpZXMNCj4+IHRocm91Z2ggdGhlIHhhXyogZnVuY3Rp
b25zIHRoYXQgZG9lc24ndCBkaXNhYmxlIGludGVycnVwdHMgKGVnOg0KPj4gZHJtX3NjaGVkX2pv
Yl9hZGRfZGVwZW5kZW5jeSwgZHJtX3NjaGVkX2VudGl0eV9raWxsX2pvYnNfY2IpLg0KPj4NCj4+
IENQVTEgaXMgZXhlY3V0aW5nIGRybV9zY2hlZF9lbnRpdHlfa2lsbF9qb2JzX2NiIGFzIGEgZmVu
Y2Ugc2lnbmFsbGluZw0KPj4gY2FsbGJhY2sgc28gaW4gYW4gaW50ZXJydXB0IGNvbnRleHQuIEl0
IHdpbGwgZGVhZGxvY2sgd2hlbiB0cnlpbmcgdG8NCj4+IGdyYWIgdGhlIHhhX2xvY2sgd2hpY2gg
aXMgYWxyZWFkeSBoZWxkIGJ5IENQVTAuDQo+Pg0KPj4gUmVwbGFjaW5nIGFsbCB4YV8qIHVzYWdl
IGJ5IHRoZWlyIHhhXypfaXJxIGNvdW50ZXJwYXJ0cyB3b3VsZCBmaXgNCj4+IHRoaXMgaXNzdWUs
IGJ1dCBDaHJpc3RpYW4gcG9pbnRlZCBvdXQgYW5vdGhlciBpc3N1ZTogZG1hX2ZlbmNlX3NpZ25h
bA0KPj4gdGFrZXMgZmVuY2UubG9jayBhbmQgc28gZG9lcyBkbWFfZmVuY2VfYWRkX2NhbGxiYWNr
Lg0KPj4NCj4+IMKgwqAgZG1hX2ZlbmNlX3NpZ25hbCgpIC8vIGxvY2tzIGYxLmxvY2sNCj4+IMKg
wqAgLT4gZHJtX3NjaGVkX2VudGl0eV9raWxsX2pvYnNfY2IoKQ0KPj4gwqDCoCAtPiBmb3JlYWNo
IGRlcGVuZGVuY2llcw0KPj4gwqDCoMKgwqDCoCAtPiBkbWFfZmVuY2VfYWRkX2NhbGxiYWNrKCkg
Ly8gbG9ja3MgZjIubG9jaw0KPj4NCj4+IFRoaXMgd2lsbCBkZWFkbG9jayBpZiBmMSBhbmQgZjIg
c2hhcmUgdGhlIHNhbWUgc3BpbmxvY2suDQo+IA0KPiBJcyBpdCBwb3NzaWJsZSB0byBoaXQgdGhp
cyBjYXNlPw0KPiANCj4gU2FtZSBsb2NrIG1lYW5zIHNhbWUgZXhlY3V0aW9uIHRpbWVsaW5lDQoN
Ck5vcGUsIGV4YWN0bHkgdGhhdCBpcyBpbmNvcnJlY3QuIEl0J3MgY29tcGxldGVseSB1cCB0byB0
aGUgaW1wbGVtZW50YXRpb24gd2hhdCB0aGV5IHVzZSB0aGlzIGxvY2sgZm9yLg0KDQo+LCB3aGlj
aCBzaG91bGQgbWVhbiBkZXBlbmRlbmN5IHNob3VsZCBoYXZlIGJlZW4gc3F1YXNoZWQgaW4gZHJt
X3NjaGVkX2pvYl9hZGRfZGVwZW5kZW5jeSgpLCBubz8NCg0KVGhpcyBtYWtlcyBpdCBsZXNzIGxp
a2VseSwgYnV0IG5vdCBpbXBvc3NpYmxlIHRvIHRyaWdnZXIuDQoNClJlZ2FyZHMsDQpDaHJpc3Rp
YW4uDQoNCj4gDQo+IE9yIHdvdWxkIHNoYXJpbmcgdGhlIGxvY2sgYnV0IG5vdCBzaGFyaW5nIHRo
ZSBlbnRpdHktPmZlbmNlX2NvbnRleHQgYmUgY29uc2lkZXJlZCBsZWdhbD8gSXQgd291bGQgYmUg
c3VycHJpc2luZyBhdCBsZWFzdC4NCj4gDQo+IEFsc28sIHdvdWxkIGFueW9uZSBoYXZlIHRpbWUg
dG8gYWRkIGEga3VuaXQgdGVzdD8gOykNCj4gDQo+IFJlZ2FyZHMsDQo+IA0KPiBUdnJ0a28NCj4g
DQo+PiBUbyBmaXggYm90aCBpc3N1ZXMsIHRoZSBjb2RlIGl0ZXJhdGluZyBvbiBkZXBlbmRlbmNp
ZXMgYW5kIHJlLWFybWluZyB0aGVtDQo+PiBpcyBtb3ZlZCBvdXQgdG8gZHJtX3NjaGVkX2VudGl0
eV9raWxsX2pvYnNfd29yay4NCj4+DQo+PiBMaW5rOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3Rv
cC5vcmcvbWVzYS9tZXNhLy0vaXNzdWVzLzEzOTA4DQo+PiBSZXBvcnRlZC1ieTogTWlraGFpbCBH
YXZyaWxvdiA8bWlraGFpbC52LmdhdnJpbG92QGdtYWlsLmNvbT4NCj4+IFN1Z2dlc3RlZC1ieTog
Q2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4gUmV2aWV3ZWQt
Ynk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4+IFNpZ25l
ZC1vZmYtYnk6IFBpZXJyZS1FcmljIFBlbGxvdXgtUHJheWVyIDxwaWVycmUtZXJpYy5wZWxsb3V4
LXByYXllckBhbWQuY29tPg0KPj4gLS0tDQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVy
L3NjaGVkX2VudGl0eS5jIHwgMzQgKysrKysrKysrKysrKy0tLS0tLS0tLS0tDQo+PiDCoCAxIGZp
bGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pDQo+Pg0KPj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZW50aXR5LmMgYi9kcml2
ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2VudGl0eS5jDQo+PiBpbmRleCBjOGU5NDlmNGE1
NjguLmZlMTc0YTQ4NTdiZSAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVs
ZXIvc2NoZWRfZW50aXR5LmMNCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2No
ZWRfZW50aXR5LmMNCj4+IEBAIC0xNzMsMjYgKzE3MywxNSBAQCBpbnQgZHJtX3NjaGVkX2VudGl0
eV9lcnJvcihzdHJ1Y3QgZHJtX3NjaGVkX2VudGl0eSAqZW50aXR5KQ0KPj4gwqAgfQ0KPj4gwqAg
RVhQT1JUX1NZTUJPTChkcm1fc2NoZWRfZW50aXR5X2Vycm9yKTsNCj4+IMKgICtzdGF0aWMgdm9p
ZCBkcm1fc2NoZWRfZW50aXR5X2tpbGxfam9ic19jYihzdHJ1Y3QgZG1hX2ZlbmNlICpmLA0KPj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZG1hX2Zl
bmNlX2NiICpjYik7DQo+PiArDQo+PiDCoCBzdGF0aWMgdm9pZCBkcm1fc2NoZWRfZW50aXR5X2tp
bGxfam9ic193b3JrKHN0cnVjdCB3b3JrX3N0cnVjdCAqd3JrKQ0KPj4gwqAgew0KPj4gwqDCoMKg
wqDCoCBzdHJ1Y3QgZHJtX3NjaGVkX2pvYiAqam9iID0gY29udGFpbmVyX29mKHdyaywgdHlwZW9m
KCpqb2IpLCB3b3JrKTsNCj4+IC0NCj4+IC3CoMKgwqAgZHJtX3NjaGVkX2ZlbmNlX3NjaGVkdWxl
ZChqb2ItPnNfZmVuY2UsIE5VTEwpOw0KPj4gLcKgwqDCoCBkcm1fc2NoZWRfZmVuY2VfZmluaXNo
ZWQoam9iLT5zX2ZlbmNlLCAtRVNSQ0gpOw0KPj4gLcKgwqDCoCBXQVJOX09OKGpvYi0+c19mZW5j
ZS0+cGFyZW50KTsNCj4+IC3CoMKgwqAgam9iLT5zY2hlZC0+b3BzLT5mcmVlX2pvYihqb2IpOw0K
Pj4gLX0NCj4+IC0NCj4+IC0vKiBTaWduYWwgdGhlIHNjaGVkdWxlciBmaW5pc2hlZCBmZW5jZSB3
aGVuIHRoZSBlbnRpdHkgaW4gcXVlc3Rpb24gaXMga2lsbGVkLiAqLw0KPj4gLXN0YXRpYyB2b2lk
IGRybV9zY2hlZF9lbnRpdHlfa2lsbF9qb2JzX2NiKHN0cnVjdCBkbWFfZmVuY2UgKmYsDQo+PiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBkbWFfZmVu
Y2VfY2IgKmNiKQ0KPj4gLXsNCj4+IC3CoMKgwqAgc3RydWN0IGRybV9zY2hlZF9qb2IgKmpvYiA9
IGNvbnRhaW5lcl9vZihjYiwgc3RydWN0IGRybV9zY2hlZF9qb2IsDQo+PiAtwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZpbmlzaF9jYik7DQo+PiArwqDC
oMKgIHN0cnVjdCBkbWFfZmVuY2UgKmY7DQo+PiDCoMKgwqDCoMKgIHVuc2lnbmVkIGxvbmcgaW5k
ZXg7DQo+PiDCoCAtwqDCoMKgIGRtYV9mZW5jZV9wdXQoZik7DQo+PiAtDQo+PiDCoMKgwqDCoMKg
IC8qIFdhaXQgZm9yIGFsbCBkZXBlbmRlbmNpZXMgdG8gYXZvaWQgZGF0YSBjb3JydXB0aW9ucyAq
Lw0KPj4gwqDCoMKgwqDCoCB4YV9mb3JfZWFjaCgmam9iLT5kZXBlbmRlbmNpZXMsIGluZGV4LCBm
KSB7DQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGRybV9zY2hlZF9mZW5jZSAqc19mZW5j
ZSA9IHRvX2RybV9zY2hlZF9mZW5jZShmKTsNCj4+IEBAIC0yMjAsNiArMjA5LDIxIEBAIHN0YXRp
YyB2b2lkIGRybV9zY2hlZF9lbnRpdHlfa2lsbF9qb2JzX2NiKHN0cnVjdCBkbWFfZmVuY2UgKmYs
DQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgZG1hX2ZlbmNlX3B1dChmKTsNCj4+IMKgwqDCoMKgwqAg
fQ0KPj4gwqAgK8KgwqDCoCBkcm1fc2NoZWRfZmVuY2Vfc2NoZWR1bGVkKGpvYi0+c19mZW5jZSwg
TlVMTCk7DQo+PiArwqDCoMKgIGRybV9zY2hlZF9mZW5jZV9maW5pc2hlZChqb2ItPnNfZmVuY2Us
IC1FU1JDSCk7DQo+PiArwqDCoMKgIFdBUk5fT04oam9iLT5zX2ZlbmNlLT5wYXJlbnQpOw0KPj4g
K8KgwqDCoCBqb2ItPnNjaGVkLT5vcHMtPmZyZWVfam9iKGpvYik7DQo+PiArfQ0KPj4gKw0KPj4g
Ky8qIFNpZ25hbCB0aGUgc2NoZWR1bGVyIGZpbmlzaGVkIGZlbmNlIHdoZW4gdGhlIGVudGl0eSBp
biBxdWVzdGlvbiBpcyBraWxsZWQuICovDQo+PiArc3RhdGljIHZvaWQgZHJtX3NjaGVkX2VudGl0
eV9raWxsX2pvYnNfY2Ioc3RydWN0IGRtYV9mZW5jZSAqZiwNCj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGRtYV9mZW5jZV9jYiAqY2IpDQo+PiAr
ew0KPj4gK8KgwqDCoCBzdHJ1Y3QgZHJtX3NjaGVkX2pvYiAqam9iID0gY29udGFpbmVyX29mKGNi
LCBzdHJ1Y3QgZHJtX3NjaGVkX2pvYiwNCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgZmluaXNoX2NiKTsNCj4+ICsNCj4+ICvCoMKgwqAgZG1hX2Zl
bmNlX3B1dChmKTsNCj4+ICsNCj4+IMKgwqDCoMKgwqAgSU5JVF9XT1JLKCZqb2ItPndvcmssIGRy
bV9zY2hlZF9lbnRpdHlfa2lsbF9qb2JzX3dvcmspOw0KPj4gwqDCoMKgwqDCoCBzY2hlZHVsZV93
b3JrKCZqb2ItPndvcmspOw0KPj4gwqAgfQ0KPiANCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==

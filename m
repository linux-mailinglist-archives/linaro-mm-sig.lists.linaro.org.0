Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UHhEFrRI32mFRQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Apr 2026 10:13:40 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D2688401CAD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Apr 2026 10:13:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4CF8E40494
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Apr 2026 08:13:38 +0000 (UTC)
Received: from CH5PR02CU005.outbound.protection.outlook.com (mail-northcentralusazon11012024.outbound.protection.outlook.com [40.107.200.24])
	by lists.linaro.org (Postfix) with ESMTPS id 90F743F90B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Apr 2026 08:13:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=COfIA1g7;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.200.24 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k976mIoS0FVE1ei6WQf4XcdIkrFXsPUgYoZpoeVDVFxJAADHLtFoL3CNOB/MmP5WVGQ6uvazjO7kdEP0hwoXpoz9YlLyQhNk/vJQAhnXTDEk4KigWbFAdE+/YfrVADcuDRgAVJmtsWwo58Ed1PzFhLt2CCggzv/czWJVVhnqgxP9hZGHVC4PDfxuOcvUEPHdbW0nX8xQwAWcnYgZiZ4INxtmupkEFEiUaebxUP7oiAJTMkYqbZAqszbJH6wrMDbyZdAP7+6e018ROjuDc2Rrrqt/ZElJB1CxBlTA4TMSprBOezF9q6bJlhc7pgq6iwU7i8ATw0Swl/3WgTidiH36SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yJGA8BjFVmbHRgu+EtVP7QLihP04KoXqpy/5E3rXk/g=;
 b=P0Zmp2Gme1QyYk/Yvtc3TeVRrO9NNryqkUqbib8Yi36XlpkW0IRhQ1U4o0B9NDHMurok543tCDuoPFj6oYOOMfnZM9SyIlK5o1mpWU2pXABTxuDyL0OiuFJudgzaCsFie00JELD61ODiiUn1LeWcsVQndUL/B1BueT388dx4tCU2BSs709ueySoa4yV+7xthDvBlxzqv334HKOlaVScO5hRzA/IPDUHBeM6ACEp4lCh57fdbFMvnWv/VTU43nQorf9iImzV07p5ExB9ebiSPGrqZ2noJdVh+2v3pa8ikn9Hz9QVNVGnGEqFbaEvHDB7bva4z3IsnsMAqf/4C1UbooA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yJGA8BjFVmbHRgu+EtVP7QLihP04KoXqpy/5E3rXk/g=;
 b=COfIA1g78DOEeETEFqxI0nm90Baar/fhqa1kg4IGGzP2zhp20skq7EbRfY/VWOpR8kAw/bBn9r+8/vQvWh83PrTrOdQ5Qz/ANYLk+qVYlvy4l98fKGKtXtSlkFXQOCHWOk8IEDcaLlZ0sfq0GQaJHEakhcZfC8zMCuZaIuREy5g=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DM4PR12MB5769.namprd12.prod.outlook.com (2603:10b6:8:60::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9791.34; Wed, 15 Apr 2026 08:13:33 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9818.017; Wed, 15 Apr 2026
 08:13:33 +0000
Message-ID: <b3b75077-878b-4d4e-b18e-4976765c63db@amd.com>
Date: Wed, 15 Apr 2026 10:13:28 +0200
User-Agent: Mozilla Thunderbird
To: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 dri-devel@lists.freedesktop.org
References: <20260414154928.32934-1-tvrtko.ursulin@igalia.com>
 <20260414154928.32934-2-tvrtko.ursulin@igalia.com>
 <650e835e-b60d-44fd-b212-47f8a9d18c15@amd.com>
 <5fea79b5-ab5a-4a98-95c8-6452b20e83c4@igalia.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <5fea79b5-ab5a-4a98-95c8-6452b20e83c4@igalia.com>
X-ClientProxiedBy: BL1PR13CA0030.namprd13.prod.outlook.com
 (2603:10b6:208:256::35) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DM4PR12MB5769:EE_
X-MS-Office365-Filtering-Correlation-Id: 5d703ebc-0f62-4ee8-c791-08de9ac6e287
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: 
	AhvvHs3xI9XpEK788Afsv0bYZmAbwfO5pd2FVCo50Nv+gx1hKVbQX7PfC4n0YkvtmKWJ9Ov2DLWkWLRIuHq9wFZIudPmwpyQepv7IjK5qidcpGfybJv2mXKeULRBRlYS7rDeSlracGHmbwQWLwNebWCGfIKqeIj14uPC103cCCTVTOViWvcdbFhOtRCKDTtx8cfr4TxVNEi5phdPQ2h50lPAM568bzGcb9lGY0Iu60aaMMersI94k3jLvz9D5tBxIcgARH34RXbE33kCU8UHPXYXtkvdyFgzT/MjmLFWuHLyAQmi/cM21Ca9SQug61RUsgnTJQoC4HHR39aoZVImFX04NEMp4HrKUasEH/RRY0UffSqxiTTQbsNyiomNjUcxLY9j60jUhWvWjwLLVKmDY/ukt9RgbOW7i+sXdt5taVv3JUt8Z523zxuHOVoytrwn1xmwv+fZ8Ur/aKubG+sRavcsCGD3mEibFHmDdDWWiyiz0g6EzPkBkk/Ht7fBeARKnZQN7kn7EzsGBlMGNDoBg3vOwW3BuAInWQoRhEDMJsUUzm+5ikMXU6Nk37xgVXnPWApmR/5txk65IVQyZZkhSlIyxxOxGJosfkQHHCUA/DoUSFZgCwn9YpGEWUSozuIOPqwkvMAuyys+VRfODUxOATjWgvXTkqURAEGvGPKGMhDikbGBvNUov05Q1UAJz3Q40zgEvQ3+7qtXQQ6KNln/5X/VAOtUpmn+vkUEaduGRsV3BBqqzDJHa1UWkr4hyDd0
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WW1hdGZJQWV2NlBaYUhnd29zd2FrWHVCMkJRbGJ6VDVwanRJODNpeVNPU1du?=
 =?utf-8?B?RUtIQjBhSTcrOWZlTUlCN2VJMGFLZGRpb3lJbnNwZDJwN3dtWXM5Nkk5K055?=
 =?utf-8?B?WU9YRTEvSG81TnpYTFJTZEFoSkRtc1pNRzFHKzdWN0I3Zlg0aFlYL2U4c0sw?=
 =?utf-8?B?VjZYcENOWWVjZlFpa1hiaU5jdFU5Ni9IZzNIdHdFTFk0N2Uva1ViUmpPYjJp?=
 =?utf-8?B?RWdQM0EvSE43RkdObnIzaWU4TWw1NnlmcWtVUmlxQTNyZy9MYmwyelBraGJ4?=
 =?utf-8?B?SUxlMkpQYTFXMnY3RVRlakgvcFdHOHRjR0oxamFxWngzN0o3QmhjNDBUNE9w?=
 =?utf-8?B?REtYaFFFQWx5NjFIS2J6dzRnSEpPY3lNZXJQQzhnU0FmaGJ1b2JTRkxqc1dj?=
 =?utf-8?B?V2hDMkIwbEZoTGJXLzhCYy92ZFZ6ZHZmMDVnWXBNdXhhK21zYTFSWEhTQ0dz?=
 =?utf-8?B?S2IyMFdOSUorUEFuTVoxK1JzcmpaVitmVDdNdWNSVWo5WVpIcEplZkdRMHJ3?=
 =?utf-8?B?eUppbFBVenFqa3NzLzU5ZUdwZFByVWI0eHRjcHpVRm03SE9UUWdhMjZZTk1y?=
 =?utf-8?B?c3dwbUNHcmJZODBmdEMzL2U5WXNCTUJ1MnZDYnRadytzVHVoT1NYcUxNRW1Q?=
 =?utf-8?B?RXJLcTZySnpVU2NMRS82TDBXT2JGN3J0ZER6M3dTNUFCN28wMmIrN3hhdy91?=
 =?utf-8?B?STkvbGU0eHk1Z3J1ZkNoUUVRbTZYS3YrZ280VjlwOEwwSzFnbXY1empnYktR?=
 =?utf-8?B?YmRTTmorM09tblZyQVJCQU0yaHVqbUMrbjZmLzdRek9yakIrU1Zyekc2WExI?=
 =?utf-8?B?cjBBWjkvMVd5eXBza0xmQ1BjQ3V2K0hTV2FLeWVISFZocEdYdzEyZFhVN1FH?=
 =?utf-8?B?TTlrSzlycUZ1QUNOSnlvNi9mc2QwTWtvL0hMcHdLUDNNbldIb2RNWXBNQzRo?=
 =?utf-8?B?Y2ZFMVM3cUxNNEM2SFBtTVZVd3J6a0F3OXR1UkxNK2lQeVlRK0VManlZaC80?=
 =?utf-8?B?Q0FvTldWcEVKNUlUSHZnYVAyQ2hNeDk5c1c3dTNwOU52R2o1S3F2enE4bDFn?=
 =?utf-8?B?NmdFOERwOXAzbmhqdFdoUXRkVU15aFFId2dJY3VYcFZONTdwdTM4eFFkd3VL?=
 =?utf-8?B?cGcyUmIzMncvU0xIZzJrNEQxT2VHM0FvRk1TZEc0SzlvMFFJUVlLWjBsNlNu?=
 =?utf-8?B?YUZTbHl3K1o1Z2NwUlRxRFg1UHRSSzk4K05ma1JOT1hlSTZrT1hPaVdwMmJ3?=
 =?utf-8?B?OVBHZGhnc3VvWUEyUmpnUUxkMkNkb3FMeVpZSUQ2enlvTlNEb3ZzWXJxU0lK?=
 =?utf-8?B?RXc0cDJhbU5Qb2h3VEpzR0tSSU5XSzVodGtqckcvTnhFMGo2bklFSDZ5Z0NF?=
 =?utf-8?B?TkFoMkQzdEY5Q1dzTTloMmdsNnhMai9tTEpTYnB4SDRQZkdyTk5GWGs1YWJB?=
 =?utf-8?B?Ry9ROGJUanBtWThKeXlXM1hOZkpuUkR0U1RnRE83Y3hqQVR5TC9IODhnK1ZR?=
 =?utf-8?B?c1pZazEzTEoyTGJLM3hEbUEzZnFzZGE2ejM2a0VURGRyWFAwTmVON3RYQnVJ?=
 =?utf-8?B?T1NHejBJVVdMSk1FQmR1dnB6WEhMUmdOMWNHK0xteHVNQUhMejBuckxoSnB2?=
 =?utf-8?B?ZDdiR29ZU21GYXV4SDBnWElvS0RBSmdqZ2tyVFhhdVNCSlRsaTl3WDRkRkgx?=
 =?utf-8?B?ZTdFTXhvVFdLaklCWWtqeXlJNjhvRVhlWE9SZ3JiakU0cUlHZFZjUTJ0ZjZX?=
 =?utf-8?B?OG9QSVY5VkJoMFBMUEF6Y0VvbmRrME95RE1UTWVNNHh5V2krZ3BIeit6Yk04?=
 =?utf-8?B?SUFlVGx3TTdZR1BZMS95Vmc5dE0zaWZVUm1hUy9OMzdFbndMZDFPZHZJMnRP?=
 =?utf-8?B?d1F0M0RpbFdGTDZRb0xtY3pCYUIrZ0huQ1BRU0E3Skp6N2xmQ1J5Y2FONU1L?=
 =?utf-8?B?dnljTERTOE9LM3lxK1JjRHBDQmtwU0VGbE1yZFgyQnhuWVVDSzFiVVY0UTJo?=
 =?utf-8?B?cnBHWFozZmlaekhxeERqemsvQ0NtWnVtOWpyQVZOMWo1Q3NvaVpraldxblpX?=
 =?utf-8?B?WEdiZ205R2ZjWjNIbXMvdms1d1pTaE43SGZKcXJCZnp0aXJUU2IzVXhGZy9U?=
 =?utf-8?B?ckRvUlM3cmRWYTJXYTgrSHdYV2hVZHpISzdGVXRsSWlwR2dhN0RocWZoVWl0?=
 =?utf-8?B?UnMzYU0yVWplc3REMXZrTTdORExoZlMvZ0lmZUhKT1A0Z0k3NDBML1JreGZy?=
 =?utf-8?B?cjNCR0FkNk1ONjRzVWJ3SjJ5R3lhMUpWMXNXUmxZdmJrYm40R0dOdHRxbjg0?=
 =?utf-8?Q?EWv7o/6z90mlM6Zhnt?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d703ebc-0f62-4ee8-c791-08de9ac6e287
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 08:13:32.9641
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8wqKcjI4rX/EStj+D2hb0PnPFGzpWLcUhwEg6+wLSQUHJlOvQQqq2iICmhtNxlTf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5769
X-Spamd-Bar: -----
Message-ID-Hash: KSLEYFZAVYSHZKLM3XL235AB6UDS5OPH
X-Message-ID-Hash: KSLEYFZAVYSHZKLM3XL235AB6UDS5OPH
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: kernel-dev@igalia.com, Philipp Stanner <phasta@kernel.org>, Boris Brezillon <boris.brezillon@collabora.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/2] dma-fence: Fix potential tracepoint null pointer dereferences
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KSLEYFZAVYSHZKLM3XL235AB6UDS5OPH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[igalia.com:email,collabora.com:email,amd.com:mid,amd.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: D2688401CAD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNC8xNS8yNiAwOTo1OCwgVHZydGtvIFVyc3VsaW4gd3JvdGU6DQo+IA0KPiBPbiAxNC8wNC8y
MDI2IDE5OjMwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4gT24gNC8xNC8yNiAxNzo0OSwg
VHZydGtvIFVyc3VsaW4gd3JvdGU6DQo+Pj4gVHJhY2VfZG1hX2ZlbmNlX3NpZ25hbGVkLCB0cmFj
ZV9kbWFfZmVuY2Vfd2FpdF9lbmQgYW5kDQo+Pj4gdHJhY2VfZG1hX2ZlbmNlX2Rlc3Ryb3kgY2Fu
IGFsbCBjdXJyZW50bHkgZGVyZWZlcmVuY2UgYSBudWxsIGZlbmNlLT5vcHMNCj4+PiBwb2ludGVy
IGFmdGVyIGl0IGhhcyBiZWVuIHJlc2V0IG9uIGZlbmNlIHNpZ25hbGxpbmcuDQo+Pj4NCj4+PiBM
ZXRzIHVzZSB0aGUgc2FmZSBzdHJpbmcgZ2V0dGVycyBmb3IgbW9zdCB0cmFjZXBvaW50cyB0byBh
dm9pZCB0aGlzIGNsYXNzDQo+Pj4gb2YgYSBwcm9ibGVtLCB3aGlsZSBmb3IgdGhlIHNpZ25hbCB0
cmFjZXBvaW50IHdlIG1vdmUgaXQgdG8gYmVmb3JlIG9wcyBhcmUNCj4+PiBjbGVhcmVkIHRvIGF2
b2lkIGxvc2luZyB0aGUgZHJpdmVyIGFuZCB0aW1lbGluZSBuYW1lIGluZm9ybWF0aW9uLiBBcGFy
dA0KPj4+IGZyb20gbW92aW5nIGl0IHdlIGFsc28gbmVlZCB0byBhZGQgYSBuZXcgdHJhY2Vwb2lu
dCBjbGFzcyB0byBieXBhc3MgdGhlDQo+Pj4gc2FmZSBuYW1lIGdldHRlcnMgc2luY2UgdGhlIHNp
Z25hbGVkIGJpdCBpcyBhbHJlYWR5IHNldC4NCj4+Pg0KPj4+IEZvciBkbWFfZmVuY2VfaW5pdCB3
ZSBhbHNvIG5lZWQgdG8gdXNlIHRoZSBuZXcgdHJhY2Vwb2ludCBjbGFzcyBzaW5jZSB0aGUNCj4+
PiByY3UgcmVhZCBsb2NrIGlzIG5vdCBoZWxkIHRoZXJlLCBhbmQgd2UgY2FuIGRvIHRoZSBzYW1l
IGZvciB0aGUgZW5hYmxlDQo+Pj4gc2lnbmFsaW5nIHNpbmNlIHRoZXJlIHdlIGFyZSBjZXJ0YWlu
IHRoZSBmZW5jZSBjYW5ub3QgYmUgc2lnbmFsZWQgd2hpbGUNCj4+PiB3ZSBhcmUgaG9sZGluZyB0
aGUgbG9jayBhbmQgaGF2ZSBldmVuIHZhbGlkYXRlZCB0aGUgZmVuY2UtPm9wcy4NCj4+Pg0KPj4+
IFNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpZ2FsaWEuY29t
Pg0KPj4+IEZpeGVzOiA1NDFjOGYyNDY4YjkgKCJkbWEtYnVmOiBkZXRhY2ggZmVuY2Ugb3BzIG9u
IHNpZ25hbCB2MyIpDQo+Pj4gQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdA
YW1kLmNvbT4NCj4+PiBDYzogUGhpbGlwcCBTdGFubmVyIDxwaGFzdGFAa2VybmVsLm9yZz4NCj4+
PiBDYzogQm9yaXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4NCj4+
PiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnDQo+Pj4gQ2M6IGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZw0KPj4+IC0tLQ0KPj4+IMKgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVu
Y2UuY8KgwqDCoMKgwqAgfMKgIDMgKystDQo+Pj4gwqAgaW5jbHVkZS90cmFjZS9ldmVudHMvZG1h
X2ZlbmNlLmggfCAzMyArKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLQ0KPj4+IMKgIDIg
ZmlsZXMgY2hhbmdlZCwgMzEgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkNCj4+Pg0KPj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgYi9kcml2ZXJzL2RtYS1i
dWYvZG1hLWZlbmNlLmMNCj4+PiBpbmRleCBhMmFhODJmNGVlZGQuLmIzYmZhNjk0M2E4ZSAxMDA2
NDQNCj4+PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4+PiArKysgYi9kcml2
ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4+PiBAQCAtMzYzLDYgKzM2Myw4IEBAIHZvaWQgZG1h
X2ZlbmNlX3NpZ25hbF90aW1lc3RhbXBfbG9ja2VkKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLA0K
Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgJmZlbmNl
LT5mbGFncykpKQ0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm47DQo+Pj4gwqAgK8KgwqDC
oCB0cmFjZV9kbWFfZmVuY2Vfc2lnbmFsZWQoZmVuY2UpOw0KPj4+ICsNCj4+PiDCoMKgwqDCoMKg
IC8qDQo+Pj4gwqDCoMKgwqDCoMKgICogV2hlbiBuZWl0aGVyIGEgcmVsZWFzZSBub3IgYSB3YWl0
IG9wZXJhdGlvbiBpcyBzcGVjaWZpZWQgc2V0IHRoZSBvcHMNCj4+PiDCoMKgwqDCoMKgwqAgKiBw
b2ludGVyIHRvIE5VTEwgdG8gYWxsb3cgdGhlIGZlbmNlIHN0cnVjdHVyZSB0byBiZWNvbWUgaW5k
ZXBlbmRlbnQNCj4+PiBAQCAtMzc3LDcgKzM3OSw2IEBAIHZvaWQgZG1hX2ZlbmNlX3NpZ25hbF90
aW1lc3RhbXBfbG9ja2VkKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLA0KPj4+IMKgIMKgwqDCoMKg
wqAgZmVuY2UtPnRpbWVzdGFtcCA9IHRpbWVzdGFtcDsNCj4+PiDCoMKgwqDCoMKgIHNldF9iaXQo
RE1BX0ZFTkNFX0ZMQUdfVElNRVNUQU1QX0JJVCwgJmZlbmNlLT5mbGFncyk7DQo+Pj4gLcKgwqDC
oCB0cmFjZV9kbWFfZmVuY2Vfc2lnbmFsZWQoZmVuY2UpOw0KPj4NCj4+IEkgdGhpbmsgdGhpcyBw
YXJ0IGhlcmUgc2hvdWxkIGJlIGEgc2VwYXJhdGUgcGF0Y2guDQo+IA0KPiBJIGhhZCB0aGF0IGlu
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC8yMDI2MDMzMDEzMzYyMy4xNzcwNC0x
LXR2cnRrby51cnN1bGluQGlnYWxpYS5jb20vIGJ1dCB0aGUgZGlzY3Vzc2lvbiBmaXp6bGVkIG91
dCBiZWZvcmUgYW4gcmIuDQo+IA0KPj4NCj4+PiDCoCDCoMKgwqDCoMKgIGxpc3RfZm9yX2VhY2hf
ZW50cnlfc2FmZShjdXIsIHRtcCwgJmNiX2xpc3QsIG5vZGUpIHsNCj4+PiDCoMKgwqDCoMKgwqDC
oMKgwqAgSU5JVF9MSVNUX0hFQUQoJmN1ci0+bm9kZSk7DQo+Pj4gZGlmZiAtLWdpdCBhL2luY2x1
ZGUvdHJhY2UvZXZlbnRzL2RtYV9mZW5jZS5oIGIvaW5jbHVkZS90cmFjZS9ldmVudHMvZG1hX2Zl
bmNlLmgNCj4+PiBpbmRleCAzYWJiYTQ1YzA2MDEuLjllMGNiOWNlMjM4OCAxMDA2NDQNCj4+PiAt
LS0gYS9pbmNsdWRlL3RyYWNlL2V2ZW50cy9kbWFfZmVuY2UuaA0KPj4+ICsrKyBiL2luY2x1ZGUv
dHJhY2UvZXZlbnRzL2RtYV9mZW5jZS5oDQo+Pj4gQEAgLTksMTIgKzksMzcgQEANCj4+PiDCoCDC
oCBzdHJ1Y3QgZG1hX2ZlbmNlOw0KPj4+IMKgICtERUNMQVJFX0VWRU5UX0NMQVNTKGRtYV9mZW5j
ZSwNCj4+PiArDQo+Pj4gK8KgwqDCoCBUUF9QUk9UTyhzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSks
DQo+Pj4gKw0KPj4+ICvCoMKgwqAgVFBfQVJHUyhmZW5jZSksDQo+Pj4gKw0KPj4+ICvCoMKgwqAg
VFBfU1RSVUNUX19lbnRyeSgNCj4+PiArwqDCoMKgwqDCoMKgwqAgX19zdHJpbmcoZHJpdmVyLCBk
bWFfZmVuY2VfZHJpdmVyX25hbWUoZmVuY2UpKQ0KPj4+ICvCoMKgwqDCoMKgwqDCoCBfX3N0cmlu
Zyh0aW1lbGluZSwgZG1hX2ZlbmNlX3RpbWVsaW5lX25hbWUoZmVuY2UpKQ0KPj4+ICvCoMKgwqDC
oMKgwqDCoCBfX2ZpZWxkKHVuc2lnbmVkIGludCwgY29udGV4dCkNCj4+PiArwqDCoMKgwqDCoMKg
wqAgX19maWVsZCh1bnNpZ25lZCBpbnQsIHNlcW5vKQ0KPj4+ICvCoMKgwqAgKSwNCj4+PiArDQo+
Pj4gK8KgwqDCoCBUUF9mYXN0X2Fzc2lnbigNCj4+PiArwqDCoMKgwqDCoMKgwqAgX19hc3NpZ25f
c3RyKGRyaXZlcik7DQo+Pj4gK8KgwqDCoMKgwqDCoMKgIF9fYXNzaWduX3N0cih0aW1lbGluZSk7
DQo+Pj4gK8KgwqDCoMKgwqDCoMKgIF9fZW50cnktPmNvbnRleHQgPSBmZW5jZS0+Y29udGV4dDsN
Cj4+PiArwqDCoMKgwqDCoMKgwqAgX19lbnRyeS0+c2Vxbm8gPSBmZW5jZS0+c2Vxbm87DQo+Pj4g
K8KgwqDCoCApLA0KPj4+ICsNCj4+PiArwqDCoMKgIFRQX3ByaW50aygiZHJpdmVyPSVzIHRpbWVs
aW5lPSVzIGNvbnRleHQ9JXUgc2Vxbm89JXUiLA0KPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqAgX19n
ZXRfc3RyKGRyaXZlciksIF9fZ2V0X3N0cih0aW1lbGluZSksIF9fZW50cnktPmNvbnRleHQsDQo+
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoCBfX2VudHJ5LT5zZXFubykNCj4+PiArKTsNCj4+PiArDQo+
Pg0KPj4gTWhtLCBJJ20gc3Ryb25nbHkgaW4gZmF2b3IgdG8ganVzdCB1c2UgdGhpcyBhcHByb2Fj
aCBmb3IgYWxsIHRyYWNlIHBvaW50cy4NCj4+DQo+PiBUaGUgbWluaW1hbCBleHRyYSBvdmVyaGVh
ZCBzaG91bGRuJ3QgcmVhbGx5IG1hdHRlciBhdCBhbGwuDQo+IA0KPiBZZWFoLCBJIGFtIGEgYml0
IG9uIHRoZSBmZW5jZS4gSXQgd291bGQgcmVxdWlyZWQgYSBiaXQgb2YgYW4gdWdseSByY3VfcmVh
ZF9sb2NrIGFyb3VuZCB0cmFjZV9kbWFfZmVuY2Vfc2lnbmFsX2luaXQNCg0KSSB0aGluayBhcyBs
b25nIGFzIHdlIG9ubHkgZ3JhYiB0aGUgUkNVIHJlYWQgc2lkZSBsb2NrIHdoZW4gdGhlIHRyYWNl
cG9pbnQgaXMgYWN0dWFsbHkgZW5hYmxlZCB0aGVuIHRoYXQgc2hvdWxkbid0IG1hdHRlci4NCg0K
SSBkbyByZW1lbWJlciBwYXRjaGVzIGZseWluZyBieSB3aGljaCBvcHRpbWl6ZWQgdGhpcyB1c2Ug
Y2FzZSBmb3IgdGhlIHdob2xlIHRyYWNlIHN1YnN5c3RlbSBidXQgZGlkbid0IHRvb2sgYSBjbG9z
ZXIgbG9vayBob3cgdG8gZG8gdGhhdCBub3cuDQoNCj4gYW5kIHRyYWNlX2RtYV9mZW5jZV9zaWdu
YWxlZCB3b3VsZCBsb3NlIHRoZSBkcml2ZXIvdGltZWxpbmUgaW5mbyBfdW5sZXNzXyBuYW1lIGhl
bHBlcnMgd291bGQgYWxzbyBiZSBjaGFuZ2VkIHRvIGxvb2sgYXQgZmVuY2UtPm9wcyBpbnN0ZWFk
IG9mICJpcyBzaWduYWxlZCIuIFRob3NlIGhhdmUgbm8gbWVtb3J5IGJhcnJpZXJzIHNvIG5vdCBz
dXJlIEkgd2FudCB0byB0aGluayBhYm91dCByYWN5bmVzcyBhbmQgaG93IHRvIHNvbHZlIGl0Lg0K
DQpNaG0sIHRoYXQgaXMgYSBiaXQgbW9yZSBwcm9ibGVtYXRpYy4NCg0Kb3BzIGlzIG9ubHkgc2V0
IHRvIE5VTEwgd2hlbiBuZWl0aGVyIGZyZWUgbm9yIHdhaXQgaXMgc3BlY2lmaWVkLCBzbyBjaGVj
a2luZyBpcyBzaWduYWxlZCBpcyBzdGlsbCB0aGUgcmlnaHQgdGhpbmcgdG8gZG8gZm9yIGRyaXZl
cnMgd2hpY2ggdXNlcyB0aG9zZSBjYWxsYmFja3MgYnV0IHN0aWxsIHdhbnQgdG8gaGF2ZSB0aGUg
UkNVIHByb3RlY3Rpb24gb2YgdGhlIHJldHVybmVkIHN0cmluZ3MuDQoNCk9rLCBmZWVsIGZyZWUg
dG8gZ28gYWhlYWQgd2l0aCB0aGlzIGFwcHJvYWNoIGZvciBub3cgYnV0IHBsZWFzZSBhZGQgYSAv
KiBUT0RPOiBjbGVhbiB0aGF0IHVwIHdoZW4gbW9zdCBkcml2ZXJzIHN3aXRjaGVkIHRvIGluZGVw
ZW5kZW50IGZlbmNlcyAqLy4NCg0KVGhhbmtzLA0KQ2hyaXN0aWFuLg0KDQo+IA0KPiBSZWdhcmRz
LA0KPiANCj4gVHZydGtvDQo+IA0KPj4NCj4+IFJlZ2FyZHMsDQo+PiBDaHJpc3RpYW4uDQo+Pg0K
Pj4+IMKgIC8qDQo+Pj4gwqDCoCAqIFNhZmUgb25seSBmb3IgY2FsbCBzaXRlcyB3aGljaCBhcmUg
Z3VhcmFudGVlZCB0byBub3QgcmFjZSB3aXRoIGZlbmNlDQo+Pj4gwqDCoCAqIHNpZ25hbGluZyxo
b2xkaW5nIHRoZSBmZW5jZS0+bG9jayBhbmQgaGF2aW5nIGNoZWNrZWQgZm9yIG5vdCBzaWduYWxl
ZCwgb3IgdGhlDQo+Pj4gwqDCoCAqIHNpZ25hbGluZyBwYXRoIGl0c2VsZi4NCj4+PiDCoMKgICov
DQo+Pj4gLURFQ0xBUkVfRVZFTlRfQ0xBU1MoZG1hX2ZlbmNlLA0KPj4+ICtERUNMQVJFX0VWRU5U
X0NMQVNTKGRtYV9mZW5jZV9vcHMsDQo+Pj4gwqAgwqDCoMKgwqDCoCBUUF9QUk9UTyhzdHJ1Y3Qg
ZG1hX2ZlbmNlICpmZW5jZSksDQo+Pj4gwqAgQEAgLTQ2LDcgKzcxLDcgQEAgREVGSU5FX0VWRU5U
KGRtYV9mZW5jZSwgZG1hX2ZlbmNlX2VtaXQsDQo+Pj4gwqDCoMKgwqDCoCBUUF9BUkdTKGZlbmNl
KQ0KPj4+IMKgICk7DQo+Pj4gwqAgLURFRklORV9FVkVOVChkbWFfZmVuY2UsIGRtYV9mZW5jZV9p
bml0LA0KPj4+ICtERUZJTkVfRVZFTlQoZG1hX2ZlbmNlX29wcywgZG1hX2ZlbmNlX2luaXQsDQo+
Pj4gwqAgwqDCoMKgwqDCoCBUUF9QUk9UTyhzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSksDQo+Pj4g
wqAgQEAgLTYwLDE0ICs4NSwxNCBAQCBERUZJTkVfRVZFTlQoZG1hX2ZlbmNlLCBkbWFfZmVuY2Vf
ZGVzdHJveSwNCj4+PiDCoMKgwqDCoMKgIFRQX0FSR1MoZmVuY2UpDQo+Pj4gwqAgKTsNCj4+PiDC
oCAtREVGSU5FX0VWRU5UKGRtYV9mZW5jZSwgZG1hX2ZlbmNlX2VuYWJsZV9zaWduYWwsDQo+Pj4g
K0RFRklORV9FVkVOVChkbWFfZmVuY2Vfb3BzLCBkbWFfZmVuY2VfZW5hYmxlX3NpZ25hbCwNCj4+
PiDCoCDCoMKgwqDCoMKgIFRQX1BST1RPKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKSwNCj4+PiDC
oCDCoMKgwqDCoMKgIFRQX0FSR1MoZmVuY2UpDQo+Pj4gwqAgKTsNCj4+PiDCoCAtREVGSU5FX0VW
RU5UKGRtYV9mZW5jZSwgZG1hX2ZlbmNlX3NpZ25hbGVkLA0KPj4+ICtERUZJTkVfRVZFTlQoZG1h
X2ZlbmNlX29wcywgZG1hX2ZlbmNlX3NpZ25hbGVkLA0KPj4+IMKgIMKgwqDCoMKgwqAgVFBfUFJP
VE8oc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpLA0KPj4+IMKgIA0KPj4NCj4gDQoNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

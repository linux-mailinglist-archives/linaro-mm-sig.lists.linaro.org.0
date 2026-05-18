Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uMBaJ3i7CmrG6wQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 09:10:48 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 330A2567357
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 09:10:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 646ED406A1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 07:10:46 +0000 (UTC)
Received: from PH7PR06CU001.outbound.protection.outlook.com (mail-westus3azon11010066.outbound.protection.outlook.com [52.101.201.66])
	by lists.linaro.org (Postfix) with ESMTPS id 7B5B640464
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 07:10:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=EB6Ew+V0;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.201.66 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VLRGFsLBIZN/4/HaPCu6XbhgqCYVZoyMLwBJbt1rWXyzBp53fcEp+eg9MqPpso+EWrl+ECXwaj6Mv//6u9B2nQ4gsbnjcoipeHxWzANHtyAjuUvYpkplo/iycTCDyq0L1C/i9IaPcJmrbPfC+mSuaH3wTnZCxVYf1h6gGHyU4opW9v8mSDpn/vEm6h6hKBiVoSKlk9o1/OgzykdJ7RP9W3uyGeS/4oMqaUwqGaXcgZT8d+t8mE3yZv8SRF5bjT0S/XgX0sc5P55at09Z2mMg5Ep/HHxBQpnNoOYF16YS7XCZLW3gbO/1OCp3QZ0PrhDZ71hJDzzaOMVEHjcYOYaLRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hv/EuG1WPJeVlDUtwL9KLMZlTu4YMpUr+dBM8KhSnuE=;
 b=j8sdW3S0FCBZkwbdYHQFKYlu5IQoZzzyUiIPIjHIzwtAS/p62BV6ANWdMhGkOl0TGa1U6z93fhuTIEgOtubKY+giBh96Woq4XAjBZ0cvR2qcD6yWXE9F+HcrnirG7UUwJTcZBX5Apz7W54C6NvFa+0DteiM4OkD5gm38NcxX1q5pL0W2S9awOqCJBZS7TuhGNmf0Qg3g1xbP64nIuPIqkH72iamOBGPso/atbA3srM9Z8aodmNU1WcN5Etv7ghahx6LMdk1xkOajtdANF7Fz/CZ6xP8o6fzsABIbvs3cWKB/Pw1tuZE/xPktYuGFQ2NA7bMFPCo65FzXkaELQ/cYHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hv/EuG1WPJeVlDUtwL9KLMZlTu4YMpUr+dBM8KhSnuE=;
 b=EB6Ew+V0zH7WldTsxxmjygyABaqWC16WaGuFELuCjJGkkFLaWE75D4yY00I9As7J0JufzSEicTDtqbmNqp7N7n5HZLGBxXW0PziS//kQEDyqxjFWyVSDqdnnsTCECOuxRSM6fS0cwXAMxmYtAS8G1wL14CnbfALEaNoGuHoVICE=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by PH8PR12MB6748.namprd12.prod.outlook.com (2603:10b6:510:1c4::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.23; Mon, 18 May
 2026 07:10:31 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0025.022; Mon, 18 May 2026
 07:10:31 +0000
Message-ID: <03a57011-e734-4a74-aef2-e3a6016e15fc@amd.com>
Date: Mon, 18 May 2026 09:10:23 +0200
User-Agent: Mozilla Thunderbird
To: Boris Brezillon <boris.brezillon@collabora.com>,
 Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>
References: <20260513-panthor-guard-refactor-v1-0-f2d8c15a97ce@collabora.com>
 <20260513-panthor-guard-refactor-v1-2-f2d8c15a97ce@collabora.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260513-panthor-guard-refactor-v1-2-f2d8c15a97ce@collabora.com>
X-ClientProxiedBy: FR2P281CA0177.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9f::13) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|PH8PR12MB6748:EE_
X-MS-Office365-Filtering-Correlation-Id: 8ba60c40-7978-48b1-cb81-08deb4ac8c3a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|7416014|376014|366016|1800799024|56012099003|22082099003|18002099003|4143699003|11063799003;
X-Microsoft-Antispam-Message-Info: 
	qac2ir2EyddERn8gKXUsDBz3eqff9+Q14/dwuLmc8NRhtssR7MYOcttd9yPzXDArWi9g9XcV5oTjtdpxUohRjMWc4bs1Zuj/xdohStLrhGDg+U8H0eoPctdDh0yPLUu0KN6LX4c511epuw63Iipu06/naUOtuQw7201TWvd0B8MNpe1SDoOv0mBvg14daBB7oNqbh9dc+TUjSd1f2O925ZsBFt8e0NwXtflW07nuhznMignNJhGY9v1t07vxrBp48Ry5ogiWOuoL/uEZlNAvh1WFWKnnhSwxzc3/x3pX0/Ri/u4RDFV6N7b6N4iUzWZKrzsxK9WcUM05EC/Z7UofyQVNDqZUGuAfg6qAN2Qb+s8AxVa5aExEAWpHCvO46/Nvb8IZn7J6KnA+aFi7lollo7m4XAhAcQIZ1n+OdM0woOxUaZkV8PhPZnEsBI7lOWtNhgMwbq9ZraPKjiVsrMyAmyKNPCOXvQ4ApDvq0hIordw6Un00v8hEaKJ1GyphTo5Iv7s6PMBqRIXO4qlS5au39lEBxW0WHUi5Q6e6nMteqCN3Ltgc4Cs+uOEmRIyCvwG7n0pvYU0hf6yHE0afce6xifl9w29Q7ggH+XWLjtFaqPEeZqYD9pjKQ8rQkVVYhnue5fj6Gp51fgaSzIr2iftTsNoSr6CCtZje/EMwkBpYWFMh1D7we5oTlpNuH3pM44Gs
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(366016)(1800799024)(56012099003)(22082099003)(18002099003)(4143699003)(11063799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?QzVpQkpHSjhiNlJzRnJobEJ1MGs3azMweGhneXFLcmJ5OXNUdnVCTGYwc1pL?=
 =?utf-8?B?QVpyWi9ITFM3dDUzTTFPOEhOUldZaTBtMVBqL24zbExyeVEyUXJDbUtESWE1?=
 =?utf-8?B?QnlqL2dMNHRJdXZmVERuOWZkU2xaR2NpQStVdVVxRnBBazZ6cXRZa0E3WmhJ?=
 =?utf-8?B?RjlaVWk0S0x4d1c3L0ZGTHVuWFpScTVMalZrWVdmOFVHUzBJZkt5WElZTGVC?=
 =?utf-8?B?K1FMTTh3ZjJGZ0JWZW1ib1BUN3hEWGt3VGxteFdtVDJEbFpvMFdVdTBjbmY2?=
 =?utf-8?B?dWNSQ2hyeDRIRTFIeDVOUG5OSDJVKzJXWE1NYS9ycFpZOXdyd291bm9XNXB5?=
 =?utf-8?B?aC9oZG04dnJsTTVuODROMWZGZ2RlcG5EMDA5MDU0TnZRT2EzRWZmd09UWE1r?=
 =?utf-8?B?VGEvQkFydHA5UFNhZm5ZelMydTBvSUgwK3VoN29tcEF3eVNodXFZWkxLZGRl?=
 =?utf-8?B?YkNBNUNseTNjU3VEdzB0VFdsMmhPWWxua010MWNSM2FqK0g0N0xlajhXMW5a?=
 =?utf-8?B?SDZNSUxyaUp0b09JbFJSUTBjYlkzMHNnK3lUVzJJT0hOcEs4T1lvWTIrTlRP?=
 =?utf-8?B?aXpaK1ZnV00ydlA0c0dFUCs3REQ2NzdjbHZ3WldtK0dZdm1OUU1WdnRnbnpL?=
 =?utf-8?B?cEZPR1A1ODlaaE5iY24wNStZRWlVMWZBOWx6VmRZUUhxUHN2cHdTZ2E1ZU1F?=
 =?utf-8?B?T1RRNDBLVW5NbVNWRDFtb3RqQjZKRSt2N1pOTzcwOTJTOTVacmEyTC9vdXNp?=
 =?utf-8?B?cU9VSUhSRVpHL3Q0MjZBWEY4NkZKL2NZK2x5UEJISDJTK3kyclBkQnRxbHRD?=
 =?utf-8?B?T0FiV0Q3Q2FjT2QyQ2pGZDVOU3lISEt5U0J1NzdZSEtNT1JxUFBlam54Qkxz?=
 =?utf-8?B?UmhXZ1kxRERHUEhEdUxFaktVVW43NHlnRE1zOWVscnVUNjg2ek83SWMxWDl5?=
 =?utf-8?B?cm9PdUxZaEJBbWZtM2g2Zk4wTWNCcklmM1JLd09WSkdQcE1BZDdUOW5lNmxl?=
 =?utf-8?B?cXFFUGlvc09PS213MTE1Ymc4Unk4MDBzYXM2ZzMxa3Y4NGwza2hNa1FCN25S?=
 =?utf-8?B?bVNPRGV4Rk53cXI0NjBCSWVBM2ZJaEhJR1ltVm03MTkyUUNQVUQrZUMvYm56?=
 =?utf-8?B?N3o5eTVibVhaVm1MdDU3Yk55d3NQOHNCTmJCY0I4NVlibWR3ZFhGbVYxOGE0?=
 =?utf-8?B?TnNzaEtid1JjaVA4d2RVRU1razMvMTdGMzB6L0NEVGlpVHdaRmhyYmZsTG5S?=
 =?utf-8?B?RWFOTUNCN2JzTDdjdzNuaXRKaWlxSjhuVG1rcm9IZEVrNG15bXJ2Yk5ESnVX?=
 =?utf-8?B?Y0dleVZzTnZWZUdSY0txMjVlQ2tHQ2JxT0R3dXFIeUMrdGNPUjJjRDY0Q3dW?=
 =?utf-8?B?dDZocW94WW1WTHhNUkZBNHZxc2wva2pudHZjK25GcUxpck5GUmxVZWRMUDVP?=
 =?utf-8?B?K0h1Yit0UHBEdXQ4WDVDc2NBRlQ1MU9PQjRhS0ZoYkVySCtrSVVKUFJ6dmtw?=
 =?utf-8?B?QUpMSU1YWG5FMzRpWll0b3c0bUFYd01YV3prMndNcDBhbVFaY2lSNG1OLzhD?=
 =?utf-8?B?ZnBaMm9zSFBuVnpVZ3dEZ2hMQjEyOE5iaE5LNDlIMjBSdzhPTjZrdkVhR25H?=
 =?utf-8?B?K3RMUFY0SU9rOWF2bWM2YzdxSXl2b05Lbk9UOURZSG9oclUrTUNmTHVydUJy?=
 =?utf-8?B?R1B1bklWYjZqUCtQZXI5dFIzMW55Y0R0WjZsbVZCdFVsZWlLcWdCRUFaZlZ1?=
 =?utf-8?B?WkZEQVY4WkhkUnVHVEpxbDJrSGFnMzErZTd0T240b2d0V3laeENuOW1TL0x4?=
 =?utf-8?B?anFla2FsdjRhUjlGMzhEdzdUbUF6bjYyb09SUGRKQnJYK2FoOEpuRE9pMWRG?=
 =?utf-8?B?bXRzRE9RZm9MVVNBTm9XOWJzanlHTTFQZ0FNb1FsdWpDc3ZGNCttMFBKd3Mw?=
 =?utf-8?B?Z25RTVlqQk04L3lpVFl3RmVaTDR2eCtyeVZhYVcyTTZzZkk5Q2V2RFhtT2Qy?=
 =?utf-8?B?N0pKQXZYeS9lRXg5Rk5QRzdBUXZtZXcxTkN1aEJMV2pydFU2MlJFbldWMWx1?=
 =?utf-8?B?R1RQcVNIcTYwWTdLUVlmS0hBcE1UajdOaFpPOHp0eTU1RE5sMUJjRWtxY3pj?=
 =?utf-8?B?YThNZ1prVlNGdHNDc1FQN3FhRUhVOUdEQlk0VVdDL3JLUHZ5VGcvN21JOTMy?=
 =?utf-8?B?V3NwbWVoZjFibllWV0ZWSXFNM3FMcGdiSDJlQ0YzS1VvcDZWMTU4dm1GSU1x?=
 =?utf-8?B?YUxhN2Y5SmN4am1XVjlGdVJaeTlzZ3E1c1lxOUg3UjVZSHF1Z0Y4a1hxNVo3?=
 =?utf-8?Q?oTETOfBrIoheuiKiiM?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ba60c40-7978-48b1-cb81-08deb4ac8c3a
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2026 07:10:31.4727
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SAb4m3kIqYGTH6xYIQkLgOME/6IhxbOzAPcUf75hbpfYjZ6A/l5nyrx1zO1CZoig
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR12MB6748
X-Spamd-Bar: --
Message-ID-Hash: QE6KFTU7JD6MJV332RIDOXYCQQVOZPGG
X-Message-ID-Hash: QE6KFTU7JD6MJV332RIDOXYCQQVOZPGG
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/6] dma-resv: Define guards for context-less dma_resv locks
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QE6KFTU7JD6MJV332RIDOXYCQQVOZPGG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 330A2567357
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[linaro.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,amd.com:mid,collabora.com:email]
X-Rspamd-Action: no action

T24gNS8xMy8yNiAxODo1OCwgQm9yaXMgQnJlemlsbG9uIHdyb3RlOg0KPiBXaGVuIHVzZWQgd2l0
aG91dCBhIGNvbnRleHQsIGRtYV9yZXN2IGFyZSBubyBkaWZmZXJlbnQgZnJvbSByZWd1bGFyDQo+
IGxvY2tzLiBEZWZpbmUgZ3VhcmRzIHNvIHdlIGNhbiB1c2UgdGhlIGd1YXJkLXN5bnRhY3RpYyBz
dWdhcnMgZm9yDQo+IGV4cGxpY2l0L2ltcGxpY2l0IHNjb3BlZCBsb2Nrcy4NCj4gDQo+IFNpZ25l
ZC1vZmYtYnk6IEJvcmlzIEJyZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5jb20+
DQoNClJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+DQoNCkhvdyBkbyB5b3Ugd2FudCB0byB1cHN0cmVhbSBpdD8gTXkgcHJlZmVyZW5jZSB3b3Vs
ZCBiZSBkcm0tbWlzYy1uZXh0LCBidXQgSSB0aGluayBJIGNhbiBsaXZlIHdpdGggYSBwYW50aG9y
IHNwZWNpZmljIGJyYW5jaCBhcyB3ZWxsLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+IC0t
LQ0KPiAgaW5jbHVkZS9saW51eC9kbWEtcmVzdi5oIHwgNSArKysrKw0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDUgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1h
LXJlc3YuaCBiL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaA0KPiBpbmRleCBjNWFiNmZkOWViZTgu
LmU1NTliMTgxMWNhMyAxMDA2NDQNCj4gLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtcmVzdi5oDQo+
ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaA0KPiBAQCAtNDAsNiArNDAsNyBAQA0KPiAg
I2RlZmluZSBfTElOVVhfUkVTRVJWQVRJT05fSA0KPiAgDQo+ICAjaW5jbHVkZSA8bGludXgvd3df
bXV0ZXguaD4NCj4gKyNpbmNsdWRlIDxsaW51eC9jbGVhbnVwLmg+DQo+ICAjaW5jbHVkZSA8bGlu
dXgvZG1hLWZlbmNlLmg+DQo+ICAjaW5jbHVkZSA8bGludXgvc2xhYi5oPg0KPiAgI2luY2x1ZGUg
PGxpbnV4L3NlcWxvY2suaD4NCj4gQEAgLTQ4NCw0ICs0ODUsOCBAQCB2b2lkIGRtYV9yZXN2X3Nl
dF9kZWFkbGluZShzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwgZW51bSBkbWFfcmVzdl91c2FnZSB1c2Fn
ZSwNCj4gIGJvb2wgZG1hX3Jlc3ZfdGVzdF9zaWduYWxlZChzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwg
ZW51bSBkbWFfcmVzdl91c2FnZSB1c2FnZSk7DQo+ICB2b2lkIGRtYV9yZXN2X2Rlc2NyaWJlKHN0
cnVjdCBkbWFfcmVzdiAqb2JqLCBzdHJ1Y3Qgc2VxX2ZpbGUgKnNlcSk7DQo+ICANCj4gK0RFRklO
RV9HVUFSRChkbWFfcmVzdiwgc3RydWN0IGRtYV9yZXN2ICosIGRtYV9yZXN2X2xvY2soX1QsIE5V
TEwpLCBkbWFfcmVzdl91bmxvY2soX1QpKTsNCj4gK0RFRklORV9HVUFSRF9DT05EKGRtYV9yZXN2
LCBfaW50ciwgZG1hX3Jlc3ZfbG9ja19pbnRlcnJ1cHRpYmxlKF9ULCBOVUxMKSwgIV9SRVQpOw0K
PiArREVGSU5FX0dVQVJEX0NPTkQoZG1hX3Jlc3YsIF90cnksIGRtYV9yZXN2X3RyeWxvY2soX1Qp
KTsNCj4gKw0KPiAgI2VuZGlmIC8qIF9MSU5VWF9SRVNFUlZBVElPTl9IICovDQo+IA0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK

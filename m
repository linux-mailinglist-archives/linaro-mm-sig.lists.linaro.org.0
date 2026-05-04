Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EFMINY1P+GmQsQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 04 May 2026 09:49:33 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4687B4B99EC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 04 May 2026 09:49:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 29EDD409BB
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2026 07:49:32 +0000 (UTC)
Received: from BN8PR05CU002.outbound.protection.outlook.com (mail-eastus2azon11011019.outbound.protection.outlook.com [52.101.57.19])
	by lists.linaro.org (Postfix) with ESMTPS id 1DAA8406AD
	for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2026 07:49:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=IdahbNtE;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.57.19 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Usz9fuTu+9tU8uPV//YDY14fftwgRsH5e5C5x6BEsMIt/7Jis1hOcUPBzqpBCnJipHrxjyammL0aZ5v3LqsifZD0pplra5dJz42qob4y8MIBmdpEHpU+dSbc0NJXx64dfiTpgA9ZNautfcYkJtWGCv5nsqxa7KWx2cngvTEPbTOF9M5kRQ5+fPVgYntwF0gdOvEJ5j+64Ju+LOCo4BRaMVf90xg7C0y8ALlMH9lNp0ZD+q/9rUW8hck8BHB8iTHgGe4LTwrHa8YJgsmp2v4ECwnw7FbLbvJCMCyye4Nodc/vMytOtNRrrNXiMSCT/fJWhM/15F3wI4ZP3r+EKEca9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d0xcKJkFbFaYT1KQdPIlpEkD4K7meX9f46DKUFjINbk=;
 b=rrqqqTZIC3jVrOX02IbvKWveyM5/8wSGqah40CEsOd+oahRlfsqMdN25EXDDBXKcx6LLRfAsnryT5Zo8E6g/jw3l86c3wzousNeitZqSkO29DfjEnNCEfpLK/RDFACYVwTSL/gH8A73PckKSPUDCz8MYLzJpdrmWgqApyd8W8clqf4RJzLtu8rRWtBR2PvNQbOix1MSIqJpGFnzzsVvjR9nEN9L3t2F+2h+u1BgGp9nGyISIkPAT8g3Yb9Iuz6kP419ZE3WVEMz2HYUCh6yrW/EbooQ/E1XEhhdH5bZVz2Uk5mWdMq/O3bIBx6GM2vuiCw1DDASkMfP1/HZVUhnODA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d0xcKJkFbFaYT1KQdPIlpEkD4K7meX9f46DKUFjINbk=;
 b=IdahbNtEMkjeuf9ulw87mxdUNfsbd0QIxmISkSseVSowEtBHZc1uzoKJ3zpr4dXsZpWSGW0+pVT8jOd8HjHBb4jvJQjCRWHKkdyTh5tFq0hvh2a/P7vGCNd5/cBV0FEpx1ikknnY1SOeTQnbI3da3SaUseXQEVfUB0w3Mk/DMYc=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DM4PR12MB6448.namprd12.prod.outlook.com (2603:10b6:8:8a::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9870.25; Mon, 4 May 2026 07:49:25 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9870.023; Mon, 4 May 2026
 07:49:25 +0000
Message-ID: <bc74694b-9cbc-4cbb-9dcd-9e25960d3b97@amd.com>
Date: Mon, 4 May 2026 09:49:15 +0200
User-Agent: Mozilla Thunderbird
To: "T.J. Mercier" <tjmercier@google.com>, Barry Song <baohua@kernel.org>
References: <20260406214938.24142-1-baohua@kernel.org>
 <a6d1c89a-3c71-4e06-adcb-56595071dcc2@amd.com>
 <CAGsJ_4xquCzQLbvpkC8arAN=9KhrAkdPdxnB=v85GvvQu23Xyg@mail.gmail.com>
 <9034246e-3971-4fad-94b7-80f4ad0e29db@amd.com>
 <CAGsJ_4z5EZoNMBVnu6sCkThyi9VTCeCH29buVecuySuv_Ry8fw@mail.gmail.com>
 <CABdmKX3baqmBkZxMB6PTG6Sj5S9qi+RwVvwpmkLqKkqvfeZAUw@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <CABdmKX3baqmBkZxMB6PTG6Sj5S9qi+RwVvwpmkLqKkqvfeZAUw@mail.gmail.com>
X-ClientProxiedBy: MN2PR05CA0056.namprd05.prod.outlook.com
 (2603:10b6:208:236::25) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DM4PR12MB6448:EE_
X-MS-Office365-Filtering-Correlation-Id: 0f4f0df3-3181-4d56-baaf-08dea9b1a952
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|1800799024|376014|7416014|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: 
	YxSbS3cCdzuv0A0U+ZdrHkbCDGpnQe3u0jIAIp43IHpc7JfNDOt8K4QCH4u7BaTL+Ty4o6z94aalHgJuhk6v3/2OjKrWHhVyiAoBjYH71/ctxAFbYllgBTiNkZZ60g4YiW2LT16fQGKwLG/3sFKYlXHVUhqtehY2V2FePj3b2mFYnzAS4KHycqGhvPS623ugyScru/b3hSB2FnyfZtopAlBCHihENZKHEy998wI7BKf9c1hlzu/X73Q9P02hpAufKd76uxolAla09Fv4fiAhtBqQnggVedZtr4t12F3tVzJGI0/qWVU+9OokyqCbLecFtfu4UtrYUKpvQxLWvSTAmFEe/xef+C7E8kdMLP/UtTOTiub+JIK9l9hD1NQIWonZAg32hSuYv8XfDncUBwTJT8+9F8fB7vNsFc0fHenH5tuMRhVMXqwqg1jDd+xK0ruPoHiyUqlzKwfT/cmZoHcNI/YdSLi1QS1nW+/lc7TcuCyf4TCMoaKs9iYnrlLuO3W+6Y6eaTuVwqqVE3DzJRhTbQvH+v3dMRlZ9jERIpRex8ixYnBMX1UqpPC6wqxSBN1NtFZB0B+z5TfImGUhhak34QG5P4GaDnA3Bahb9qo+d/hM6YsnZeESupFtDBmTAJ7IBWJcVopMiVvg/ZyvNAhFpAoduyfeMijH4TY1hwQPLFgNL91Ry5hZbbl6FhkqSkQb
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7416014)(56012099003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?R281UEM0TkRkZEQrcUUzMHJ2dFFBNUJ0MzlUQ2NMTEpiQ0FBTkFsakRJb1Ez?=
 =?utf-8?B?UDFNU1FmWEdXcVBuOStTa1RUVUlIazh5UUZqZHo1SlFwYXFHbmx2M3poWnNt?=
 =?utf-8?B?T0V3L1JFbERYV3BDeFpPTENsdml4Q2NhUEk1eHRJYW1iN1owTDZ3aFBwTWQy?=
 =?utf-8?B?bDF5OWFzMG1PK3NUK1VFQVduQzV1U3lxeGRGTXJzSm5MMFc4Z0JrY0FMOWtY?=
 =?utf-8?B?R3YxbTFKY25jdGYwM3JNZy9CalI4YWJxZXgvWllXZ05yNFFxa2s3aGpxRER2?=
 =?utf-8?B?V2pQOUJjeFlScTRhNHUxeFk3MkdVZ0tOcG4zTkdzWXltVUlGZmRoTnRBaHo5?=
 =?utf-8?B?Y1N5bDdqa3lNZEFGSkJMZnhVWWlJRlVMc1dXRU9UMFJtZUNCMGozdkVuV2pu?=
 =?utf-8?B?cm93MGNQa3hFSzFHV0djbTltbXMxZ0Z5alkxMUtFaVY0Vjhmam5RNlFuc29T?=
 =?utf-8?B?STJhZFFQR0dZcUFVT3FDRmJQK2pQOEJHVTd6cG5VWTljd3JydGFUNHBoL3hu?=
 =?utf-8?B?Nit0bGlUb2xXUjJHcmh1UFN6WjdqV1pJdWtBYjNUQ0pHazV5SFFvNTlUSVZF?=
 =?utf-8?B?blcrY1BoYkNSdUZRMURrY2NsV0F1dHVVZTRtNEkveFRhakE0T2Z4aXdtelVo?=
 =?utf-8?B?T0JSd0F0NVBaWVJPMUFpbzhjSHJxdVVoOE9kTFNpQmE1cEh0M3ZkYjVRYmJ0?=
 =?utf-8?B?ejdyQ2Nwd3EwMG9UOXVUOGN4Nm5UUUVlZGxzR2dzcFB5c1pLNyswbU9TcW9L?=
 =?utf-8?B?amdWdmRHWWprNVpzQ1c2YmNsY2ZQQk1Ea3hqelNtcmoyS0NCY3hUd3FxbGg2?=
 =?utf-8?B?S1h4T0lKWnJWdnlsSnBydkpXL0RWY0w1ZlphcERmVkxreEltL0I3Ui9aLzl3?=
 =?utf-8?B?TGlqK3puZWV3dnBTemEvc0dWQ2pUQmRQcEFhemlzUWlBeWttb0ZjS2ZBNERX?=
 =?utf-8?B?ak5IQjFzUzlKZGgwNXd5bkJ1UW9aR1NvQmdoSUc0dlJCVmxib01HaS9WZkh4?=
 =?utf-8?B?b1Z5d2ZNWUJFd25yQ3ZpZEpUZW5IOXAyN1Q5SzdpNzRWOTl0dVZKS1hpM0ph?=
 =?utf-8?B?Tjdrdi9RQVFNcnFPOW1jZkpranVaR2hTU0RqWkJONnM0RzJLbHpvbTIzYXNE?=
 =?utf-8?B?SkdLUWtwNERFcmgrZXF0YjJTSTBuZnltNXlKajBSaDJMaVBxaXF3WHMzNkY1?=
 =?utf-8?B?dU5IQk1pdW5QbDVQQ3ZrTGtDRWhSYzR0dnBTUDZmdS9uSmNkeGNqOXltU0Mz?=
 =?utf-8?B?d2htU0VlNTh4Z0lmNHJxTWF4U1NvUUEzdlZ4T2RHbEg5RnM1RmtNSHVvZVRO?=
 =?utf-8?B?M2FZL2FwT25abGt4ZHdWWGpLQ1MyMFFNZnhUMDR6MVkwblJLMHBDUEJ6T2d3?=
 =?utf-8?B?aFNsbjROKzN3R3RNQTN5RnlISndiUS9sdzZCRmFWUGtjb1M5UHJZelZkalJB?=
 =?utf-8?B?TnVZeTdoYmhkeEk5bnBLSXVNK1Q2RTE4OXgxbDQydlBOb1Z6Y3pPTEZ3UWky?=
 =?utf-8?B?QTNuNkc4OTYvdHdLcU9XNUdmQTJPKzRJVVpoSzNtdzZsNjV4eCtYb1p0K01Q?=
 =?utf-8?B?cWdrN0Q1dGhrM0x1ak85U3ZzenBHSVUyZWZWUmhOamoyMGFDa1BiR1d6WlJu?=
 =?utf-8?B?OGM0RHlWR2xadnFMTm5xVTJFNGc0ZHVFU2pnWVNTY00zNnYzQmw1WEh2c2ZV?=
 =?utf-8?B?Yzdxd1lmeDFOUnZ4TVlFTTJocFZ0WXRpNEMyWnRXdFFZOUE3TTEvamp6WnZS?=
 =?utf-8?B?emYrL2RNVnhtU00xYWxuV2RZb3ZNY2cvck1YV3NhK0prQmI5Vk4rOVY3R2RL?=
 =?utf-8?B?WXlLUHovTmJxQnpGdXI2UHRXWmZwTjVTbm9vV3d2bmFTdWFONXFNSEtaMmpo?=
 =?utf-8?B?bjNITWYyZ1ljVk1yaWFBOG5HRlRPTU54NER1OHFVMnpQeXZrNzhoZFczL08v?=
 =?utf-8?B?U3lXMmlTUUNHTkwzci9vTXpCczZOS3AzR1YvTkpjZEdOZHdWUXdYaDQ3RHJQ?=
 =?utf-8?B?N1lSY0k5UUFOM3hNWFlRa3lkVUoyQ2VpTTVMcTJIS1FkekdPdk9aaHhNRmlV?=
 =?utf-8?B?a2NObTJKbXBXdmFJV0d1Z3Z3Q0JLTlVHUUZIQmdnbnR5Z1lUV0dKTkplOTc4?=
 =?utf-8?B?bnpyU0dEenlkRjRHRUQ4QzZkUTljV2JVVUZHaFVnNEcvbFRKc0pBdHpMNng2?=
 =?utf-8?B?K2FBVmZDQmovQmZ5RS9MSEg4eTBRM2xsMTlrS28rZEhrMXYyOXduZUxXbTVS?=
 =?utf-8?B?SWozN3M3bnN0QmtVWnNFT1AwNytwdXpWa1RNL3Qreksrb2JuTXlwRmZaRmxS?=
 =?utf-8?Q?ChHrLgWwDDhMD59UQ8?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f4f0df3-3181-4d56-baaf-08dea9b1a952
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 May 2026 07:49:25.0316
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 08IXILGD0Nq1GyTLzUWUmctNfbPW1i7r9OlOitB2vjsGgjvN9Z1t9v507RS0sekK
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB6448
X-Spamd-Bar: ----
Message-ID-Hash: EQA7FL7GD764XOK47ZIVRGENOBMJ7N66
X-Message-ID-Hash: EQA7FL7GD764XOK47ZIVRGENOBMJ7N66
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Xueyuan Chen <Xueyuan.chen21@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: system_heap: Optimize sg_table-to-pages conversion in vmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EQA7FL7GD764XOK47ZIVRGENOBMJ7N66/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 4687B4B99EC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	GREYLIST(0.00)[pass,meta];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.005];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com,linaro.org,collabora.com,arm.com,google.com];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[]

T24gNS8xLzI2IDE3OjU0LCBULkouIE1lcmNpZXIgd3JvdGU6DQo+IE9uIFRodSwgQXByIDMwLCAy
MDI2IGF0IDk6MTXigK9QTSBCYXJyeSBTb25nIDxiYW9odWFAa2VybmVsLm9yZz4gd3JvdGU6DQo+
Pg0KPj4gT24gV2VkLCBBcHIgMjIsIDIwMjYgYXQgMzoxMOKAr1BNIENocmlzdGlhbiBLw7ZuaWcN
Cj4+IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPj4+DQo+Pj4gT24gNC83LzI2
IDEzOjI5LCBCYXJyeSBTb25nIHdyb3RlOg0KPj4+PiBPbiBUdWUsIEFwciA3LCAyMDI2IGF0IDM6
NTjigK9QTSBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3Rl
Og0KPj4+Pj4NCj4+Pj4+IE9uIDQvNi8yNiAyMzo0OSwgQmFycnkgU29uZyAoWGlhb21pKSB3cm90
ZToNCj4+Pj4+PiBGcm9tOiBYdWV5dWFuIENoZW4gPFh1ZXl1YW4uY2hlbjIxQGdtYWlsLmNvbT4N
Cj4+Pj4+Pg0KPj4+Pj4+IFJlcGxhY2UgdGhlIGhlYXZ5IGZvcl9lYWNoX3NndGFibGVfcGFnZSgp
IGl0ZXJhdG9yIGluIHN5c3RlbV9oZWFwX2RvX3ZtYXAoKQ0KPj4+Pj4+IHdpdGggYSBtb3JlIGVm
ZmljaWVudCBuZXN0ZWQgbG9vcCBhcHByb2FjaC4NCj4+Pj4+Pg0KPj4+Pj4+IEluc3RlYWQgb2Yg
aXRlcmF0aW5nIHBhZ2UgYnkgcGFnZSwgd2Ugbm93IGl0ZXJhdGUgdGhyb3VnaCB0aGUgc2NhdHRl
cmxpc3QNCj4+Pj4+PiBlbnRyaWVzIHZpYSBmb3JfZWFjaF9zZ3RhYmxlX3NnKCkuIEJlY2F1c2Ug
cGFnZXMgd2l0aGluIGEgc2luZ2xlIHNnIGVudHJ5DQo+Pj4+Pj4gYXJlIHBoeXNpY2FsbHkgY29u
dGlndW91cywgd2UgY2FuIHBvcHVsYXRlIHRoZSBwYWdlIGFycmF5IHdpdGggYSBpbiBhbg0KPj4+
Pj4+IGlubmVyIGxvb3AgdXNpbmcgc2ltcGxlIHBvaW50ZXIgbWF0aC4gVGhpcyBzYXZlIGEgbG90
IG9mIHRpbWUuDQo+Pj4+Pj4NCj4+Pj4+PiBUaGUgV0FSTl9PTiBjaGVjayBpcyBhbHNvIHB1bGxl
ZCBvdXQgb2YgdGhlIGxvb3AgdG8gc2F2ZSBicmFuY2gNCj4+Pj4+PiBpbnN0cnVjdGlvbnMuDQo+
Pj4+Pj4NCj4+Pj4+PiBQZXJmb3JtYW5jZSByZXN1bHRzIG1hcHBpbmcgYSAyR0IgYnVmZmVyIG9u
IFJhZHhhIE82Og0KPj4+Pj4+IC0gQmVmb3JlOiB+MTQ0MDAwMCBucw0KPj4+Pj4+IC0gQWZ0ZXI6
ICB+MjMyMDAwIG5zDQo+Pj4+Pj4gKH44NCUgcmVkdWN0aW9uIGluIGl0ZXJhdGlvbiB0aW1lLCBv
ciB+Ni4yeCBmYXN0ZXIpDQo+Pj4+Pg0KPj4+Pj4gV2VsbCByZWFsIHF1ZXN0aW9uIGlzIHdoeSBk
byB5b3UgY2FyZSBhYm91dCB0aGUgdm1hcCBwZXJmb3JtYW5jZT8NCj4+Pj4+DQo+Pj4+PiBUaGF0
IHNob3VsZCBiYXNpY2FsbHkgb25seSBiZSB1c2VkIGZvciBmYmRldiBlbXVsYXRpb24gKGV4Y2Vw
dCBmb3IgVk1HRlgpIGFuZCB3ZSBhYnNvbHV0ZWx5IGRvbid0IGNhcmUgYWJvdXQgcGVyZm9ybWFu
Y2UgdGhlcmUuDQo+Pj4+DQo+Pj4+IEkgYWdyZWUgdGhhdCBpbiBtYWlubGluZSwgZG1hX2J1Zl92
bWFwIGlzIG5vdCB1c2VkIHZlcnkgb2Z0ZW4uDQo+Pj4+IEhlcmXigJlzIHdoYXQgSSB3YXMgYWJs
ZSB0byBmaW5kOg0KPj4+Pg0KPj4+PiAgIDEgICAxNjM4ICBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1
Zi5jIDw8ZG1hX2J1Zl92bWFwX3VubG9ja2VkPj4NCj4+Pj4gICAgICAgICAgICAgIHJldCA9IGRt
YV9idWZfdm1hcChkbWFidWYsIG1hcCk7DQo+Pj4+ICAgIDIgICAgMzc2ICBkcml2ZXJzL2dwdS9k
cm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIuYw0KPj4+PiA8PGRybV9nZW1fc2htZW1fdm1hcF9sb2Nr
ZWQ+Pg0KPj4+PiAgICAgICAgICAgICAgcmV0ID0gZG1hX2J1Zl92bWFwKG9iai0+aW1wb3J0X2F0
dGFjaC0+ZG1hYnVmLCBtYXApOw0KPj4+PiAgICAzICAgICA4NSAgZHJpdmVycy9ncHUvZHJtL2V0
bmF2aXYvZXRuYXZpdl9nZW1fcHJpbWUuYw0KPj4+PiA8PGV0bmF2aXZfZ2VtX3ByaW1lX3ZtYXBf
aW1wbD4+DQo+Pj4+ICAgICAgICAgICAgICByZXQgPSBkbWFfYnVmX3ZtYXAoZXRuYXZpdl9vYmot
PmJhc2UuaW1wb3J0X2F0dGFjaC0+ZG1hYnVmLCAmbWFwKTsNCj4+Pj4gICAgNCAgICA0MzMgIGRy
aXZlcnMvZ3B1L2RybS92bXdnZngvdm13Z2Z4X2JsaXQuYyA8PG1hcF9leHRlcm5hbD4+DQo+Pj4+
ICAgICAgICAgICAgICByZXQgPSBkbWFfYnVmX3ZtYXAoYm8tPnRiby5iYXNlLmRtYV9idWYsIG1h
cCk7DQo+Pj4+ICAgIDUgICAgIDg4ICBkcml2ZXJzL2dwdS9kcm0vdm13Z2Z4L3Ztd2dmeF9nZW0u
YyA8PHZtd19nZW1fdm1hcD4+DQo+Pj4+ICAgICAgICAgICAgICByZXQgPSBkbWFfYnVmX3ZtYXAo
b2JqLT5pbXBvcnRfYXR0YWNoLT5kbWFidWYsIG1hcCk7DQo+Pj4+DQo+Pj4+IEhvd2V2ZXIsIGlu
IHRoZSBBbmRyb2lkIGVjb3N5c3RlbSwgc3lzdGVtX2hlYXAgYW5kIHNpbWlsYXIgaGVhcHMNCj4+
Pj4gYXJlIHdpZGVseSB1c2VkIGFjcm9zcyBjYW1lcmEsIE5QVSwgYW5kIG1lZGlhIGRyaXZlcnMu
IE1hbnkgb2YgdGhlc2UNCj4+Pj4gZHJpdmVycyBhcmUgbm90IGluIG1haW5saW5lIGJ1dCBkbyB1
c2Ugdm1hcCgpIGluIHJlYWwgY29kZSBwYXRocy4NCj4+Pg0KPj4+IFdlbGwgb3V0IG9mIHRyZWUg
ZHJpdmVycyBhcmUgbm90IGEganVzdGlmaWNhdGlvbiB0byBtYWtlIGFuIHVwc3RyZWFtIGNoYW5n
ZXMuDQo+Pj4NCj4+PiBBcGFydCBmcm9tIGEgaGFuZGZ1bCBvZiB3b3JrYXJvdW5kcyB3aGljaCBu
ZWVkIHRvIENQVSBhY2Nlc3MgYXMgZmFsbGJhY2sgRE1BLWJ1ZiB2bWFwIGlzIG9ubHkgdXNlZCB0
byBwcm92aWRlIGZiIGRldiBlbXVsYXRpb24uDQo+Pj4NCj4+PiBUaGUgdm1hcCBpbnRlcmZhY2Ug
aGFzIGFscmVhZHkgZ2l2ZW4gdXMgcXVpdGUgYSBoZWFkYWNoZSBpbiB0aGUgZmlyc3QgcGxhY2Ug
YW5kIHRoZXJlIGFyZSBhIGNvdXBsZSBvZiB1bnJlc29sdmVkIHByb2JsZW1zIHJlZ2FyZGluZyBz
eW5jaHJvbml6YXRpb24gYW5kIGNvaGVyZW5jeS4NCj4+Pg0KPj4+IFdoZW4gYSBkcml2ZXIgd291
bGQgYmUgcHVzaGVkIHVwc3RyZWFtIHdoaWNoIG1ha2VzIHNvIGZyZXF1ZW50IHVzZSBvZiB0aGUg
ZG1hX2J1Zl92bWFwIGZ1bmN0aW9uIHRoYXQgaXQgbWF0dGVycyBmb3IgdGhlIHBlcmZvcm1hbmNl
IEkgdGhpbmsgdGhlcmUgd291bGQgYmUgcHVzaCBiYWNrIG9uIHRoYXQgYW5kIHRoZSBkcml2ZXIg
ZGV2ZWxvcGVyIHdvdWxkIHJlcXVpcmUgYSB2ZXJ5IGdvb2QgZXhwbGFuYXRpb24gd2h5IHRoYXQg
aXMgbmVjZXNzYXJ5Lg0KPj4+DQo+Pj4gU28gZm9yIG5vdyBJIGhhdmUgdG8gcmVqZWN0IHRoYXQg
cGF0Y2guDQo+Pg0KPj4gV2VsbCwgaXQgZG9lc27igJl0IHNlZW0gdG8gaW5jcmVhc2UgY29tcGxl
eGl0eSwgYW5kIHRoZSBjb2RlIGlzIHF1aXRlIGVhc3kNCj4+IHRvIHVuZGVyc3RhbmQuDQo+IA0K
PiBJIGFncmVlIHdpdGggdGhpcy4gVGhpcyBjaGFuZ2UgaW50cm9kdWNlcyBiYXNpY2FsbHkgbm8g
ZG93bnNpZGVzIGZvcg0KPiB1cHN0cmVhbSwgZXZlbiBpZiBpdCBwcmltYXJpbHkgYmVuZWZpdHMg
YSByYXJlIHVzZSBjYXNlLiBTaW5jZQ0KPiBkbWFfYnVmX3ZtYXAgaXMgZXhwb3J0ZWQgZm9yIGRy
aXZlciB1c2UsIHdoeSBub3QgZW5oYW5jZSB0aGUNCj4gcGVyZm9ybWFuY2UgZm9yIGFsbCBjYWxs
ZXJzPw0KDQpCZWNhdXNlIHdlIGVzc2VudGlhbGx5IHdhbnQgdG8gcmVzdHJpY3QgdGhlIHZtYXAg
aW50ZXJmYWNlIHRvIG9ubHkgdGhlIGZiIGRldiBlbXVsYXRpb24gdXNlIGNhc2UgYW5kIG5vdCBw
cm9tb3RlIG9yIGV2ZW4gZXhwYW5kIGl0Lg0KDQpXaGVuIHRoaXMgbWF0dGVycyBwZXJmb3JtYW5j
ZSB3aXNlIHRoZSBjYWxsZXIgaXMgY2xlYXJseSBkb2luZyBzb21ldGhpbmcgd3JvbmcgYW5kIGJ5
IGltcHJvdmluZyB0aGUgcGVyZm9ybWFuY2Ugd2UganVzdCBwYXBlciBvdmVyIHRoZSBpc3N1ZSBp
bnN0ZWFkIG9mIGZpeGluZyBpdC4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPiANCj4gLVQu
Si4NCj4gDQo+PiBJdCB3b3VsZCBiZSBncmVhdCBpZiB0aGUgY29tbXVuaXR5IGNvdWxkIGJlIG1v
cmUgd2VsY29taW5nDQo+PiB0byBkZXZlbG9wZXJzIHdobyBhcmUganVzdCBnZXR0aW5nIGludm9s
dmVkLCByYXRoZXIgdGhhbiBkaXNjb3VyYWdpbmcgdGhlbS4NCj4+DQo+PiBBcHBhcmVudGx5LCBu
byBvbmUgY2FuIGNvbnRyb2wgd2hldGhlciB0aGUgc291cmNlIGNvZGUgb2YgdGhvc2Uga2VybmVs
DQo+PiBtb2R1bGVzIHdpbGwgYmUgdXBzdHJlYW1lZCBleGNlcHQgdGhlIHZlbmRvcnMgdGhlbXNl
bHZlcywgYnV0IHByb2R1Y3RzDQo+PiBjYW4gc3RpbGwgYmVuZWZpdCBmcm9tIHRoZSBjb21tb24g
a2VybmVsLg0KPj4NCj4+IEJlc3QgUmVnYXJkcw0KPj4gQmFycnkNCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==

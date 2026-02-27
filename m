Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +A61L3+UoWl/ugQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Feb 2026 13:56:31 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4621B7623
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Feb 2026 13:56:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 09A3E3F9BA
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Feb 2026 12:56:30 +0000 (UTC)
Received: from CY7PR03CU001.outbound.protection.outlook.com (mail-westcentralusazon11010055.outbound.protection.outlook.com [40.93.198.55])
	by lists.linaro.org (Postfix) with ESMTPS id D7B723F9BA
	for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Feb 2026 12:56:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=O7t765jn;
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.93.198.55 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IstXFkLuki/mU0XPawMa2Xc2cJvNRX7QQwkW7z+qKwVoaH8W+HUu0zJFb/Lt6aHAli9giCRpwdzBzUM0AGn+uQvSoS797LinW9Aga6gwVTl/STuBvFHRE9oKgRQq3fkjgr2WWYuvOX69ulyJmqyqqrwNwgu89wL5MLv/QK5RXOsK6MwZbp4k2s2qUhN1o4uBdl7jD3iBtgu96HuKlskfDj4quBKcuPbFt5HKaDM14x4P06yhZnST0RuQZS20VPksR0bZ1ga6HHx20cJKAqcPICzzcUm6sjWj3lUOVh8Hhinhn2aVt/sbgHqJ9HYpTrDUOzj4T3wAtW7JrTjOifkiUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o4wSltaA/DRGUa/5Nn+GFTNn8rkjaOcuKlbIMWPcEIc=;
 b=fw07/t86ZFTwqO/+b3OedlRkMzgfZhl43YIqQx8J5cJ7l2CCXqspTOLhXH6wc24H3M6CM7X34sy6CEacP9ZwDU+jEls0mgkp3q3vXCPgqXRBU2mrcIN7W7vmHo4YcrrGTtx1k/4G+P18MxJ5fXnUODJZFNnjrRhfUjHioyxhIjKjH8PQitl40Z3n/BXIDfjwDPqQXa4hcpfgl7ul8lItSm8wESedTB7ZUDwN1sohF9PsU2qRWzhUJmhO3D0xEpYtwJyyQYlVVGfaGX+iOiAXgSwVy/r3Y/vl6kBnm2R8DVd2BEgTOZXrkW2xbXRB8svp1vtWaYe66lpMchDUaJhQ7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o4wSltaA/DRGUa/5Nn+GFTNn8rkjaOcuKlbIMWPcEIc=;
 b=O7t765jnmNYD+kbceyjJgtpH71gCYFjyoXoiWSyV7LIBT8JfWa+onEwPKXoNb/nBw4CvKQ7WJY6Fjq5lyHw6LF55RhWKpIdJc+3QL2NYePWtIDRS2oohEwjbtLOPa4bZLfqMplE685ZBiwb1e1WovfFQZHxfoOWjx3Jmvhum6MYUNZ/bF0ObDiqEo7pNpCFiU0XEHowl0yR49h8UTliNmABPzC35RMcke2eS8LcOUZZw5+JPav9EDC4XTrLJ5AdGfxzLN3ovA8wdF4LHgRdV52xt3h37/ru7RGH63XDI0Q+PepTH5LJxlgAcxRKC9n/MoqPCfgL14V2DDWR8nLEQVQ==
Received: from LV8PR12MB9620.namprd12.prod.outlook.com (2603:10b6:408:2a1::19)
 by DM6PR12MB4468.namprd12.prod.outlook.com (2603:10b6:5:2ac::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.14; Fri, 27 Feb
 2026 12:56:23 +0000
Received: from LV8PR12MB9620.namprd12.prod.outlook.com
 ([fe80::299d:f5e0:3550:1528]) by LV8PR12MB9620.namprd12.prod.outlook.com
 ([fe80::299d:f5e0:3550:1528%5]) with mapi id 15.20.9654.014; Fri, 27 Feb 2026
 12:56:22 +0000
Date: Fri, 27 Feb 2026 08:56:21 -0400
From: Jason Gunthorpe <jgg@nvidia.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20260227125621.GI5933@nvidia.com>
References: <20260226202211.929005-1-mattev@meta.com>
 <20260226202211.929005-5-mattev@meta.com>
 <f75088c6-5795-49cc-8932-ea46c2223d74@amd.com>
Content-Disposition: inline
In-Reply-To: <f75088c6-5795-49cc-8932-ea46c2223d74@amd.com>
X-ClientProxiedBy: BLAPR05CA0021.namprd05.prod.outlook.com
 (2603:10b6:208:36e::17) To LV8PR12MB9620.namprd12.prod.outlook.com
 (2603:10b6:408:2a1::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR12MB9620:EE_|DM6PR12MB4468:EE_
X-MS-Office365-Filtering-Correlation-Id: 8027fd16-94a7-4e7c-4793-08de75ff9bcf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 
	c7GI/p7hs2uGajxL1O7QxHzMn0i/pFXX52CDUP0Jxhuil0baXNd9ziBqBqCEYolQ4KLqIFnoruJFOW/CHdFVuQ6k2z5emkJ1g7zcgK83Mts3/L1jRgWLnQMxmO83xB5eCyPPHKubWd9ZiREuvdeoJrBNA2sdiBfnYI95BJLHn3Ym81Hd0LtbHCA/raea0NF0a/SD+dRlLfn8e2zgs46cs+Xxnnisah+9hrHyygYco+a0Hu+pJL1TA98SCsAh+J75qQRh1tMtFFsPf78W8/Yp0BsKPFHqmcrJtPb65uedNATfz0fPf05c4nQKeHhxCsb/FHhSM1CKokEqW/BWBrbcEijVgF+wyZjSqCM46Hvvyk1d8dk/uZGcawDMlCjNdOBHF6lI3iMdxI8DXCvcYgrXOR2QWJLkdvRrey3/rQwGKt6tOV6ZH2z7adIAnh03xCKdUMZqpSnRT6+i/QSaZWlkeR/kTPrF+0Yv+jRpBuwp44Vk63OdHcZ1ybxBzvsGPtf9s+FdIdM017Rz4xrZPNES45VFU0DHsYtsRigGjzdrlkr15wLDx/DLkVUDLJyDmQpznfpCWb8CZdU9s+ZAvhzPLdby4ZvQHvuvPgzHcR4oWVi84u5seHXon6nkqgRjlDFhdQqvCj5FlRqz7OntvpkvrTxV3L+n/ICyxwGfwSyUv7l5fFsb3lC3KB6ahgZ/Vr6m77vyHDi1R+wSogPA803g2rhdqx8S0PeKAjnKHdn2WDM=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV8PR12MB9620.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZytBb1F2SHp6VGhnMWV1aHhVdmFxVSs5aHpFQndTNFM0emJsQ2RUby9hTnJo?=
 =?utf-8?B?blQ0R0xKK2h1cldwaXBJVmFmOFhKYVhZR0RSK2NBVmFKMVRkQVhaT3ZGV21a?=
 =?utf-8?B?a0xTRlpKb1AxSHdlUVQyT0pLcXhhL2JiNEFYbU8vU2VRaGpnZndDSFZQQTlF?=
 =?utf-8?B?dnp5eklNTG10VXJBZC9wck43a0U3czNQTXhRcU0vWUNaSkY4OE9tbzZqbjJv?=
 =?utf-8?B?eWdnR3NxMWl6YkNDK1JMZlAxWGR4TXFQVHZFdXZIbEdsblVhUlYxcThIQzhX?=
 =?utf-8?B?WEZXeG96RWU3c09zSGJjZGptOU85VmRRbml3MTNCODdhaDY1bnQzQnRGbWFp?=
 =?utf-8?B?bzZnUTY2cms3VHJkazNIMFhhNnhIenU4Qjhsd1BqUHY4TVI1RHlXUHlMbGx5?=
 =?utf-8?B?NENNVTNXU0VZT1dROVdhSTdTR3JsYkxTTGc2T2ZTNFpzUTdvYno4RlFKbUNs?=
 =?utf-8?B?SWZKWWRQN01DOXFQd1ZYaWFtbzRkOHBYZzlML3VoSUVJSlMwU0VndURBUE84?=
 =?utf-8?B?Z20wc0N3citBUjQrUHZoUjIrYVhJRHAwK0g1MEZQRFdTNnNJd0pVTFNkV08z?=
 =?utf-8?B?Z1N1QUZSZHkxUDE0NGdvdFdoZzRpZ1k3SW9oaW16YU5Hanp3K3NkdzdXV1V3?=
 =?utf-8?B?MVc1WFBMQ2IvMWRXbnVKS0NtTmNhd3plVUtRR04xaHdleHJIcS9FbkcvanEx?=
 =?utf-8?B?YjZHdnlFNXVlb0VQSGQxZVNzVmtVNW5mWjN3NG1pcWpwQnFHZ3ZLZjBUKy80?=
 =?utf-8?B?VUtSWWV0dlNOYUYvNGVvNG5KZUpiUVFjMVkzc1EyWGJLTlVkdEw0MFdHUlpE?=
 =?utf-8?B?cFJ6bEwwMWV1bEluZzJnMncyNWVCZEVEcDN5eVBjV3hKYUQ3bnVlTWVaY3c5?=
 =?utf-8?B?R05OWndRMmhPK3lCZEl2b2ZiSGhvN2xsWkZKSGdlWVlRREprcmtmMXlXSGtp?=
 =?utf-8?B?YzBQdGZpdjB1eGxnNG44aHQ3eEQwVmQ2a2hVcEo5MjlrL0VQS21pNVlZM3pq?=
 =?utf-8?B?Z01MaEdNZXF3OXNmVXFYMnJXZ1lrUDltcDRPMUI2eXRXcU5rcURpTEoxbkVs?=
 =?utf-8?B?bUVKaVlXU211eUxqRmc5RFp6SEc3ellCWVRYZnVqZEcrbWJ3VzNUVFl4bDdW?=
 =?utf-8?B?WUV4NUxDVnFNV0t6bjJzQnkrTU55VzFkb25ROWViTWViNDY1T0RIK09PT1Zi?=
 =?utf-8?B?ZkJ0c240SlpPNGZ2V01nTmRJeVhrRDIydWdCeEhSZnZwZ0crT05Ub3Jic1Vu?=
 =?utf-8?B?VjNielVqVUhTRndYaG9oMzR0TWhObElWVFExbHBzNGFNaGlqeFVmTGM2QndS?=
 =?utf-8?B?L3FtUWQyeVh0OVZmU2RJWE5wOVZaQkYyTk1hRFJhTlpmdXB2anROaVBpOGhv?=
 =?utf-8?B?eHdLbC9HSHlVdi9ySmxBQ0tOKzZFVWdaWitHZUVIQ0ZrWjZIZmlUSExlWk16?=
 =?utf-8?B?dSs2ckNMQ0VKeWZxUDBtWEgzbytGeG1BalFqMzZ5WTV3TlBQeklBcVFLKzYx?=
 =?utf-8?B?NFQ0dzV6YTBGamJIczI3dG5XQ0Fsc2U0VFlNUk1nWjhDTHZJVGoyWmE4R1Zk?=
 =?utf-8?B?MXdEM0IyYlMwdno2d0wxQkFvZXVJWXVRQi9oVkNGNEhpdFpkc0dIQldBZUlk?=
 =?utf-8?B?OE5raExjYjI0VFhJcXVVd2t6MHI1azdRc0VjMXRGb1ZjdEN2dWZUaC9LR2Zp?=
 =?utf-8?B?WGxMUDBqUDZKSkN3Tkh1bjJ5eE45c28xUDg5dkRjVGZBb1lvRWEwVVFnbjJi?=
 =?utf-8?B?Wjg2Vi92STcyVWhhSlZ5U0h5c1FDdmRjRzRkZEg5ZVBCaExtWWVmVzZTcHRq?=
 =?utf-8?B?UkhaOUlNUXg1SVEyVWRsSE5FSG1OczZmOHJvemhEelQwc2JMZmVFUldIL1py?=
 =?utf-8?B?dTlUU3Zic21DdDdGd1A3aCtldHdHalBWblJQWCtJU2NyQjVSeUVFb2ZOeFkr?=
 =?utf-8?B?anVielhTclo1MGVYTzJsRUtBcmlyK1h4OG14SVZndWl5TkVWYVo2UWlOOXNv?=
 =?utf-8?B?emN6U095VWplenROTSs0K1ZDdHhuTklrSHNSYU5VUGs5SVBvZEZKOTR3Zll2?=
 =?utf-8?B?eGtCdThtRWRoWEtHQkZXNDhLTHNYR3UrWDRQcUtNOEhMQzZJWGdhaDFwWi9j?=
 =?utf-8?B?ZmRoRlcxaUlYZllVRGwwbVMrRXJJT1lZU2ZBYWhMVzVzaytyS2VBdWhwVGFZ?=
 =?utf-8?B?SEFTUkxKN2cwYVhpQWQ0dW5oVTF6RnF3WGpUK3ZUMEdtaHg2dit2cmlheDBs?=
 =?utf-8?B?TzNKeHNYOVhyTGJlZ1VRbnk3aFdYZm1FaEZDY0ZYRS9LQ2VyTy9mV0NMVEpj?=
 =?utf-8?B?Z3ZrckJXajAyMTNXeDBxcm1UdUFhL0ttVjZTSEtacTNHOUJGNGswUT09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8027fd16-94a7-4e7c-4793-08de75ff9bcf
X-MS-Exchange-CrossTenant-AuthSource: LV8PR12MB9620.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2026 12:56:22.5914
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /mhAyJz+8wAzPrBwwSGRimc+zenJX2KahD9daxA+NOuPFk8kDUdb9wzjmh+eVNha
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4468
X-Spamd-Bar: ------
Message-ID-Hash: SILJYGKQL6OR55H5ED45YO7LSIBD3GNO
X-Message-ID-Hash: SILJYGKQL6OR55H5ED45YO7LSIBD3GNO
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Matt Evans <mattev@meta.com>, Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Alex Mastro <amastro@fb.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 4/7] dma-buf: uapi: Mechanism to revoke DMABUFs via ioctl()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SILJYGKQL6OR55H5ED45YO7LSIBD3GNO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[nvidia.com : SPF not aligned (relaxed),reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[Nvidia.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.973];
	FROM_NEQ_ENVFROM(0.00)[jgg@nvidia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 5C4621B7623
X-Rspamd-Action: no action

T24gRnJpLCBGZWIgMjcsIDIwMjYgYXQgMTE6MDU6MjRBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gT24gMi8yNi8yNiAyMToyMiwgTWF0dCBFdmFucyB3cm90ZToNCj4gPiBBZGQg
YSBuZXcgZG1hLWJ1ZiBpb2N0bCgpIG9wLCBETUFfQlVGX0lPQ1RMX1JFVk9LRSwgY29ubmVjdGVk
IHRvIGEgbmV3DQo+ID4gKG9wdGlvbmFsKSBkbWFfYnVmX29wcyBjYWxsYmFjaywgcmV2b2tlKCku
ICBBbiBleHBvcnRlciByZWNlaXZpbmcgdGhpcw0KPiA+IHdpbGwgX3Blcm1hbmVudGx5XyByZXZv
a2UgdGhlIERNQUJVRiwgbWVhbmluZyBpdCBjYW4gbm8gbG9uZ2VyIGJlDQo+ID4gbWFwcGVkL2F0
dGFjaGVkL21tYXAoKWVkLiAgSXQgYWxzbyBndWFyYW50ZWVzIHRoYXQgZXhpc3RpbmcNCj4gPiBp
bXBvcnRlcnMgaGF2ZSBiZWVuIGRldGFjaGVkIChlLmcuIHZpYSBtb3ZlX25vdGlmeSkgYW5kIGFs
bCBtYXBwaW5ncw0KPiA+IG1hZGUgaW5hY2Nlc3NpYmxlLg0KPiA+IA0KPiA+IFRoaXMgaXMgdXNl
ZnVsIGZvciBsaWZlY3ljbGUgbWFuYWdlbWVudCBpbiBzY2VuYXJpb3Mgd2hlcmUgYSBwcm9jZXNz
DQo+ID4gaGFzIGNyZWF0ZWQgYSBETUFCVUYgcmVwcmVzZW50aW5nIGEgcmVzb3VyY2UsIHRoZW4g
ZGVsZWdhdGVkIGl0IHRvDQo+ID4gYSBjbGllbnQgcHJvY2VzczsgYWNjZXNzIHRvIHRoZSByZXNv
dXJjZSBpcyByZXZva2VkIHdoZW4gdGhlIGNsaWVudCBpcw0KPiA+IGRlZW1lZCAiZG9uZSIsIGFu
ZCB0aGUgcmVzb3VyY2UgY2FuIGJlIHNhZmVseSByZS11c2VkIGVsc2V3aGVyZS4NCj4gDQo+IFdl
bGwgdGhhdCBtZWFucyByZXZva2luZyBmcm9tIHRoZSBpbXBvcnRlciBzaWRlLiBUaGF0IGFic29s
dXRlbHkNCj4gZG9lc24ndCBtYWtlIHNlbnNlIHRvIG1lLg0KPiANCj4gV2h5IHdvdWxkIHlvdSBk
byB0aGF0Pw0KDQpUaGV5IGFyZSBidWlsZGluZyBhICJ2ZW5kaW5nIHByb2Nlc3MiIHRvIHdyYXBw
ZXIgVkZJTy4gVGhleSB3YW50IHRvDQpzZW5kIGEgbGl0dGxlIGJpdCBvZiBNTUlPIHNwYWNlIHdy
YXBwZWQgaW4gYSBETUFCVUYgdG8gc29tZSBvdGhlcg0KcHJvY2VzcyBvdmVyIGEgdW5peCBGRC4g
QXQgc29tZSBsYXRlciBwb2ludCB0aGUgdmVuZGluZyBwcm9jZXNzIHdpbGwNCndhbnQgdG8gcmV2
b2tlIHRoZSBNTUlPIHNvIGl0IHdpbGwgaXNzdWUgdGhpcyBJT0NUTCB0byB0aGUgRE1BQlVGIEZE
DQppdCBoZWxkIG9uIHRvLiBUaGF0IHdpbGwgcmVuZGVyIHRoZSBGRCB1bnVzYWJsZSB3aGVyZXZl
ciBlbHNlIGl0DQpoYXBwZW5lZCB0byBnby4NCg0KSSBoYWQgYSBzaW1pbGFyIGRpc2N1c3Npb24g
YWJvdXQgb3RoZXIgaW9tbXUgZmVhdHVyZXMgd2hlcmUgdGhleSB3YW50DQp0byBpbnNlcnQgc2Vj
dXJpdHkgcHJvdG9jb2xzIGludG8gdGhpcyB2ZW5kaW5nIHNlcXVlbmNlLg0KDQpJREsgaWYgdGhp
cyBzaG91bGQgYmUgZ2VuZXJpYyBETUFCVUYgb3Igbm90LiBBbm90aGVyIG9wdGlvbiBpcyB0byBh
ZGQNCmEgbmV3IFZGSU8gaW9jdGwgdGhhdCBkb2VzIHRoZSByZXZva2UgYW5kIHRha2VzIGluIGEg
RE1BQlVGIEZELiBJZiBpdA0KaXMgYSBWRklPIERNQUJVRiBGRCB0aGVuIGl0IHdpbGwgcmV2b2tl
IGl0IGFzIGRlc2lyZWQgaGVyZSB1c2luZyB0aGUNClZGSU8gbWFjaGluZXJ5Lg0KDQpKYXNvbg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5h
cm8ub3JnCg==

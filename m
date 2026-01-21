Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uMaOM5oM4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:21:46 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 78911411A11
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:21:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8C33C4096A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:21:45 +0000 (UTC)
Received: from CH1PR05CU001.outbound.protection.outlook.com (mail-northcentralusazon11010025.outbound.protection.outlook.com [52.101.193.25])
	by lists.linaro.org (Postfix) with ESMTPS id 5DC6E3F6FF
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 10:08:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=ETXX0heM;
	spf=pass (lists.linaro.org: domain of yishaih@nvidia.com designates 52.101.193.25 as permitted sender) smtp.mailfrom=yishaih@nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V5UsiSB6w5wioa3b58ZjSGFgzcor1teW++NZByvDfdDG5u2UEbsu/SsUFaWxXTZmP97XIb8AuAU1g5D2CEyHgF50QeNUXntRhk7RaoxWB8j5fhOSxL+tXZicvXRlKPJ08o5ztgxO2V1c0HjvkQZdYcGYP2RDX0yKaMl+JYvIr6qbhF4bUyqyh23RDLgDGFywDyd7YBhm/ftgCDoYt8H0UeRDMS8tm0NkhT0LSAai3QjWUWhz38q6L4hiuaccaeMTqxStx5r/Uta9l2JOBfVv0ZS7LWnyCi0TtpcXQ749gcAkMetwmbmi4XjpI2o+82c5ApNku3y9VKgFY/ow1bbBTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oQBpBeThUAXMak56uIpyE2AYV76yFwKtUt+E9SwJmMc=;
 b=D3hYj8mk+aTZm6RVC/xjUNq7BZX05kMZMuql5KBPFPOXFaRNyFqU6WwmWZFeAuB8tvUzI/hxPVSxW/xHvECKGDllYabr39dV8h4ukRlXfA5cjU6eVXrxm9vScw/J3qbpyI6B8+qytapKPt4GMMNqcfaxsg6J1IhGxPXHz0pONk5jqHhxQ2t8LzcVkydzsdtClyu3SATrWw2wTQ4PWqBba2b5hc81e4NhFOe3PoUgJzu1cbG7BFDXrmBiUw49JOKKjilWMIpmtl9/NxKtY8EbqTv/tDGORz8O6TLZOfJv3AXi9hq+yjEQrq4i0NqOdxZjNKc0DFoE8vH8hwsUwN93iA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=ziepe.ca smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oQBpBeThUAXMak56uIpyE2AYV76yFwKtUt+E9SwJmMc=;
 b=ETXX0heMYs++5orGdHLa5WF9EMkdVzRiriOROwJJd5rdDPRyPqssj3PJZ+q7Ug5C8h/e7J04Tf4sQJc2I9T29sVZvGTiZ+77/4vTUyLUw8b/7M3f98qMyoYMx3WxxDJDv1n8N/xFQ3qWxO7VfK929Gyxr642WobVu4gTe6a/DFAE6osPVdxU+WKDIZnf9lOM7xbEgLO7y30RxLUmhPj/DoxyyLPp/qV6vuQTs6wyzVTeFBplhkzA0VIRzIZKaKfYlWOSrg+XHYeWsgBH2u+A2dOIqtJdcDGoQl87zqWtvGlzFkQerX/ttWHrfzGlh2JN4Zsurt+dq3ceVXI6+8iZvw==
Received: from SJ0PR03CA0023.namprd03.prod.outlook.com (2603:10b6:a03:33a::28)
 by SA1PR12MB7366.namprd12.prod.outlook.com (2603:10b6:806:2b3::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.12; Wed, 21 Jan
 2026 10:08:13 +0000
Received: from BY1PEPF0001AE1B.namprd04.prod.outlook.com
 (2603:10b6:a03:33a:cafe::1a) by SJ0PR03CA0023.outlook.office365.com
 (2603:10b6:a03:33a::28) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9542.9 via Frontend Transport; Wed,
 21 Jan 2026 10:08:09 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 BY1PEPF0001AE1B.mail.protection.outlook.com (10.167.242.103) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9542.4 via Frontend Transport; Wed, 21 Jan 2026 10:08:12 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 21 Jan
 2026 02:08:01 -0800
Received: from [10.221.199.162] (10.126.230.35) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 21 Jan
 2026 02:07:58 -0800
Message-ID: <919266de-f5d2-4f76-8c7f-1aeb55ad99cf@nvidia.com>
Date: Wed, 21 Jan 2026 12:07:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jason Gunthorpe <jgg@ziepe.ca>, Edward Srouji <edwards@nvidia.com>
References: <20260108-dmabuf-export-v1-0-6d47d46580d3@nvidia.com>
 <20260108-dmabuf-export-v1-1-6d47d46580d3@nvidia.com>
 <20260120181520.GS961572@ziepe.ca>
Content-Language: en-US
From: Yishai Hadas <yishaih@nvidia.com>
In-Reply-To: <20260120181520.GS961572@ziepe.ca>
X-Originating-IP: [10.126.230.35]
X-ClientProxiedBy: rnnvmail202.nvidia.com (10.129.68.7) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY1PEPF0001AE1B:EE_|SA1PR12MB7366:EE_
X-MS-Office365-Filtering-Correlation-Id: a9a8aa0c-9bc7-4e8e-fc07-08de58d4fc89
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|36860700013|376014|1800799024|82310400026;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?UWR2MklMT1RuSVMraVhkNDhMazlrSDI3SitqdVM0MEdHTjZIam51em9meE9x?=
 =?utf-8?B?TGVxa2g2VVE5Sy84THFLZFp5VXJVd1drUWtkazhNaVBFcU5JblljeGllZmlk?=
 =?utf-8?B?eE1SbEV2REc0dm8zZlV3VXNzSklHOEEyZzFKSFFsZ3djaURsZ05QSFFTa0gr?=
 =?utf-8?B?YXcyNmxueXBBclhrTmFEWGI2c1B0WkozNkRqQklJeldaNXEzRnNVc0xXd0N2?=
 =?utf-8?B?WE93a0Y2ajZtb2MzMzQ0dlJLenBOTUw4dU9NekYwTTZnSWpkWldyYmJFUVZp?=
 =?utf-8?B?T0lkWGpGNTdiM2lGcWZVQWMyWVM3MXlLKzRRT2NPSkNJVGNraXVnY0g0RXpy?=
 =?utf-8?B?N3ovdi94dFRKclluVVZJRU11Yk5Pb2t4eDN4WW8rRU5SUmtKOG5pOW4yZFUw?=
 =?utf-8?B?R01xVDJWY3o2N1JuUFVZdkk4SmxjOEMvM0ttSGIrVXgrNUxlNE91WWFLUTFi?=
 =?utf-8?B?R2crb1dVKytLWmtRemJIM3VlbDdTZ04zMlFIb1l3STluUG5uZUh0ckUvc3J5?=
 =?utf-8?B?RElnWnNTdFhEQkFqVXNJbmw1ZVlWY3haNXdKMnFwUVMrQ21TZWQ1WFRMWkFE?=
 =?utf-8?B?V0U0WU0xN0xWVmgzUkRBOGtDbk1NQ1VDVUo4SjlBTlBTYmdDQ1V4ZElxdytQ?=
 =?utf-8?B?UU5xM200ZUhUQ3FKQXVFRzRWVUI2bzNUcnlZYXNhb1A3ckNZb1NkZlNiM3p0?=
 =?utf-8?B?cXNZTTBCQmpsV1pBNkF5OHFzcXUzUmhPQXp6T3lJcEgxV2x2ZWZiRXdXRlhx?=
 =?utf-8?B?MDdVaTY1N2xtdTVTVndlRXFkd1cxdzF0bmpkNk1XSE1qWGdUNW5qQmxJTGtm?=
 =?utf-8?B?dk5iYm9ST05BVWFxSFQ2YUFKcmlkMjNtMUhaRVQ5VG1FN0IzK1pUQjFjSklB?=
 =?utf-8?B?R2V6SnlTc3o1ZmpIdk85NjJjT0FsNGUvTXJPaVFzekhkQitTMEUwNWpGTjBQ?=
 =?utf-8?B?V1cwMnZDTjlqQkVmRUNwdWl0L01aQkpzMmdmQmtkSmFSMG51UU9wMWM1MzIr?=
 =?utf-8?B?citqVHNEeU05SVRjajZIQ2RCbEFpUlI2aSt3cm5UVk13U3BqWnZrZUczMDNC?=
 =?utf-8?B?cWlxcUxnUTFLNnpwV0dsSjBsYVdkMHdUQkUvM3l1RTZCM0UrWWVKL3JUMmtq?=
 =?utf-8?B?akhXQUh3MThQNFd4UTUwUHZORlNXQXFrNFRTVGR2a1dvNk15RjRRaU1FM3JB?=
 =?utf-8?B?MDNhTkNtcDQrY295RmdNbUh2NEp5VmJ1ZmZvTVpxME5TeUNjK0o3cnhPeUti?=
 =?utf-8?B?c3VmRTJwYldsUE9KNitRanRaSzE5YkZSdENWVE5HOG1VNW50RmxzbzJESFY2?=
 =?utf-8?B?ZWdyVWdlaVRMU2Zoc3FFdDFxN2NxK3hMWHBXWWtsYjBVQkV2WVVNcGh4bDB1?=
 =?utf-8?B?MFpjc21HaW9ub1czUkNnbTI4Q1krNWV5OERFbzYwMUlnVnVmLzFxbVp5YzR6?=
 =?utf-8?B?bWR2U2Q4V0QwUUg2TFB6WHVIenNQK1d3akY4TThEUHY3dGFOL3ZUY0tMYWc3?=
 =?utf-8?B?dzNwVStnRnpSRkdDdXZaKzZMeFFzTzExVDBtTkZxTnRRdTZnK2p6cGhQbExH?=
 =?utf-8?B?aDBHWkNzMzh1WlhjR3o4YkprMFpNdXFEdUVTeFJWbHo0SW5BRkg5SnpwSmlR?=
 =?utf-8?B?S040NVI3WkozYXFsYzdFS0ZPQW1CeDRtaVdrUmxndllweXFBSjg3Nm8zenZW?=
 =?utf-8?B?V25sdTVvMTAybUtSRjNIalhLcGhvSEN3QkxXdk5Udmh2bGs3dTR6TW1oUHZ2?=
 =?utf-8?B?OUJZZ3dhNUpObTZHbm1NMEY0RTlLMTlZR2xNZFM0Z1BpQmRXM1VuYi9penU4?=
 =?utf-8?B?UFJpR256NWg5RnFPM1J3MHhiUEhmbHNEamlIUGZ2Ymw5b2Z0MnluQUFsMURx?=
 =?utf-8?B?NlVPVmZzUTFYOS92Ymx3K1lFSHpMM2c0MGlLU1B0SU04cUVMa3E1am1Pblcx?=
 =?utf-8?B?a3pveC9CbEpuc0d2blZVQ0VNWnBzcjYwUmJiQnRsTHZJMHp5UStPYUFvR05u?=
 =?utf-8?B?TzJRVWZJaXhvb3dTL05jNE5iYkV0YVh6OFRWcXVQVU1CVkJseERDT3MrNFl6?=
 =?utf-8?B?b2tyRzVwWDhuVlVDVSt5RnhuTkhDbkVMeVd0cEpIZEp3QkZrN3VuVlZZdGhI?=
 =?utf-8?B?V2k1Z2JWQU5ndEJ1WWV1dHpuUmV1clViOURSdDNNWkhITVpFQklmczhvRUk5?=
 =?utf-8?B?YlZGVzdzcWVodmw3R3ZxTnU3R2tSU3Bqa3hVY3ZkcERWSUVxR2FnQkYvNWFv?=
 =?utf-8?B?V2J3NEF4dWNNbzJ6QlRZOFgrVXNnPT0=?=
X-Forefront-Antispam-Report: 
	CIP:216.228.117.160;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge1.nvidia.com;CAT:NONE;SFS:(13230040)(36860700013)(376014)(1800799024)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2026 10:08:12.5580
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a9a8aa0c-9bc7-4e8e-fc07-08de58d4fc89
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.160];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	BY1PEPF0001AE1B.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB7366
X-Spamd-Bar: ------
X-MailFrom: yishaih@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: SL6KWHEEQFPOBH35OEFT62M3NW6NMIWS
X-Message-ID-Hash: SL6KWHEEQFPOBH35OEFT62M3NW6NMIWS
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:12:16 +0000
CC: Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-rdma@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH rdma-next 1/2] RDMA/uverbs: Add DMABUF object type and operations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SL6KWHEEQFPOBH35OEFT62M3NW6NMIWS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [4.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[nvidia.com : SPF not aligned (relaxed),reject];
	DATE_IN_PAST(1.00)[2046];
	R_DKIM_REJECT(1.00)[Nvidia.com:s=selector2];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,nvidia.com:mid];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_XOIP(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yishaih@nvidia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:-];
	NEURAL_HAM(-0.00)[-0.985];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 78911411A11
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMjAvMDEvMjAyNiAyMDoxNSwgSmFzb24gR3VudGhvcnBlIHdyb3RlOg0KPiBPbiBUaHUsIEph
biAwOCwgMjAyNiBhdCAwMToxMToxNFBNICswMjAwLCBFZHdhcmQgU3JvdWppIHdyb3RlOg0KPj4g
ICB2b2lkIHJkbWFfdXNlcl9tbWFwX2VudHJ5X3JlbW92ZShzdHJ1Y3QgcmRtYV91c2VyX21tYXBf
ZW50cnkgKmVudHJ5KQ0KPj4gICB7DQo+PiArCXN0cnVjdCBpYl91dmVyYnNfZG1hYnVmX2ZpbGUg
KnV2ZXJic19kbWFidWYsICp0bXA7DQo+PiArDQo+PiAgIAlpZiAoIWVudHJ5KQ0KPj4gICAJCXJl
dHVybjsNCj4+ICAgDQo+PiArCW11dGV4X2xvY2soJmVudHJ5LT5kbWFidWZzX2xvY2spOw0KPj4g
ICAJeGFfbG9jaygmZW50cnktPnVjb250ZXh0LT5tbWFwX3hhKTsNCj4+ICAgCWVudHJ5LT5kcml2
ZXJfcmVtb3ZlZCA9IHRydWU7DQo+PiAgIAl4YV91bmxvY2soJmVudHJ5LT51Y29udGV4dC0+bW1h
cF94YSk7DQo+PiArCWxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZSh1dmVyYnNfZG1hYnVmLCB0bXAs
ICZlbnRyeS0+ZG1hYnVmcywgZG1hYnVmc19lbG0pIHsNCj4+ICsJCWRtYV9yZXN2X2xvY2sodXZl
cmJzX2RtYWJ1Zi0+ZG1hYnVmLT5yZXN2LCBOVUxMKTsNCj4+ICsJCWxpc3RfZGVsKCZ1dmVyYnNf
ZG1hYnVmLT5kbWFidWZzX2VsbSk7DQo+PiArCQl1dmVyYnNfZG1hYnVmLT5yZXZva2VkID0gdHJ1
ZTsNCj4+ICsJCWRtYV9idWZfbW92ZV9ub3RpZnkodXZlcmJzX2RtYWJ1Zi0+ZG1hYnVmKTsNCj4+
ICsJCWRtYV9yZXN2X3VubG9jayh1dmVyYnNfZG1hYnVmLT5kbWFidWYtPnJlc3YpOw0KPiANCj4g
VGhpcyB3aWxsIG5lZWQgdGhlIHNhbWUgd2FpdCB0aGF0IENocmlzdGlhbiBwb2ludGVkIG91dCBm
b3IgVkZJTy4uDQoNClN1cmUsIEknbGwgYWRkLg0KDQo+IA0KPiANCj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2luZmluaWJhbmQvY29yZS9yZG1hX2NvcmUuYyBiL2RyaXZlcnMvaW5maW5pYmFuZC9j
b3JlL3JkbWFfY29yZS5jDQo+PiBpbmRleCAxODkxOGY0NjMzNjEuLjNlMGE4YjljZDI4OCAxMDA2
NDQNCj4+IC0tLSBhL2RyaXZlcnMvaW5maW5pYmFuZC9jb3JlL3JkbWFfY29yZS5jDQo+PiArKysg
Yi9kcml2ZXJzL2luZmluaWJhbmQvY29yZS9yZG1hX2NvcmUuYw0KPj4gQEAgLTQ2NSw3ICs0NjUs
NyBAQCBhbGxvY19iZWdpbl9mZF91b2JqZWN0KGNvbnN0IHN0cnVjdCB1dmVyYnNfYXBpX29iamVj
dCAqb2JqLA0KPj4gICANCj4+ICAgCWZkX3R5cGUgPQ0KPj4gICAJCWNvbnRhaW5lcl9vZihvYmot
PnR5cGVfYXR0cnMsIHN0cnVjdCB1dmVyYnNfb2JqX2ZkX3R5cGUsIHR5cGUpOw0KPj4gLQlpZiAo
V0FSTl9PTihmZF90eXBlLT5mb3BzLT5yZWxlYXNlICE9ICZ1dmVyYnNfdW9iamVjdF9mZF9yZWxl
YXNlICYmDQo+PiArCWlmIChXQVJOX09OKGZkX3R5cGUtPmZvcHMgJiYgZmRfdHlwZS0+Zm9wcy0+
cmVsZWFzZSAhPSAmdXZlcmJzX3VvYmplY3RfZmRfcmVsZWFzZSAmJg0KPj4gICAJCSAgICBmZF90
eXBlLT5mb3BzLT5yZWxlYXNlICE9ICZ1dmVyYnNfYXN5bmNfZXZlbnRfcmVsZWFzZSkpIHsNCj4+
ICAgCQlyZXQgPSBFUlJfUFRSKC1FSU5WQUwpOw0KPj4gICAJCWdvdG8gZXJyX2ZkOw0KPj4gQEAg
LTQ3NywxNCArNDc3LDE2IEBAIGFsbG9jX2JlZ2luX2ZkX3VvYmplY3QoY29uc3Qgc3RydWN0IHV2
ZXJic19hcGlfb2JqZWN0ICpvYmosDQo+PiAgIAkJZ290byBlcnJfZmQ7DQo+PiAgIAl9DQo+PiAg
IA0KPj4gLQkvKiBOb3RlIHRoYXQgdXZlcmJzX3VvYmplY3RfZmRfcmVsZWFzZSgpIGlzIGNhbGxl
ZCBkdXJpbmcgYWJvcnQgKi8NCj4+IC0JZmlscCA9IGFub25faW5vZGVfZ2V0ZmlsZShmZF90eXBl
LT5uYW1lLCBmZF90eXBlLT5mb3BzLCBOVUxMLA0KPj4gLQkJCQkgIGZkX3R5cGUtPmZsYWdzKTsN
Cj4+IC0JaWYgKElTX0VSUihmaWxwKSkgew0KPj4gLQkJcmV0ID0gRVJSX0NBU1QoZmlscCk7DQo+
PiAtCQlnb3RvIGVycl9nZXRmaWxlOw0KPj4gKwlpZiAoZmRfdHlwZS0+Zm9wcykgew0KPj4gKwkJ
LyogTm90ZSB0aGF0IHV2ZXJic191b2JqZWN0X2ZkX3JlbGVhc2UoKSBpcyBjYWxsZWQgZHVyaW5n
IGFib3J0ICovDQo+PiArCQlmaWxwID0gYW5vbl9pbm9kZV9nZXRmaWxlKGZkX3R5cGUtPm5hbWUs
IGZkX3R5cGUtPmZvcHMsIE5VTEwsDQo+PiArCQkJCQkgIGZkX3R5cGUtPmZsYWdzKTsNCj4+ICsJ
CWlmIChJU19FUlIoZmlscCkpIHsNCj4+ICsJCQlyZXQgPSBFUlJfQ0FTVChmaWxwKTsNCj4+ICsJ
CQlnb3RvIGVycl9nZXRmaWxlOw0KPj4gKwkJfQ0KPj4gKwkJdW9iai0+b2JqZWN0ID0gZmlscDsN
Cj4+ICAgCX0NCj4+IC0JdW9iai0+b2JqZWN0ID0gZmlscDsNCj4+ICAgDQo+PiAgIAl1b2JqLT5p
ZCA9IG5ld19mZDsNCj4+ICAgCXJldHVybiB1b2JqOw0KPj4gQEAgLTU2MSw3ICs1NjMsOSBAQCBz
dGF0aWMgdm9pZCBhbGxvY19hYm9ydF9mZF91b2JqZWN0KHN0cnVjdCBpYl91b2JqZWN0ICp1b2Jq
KQ0KPj4gICB7DQo+PiAgIAlzdHJ1Y3QgZmlsZSAqZmlscCA9IHVvYmotPm9iamVjdDsNCj4+ICAg
DQo+PiAtCWZwdXQoZmlscCk7DQo+PiArCWlmIChmaWxwKQ0KPj4gKwkJZnB1dChmaWxwKTsNCj4+
ICsNCj4+ICAgCXB1dF91bnVzZWRfZmQodW9iai0+aWQpOw0KPiANCj4gVGhpcyBzdHVmZiBjaGFu
Z2luZyBodyB0aGUgdW9iamVjdHMgd29yayBzaG91bGQgcHJvYmFibHkgYmUgaW4gaXRzIG93bg0K
PiBwYXRjaCB3aXRoIGl0cyBvd24gZXhwbGFuYXRpb24gYWJvdXQgY3JlYXRpbmcgYSB1b2JqZWN0
IHRoYXQgd3JhcHBlcnMNCj4gYW4gZXh0ZXJuYWxseSBhbGxvY2F0ZWQgZmlsZSBkZXNjcmlwdG9y
IHZzIHRoaXMgYXV0b21hdGljIGludGVybmFsDQo+IGFsbG9jYXRpb24uDQoNClN1cmUsIEnigJls
bCBzcGxpdCB0aGUgY3VycmVudCBwYXRjaCBpbnRvIHR3byBwYXRjaGVzLg0KDQo+IA0KPj4gaW5k
ZXggNzk3ZTJmY2M4MDcyLi42NjI4N2U4ZTdhZDcgMTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL2lu
ZmluaWJhbmQvY29yZS91dmVyYnMuaA0KPj4gKysrIGIvZHJpdmVycy9pbmZpbmliYW5kL2NvcmUv
dXZlcmJzLmgNCj4+IEBAIC0xMzMsNiArMTMzLDE2IEBAIHN0cnVjdCBpYl91dmVyYnNfY29tcGxl
dGlvbl9ldmVudF9maWxlIHsNCj4+ICAgCXN0cnVjdCBpYl91dmVyYnNfZXZlbnRfcXVldWUJCWV2
X3F1ZXVlOw0KPj4gICB9Ow0KPj4gICANCj4+ICtzdHJ1Y3QgaWJfdXZlcmJzX2RtYWJ1Zl9maWxl
IHsNCj4+ICsJc3RydWN0IGliX3VvYmplY3QgdW9iajsNCj4+ICsJc3RydWN0IGRtYV9idWYgKmRt
YWJ1ZjsNCj4+ICsJc3RydWN0IGxpc3RfaGVhZCBkbWFidWZzX2VsbTsNCj4+ICsJc3RydWN0IHJk
bWFfdXNlcl9tbWFwX2VudHJ5ICptbWFwX2VudHJ5Ow0KPj4gKwlzdHJ1Y3QgZG1hX2J1Zl9waHlz
X3ZlYyBwaHlzX3ZlYzsNCj4gDQo+IE9oLCBhcmUgd2UgZ29pbmcgdG8gaGF2ZSB3ZWlyZCBtZXJn
ZSBjb25mbGljdHMgd2l0aCB0aGlzIExlb24/DQo+IA0KPj4gK3N0YXRpYyBpbnQgdXZlcmJzX2Rt
YWJ1Zl9hdHRhY2goc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiwNCj4+ICsJCQkJc3RydWN0IGRtYV9i
dWZfYXR0YWNobWVudCAqYXR0YWNobWVudCkNCj4+ICt7DQo+PiArCXN0cnVjdCBpYl91dmVyYnNf
ZG1hYnVmX2ZpbGUgKnByaXYgPSBkbWFidWYtPnByaXY7DQo+PiArDQo+PiArCWlmICghYXR0YWNo
bWVudC0+cGVlcjJwZWVyKQ0KPj4gKwkJcmV0dXJuIC1FT1BOT1RTVVBQOw0KPj4gKw0KPj4gKwlp
ZiAocHJpdi0+cmV2b2tlZCkNCj4+ICsJCXJldHVybiAtRU5PREVWOw0KPiANCj4gVGhpcyBzaG91
bGQgb25seSBiZSBjaGVja2VkIGluIG1hcA0KDQpQbGVhc2Ugc2VlIExlb24ncyBhbnN3ZXIgb24g
dGhhdC4NCg0KWWlzaGFpDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

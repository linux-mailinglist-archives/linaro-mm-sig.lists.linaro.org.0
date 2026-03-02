Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wLUsEqqIpWmWDQYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 02 Mar 2026 13:55:06 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B44DC1D93FB
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 02 Mar 2026 13:55:05 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6354D3F76A
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 Mar 2026 12:55:04 +0000 (UTC)
Received: from SA9PR02CU001.outbound.protection.outlook.com (mail-southcentralusazon11013030.outbound.protection.outlook.com [40.93.196.30])
	by lists.linaro.org (Postfix) with ESMTPS id 416F33F76A
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 Mar 2026 12:55:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=JbX5qDIr;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=nvidia.com;
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.93.196.30 as permitted sender) smtp.mailfrom=jgg@nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CL81P/TkG7F0IllP7n9O3V3OOy1Jpfpi3f5iJ5iD1qI8jiaKnm0Os6FQClYlg33Pjky4g1sLBcZd7PV93TE90DMEtQdF+MKVA9eE2xX+CS93773MuQI3CnBSzUPrrPHKaIan5+H9yNiLckbmsAoKWh3LcBN0QIYIGzGcBDa392EkhH3tmcJ2qKdMHhiWmXsWHheN/yiGKhpL5fE3B/a+gZHBHVuQzu3qJGPOdpTeAbyXQw5qvoXYuVc7WTcATocXR6avv15xuNtmnkmJRsHVSFn/paZFiUbqQAvXhmQiQ/VmVWzwh0CR0MzpQ3ZUyoxuL1u1XaO1dcQyAYnruN19ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rPZl/abDKnezFpsiB+exKjWt5Mue4jKHqM9QCIFb9Oo=;
 b=agOChGp0Sk6wNMcKmSVxjAsfm1hv7hQDEAxdzv9HwuMjtu/5JtFs9VgTpP5dl0jnun/GmmC0YEsPvmJSqKxjC7iRDPrh4ljk2JCKwjI/YMn9i/oXT8CzvVwr+awxTJcDRugUfqnpcik3Og0FI8IsxY/aqCgTZMxal+Og5SbkCGM1mShG7yxr0mJnHjY3UmTGzhAp9QlFl0LvPQ1KY7TrE3q2OC9wEkVGdODLOyoV3yEqRyKux9X7JdpqjHkINwNW7lMydfCJsyN+LxCc/bSAYwRbgsbuVxBiqb2uYJUYbd3OWyC2geSc+bMU0oxlos9gMUfJn3G4Te9hwgZX1s94yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rPZl/abDKnezFpsiB+exKjWt5Mue4jKHqM9QCIFb9Oo=;
 b=JbX5qDIrkjkrTU1u958VEuDHUiSblgHYhzP4dmowoPVPbgSn4rBRcK4255x9u90Qpsrxk3KuKnQmrHMGjawzQ0sqbaWbJ9CROHvK3G6KVdv6g17OjqYV+sLy7dDiB8NwgS8O80E2Kd6OVoeJjFPpozXXinLOiRyZDvGto3Y3iFX7xsI0kABlEk0d3BIu0ZUdVPxndR170COUzHPGhZ26kE4E/uNhLpjRsyJtaHFVv1dmdIK5D75Krr1Q8rxY7+GOz3/Kf0xx20uUfbQe/IpR5iqXgaZQAN1O2OEcTuRS/sDjycUJgt81e7jKbd+nV4sUeiOZDODxEwwm6zLsvzCtbQ==
Received: from LV8PR12MB9620.namprd12.prod.outlook.com (2603:10b6:408:2a1::19)
 by SN7PR12MB7956.namprd12.prod.outlook.com (2603:10b6:806:328::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.21; Mon, 2 Mar
 2026 12:54:57 +0000
Received: from LV8PR12MB9620.namprd12.prod.outlook.com
 ([fe80::299d:f5e0:3550:1528]) by LV8PR12MB9620.namprd12.prod.outlook.com
 ([fe80::299d:f5e0:3550:1528%5]) with mapi id 15.20.9654.014; Mon, 2 Mar 2026
 12:54:57 +0000
Date: Mon, 2 Mar 2026 08:54:55 -0400
From: Jason Gunthorpe <jgg@nvidia.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20260302125455.GU5933@nvidia.com>
References: <20260226202211.929005-1-mattev@meta.com>
 <20260226202211.929005-4-mattev@meta.com>
 <90bd4185-1e87-4393-b9e1-1318a656a7d9@amd.com>
 <20260227125109.GH5933@nvidia.com>
 <c5a8f318-20af-4d80-a279-2393192108c3@meta.com>
 <20260227194807.GL5933@nvidia.com>
 <aaISD4mw1XzQl1S8@devgpu015.cco6.facebook.com>
 <20260227220427.GM5933@nvidia.com>
 <b729ebe1-aea2-4f45-bb3f-3b4b59078c8d@amd.com>
Content-Disposition: inline
In-Reply-To: <b729ebe1-aea2-4f45-bb3f-3b4b59078c8d@amd.com>
X-ClientProxiedBy: MN2PR07CA0015.namprd07.prod.outlook.com
 (2603:10b6:208:1a0::25) To LV8PR12MB9620.namprd12.prod.outlook.com
 (2603:10b6:408:2a1::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR12MB9620:EE_|SN7PR12MB7956:EE_
X-MS-Office365-Filtering-Correlation-Id: d6eef778-d94c-45ae-2b71-08de785ae7e2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	91tnT4rqsKcrJymd+suQ7zTRcsRiEskApNZRgeVjPF/UcrCKPySL4pAIMR4bUlf6s3pbw78Q+EUJSQsAs3ldSi6Oh9qHc9588d5hjIF2LoBYnQmlHu6hATZFEMd55homJ3j1B9drHyCTbVVocQhg/T4ws2D9EgGRLmt9yZ4LOAIHmNGb9IcEwo3HGCbNsGayuyPPQ7gXKsDEl3KtbpF/lplcpErDDm/EMMDW8tz4FDqxWeyoxlmddztzZPyJkJtEnljmBChzjHI1wlG7ybfe8i7lOUwlXluAH3hBdk1KAU+pnLD89ZC6SWmWsnBcsWkswnBpWzFQCFaGYwrDOImttimUTIceSOsvYBrj2jHOmTNTTgqViJ84RHSpMA4lXPOcKTFGgDTGyfoV+1oxlQOum9sV+C8MgAaYDJEqh88OI7IWA+1+nxxA90PqoTePcSzLXOPmpvFdDW4xjSnuP4/ASxRJwNwkQC8tGoc0XNkcXycwzZfAFaCDzdmA/8OtPwV0esBnOebLbRsSzpRdFJaYTJqd+4Efh7N8HgjMcxT9PDgyQaGkOPJXWQS1xXRqKjwSiD/zl4BG4XylkPK9iihTyVxWAvW0z0CjOMN2kPir/wJvMIBXfPbwCHE+DQNlqQO8rt2b6uTQRX2UGyZlUeGfIFPC97+/uD62AbckcqIZJuKdMdN2uVNCgpO5wa03lsMcQy6UNOlV8CVRA0sUgJptxoZqxucRkTBsm3nsaX4gBcw=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV8PR12MB9620.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TG14RzdoNUVxRTNqdUZzN1VHR0lUTEV3WUltT0o5aG5ZSVQ2cXkrcHRUNkVT?=
 =?utf-8?B?cm9NRnNsTFhSZ1drUFdOVEl2dVVrenY1YTJ1aEMrT25qN1dvM1FZMklqS3ZW?=
 =?utf-8?B?S2tCTlRXUW5zRjFFOEZtbzZWbDJOOTdjSDBWNm5IZ0pSM2p5UVZNNG5qeTJa?=
 =?utf-8?B?a0pvK0dBbUxFU2I5NkV6Tk4rL29VdHJJZzFtRnFUWkdkc1F0OS9RV1dBNWor?=
 =?utf-8?B?WFRKaEpTb01lbEhvKzdXWDl5WGhIOWhuOS9nQzRlTEdmeDQ2NEhXV3JVdUJy?=
 =?utf-8?B?NS9xRjVwQlRNZmVsRFVGZ1Y5YW9ZQ3BEOHNXc2poRTlSUnRNSGFDR3VOL3VD?=
 =?utf-8?B?MmRmbEo0S0lpQTlWNEVSTkpnZHZiVmJHcGxZZ1JkamxQYVgzV0RGeFJwWnV6?=
 =?utf-8?B?NnBhSHZBVS84OC9rci9MYTNvUFRvQVdVdlFwdGd5dXJReHAwS1VGZjZqcit5?=
 =?utf-8?B?bEVtL0l1RUN5VHR0Y3piWmNiKzJod1RQeDFjMFYyNldCT1oyR3c4dUhFcnZs?=
 =?utf-8?B?Qy8rQ1VBa2RpTmJJTEt0R21mc1BscURpSkxJOUNJZXpVME1PcU8wRW1ZbGlp?=
 =?utf-8?B?bEhlMGc3UWF1NmxRNW1GYmtwc1NLM0JFUlJaN2JxSjBHQ1JMOXZZYkR6VElD?=
 =?utf-8?B?OU5xQy9tczM5RzdmbE93clN5SXRrMEEzQkJtcFNkc09vQXlEVmE2eHVHcmxZ?=
 =?utf-8?B?YUtaZ1pscTJyL3NFeVZRY3BQME9YeW5uZE8xM2RhbVptNURibm1jdXFuNHdw?=
 =?utf-8?B?YTVuaGRKME40WldoUTRzM1RXamo3eTMyU0djakZMN3FSR0dySW5UVVUvN0E2?=
 =?utf-8?B?Y0lBdHZESzNwNUNsMHUxYzBydGFEZGpZV3RTcHMwalJEaEVKTHJBbEFBQmVv?=
 =?utf-8?B?VWRBNDcxUHpMZXVBYm9oc0FtNHRDNCtXaVFFSkRiTVdlTkh3RjF3ejFpdmVN?=
 =?utf-8?B?RHk3ektjaGQ5RUNuWDZvVkgxejkvRUlHT2pNSW1yN0lmVkNoR1Jwam5LcHo4?=
 =?utf-8?B?RmRsUzhkS1dUaXV4UVJWaTJSSXlNQUZTd01zWWdPTTk5YXV1V2lvZTd0RS9B?=
 =?utf-8?B?OU9kbW41aS83NUN5MlFXak1IMEsyc0lFaVBMbkRSOHpQODBTYlpwczQvNUhh?=
 =?utf-8?B?OE5NNlpsc0NMTldtVE92Y3dpcE45enpPdzRzQmV0REcwUTlQTllwclpuSGVO?=
 =?utf-8?B?MUkzYjFQdGV0Ukg5bXBXRFZ3VUxVNWZUT0V5RThHa0JnYWJJTnY1OC9iUHRX?=
 =?utf-8?B?Y1ZWaEk5UVFrVmIxVXM5YjNWb0prRlJ0V0NCR1Bvam1tY0dtaUtPV0d1bmtu?=
 =?utf-8?B?OEhRdlo2RUFuUURhelUzRXlaRXlWdHdDUFY4N21LbllvQ1RRQjhDMHJRNlJr?=
 =?utf-8?B?Z3JSd2FuSUVrdi8zWkVrSlZSYlIvMG1TajE4VEkyaGFJUWNCVUtxcldnNlZ1?=
 =?utf-8?B?MUk2MzZ6S1k3eTNpTkpKWVU3WXFFcG5yY1JJcGJJbVE3MGZGLzl4a3BTcDJT?=
 =?utf-8?B?YmxaK3U3UTJqTjdRVG5Uc1JHMXhldGV4dW5WdUl1dDBRbzM4dldKRURycFcy?=
 =?utf-8?B?TmJiRXUrdzlrUGFKbjlRQzl0b012SCt0bVdwMklKTWVyVzNpbWwwNjlXZU0r?=
 =?utf-8?B?UjhPdVc3Zk5lbXQvaDNEYTNrS0Z0MGJxUS81ZXZkWk5CVHZRVnlEUEhMT045?=
 =?utf-8?B?c0RpYzF1Um4vTXNqWVpJcUp5Ky9DL2ZBdXpDdmxmUE1BeVA3ZUU5NS8wRjJt?=
 =?utf-8?B?dW5Wb3FjZGptRXd5ZUsvZTgvcVNLaDlsS09HaWJUdkhZTU5IRitCZE1Bai9z?=
 =?utf-8?B?YXZkc0ttVUQ1Y3hTOC92SlRQcVlzTHE5ZXJpUUZoT1J6ZDI1SUlsU0lPeHdw?=
 =?utf-8?B?TTVaaVBQWFlLK0tOa1Y5aisrM24vMGFSMWVnOW9RWmZjOGhmSzRVNmJTbCt1?=
 =?utf-8?B?RjJLM3BZbUJCTWhzQWxRSzEzV05mVzNKa2xza3J5bkMwUWttWUluR3pNV25o?=
 =?utf-8?B?c3V6eHAvbVRCdFZoZHZmdHB0ZFZlQ3ovdjlzdlJ1dVJ4aTVZVUxRWGJVTmk4?=
 =?utf-8?B?WUJPQXd6RVJaUFZrQ2J6aEJMdkxMUjJWNjlzN1FBeUVObk96UTRzVW9jNUFm?=
 =?utf-8?B?U05jY3lBRlFjWG5OSG1xZVJqOCt5dEpwZmpWWXNzOEtKOFBqaW0wNDZMVGlB?=
 =?utf-8?B?VS9LVGFNbzByMHZXbkx6bUdWdVpzOFJ5ei8zQUtwRStCUDB1NTVzWS8zck44?=
 =?utf-8?B?OWFkT21zMkRpejd5MHhlYmtjbGN5SEEyZXc0Q2w0NXZTRThwSWE2RkFHeHFR?=
 =?utf-8?B?S1dmVVhmQjlGNmxHc01tajZIZDNYRDlpY1VxV1RQcVhFcU1Ld3JKdz09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6eef778-d94c-45ae-2b71-08de785ae7e2
X-MS-Exchange-CrossTenant-AuthSource: LV8PR12MB9620.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2026 12:54:56.9678
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Yy1IXs0MI4K41j4oDL6JocmCuRqYG5nEvo+/EUB0uBPlAqALm5/r0iVK1nsSJXxC
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB7956
X-Spamd-Bar: ----
Message-ID-Hash: NQL6MPQJSBKI7HGTM5PHGWX2RLOMSE6P
X-Message-ID-Hash: NQL6MPQJSBKI7HGTM5PHGWX2RLOMSE6P
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Alex Mastro <amastro@fb.com>, Matt Evans <mattev@meta.com>, Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 3/7] vfio/pci: Support mmap() of a DMABUF
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NQL6MPQJSBKI7HGTM5PHGWX2RLOMSE6P/>
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
	NEURAL_HAM(-0.00)[-0.946];
	FROM_NEQ_ENVFROM(0.00)[jgg@nvidia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:mid]
X-Rspamd-Queue-Id: B44DC1D93FB
X-Rspamd-Action: no action

T24gTW9uLCBNYXIgMDIsIDIwMjYgYXQgMTE6MDc6NDFBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCg0KPiBBcyBmYXIgYXMgSSBrbm93IGJhY2tncm91bmQgaXMgdGhhdCBvbiB4ODYg
cHRlX3NwZWNpYWwoKSBvbmx5IHdvcmtzDQo+IG9uIHRydWUgbGVhdmUgcHRlIGJ1dCBub3QgcG1k
L3B1ZC4NCg0KVGhpcyBpcyBub3QgdGhlIGNhc2UsIHRoZXJlIGFyZSBwbWQgYW5kIHB1ZF9zcGVj
aWFsIGFzIHdlbGwsIHByb3RlY3RlZA0KYnkgQ09ORklHX3h4DQoNClRoZSBhcmNoIHNob3VsZCBu
b3QgZGVmaW5lIENPTkZJR19BUkNIX1NVUFBPUlRTX1BNRF9QRk5NQVAgaWYNCnZtZl9pbnNlcnRf
cGZuX3BtZCgpIGRvZXNuJ3QgcmVzdWx0IGluIHBtZF9zcGVjaWFsKCkgd29ya2luZywgZm9yDQpl
eGFtcGxlLg0KDQplZzoNCg0KIHZtZl9pbnNlcnRfcGZuX3BtZCgpDQogICBpbnNlcnRfcG1kKCkN
Cg0KCWlmIChmb3AuaXNfZm9saW8pIHsNCgkgICAvLyBOb3QgVGFrZW4NCgl9IGVsc2Ugew0KCQll
bnRyeSA9IHBtZF9ta2h1Z2UocGZuX3BtZChmb3AucGZuLCBwcm90KSk7DQoJCWVudHJ5ID0gcG1k
X21rc3BlY2lhbChlbnRyeSk7DQoNClRoaXMgc3R1ZmYgd2FzIGFsbCBwdXQgdG9nZXRoZXIgYnkg
UGV0ZXIgc3BlY2lmaWNhbGx5IGZvciBWRklPIHRvIHVzZSwNCkFGQUlLIGl0IGlzIGNvcnJlY3Qu
DQoNCklESyB3aGF0IFRob21hcyB3YXMgdXNpbmcsIGJ1dCBpZiB5b3UgdHJpZWQgdG8gZG8gaHVn
ZSBmYXVsdHMgYmVmb3JlDQphbGwgb2YgdGhpcyB3YXMgYnVpbHQgaXQgZGVmaW5pdGVseSB3b3Vs
ZCBub3Qgd29yayByaWdodCBhcyBpdCBvbmx5DQpzdXBwb3J0ZWQgYSBmb2xpbyBiYWNrZWQgcGF0
aC4NCg0KSmFzb24NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=

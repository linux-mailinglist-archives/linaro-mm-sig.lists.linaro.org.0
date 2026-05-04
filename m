Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wL/7C05H+GmesAIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 04 May 2026 09:14:22 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D244B9365
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 04 May 2026 09:14:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2E8D0409B4
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2026 07:14:20 +0000 (UTC)
Received: from BN1PR04CU002.outbound.protection.outlook.com (mail-eastus2azon11010061.outbound.protection.outlook.com [52.101.56.61])
	by lists.linaro.org (Postfix) with ESMTPS id EBF69409AD
	for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2026 07:14:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=XZjDas2O;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.56.61 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gq10awCoJJKWUeWc0PE5Ip6Ml365LQ++qnr00yQsnBisU2/RPCUfyrZzToMpRjFmwTS2JfFzq7H5NDgovSVz9KUT8AfI4ky1pR+o6iSjjjMx3mjL5j+ZULRDcHQgKUSJUmVuhkkPcd7fTc5x4d7HolkJfpmWdZ6d7OPyoR/BCQyK/1+pOBjAU+qS/QXQdqMjX/rtdPppY9YERtmZe5WQvKQF2hdluCSit34qyZfU6MNTGHUheUwbIEwighMllJj9PtzHjavDGz8tojiHzM4EExHMF+dgmIgpoYYwa+7hHOYa9w+zfwN7lFqSc0XXs2gcbAzrqalyGmg79uWQMpSzBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LNbYfKTDh8lupKfUI5nB6tm8EchhiVPSTMZ6+Xt9Ad0=;
 b=cdxDma+p9Ref/w1byHoWwxoYH+pA9Et1nXiXdrzoMk6vL8WJ4s8ViQUtZDXEbyoE41pq9jBYQiwncckOl+ibZGpnVR2bJm0efgsTKf8sATUe9HpAfY46b9001u3K8hFP/1r1PbEkIn/AIoMioyCW3pzkdmrJtESEMPShXT/L/UgbwMdjxGZUOPIvXZiQqHeW5cZJMLoI/6wejmEtUWBUIgjvd5RxDOzhX22r3TVEbvPO4H6SyllrmhQaozezLwZ2egT8YawGhVCUyCXdPY2zJUlj8zEn1baYhjh1Mnj5CqzyBJUhiaFF+FxDF0KCHjxX9uCUSuWmKSW7Aunjscd+bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LNbYfKTDh8lupKfUI5nB6tm8EchhiVPSTMZ6+Xt9Ad0=;
 b=XZjDas2OOov17NjE+Vb4hDNp3tO/LS5Aj4QW/Fwwr3rI99iW5uectTpPMQ31q3EgGYnn0utZd5ZUuvlB0udmWuXtDE96DhL3XSd0R/LynX+7M6E+iHJocfS2JeBAegEc1J2MuBp45OtaKavg+Kt0XZlbfgAm8jwT+JwGoSCAvzA=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by PH8PR12MB7375.namprd12.prod.outlook.com (2603:10b6:510:215::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Mon, 4 May
 2026 07:14:13 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9870.023; Mon, 4 May 2026
 07:14:13 +0000
Message-ID: <4c9c9840-944d-4736-a55a-74f5c05b528c@amd.com>
Date: Mon, 4 May 2026 09:14:04 +0200
User-Agent: Mozilla Thunderbird
To: Pavel Begunkov <asml.silence@gmail.com>, Jens Axboe <axboe@kernel.dk>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Christian Brauner <brauner@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Sumit Semwal <sumit.semwal@linaro.org>, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-fsdevel@vger.kernel.org, io-uring@vger.kernel.org,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
References: <cover.1777475843.git.asml.silence@gmail.com>
 <ae941457cf6cacb9d4c16b6ec904da9ef7fed97f.1777475843.git.asml.silence@gmail.com>
 <f0dd8f89-835e-4331-b593-4405ec59f4fe@amd.com>
 <6cce2f4d-7400-4618-82ce-cbd5004c92a4@gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <6cce2f4d-7400-4618-82ce-cbd5004c92a4@gmail.com>
X-ClientProxiedBy: FR4P281CA0060.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:cc::20) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|PH8PR12MB7375:EE_
X-MS-Office365-Filtering-Correlation-Id: 6ca7ef87-0d2d-4c0a-88b1-08dea9acbe65
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|376014|7416014|1800799024|18002099003|921020|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: 
	2r9jki0x8EOX/9SyWv65hye/iYyg2KP34dx3y5KvqmRMEStLAOPDrJzhJKeMdSVKF1xdzu0Rw1LXoEOJ39LDHpxEBfVXot9D88Ig/b1V+sRECoI3kSL1WShfWTeI6++YvB4LEgpomagrNITjY6S+wW3bZKD2eOmdQ8ZZzgoLOAQSQjUFPvJF0Y/cdzoIkyQ8Ec09nKZqfOtdAgo/1QbroHc3Xgf+iPa5PG5oxCTTfyYG1WPvpWHKivHMCd2BExKlsCxvducIYEpY2YGksuBWemnigytY7QdUsTwHy6AgxcDzEXF4RgMcCgm7/amBCYuP+icjFr0PNYyLFaieR+W6XXFAuGLQlQLcdwxd4t7HVn6KF6bbPaLB7h+9CZU51XtLfpr86+H5UPxZej75UdaRKwMq+BE+lwo36uAulKwR3TAPPhNiQoVOgw3poSEKjKhAd0eIGtOd76eBI4CPyPRAJW68P/hXE0hNOqlhrCIi73kebNfcFiCg4EuY1C7LnbRRgOfUv5wsHiDuzH8/55coDs6nx7hyOmmXZaKBrn3X9oZQFjUkogQxdUHuukWco/eEIOzTsPxageMt+zHIc21shI2SZ+SMCCOd5aXu/nq+z3w3jKF29LsbdeUkiAY5273/3fyy7ViIdfdLTRbqTkeYCrsCQHmD2xZ66mcGIk/cYkT/0+JAbnc5nR45rH3z2M79Z1Xi+jEqaiSVy2J1B95awYr+WfXjs64fWKm7//AjwFw=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(1800799024)(18002099003)(921020)(56012099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?eWs4QXBYbm53VTErcE1OODQxTWlEZmhzaWZiZDJUcnNnajl3UXhhcW1iRGk2?=
 =?utf-8?B?cjVLVWkvMlNZRHJvWm5VNzVpZzlyMHNkYi9DSTBwb1pWQngwRFFFM2ZZc3JS?=
 =?utf-8?B?UTJoUHdmQm5EM2kzWDRaU0tGNzhFVC9Rb3Eyb1F1cW81MjFCWE9yR1JMeFoz?=
 =?utf-8?B?S2Rqbk9DWGJuNXFzRGE3V2RyRi95ODlZeGRHUVoreHM1N0NLTmJCTHNmNnEz?=
 =?utf-8?B?cW9qdDZraEdKSFUzZVlQd1hObWxCSzJBQVJjZFBpdk9rTlhxWjZNM3lpblBP?=
 =?utf-8?B?TDNrRktwblpoU1Z4T3RrcGhWK1ROaWRMYm9ucUdiQXBMWnBLU2R1d2hlRllw?=
 =?utf-8?B?WW1HWUZNekVDUVF4WnFYOUw5L1dKMlVBc2ZWeG1jdXhDQUZHSCtneWFoUGw2?=
 =?utf-8?B?RWdQLzdQVGxJS0ptS3RLYlBrMHNEb3hBekl6MHkraUZ4L0p5Q1hnM0Fqcmll?=
 =?utf-8?B?dEJ5U1Q3alF1bUF1UVVDaWtiUmhNRHEvNVdRQ0tsTFVnaXdaaFEvSTN2WGZO?=
 =?utf-8?B?NThQMmFlazlkNlZ1eEFpcEc2Y3YrWkxoOTFnQVBZTFBYTjZjZi96S2s1d0Fy?=
 =?utf-8?B?NDNvaURjTWcrelVjSHdvOUswOTcvNk4xNDE1TEwrdTZHcHh0Z21lckkwY2Rw?=
 =?utf-8?B?eW5weFlmVzc1WVQ5NVE3NlhJOWl3M1ErMVNQUzNreUhnakgxLytKTHZDZEVj?=
 =?utf-8?B?aFE0NFdxZnBibGNyYjNLSUdhZWlGR2t1ek1WVGRzSG9MRmMrZk00MlgrT0tI?=
 =?utf-8?B?V3RteU8xQzlWU2h3THFkdFpHMHEzV3BpSE5hY0VjYVQyMkU1MjY4UW4rWUk3?=
 =?utf-8?B?NjRncURsZWdUVVJ0VlBiTFc2SzhTVitMV2VmbDllU1ZZWWU5aHg2a3VFOSsr?=
 =?utf-8?B?cVc5SXQ2SFVMdjBwQ0hpeFc1T2xsYlJKVDZ3TGFyc1kyaXFwVXp2NXV2MTJQ?=
 =?utf-8?B?YWkrWmszcVpDelpEWEFhTDRDb2RBQlVaT0lxWTVnQjJmZ1M2eWdkcTZIRm9J?=
 =?utf-8?B?ZXVyTGxMOXIwdFgxMmhVY2g3a2UvNFBOcmxqUFZiY25QaHoveDRmdGtlQ29p?=
 =?utf-8?B?UXFJK2k0ZXFRUk95L0dNeW5JSlBKVHFDa3FSSVR0VzF4VmVXNlhwTjZLRnZK?=
 =?utf-8?B?QTZSRWFTZTlqRHFLcUFiOTFlTjl5eWlrK3l6VUZHdnloL3hKZGo3UFlmNmZr?=
 =?utf-8?B?eFdOUFBhVDFGY3hNbGp1ZHpERExvWXVpQlhoVDIzL0dQSjFKdng2a29NdkZz?=
 =?utf-8?B?QWVScVVrMk03Y1BWSzlPc2tGbndwSkRGc09jQXZ6ei94Um4raFc4NlpoRkkw?=
 =?utf-8?B?dmh3SXYrVEZGMk9MbFUrY3dEUUF5cS9pTU9mdHYwTUV3M1hkYnZkeEYvNW9Q?=
 =?utf-8?B?WkFXY0tPL3pscm9oK3hvTnNPaFlwQnZnNlhYQTM2ejZxbEpWbEpleW5ibVNQ?=
 =?utf-8?B?V2JnUnF2bGk5YjB3QXhhZTBmLzBTaUtiSFEwMkZNZFlQRjJZQ3hWTVNoWWZW?=
 =?utf-8?B?RllwZFQ4ekczMDRiNGpVRlJMRE1aWFRaZTJ5ZlN4K0RtdHEraTk2cVJEN2J1?=
 =?utf-8?B?VGVCTGg3d1prNzhSaWNYVk0xQmpjaDgrd1VCZWtXcE5OQTFZdk9EdG45SUhD?=
 =?utf-8?B?NFl3aVJPOGNSTkoybUUyUDVkNGpta0d6V0kwQUdJaVNsWjk0VVBlWFVHeGpJ?=
 =?utf-8?B?M0dHRWNMZ0FGNEpxSmg0KzUwM1JEZyt3MmRVU1dhQW1xSk5ZWTlJN3ZSbFdk?=
 =?utf-8?B?KzRzSWFTMElGMDNYUW1CdlRHUHNXNmtxTnArdmhLS3NyajByQVhzazVWWmta?=
 =?utf-8?B?eW5JbXNac0VRamNobWZCMUpGWVFOYW93UUhXYnFoUXdYWmxscXF5SlVCUS9s?=
 =?utf-8?B?U0d4NjRVWWJPc2FIbkFLUUpraDdGdjZjQXU5SUk5YXBKWmoyYlJlUjRDekU5?=
 =?utf-8?B?RGhQNE9MRXZzSFA0SlRMUWtYZW5UTnZJb3RuSXM5VW02T2pndWRjWWp2bWNV?=
 =?utf-8?B?V3JTSUR1alNhUTdQK0RUY25kZjVKdnJRM2EybVJ1WlJDWEJuaXhOUnNFOE5n?=
 =?utf-8?B?SFBlcEgzZWZyS0NKbTVxVDdPcUswdEdNbXZKS20yMGRHZlV5NS90YVNOQ1Ba?=
 =?utf-8?B?UzJJT2dDYm1XdlVhcUg1S21VMEdTT1NHcXpMcitvZ1h1eHE3T0hIaVNDcXdh?=
 =?utf-8?B?aGgyVTNMVUFCRFFDUHB5aHlUYzRiTFQ0L1pFTHo4cTNoUmdHWXI0UmxlVmZU?=
 =?utf-8?B?SnJEb21ucVVOUHBuTW9iejM3R01oRTFLc2gzd3ZsV2pSbW51RVdjSDN5Zi9t?=
 =?utf-8?Q?lRCiD467FpyX1dqcfx?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ca7ef87-0d2d-4c0a-88b1-08dea9acbe65
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 May 2026 07:14:12.9675
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: atoJyTpYzmKoD0wWHoKmRA5jtrN7JUjk5umOY7ZM0839xrt752Z9O+2B30jxhv5W
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR12MB7375
X-Spamd-Bar: ----
Message-ID-Hash: KV2VWME2YUYLUWQE3EGCYAF5PT5XJBSI
X-Message-ID-Hash: KV2VWME2YUYLUWQE3EGCYAF5PT5XJBSI
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Anuj Gupta <anuj20.g@samsung.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>, Phil Cayton <phil.cayton@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 01/10] file: add callback for creating long-term dmabuf maps
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KV2VWME2YUYLUWQE3EGCYAF5PT5XJBSI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 93D244B9365
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
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FREEMAIL_TO(0.00)[gmail.com,kernel.dk,kernel.org,lst.de,grimberg.me,zeniv.linux.org.uk,linux-foundation.org,linaro.org,vger.kernel.org,lists.infradead.org,lists.freedesktop.org,lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[amd.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.578];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[24];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	TO_DN_SOME(0.00)[]

T24gNC8zMC8yNiAyMDozMywgUGF2ZWwgQmVndW5rb3Ygd3JvdGU6DQo+IE9uIDQvMzAvMjYgMDc6
MDMsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+PiBPbiA0LzI5LzI2IDE3OjI1LCBQYXZlbCBC
ZWd1bmtvdiB3cm90ZToNCj4+PiBJbnRyb2R1Y2UgYSBuZXcgZmlsZSBjYWxsYmFjayB0aGF0IGFs
bG93cyBjcmVhdGluZyBsb25nLXRlcm0gZG1hDQo+Pj4gbWFwcGluZy4gQWxsIG5lY2Vzc2FyeSBp
bmZvcm1hdGlvbiB0b2dldGhlciB3aXRoIGEgZG1hYnVmIHdpbGwgYmUgcGFzc2VkDQo+Pj4gaW4g
dGhlIHNlY29uZCBhcmd1bWVudCBvZiB0eXBlIHN0cnVjdCBpb19kbWFidWZfdG9rZW4sIHdoaWNo
IHdpbGwgYmUNCj4+PiBkZWZpbmVkIGluIGZvbGxvd2luZyBwYXRjaGVzLg0KPj4NCj4+IFdlbGwg
Zmlyc3Qgb2YgYWxsIHRoZSBuYW1pbmcgaXMgcHJvYmFibHkgbm90IHRoZSBiZXN0LiBNYXliZSBy
YXRoZXIgY2FsbCB0aGF0IGRtYS1idWYgYXR0YWNobWVudCBvciBjb250ZXh0IG9yIG1hcHBwaW5n
Lg0KPiANCj4gIk1hcHBpbmciIG9yICJhdHRhY2htZW50IiB3b3VsZCBiZSBjb25mdXNpbmcgYXMg
bWFwcyBhcmUgY3JlYXRlZCBsYXppbHkNCj4gdG9nZXRoZXIgd2l0aCBzdHJ1Y3QgaW9fZG1hYnVm
X21hcC4gSSBjYW4gbmFtZSBpdCBjcmVhdGVfZG1hYnVmX2N0eCgpLA0KPiBidXQgSSBkZWNpZGVk
IHRvIHVzZSAidG9rZW4iIG5vdCB0byBjb2xsaWRlIHdpdGggZG1hYnVmIHRlcm1pbm9sb2d5Lg0K
PiBlLmcuIEkgd291bGRuJ3QgYmUgc3VycHJpc2VkIHRvIHNlZSBzb21lIGRtYWJ1ZiBjdHggaW4g
dGhlIGRtYWJ1Zg0KPiBpbXBsZW1lbnRhdGlvbiBjb2RlLiBNYXliZSAiKmlvX2N0eCIgd291bGQg
YmUgYmV0dGVyLg0KDQpDb250ZXh0IG9yIGN0eCBzb3VuZHMgZmluZSB0byBtZS4gSUlSQyB3ZSBk
b24ndCBoYXZlIGEgY29udGV4dCBpbiB0aGUgRE1BLWJ1ZiBzdWJzeXN0ZW0geWV0Lg0KDQpCdXQg
d2UgZG8gaGF2ZSB0aGUgdGVybWlub2xvZ3kgY29udGV4dCBpbiBvdGhlciBzdWJzeXN0ZW1zIGFu
ZCBjb21wb25lbnRzIHdoaWNoIGJ1aWxkIG9uIHRvcCBvZiBETUEtYnVmIHNpbWlsYXIgdG8gdGhp
cyBwYXRjaCBzZXQgaGVyZS4gU28gSSB0aGluayB0aGF0IGlzIGEgcHJldHR5IGdvb2QgbWF0Y2gu
DQoNCj4gDQo+PiBUaGVuIHRoZSBwYXRjaCBzaG91bGQgcHJvYmFibHkgZGVmaW5lIHRoZSBmdWxs
IGludGVyZmFjZSBhbmQgbm90IGp1c3QgYWRkIHRoZSBjYWxsYmFjayBoZXJlIGFuZCB0aGVuIHRo
ZSBzdHJ1Y3R1cmUgaW4gYSBmb2xsb3cgdXAgcGF0Y2guDQo+IA0KPiBJIHN0cm9uZ2x5IHByZWZl
ciBzcGxpdHRpbmcgcGF0Y2hlcyBzbyB0aGF0IHRoZXkgdG91Y2ggb25lIHRyZWUgYXQNCj4gYSB0
aW1lIHdoZW5ldmVyIHBvc3NpYmxlLg0KDQpFeGFjdGx5IHRoYXQgaXMgd2hhdCB5b3Ugc2hvdWxk
ICpub3QqIGRvIGFuZCBpcyB0aGUgYmFja2dyb3VuZCByZWFzb24gd2h5IEkgYXNrLg0KDQpNYWtp
bmcgY2hhbmdlcyBpbiBhIGNvcmUgaGVhZGVyIGxpa2UgaW5jbHVkZS9saW51eC9mcy5oIHRvIGFk
ZCBhIG5ldyBpbnRlcmZhY2UgYW5kIHRoZW4gb25seSBsYXRlciBvbiBleHBsYWluaW5nIGhvdyB0
aGF0IGludGVyZmFjZSB3b3JrcyBpcyB1c3VhbGx5IGEgcHJldHR5IGNsZWFyIG5vLWdvIGZvciB1
cHN0cmVhbWluZy4NCg0KRWFjaCBwYXRjaCBzaG91bGQgbWFrZSBvbmUgY29uc2lzdGVudCBjaGFu
Z2UgYW5kIHVwc3RyZWFtIG1haW50YWluZXJzIHNvbWV0aW1lcyBldmVuIHJlcXVpcmUgdGhhdCB5
b3UgZ2l2ZSBhbiB1c2VyIGZvciB0aGUgaW50ZXJmYWNlIGluIHRoZSBzYW1lIHBhdGNoLg0KDQo+
IHRiaCwgSSBkb24ndCBzZWUgbXVjaCBvZiBhIHByb2JsZW0gaXQgYmVpbmcNCj4gbm90IGRlZmlu
ZWQgYXMgaXQncyBqdXN0IGZvcndhcmRlZCBpbiBmaXJzdCBwYXRjaGVzLCBidXQgSSBjYW4gc2h1
ZmZsZQ0KPiBpdCBhcm91bmQgaW4gdGhlIHNlcmllcyBzbyB0aGF0IGRlZmluaXRpb25zIGNvbWUg
Zmlyc3QuDQoNClRoYXQgaXMgbm90IHJlYWxseSBhIGdvb2QgaWRlYSBlaXRoZXIuDQoNCkFzIGZh
ciBhcyBJIGNhbiBzZWUgYSBnb29kIG9yZ2FuaXphdGlvbiBvZiB0aGUgcGF0Y2hlcyB3b3VsZCBs
b29rIHNvbWV0aGluZyBsaWtlIHRoaXM6DQoNCjEuIFRoZSBBUEkgYmV0d2VlbiBoaWdoZXIgbGV2
ZWwgYW5kIGZpbGVzeXN0ZW0uIEluY2x1ZGluZyBhbGwgdGhlIGZ1bmN0aW9ucywgc3RydWN0dXJl
cywgZW51bXMgZXRjLi4gbmVjZXNzYXJ5IHRvIGdpdmUgZXZlcnlib2R5IHJldmlld2luZyBpdCBh
IHNvbGlkIHBpY3R1cmUgb2YgdGhlIGdlbmVyYWwgaWRlYS4NCg0KMi4gVGhlIGhpZ2hlciBsZXZl
bC9mcm9udGVuZC91QVBJLiBBZ2FpbiBpbmNsdWRpbmcgYWxsIHRoZSBzdHVmZiBuZWNlc3Nhcnkg
dG8gZ2V0IGEgc29saWQgcGljdHVyZS4NCg0KMy4gRXZlbnR1YWxseSB0aGUgZ2x1ZSBjb2RlIGJl
dHdlZW4gIzEgYW5kICMyLiBEZXBlbmRzIG9uIGlmIHlvdSBuZWVkIGl0IG9yIG5vdCB0byB1bmRl
cnN0YW5kIHRob3NlIHBhdGNoZXMgaW5kaXZpZHVhbGx5Lg0KDQo0LiBUaGUgYmFja2VuZCBpbXBs
ZW1lbnRhdGlvbiwgd2hpY2ggZW5hYmxlcyB0aGUgbmV3IGZlYXR1cmUgZm9yIGEgc3BlY2lmaWMg
ZnMgYW5kL29yIHN0b3JhZ2UgZGV2aWNlLg0KDQo1LiBVcGRhdGluZyBEb2N1bWVudGF0aW9uL2Zp
bGVzeXN0ZW1zL2FwaS1zdW1tYXJ5LnJzdCBhbmQgZXZlbnR1YWxseSBhZGRpbmcgYSBuZXcgZmls
ZSB0byBleHBsYWluIGhvdyB0aGUgRE1BLWJ1ZiBpbnRlcmFjdGlvbiB3aXRoIHRoZSBmcyBsYXll
ciB3b3Jrcy4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

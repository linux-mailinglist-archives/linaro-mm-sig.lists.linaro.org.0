Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MEdIGAlhBGq6HgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:31:21 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FAE65324F0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:31:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2233F4043A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:31:20 +0000 (UTC)
Received: from CH4PR04CU002.outbound.protection.outlook.com (mail-northcentralusazon11013002.outbound.protection.outlook.com [40.107.201.2])
	by lists.linaro.org (Postfix) with ESMTPS id 337DB3F77F
	for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2026 23:42:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=1k2ozd5A;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Alexey.Kardashevskiy@amd.com designates 40.107.201.2 as permitted sender) smtp.mailfrom=Alexey.Kardashevskiy@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SsidSv5LLvBw9xlPCB+v8CuHV4UsEXlqWamZhX4LEhcaM4vjjxo0ngP1+twR2AJrVEru0rsnNCqV057zW32Yr3w5IoahDmGl+67NZMRmYu2Q+CgJkqIJ/4Wbck3ZAvQJOBEyw7PYaXC1MxL2FUrSuELwrFVSDYMdwIs73Dt+LVm18+XSBxfAbSAjcVjbz4Vvx1E6oArf6hr4HEfNMcGa0G7suSQe5pG+XI0WmW9sNGCO3+fDHHalrxCMS8TJpC8uvyaAZJH4X4N37JDftRCDStSCteQcFiA1Stp6su+8k2ufY+Be8XbY/w4vZv5H7gwEGvVq76LGYZY03xeNEUM62A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wfnCXGVZ97JaPsThADObJGA4Ik9hcs/2KVetzeZr0qA=;
 b=UmfNo4zxV1y74lM3xf1jbKKYyT5PBa70kQGcGdg5uxodQ9SE/KlUJdc5SMm+Sj3qFD7tLmdyLjM6PAmgQ/XO1tkMzyN38YErIF1DT2Rje6nFrZilmUqa+fGOinD9hc/rGHd6WZhuIN7jn0JA1Y9uuh1oR07aurrcO00mjOPQYvQRMk+4y49zoP84bR8GEJ7GZesd/NXDTWTRzBd1kR+PlHrU0SX2C8nDvUrAX4PeeKcRq+I6CzBqaArpiYxQJ1jpVMquDRAsCqyuAJtVFlkZWz+oX4OT5tAk2HekhF5pfmMS/sUx/5Lt47ks+duGUB22zOAWXyshKtY/kSfxX+u44w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wfnCXGVZ97JaPsThADObJGA4Ik9hcs/2KVetzeZr0qA=;
 b=1k2ozd5ACY2haAI0oVPdE70j2LRq5d0KCJjzmvc5Qo5Ti9KW4O7FiovTADctE9yRf5VlG3K9d64yPoJkIc8iei+BmirMRb1UXTqXTewqtC1FJYGKsGD8iPgUW3B0jc+X9VnU0RJse+XNtwOxN/1FIAFLKyBsEVAnePB0+iA28Jc=
Received: from CH3PR12MB9194.namprd12.prod.outlook.com (2603:10b6:610:19f::7)
 by SA0PR12MB7073.namprd12.prod.outlook.com (2603:10b6:806:2d5::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.23; Mon, 11 May
 2026 23:42:15 +0000
Received: from CH3PR12MB9194.namprd12.prod.outlook.com
 ([fe80::1e6b:ca8b:7715:6fee]) by CH3PR12MB9194.namprd12.prod.outlook.com
 ([fe80::1e6b:ca8b:7715:6fee%6]) with mapi id 15.20.9891.021; Mon, 11 May 2026
 23:42:15 +0000
Message-ID: <c166f41e-d983-4a22-95d1-c485a82d1d06@amd.com>
Date: Tue, 12 May 2026 09:42:01 +1000
User-Agent: Mozilla Thunderbird Beta
From: Alexey Kardashevskiy <aik@amd.com>
To: Jason Gunthorpe <jgg@nvidia.com>
References: <20250107142719.179636-1-yilun.xu@linux.intel.com>
 <20250107142719.179636-5-yilun.xu@linux.intel.com>
 <c0b160f8-2930-4158-9e50-b4cc4209e2ca@amd.com> <afs/Jamxnj6GGFfM@nvidia.com>
 <3128deea-95a3-4c36-902b-37f280913f2b@amd.com>
Content-Language: en-US
In-Reply-To: <3128deea-95a3-4c36-902b-37f280913f2b@amd.com>
X-ClientProxiedBy: SY8PR01CA0026.ausprd01.prod.outlook.com
 (2603:10c6:10:29c::22) To CH3PR12MB9194.namprd12.prod.outlook.com
 (2603:10b6:610:19f::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR12MB9194:EE_|SA0PR12MB7073:EE_
X-MS-Office365-Filtering-Correlation-Id: af9e2ba0-6d25-468f-8f41-08deafb6ee10
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|7416014|1800799024|366016|22082099003|56012099003|18002099003|11063799003;
X-Microsoft-Antispam-Message-Info: 
	DonMYyCL5psj1Ra5Ta1YXJ9ojiMjfTxTk2ZwUEbj/kQbxGt4Zoglv+ihVWHdcF0V5OKzIyPJg1+TXV2n7wlvypg6yW+hPqicgs3mbOa2MkGkx0YA7EomT7lvZYhi8Q+P+AZmMvDe8slZZHeVpRBe6VDNRA4vh8md5AuAzUehk7Et/hAXVPQYC4PFtFAJ/5lYa7YvN9fzoA67bPGOtPdtFv1sLWkyC4XHCw11yKIDt9IONaWaDsrfp+CHs5XL+v3C7edQYVuVp0ps0bx1/6DH10XWf+X4eXXC8dNSd9X+46AmfzSr6yJGplkOVj64plQmrhlLS2mBSzVEE0UtE+lleDyoVUpl4FQaQ3J5TCV6Rns/fl7aYbZQM8tg9O2TS8SwzEKcbIjrNX0C+oRrc8h/TIRLPyx7uCQaFCdFZ2u2byyz6KMZzaw0ELIjpMl9UYcd8RKe2tRDFjpheOROIq3QLSb3Lvn0OfuM10MXJFqrUbMiWR8F7iS0X7EAsqL7WVOY0Dx1Iymr3P9IQCDP3RU540iojpMyHJDXBhYfJCT04Uugbl2Rhzih06rahb2cbjjjgD/de5kwFi4Reas9alp4UhFC8rexVOmLGct9TzvoipZvh3vYdnATwLzTpPqI2/9dSni3JYDd8F95fYcD5KsvZBqxpwS9YFIvPmEbcc54YKs3kYr50UISwoN8t3X/Jfux
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR12MB9194.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016)(22082099003)(56012099003)(18002099003)(11063799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UGhDbXUzaFNNZzJQTEZFQ1ZJd3RYcWt5MlQxT1NNeVVlcS93SDFvWWNTT29O?=
 =?utf-8?B?Z2tCQmN6Ui9yT2pINnJKMTZncTZ6Nm11M2VjazROS2NXbG9iYzdJK0UvRGZX?=
 =?utf-8?B?a0UwOTV5dy9OdFNsZGM1T0Y3RDJTVHJPQ3JyUGZoaWhWWWdNZEhIT2xNTmlY?=
 =?utf-8?B?Y0tOTzNXV29TU3p3ZWdzWGVMWnl5MEg0a2MzRWt6M1pxbEVBSWJxOUJHU1Fa?=
 =?utf-8?B?QjAybVZBYU12c0d3cFd4Tk5aeGRZWXhmWUpiQ1g5UWhPT05xenBuTGttWCtp?=
 =?utf-8?B?dHg1RGE4SFpwa0xSb0xHaXNyc0dGWTlTeEI5TzJhSWN0MXNOVSs2NlZJaEd1?=
 =?utf-8?B?RUFtVDZPVVhFU2F6cjdWUjR6ZjFKaDNSUTR6OGNUb1dxMytPVFRKOGw5Wmxs?=
 =?utf-8?B?TTVjamNyWFlkeVNpR25HdFRLLytvVUZqTUozK3lGQUNCaHoweUtxVHVJQmV4?=
 =?utf-8?B?RnUzcmNZRXZnMkt3S21MeXhMUlRWdVQ5YzhJeE5RUEN3WWVaRkRzV2xRQWd2?=
 =?utf-8?B?NE1EeHZaS2RlM0NyTm9VdVIzSGc4TUdRczBFcE5BWVdDcjNabGl6N3gzMzlX?=
 =?utf-8?B?dWdIQWVuVEFiMDh4SW5kUkVDd1lHNHBRQ3FiUDVZYlAxeFJPQUYwSDlXdEx1?=
 =?utf-8?B?MXc1WkJicnJwR1hoUmNnMzlXNGJYcGx3YlRISDExSFI2Y2V1RXBFY1ZKTDUy?=
 =?utf-8?B?bXNQRjhuaTNUb0YxazYyWWVnMUNnSWs0MVBRUEpyNkxiTHhzTkM1bkMwMWNP?=
 =?utf-8?B?NGE3S0NVa3paUm1ZaHlLemJQY2dvZ0MzYzFyN1dDcWs5VHNZaUZ3SnBWUkNI?=
 =?utf-8?B?UGplSmtWRUxhczE5bU1DZE4zOWNyajRTUHhUMVQzTUxBbDBpVTBxNElFNFZZ?=
 =?utf-8?B?U3hYaEZxU3R2a0hqYWRvMlUvZ212OSt4R3NVakdITUxJdUtHc2dvQVJGNkhz?=
 =?utf-8?B?SlBwVUJmZ21DZXc0eC96cWJGeGhmYSt3dExSclY4MnE2aDdvWUVYaGV6Qy9w?=
 =?utf-8?B?VDVpVkZqekhKSVJyL2tSU3IxUmVUR0pvLzhkZzg1RUhqK2ZXR1hKaU1oa2Iv?=
 =?utf-8?B?SmRONzRCWkhRQURGUVZlamdYRTR6UFNHYWJKRUhYOWR4S1F5RUkyWlZrUXA4?=
 =?utf-8?B?Z00xalRMQ0FmNlo4dHE3QmNESVl3Vm1zRG4wR2hZMjNTa3lSb0Rub2ZHT1FG?=
 =?utf-8?B?WUdVVzBxMHA2RitFYnlLeklGUFlhVG1ndHpZU1k3ekt2TVlZTU9sTlJrSTBD?=
 =?utf-8?B?NkFJSFdRT1BEV0d5NGVGRVNFZTk5NWwrTjhJK28xK3hqMTNRK2Z0clpHbGxZ?=
 =?utf-8?B?QVp2Q0ZPbHJxcjhZdnVzUWZaVkhheHNhU1VtVEpLd0VMbGlnME02Y3ArZG0x?=
 =?utf-8?B?SGxldTl0ME9ZcXdyNlB6ckl3bUtzMkF6YmxSbmRVa0JIdVFWN0pTajRSUjJy?=
 =?utf-8?B?UjU5dTROaHhmdTIzMzBNaDdENFl1MkhzeWFPL3d4M0VRd0xmWXlnSy9VZ1hT?=
 =?utf-8?B?Qzd4OGw4UllvR1kxY2t6S3AwZ3BVcUU2ZkxwaS9pTWp6WSthT2h0ME1zWnJy?=
 =?utf-8?B?VXdldXg5ZDkwODdTNzhQaEIrUGR5YzdqT2Zmclo1eHBTeE5Mc1pEU3RZVlYr?=
 =?utf-8?B?ditNRUViWW1KRGtQOGY3T3E2S0NhUktsZjZkdm1jYStod0laR2F0b0pyTjJw?=
 =?utf-8?B?Y2NhK1IyM1BlZVI3R1VSditWVExBUU1HOFFvZzNJRmFKSkg4bjYwTzlXemQ0?=
 =?utf-8?B?ZFBjbkVDaHBoK3FHM1VFQ20vTXUrWWwzam5GUnhCY2oraFkwUm1hY2xuVEdM?=
 =?utf-8?B?eFN1cU5TSGd3bzZYVDZ5MUV0Q2JmTVk3K2JDb003TlFqekdabWVDSXNrWXkx?=
 =?utf-8?B?UmsvMjkwMVNNN0N2aHZxS1R5UVgycEsvdjZZL1QxdDBURktCL24wOUhCaUdB?=
 =?utf-8?B?MVhuY0g1N29LYlBSenVuYXVROVIyZmZINExOd2JjYmNrNWVSZ3R4ZWtObld5?=
 =?utf-8?B?ck5keGx2WXk3eHNEa3pjNTZ2SFo3UGNXa3lVU0JpMVZKTzdMU05DZmU5ckFN?=
 =?utf-8?B?V0dEeGpoYVU2RHJiQXBrbkx5eEhmMlBxcHpRcHhTS1REdW41b2Nmd1AxS0lC?=
 =?utf-8?B?NUFTUjRIYnFtblVkcEd6d21rTnVTRVI5K1hWUU1ObmVQakg3SWZsSDc5ck5M?=
 =?utf-8?B?Y3BiU1M2SGs4bTMyd056OXZDZGVqcDVrb1hEV1dSZE5oYzFvT2VIbmQ3RXdK?=
 =?utf-8?B?bjBUbEorcGpSZkdQazVaZ0VpeWNiNmZBREJGN0MzWVErM1o5amk1NmVrMkdP?=
 =?utf-8?B?WWkrNDE3QnQ0NW0weEJ1MWUwUHJaSStpYkhQTk1FQkJkOHYxTkVwQT09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af9e2ba0-6d25-468f-8f41-08deafb6ee10
X-MS-Exchange-CrossTenant-AuthSource: CH3PR12MB9194.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2026 23:42:14.9915
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w0vcqpE54gT++RjaYdQ2eadTujuRRVULaIKch8w7kEjZhlVE2wjlz58NotNwHTKg1hntfaXk9W24qLSyNgZxnQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR12MB7073
X-Spamd-Bar: ----
X-MailFrom: Alexey.Kardashevskiy@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 7DM5UDJ6UIW7KSNO3PIB2UQVRPGHA6RK
X-Message-ID-Hash: 7DM5UDJ6UIW7KSNO3PIB2UQVRPGHA6RK
X-Mailman-Approved-At: Wed, 13 May 2026 11:25:10 +0000
CC: Xu Yilun <yilun.xu@linux.intel.com>, kvm@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org, christian.koenig@amd.com, pbonzini@redhat.com, seanjc@google.com, alex.williamson@redhat.com, vivek.kasireddy@intel.com, dan.j.williams@intel.com, yilun.xu@intel.com, linux-coco@lists.linux.dev, linux-kernel@vger.kernel.org, lukas@wunner.de, yan.y.zhao@intel.com, daniel.vetter@ffwll.ch, leon@kernel.org, baolu.lu@linux.intel.com, zhenzhong.duan@intel.com, tao1.su@intel.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 04/12] vfio/pci: Allow MMIO regions to be exported through dma-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7DM5UDJ6UIW7KSNO3PIB2UQVRPGHA6RK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 0FAE65324F0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	DATE_IN_PAST(1.00)[35];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aik@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[amd.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	NEURAL_SPAM(0.00)[0.278];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Action: no action



On 7/5/26 17:16, Alexey Kardashevskiy wrote:
> On 6/5/26 23:16, Jason Gunthorpe wrote:
>> On Wed, May 06, 2026 at 12:35:42PM +1000, Alexey Kardashevskiy wrote:
>>> Hi!
>>>
>>> Let's reignite this topic.
>>>
>>> I've been using these patches + QEMU side hacks for 6+ months. And it's been fine until I got a device where MSIX BAR is in a middle of another BAR marked as TEE in the TDISP interface report. And no trusted MSIX yet.
>>>
>>> Every time QEMU mmaps a BAR - I request a dmabuf fd from VFIO in QEMU. Since mapping of an entire MSIX BAR is allowed by default, VFIORegion::nr_mmaps==1 and it is an entire BAR.
>>>
>>> Problem: KVM memslot mismatches the dmabuf fd size
>>
>> Huh? kvm does not care about dmabuf at all? Are you running other
>> patches to hook kvm and dmabuf?
> 
> yup, 06/12 of this patchset.
> 
>> Putting a slice in a dmabuf is a well understood need for MSI, so I
>> expect whatever kvm dmabuf interface that gets merged to accomodate
>> this?
> 
> good to know.
> 
>>> Solution2: modify logic in VFIO dmabuf to allow multiple KVM memory
>>> slots per dmabuf. Now it is kvm_memory_slot::dmabuf_attach with no
>>> offset into the dmabuf and one kvm_vfio_dmabuf per dma_buf.
>>
>> Yes, when kvm learns to take in a dmabuf it needs to take in a slice,
>> not the whole buf. Or you need to create multiple dmabufs with the
>> necessary slices from the VFIO. The upstream vfio dmabuf creation
>> allows creating it with a slice.
> 
> true but either way dmabuf slicing will be directed by QEMU's msix-table emulation MR and this slicing needs to match the TDISP report so I'll have to teach QEMU these reports, right? 

Or TDISP devices are going to align MSIX BARs to 4K, and QEMU will do the same and it should "just work", and if it does not - the host won't crash. Can this work? Thanks,




> I am worried if I miss something obvious, again. Thanks,
> 
> 
> ps. I like nntp.lore.kernel.org very much for ability to dig out old stuff and then just reply to it :)
> 
>>
>> Jason
> 

-- 
Alexey

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

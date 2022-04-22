Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 349CC50B1FB
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 Apr 2022 09:48:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1B1DF3EF0E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 Apr 2022 07:48:02 +0000 (UTC)
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (mail-dm6nam08on2078.outbound.protection.outlook.com [40.107.102.78])
	by lists.linaro.org (Postfix) with ESMTPS id 162333ED0D
	for <linaro-mm-sig@lists.linaro.org>; Fri, 22 Apr 2022 07:47:56 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DUUSdTGQyjOB73xrctrqYcgqrDgnI2PRa9nRqyWdu2sFtLFyp+ISfufRhgFEjYSOWxxltudreK90qIcV6JG31ylIooNP1MJFMxbeUsri9vjyqLZv1YQ66EmwuhikFV/G9Uvrrd3XxiFt6qeAfbptqNuSCnD+vklD1fbsmnFUSxmbfloRD+24TjupFObWSqJ2yYpAgrs0TUpWvpcBivuUnEIrwS8beR1xTJUf8eA/Jrn9FPodpk4YLXxHccT1bjjYQDXjgecAnz3FbgilFDMEwpY24RWZZ0zCME8piaKXrFP+y8dmhSLyxydpZIzPmONXoPsBQaCZgaOFQTKSkHYU0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=80akURHfmHJ7RFAZt4LSem2hJb+vXXs9n1TVfCP5iYE=;
 b=bgtQu71nXWOFrwOwTZXj8PjACf7k9MVgJJNE0hHrwcZuP1GY85YHrzNIdhB2+oNyJ/5bkl4BSLJcSmp8d3Iro+/3mifwzTR2OxxzV0M1k1gJJ0Rvh0NTqJ4omaVhhds5l66SibzXTwUQjvb4JlPSDUMXTqSwqczoQEHmzMQawAU1FqeEuaVvw5ah81jSvgY8gjOlqC2tO7H6bV6klPPPiv7RvtG+ymQLgp32viwz1x+HqcTw4Y2sX4yCCsicCUPLdfu0RMDjGHWyj1yU/XywmzFLFqAfXsUVg+jBqJxBft/WKgoT7p6SJ92MzcEo1aU/7qOTkbuEgFcjAhkJJDRWWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=80akURHfmHJ7RFAZt4LSem2hJb+vXXs9n1TVfCP5iYE=;
 b=MEDq8o1qCqVIGagdoAL4o6PK1jOw/QvWtZbvgmwb6VzbAdcCS0i3bCawvqCfV6zvke+ZnVq5SdSGlLbikocAxfeJuxVLL/1Zw7AykovnsX+eS3Yd87FjAg/mroUPlEc/GIJt1A9ptdVwESHyLQxSTG6X0c+mgFB/NZWa35wzo0w=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by BN6PR12MB1651.namprd12.prod.outlook.com (2603:10b6:405:4::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.14; Fri, 22 Apr
 2022 07:47:54 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::a5fb:7137:5e64:cf8]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::a5fb:7137:5e64:cf8%5]) with mapi id 15.20.5164.026; Fri, 22 Apr 2022
 07:47:52 +0000
Message-ID: <a8768665-beba-5897-82fb-df1e4bd3b058@amd.com>
Date: Fri, 22 Apr 2022 09:47:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Zack Rusin <zackr@vmware.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "daniel.vetter@ffwll.ch" <daniel.vetter@ffwll.ch>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 "ckoenig.leichtzumerken@gmail.com" <ckoenig.leichtzumerken@gmail.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20220407085946.744568-1-christian.koenig@amd.com>
 <20220407085946.744568-4-christian.koenig@amd.com>
 <60ab53ce1ce1333f5e6a15fc83c3c05cd9bd1084.camel@vmware.com>
 <4c2e9414-3926-c9d7-8482-0d6d9191c2ac@amd.com>
 <fe8916b53b0f0101e6616d23eb6896399b092d58.camel@vmware.com>
 <54d00af9-9384-5794-490c-7d4cafe086b6@gmail.com>
 <e1c60e2a1478c406f515d51608a751fdc9feff3a.camel@vmware.com>
 <baa19a2d-6ad9-63ea-20f4-284a794f8998@amd.com>
 <ac12f900-fb47-37d6-9a1c-ac44bc711069@gmail.com>
 <5d699ffa903b5e54e8660367c3b46f07c86f4c55.camel@vmware.com>
 <6cd3571c-099b-df43-a7e0-243aba11726b@gmail.com>
 <3da8b3f4240a2f8bbc442abf57982bb321aca789.camel@vmware.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <3da8b3f4240a2f8bbc442abf57982bb321aca789.camel@vmware.com>
X-ClientProxiedBy: AM6PR0502CA0064.eurprd05.prod.outlook.com
 (2603:10a6:20b:56::41) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2ffde1b8-5044-4d36-f18a-08da24346796
X-MS-TrafficTypeDiagnostic: BN6PR12MB1651:EE_
X-Microsoft-Antispam-PRVS: 
	<BN6PR12MB16519B11C15099CE8600ED3183F79@BN6PR12MB1651.namprd12.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ZKYvRqcm59MzHAxUq73nsZpiTQpj2bg88FFrzqzfbZofE3FSOgNVekB513JKnWeJsC9ZoY0enJqagDqbKa3VDpXBLj4Vpo+kMlL/XhvDI3EkFWl7jrMuBB6rObkeuAlBoBw+69ODJ90AdBPBqKHdvB7lP/fAMbubnuAkX3VJvXEHkUJFEQZ7szG6YkGGCu4/LO8ifQFNoOz0yzZsTsfoaERBod35hMe7SfwJhe1EN1wr8vjtsmTGyXzx6iS4kfPZ1WLrID9eXbihl5EWes0jC6b/Jf00baabdkqi+6jrTvh++G6VaW0ktDGuYIeMyHtCesRpJwy+pNhyR8A3SGl/b0ug/j1d75SDW/rgSyrOmTc5pq2X6AbOVMq68NjQmqxA13fY/1Is61qm4H/Cey6pq4ZkDX/2s4RqqPLSGYTVERDR7FnNMj1uGA0vW1TIQz4UWiBJYdsSXos617+XUbHBJ+jjaBfTUrP93Yc/w2AfCgXsWn0MFHMgeqV6rngHy9T0mLWdQFVgfjDMb169ohMD7ZIlt3uZa+oQxmy6Glao32w7wMIVgfuvRwZgdXWNdnmCzFH9la9JkmbG++lTqT471EXvW6Zk2vKL4qDyFh+L6PuRpffu4t6AP2SHZ09quJtdercE/rg84SHjN7VSeuXXjB0IfmuO/4Na8mjKYf1eyCCh6KOFD2rstrV15oY6YxaILTJQV/lFBqWo53hcvyJokZFIGsZzvPJGf25fnAD8asY=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(4326008)(26005)(66574015)(66556008)(83380400001)(31686004)(8936002)(36756003)(2616005)(66476007)(8676002)(6666004)(6512007)(66946007)(2906002)(6506007)(5660300002)(186003)(6486002)(508600001)(38100700002)(316002)(110136005)(31696002)(86362001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?N3ZPLytMN0ZhdVE2NThCTnlIREVkclJEU2hrMUJ2eGFIYWg4dW0zcTc0eGdP?=
 =?utf-8?B?bjZNRmRWb2s4TkRiTnI2R0NkUWhjQmtFNVpEQzI3anFSMnh6b1h5d1E3MFA2?=
 =?utf-8?B?Ym1uS3pzOTJkN2N4MVB4TVQ5dDI2WGdrM2xpcjhQaGtDSUkwL0dGUGNkS3ZS?=
 =?utf-8?B?ejhOUkFEaHNqU0tUNUJrZm9nT1A2bitIQldBY2RrQ1VXMnc3dVlNTmRwdmdl?=
 =?utf-8?B?QTVHeTdDZnZSN2wreWQybCttT3A4TkNLTE1qL1UyTkh5QmY3Z1JpekJrMU9W?=
 =?utf-8?B?WkhiYlc2RmpDQ1IxdElBV2VXczI3emdvaE9Zc01HclVKbnlOTWRHVmViNlJz?=
 =?utf-8?B?bitxV2d2RXFjczF6S2VSWUk2NUNXamIrNUhNa3N4N3BXbEpzTGJPcjMrb3hT?=
 =?utf-8?B?U0dPYVRPb3UvR3VJNTRBaFNER0ViLzQzWFUwUUdHQ09YNjdMcnlmUzRqZ2F1?=
 =?utf-8?B?MHdCUUthQVdmeWo0RWxoMUpnRUtYMXNmV21BQXdveHA5THNaTmppeGNSU1F3?=
 =?utf-8?B?Umpac2tja3BYeWx6UEJaczZnREtRcjhISGRxY2pmWHJsM3UxbHYvRFh1Q0VJ?=
 =?utf-8?B?MHFOWEpvTnJKdDE0Q1JxNVQyZVV6U2VoK2NSR2lWOUxjQUkwdGlBYmxPdWdG?=
 =?utf-8?B?SDdhc1VFU3QxeW0rbGJpR000SFVVRHVzZlpIci8wWHpMdDZSUUhoVklJR1Qz?=
 =?utf-8?B?ZjdrbkJWeEtmeER5OVplcVplVHk5Nlh2OGllZ09rNzQrSW84SUowZEV1eFB3?=
 =?utf-8?B?T2o0dWRzWjMxRTFkVUExd2FqL3BZMnBSeFNMQUVlRmo0WU5ReTEwdThCMFA3?=
 =?utf-8?B?L0dEN3Bmc0w1RkJRNWlRdTdJbWNsTmJ4bDFMbDBYUWdtQi9BUGJTRkZubVgz?=
 =?utf-8?B?VXYwVHpmNTNNK1BKZ1JkSCtiQmhmeEY5RFNLdGJvRHBqVDFUMGtYSHp4UERX?=
 =?utf-8?B?cUdwbFREcDZLN0ZoWGxNcDcydy9MUGZ6YTBrbXFadmVpNEVYT1YrNGZKUWcx?=
 =?utf-8?B?VW8zY0Y5K1hYVktOTENhRmZVUTJaT0xnVk1zOEhhYkNJWVpudW90VjNLRitv?=
 =?utf-8?B?aExsVitqUFhUaFdkT0VKWUVhRXhXa3RMZG5lQWZUOURCS05jV1NpeUdiWGpE?=
 =?utf-8?B?eEFqclZTWFRPTktaVC9KVnQ3TEkra3R4Q1M3NUFMYUtGdFB4VTAvYjE0VW0r?=
 =?utf-8?B?ci9tRmZPSHBVcit6NldDc05ZRmUvREZybG5JcllYL2dvYkJPc3ZVeWh1VGtC?=
 =?utf-8?B?amRsQWlwZFBhRlI2WEsvR0hheTBacytONlA1ejE5WHliQlFIKy9xYjQzM3Ay?=
 =?utf-8?B?dmJlNXNVMWd5czFDUkw3TEl2MCtsd3NVWWZaa2VkQUsvSnJZaWpMZkxCaHR5?=
 =?utf-8?B?U3hZYnNDaEpiUW52Qll5L1pBUWtWUkYzMmZxSnF2RVFXdXNGbTg3NnRVWWFq?=
 =?utf-8?B?QjN6UnFWQnVmZEFOV3ZzNytZT0o5QXh1SjFCZEx3Nys1cmFzRyt3ME1IcjIv?=
 =?utf-8?B?NHRMenRHUi8zVys1WHYwZTk4NmpNOFpjVlRtYmtrSENVUzFhOUpaOUY0WG5J?=
 =?utf-8?B?MXMyb0tEVC8weGZYOTFtREE0V2NDNi9UMlVhelZWUXp2Smkxa0ZBV0J2VVpB?=
 =?utf-8?B?NC9SU3E4M0laelNKUUc5L2pjSkRabnRzZnhORmxaSkZ3VzhIRmxpdjlmQk5a?=
 =?utf-8?B?NVpHRFlVaGQ0TE5KZHVZUm91SDlrWVI3Sk1yQlV5QXc4Zzd0d2NvaGo0T0RX?=
 =?utf-8?B?OE9XT1ZlYXN5cEJldzNUTG45OFl4cE5EckJMNFRlaDdodHRNYXR0YjgrNVdh?=
 =?utf-8?B?OG03YlhpeW9wdkVORlpNZXVGeHo0MW85dEhIaGlwK1lrVFVMWXdxMXJFQU5L?=
 =?utf-8?B?ZFBuSWk0NS9Mc3JBWXB1dEFBVjhKMEJTMlErRVpteVFLNmd0UEhDK1BNWU9t?=
 =?utf-8?B?Y2pMaExiSnRkV2x3bnA5V2REL3NnTDAzWkpnSmdsQWtJZHpabjE5UHZmdmli?=
 =?utf-8?B?ekhDQjBFSkpoWjNyWC9LSExoRy8wS1BaL1oyMTFIZ1ZQdElMOW1HMTJzV0xN?=
 =?utf-8?B?ZEpWOWtxU2RCVG4yWjB2OGpzUFJRdFZ0NnFidGNaQ2ZGODBaUjlmMjcvY1E0?=
 =?utf-8?B?NW5yZUQ1VGtpUi9kVE5BQXUxRVgvaUcybEM5SXhjemhMcVBYMGZhakR3cEtK?=
 =?utf-8?B?Z1BWam9UYmlCcXNZekhmam1pbUEwV3EwZzBady9VM2VtdjVyM1RNUXpLN2dV?=
 =?utf-8?B?aGh5d0dKRzNOWVAxNDZRL1ZNMCtwc0pwTDVrT0loYWx4SUdRVjdKR2xKQjk5?=
 =?utf-8?B?anhMQ0lGUXpDU0NaOEIzNXN1eFpCV1pWL1NnQ1E0cjQzdWdXSTYvZz09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ffde1b8-5044-4d36-f18a-08da24346796
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2022 07:47:52.4003
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zsslYOpI0DC3EZzjxKshE2yvDoV961oML956cy8/j9gqDD5iOK0yqfOzU1aLAzRJ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR12MB1651
Message-ID-Hash: XVATLGIJETTXM3BZQQRC3BSW26C5ICKO
X-Message-ID-Hash: XVATLGIJETTXM3BZQQRC3BSW26C5ICKO
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 03/15] dma-buf & drm/amdgpu: remove dma_resv workaround
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XVATLGIJETTXM3BZQQRC3BSW26C5ICKO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjEuMDQuMjIgdW0gMjM6MTMgc2NocmllYiBaYWNrIFJ1c2luOg0KPiBPbiBUaHUsIDIwMjIt
MDQtMjEgYXQgMTI6MTcgKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+PiDimqAgRXh0
ZXJuYWwgRW1haWwNCj4+DQo+PiBBbSAyMC4wNC4yMiB1bSAyMToyOCBzY2hyaWViIFphY2sgUnVz
aW46DQo+Pj4gW1NOSVBdDQo+Pj4+IFRvIGZpZ3VyZSBvdXQgd2hhdCBpdCBpcyBjb3VsZCB5b3Ug
dHJ5IHRoZSBmb2xsb3dpbmcgY29kZQ0KPj4+PiBmcmFnbWVudDoNCj4+Pj4NCj4+Pj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS92bXdnZngvdm13Z2Z4X3ZhbGlkYXRpb24uYw0KPj4+PiBi
L2RyaXZlcnMvZ3B1L2RybS92bXdnZngvdm13Z2Z4X3ZhbGlkYXRpb24uYw0KPj4+PiBpbmRleCBm
NDY4OTEwMTJiZTMuLmEzNmY4OWQzZjM2ZCAxMDA2NDQNCj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL3Ztd2dmeC92bXdnZnhfdmFsaWRhdGlvbi5jDQo+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS92bXdnZngvdm13Z2Z4X3ZhbGlkYXRpb24uYw0KPj4+PiBAQCAtMjg4LDcgKzI4OCw3IEBAIGlu
dCB2bXdfdmFsaWRhdGlvbl9hZGRfYm8oc3RydWN0DQo+Pj4+IHZtd192YWxpZGF0aW9uX2NvbnRl
eHQgKmN0eCwNCj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdmFsX2J1
Zi0+Ym8gPSB0dG1fYm9fZ2V0X3VubGVzc196ZXJvKCZ2Ym8tDQo+Pj4+PiBiYXNlKTsNCj4+Pj4g
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKCF2YWxfYnVmLT5ibykNCj4+
Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJl
dHVybiAtRVNSQ0g7DQo+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHZhbF9idWYt
Pm51bV9zaGFyZWQgPSAwOw0KPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB2YWxf
YnVmLT5udW1fc2hhcmVkID0gMTY7DQo+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGxpc3RfYWRkX3RhaWwoJnZhbF9idWYtPmhlYWQsICZjdHgtPmJvX2xpc3QpOw0KPj4+
PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBib19ub2RlLT5hc19tb2IgPSBh
c19tb2I7DQo+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJvX25vZGUt
PmNwdV9ibGl0ID0gY3B1X2JsaXQ7DQo+Pj4gRmFpbHMgdGhlIHNhbWUgQlVHX09OIHdpdGggbnVt
X2ZlbmNlcyBhbmQgbWF4X2ZlbmNlcyA9PSAwLg0KPj4gVGhhbmtzIGZvciB0ZXN0aW5nIHRoaXMu
DQo+Pg0KPj4gU28gdGhlIGJ1ZmZlciBvYmplY3QgaXMgbm90IHJlc2VydmVkIHRocm91Z2gNCj4+
IHZtd192YWxpZGF0aW9uX2JvX3Jlc2VydmUoKSwgYnV0IGNvbWVzIGZyb20gc29tZXdoZXJlIGVs
c2UuDQo+PiBVbmZvcnR1bmF0ZWx5IEkgYWJzb2x1dGVseSBjYW4ndCBmaW5kIHdoZXJlIHRoYXQn
cyBjb21pbmcgZnJvbS4NCj4+DQo+PiBEbyB5b3UgaGF2ZSBzb21lIGRvY3VtZW50YXRpb24gaG93
dG8gc2V0dXAgdm13Z2Z4PyBFLmcuIHNhbXBsZSBWTQ0KPj4gd2hpY2gNCj4+IEkgY2FuIGRvd25s
b2FkIHNvbWV3aGVyZSBldGMuLg0KPiBJIGRvbid0IGhhdmUgYW4gZXh0ZXJuYWwgbWFjaGluZSB0
byB1cGxvYWQgaXQgdG8uIEdldHRpbmcgYW4gZXh0ZXJuYWwNCj4gbWFjaGluZSB0byBydW4gTWVz
YSBDSSBvbiBoYXMgYmVlbiBvbiBvdXIgdG9kbyBmb3IgYSB3aGlsZSwgc28gSSdsbCB0cnkNCj4g
dG8gc2V0dXAgc29tZXRoaW5nIG5leHQgd2Vlay4NCj4NCj4gVGhlIGlzc3VlIGhlcmUgc2VlbXMg
dG8gYmUgdGhhdCB2bXdnZnggYWx3YXlzIGhhZCBzb21lIGJ1ZmZlcnMgdGhhdA0KPiBkaWRuJ3Qg
aW1tZWRpYXRlbHkgZ28gdGhyb3VnaCB2bXdfdmFsaWRhdGlvbl9ib19yZXNlcnZlLiBXaGF0J3MN
Cj4gaGFwcGVuaW5nIGlzIHRoYXQgaW4gdm13Z2Z4X2V4ZWNidWYuYyBpbiB2bXdfZXhlY2J1Zl9w
cm9jZXNzIHdlIGNhbGwNCj4gdm13X3ZhbGlkYXRpb25fYm9fcmVzZXJ2ZSBhbmQgYWZ0ZXIgaXQg
d2UgY2FsbA0KPiB2bXdfdmFsaWRhdGlvbl9yZXNfdmFsaWRhdGUuIEluc2lkZSB2bXdfdmFsaWRh
dGlvbl9yZXNfdmFsaWRhdGUgKGluDQo+IHZtd2dmeF92YWxpZGF0aW9uLmMpIHdlIGNhbGwgdm13
X3Jlc291cmNlX3ZhbGlkYXRlLCB3aGljaCBjYWxscw0KPiB2bXdfcmVzb3VyY2VfZG9fdmFsaWRh
dGUgLiB2bXdfcmVzb3VyY2VfZG9fdmFsaWRhdGUgaGFzIHRoaXMgY29kZSAicmV0DQo+ID0gZnVu
Yy0+Y3JlYXRlKHJlcyk7IiB3aGljaCBpcyBhbiBpc3N1ZSBmb3Igdm13Z2Z4X2NvdGFibGUuYyAu
IFRoZQ0KPiBmdW5jLT5jcmVhdGUgZm9yIGNvdGFibGUncyBpcyB2bXdfY290YWJsZV9jcmVhdGUg
d2hpY2ggY2FsbHMNCj4gdm13X2NvdGFibGVfcmVzaXplIHdoaWNoIGNyZWF0ZXMsIHJlc2VydmVz
IGFuZCB2YWxpZGF0ZXMgYSBuZXcgYm8uDQoNCkp1c3Qgd293ISBObyB3b25kZXIgdGhhdCBJIG1p
c3NlZCB0aGF0LCBJIHdvdWxkIGhhdmUgbmV2ZXIgZXZlciBiZWVuIA0KYWJsZSB0byBmaW5kIGl0
Lg0KDQo+DQo+IEluIHNob3J0IGEgbmV3IGJvIGlzIGNyZWF0ZWQgaW4gdm13X2NvdGFibGVfcmVz
aXplIGJldHdlZW4NCj4gdHRtX2V1X3Jlc2VydmVfYnVmZmVycyBhbmQgdHRtX2V1X2ZlbmNlX2J1
ZmZlcl9vYmplY3RzIGNhbGxzLg0KDQpXZWxsIHRoZW4gdGhlIGZpeCBpcyB0cml2aWFsLCB3ZSBq
dXN0IG5lZWQgdG8gY2FsbCANCmRtYV9yZXN2X3Jlc2VydmVfZmVuY2VzKCkgb24gdGhpcyBuZXcg
Qk8gdG8gbWFrZSBzdXJlIHRoYXQgYXQgbGVhc3Qgb25lIA0KZmVuY2Ugc2xvdCBpcyByZXNlcnZl
ZC4NCg0KSSB3aWxsIHRyeSB0byBjb21lIHVwIHdpdGggYSBwYXRjaC4gVGhhbmtzIGEgbG90IGZv
ciB0aGF0IQ0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+DQo+IHoNCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==

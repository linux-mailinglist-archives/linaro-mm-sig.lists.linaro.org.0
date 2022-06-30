Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9439B561F81
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Jun 2022 17:41:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A1BF03F301
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Jun 2022 15:41:52 +0000 (UTC)
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (mail-bn1nam07on2069.outbound.protection.outlook.com [40.107.212.69])
	by lists.linaro.org (Postfix) with ESMTPS id 6280B3F1B3
	for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Jun 2022 15:41:47 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XRRjUKjNFxmtnrimdLwThjfQmEnRkSLpcIhAhivt0EwaY+gpSGwifT9oxFikWvWmVE0AJPFuCsFMh6ieb7CmMJdx8j9192vgbDBbWK/XjZabT908idcqGHx5bibI0KdnHm0DAH5CZHfcp7aQcbbnpxJG1ETQ7MNdlibQYN9/gjbGYZy102cT+B8EngORpltBdhyL+mq8dTYGKG/FzJKA8nRZzabiRgovDkNbF2s1k57ClgzGdkZuJN6/8i9mwcK/WUUAFkM+uxKQOrrECbremGMS1UULaZkQGixsb142FVcSDI/kLHHlYSpy7K7OMA3UQ0lb1tsFPngizU8QIi75hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nGpFuOPq3CiY8XAlngDLZbjzsjY3rB/GNsrrQkp0Vs4=;
 b=L32AaVqHxtpx46ZVt4ytFuZViIhen41xVkuMPz4sSeJSliN9LI87iU/q6UYGyEU+LIy/kidcW9jbnSJ1WBVxgJl6efdrmn2+9o0M4v+1iguGEP9aYWJI9q0V8CWsdir/lcPc0QYzCMbVMKJ9GH2asmPJoAjQ4uwd95faHZFSDchLw1OEfd1ANvSa0++TN8vu/QeqiJc8sqE+mDrd2zjQO6UcBVyz/GhaB5BrQamXKCfwSpRoH+dcXg5nH9eeE5UIvIoLfyrWD1q5mH6B1NJGK5kAKXxt2jq1wWMF1e84ndir9PVHHBIpaGhFUKZCI/mC1C5SW/Bft5n3yxnaqfHnVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nGpFuOPq3CiY8XAlngDLZbjzsjY3rB/GNsrrQkp0Vs4=;
 b=a+lGMtXK0i1L+cHkItqixCM6zW5VcNyi/5d7IS544TBFQhFZF3jsVBPTOkcHzfmHesGMsgI7dFVhtaMsZN4CNT9961F7UF7/oCS46NM8IkN4l6YNWLvG58JCnhUhHKzPeE8yGzDumOZ7L40262CTQyovgQjqqd/EvtpWuzs7aC0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by DM6PR12MB2844.namprd12.prod.outlook.com (2603:10b6:5:45::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.15; Thu, 30 Jun
 2022 15:41:43 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39%2]) with mapi id 15.20.5395.014; Thu, 30 Jun 2022
 15:41:43 +0000
Message-ID: <726ae6db-2b39-9593-2fc4-4f482e7db583@amd.com>
Date: Thu, 30 Jun 2022 17:41:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: "Zhang, Jesse(Jie)" <Jesse.Zhang@amd.com>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>
References: <20220629060236.3283445-1-jesse.zhang@amd.com>
 <8499b1f1-cd39-5cb4-9fac-735e68393556@amd.com>
 <DM4PR12MB5152BA76985C98A0AAB033E2E3BA9@DM4PR12MB5152.namprd12.prod.outlook.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <DM4PR12MB5152BA76985C98A0AAB033E2E3BA9@DM4PR12MB5152.namprd12.prod.outlook.com>
X-ClientProxiedBy: AM5PR0402CA0020.eurprd04.prod.outlook.com
 (2603:10a6:203:90::30) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ea2a4f5b-304d-4187-c15c-08da5aaf07f8
X-MS-TrafficTypeDiagnostic: DM6PR12MB2844:EE_
X-LD-Processed: 3dd8961f-e488-4e60-8e11-a82d994e183d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	jt9ce5Ct2MN5ajbwK0Iu0ThV+28PpgZbyvCEwFJSDK/quiZAPhiqT86gTEdpMKPKmNvIfM91rQSNImF5IaZcb0zuDP0MCU8D5xzc32GuGNOohGkkimJKjI3HWXJ2Rh8KUHm9Nr2cr+YiTJEcZomhO1KOk4f5SFi/+MlY0uhR5tLkUqHSm8RiuR04linVODvhGjuJhsceqKrZXkb9g1KaU19g3L4t2ui5I42V2/+Vb1ihFIVGke6Q2Ea+Ib7rzRTTDUmR8vkLZLrsU+NkIordd0txU48KpBagEikOeBF8a0qznvSNrMSlaFbw7DnjppWt8ou91leGoF7a8XpPZs6FHQx7dKahqyz5VAaspjHTl7sMqTOhYdfUdgy9y24CFusmgP2qCQLaz1WgGVigf724qD/ifc8j9VKKsu2enmzZzXhYKMTpYjOCoEF5BF7EEHtS5OAo0hZ/Cdu2JXafu7nCbvRn+VGdhHTxsDWUuQckDtVi1NWG1RHqS3qH77VtSXDcxpFR4PPt6TvcRcyP5gvHhgPNpycSSghd3XoGPyrzu0Y/vYcs4Y4wYrzFsiEgZQgyeF7od5wGIYA8gc7pwMWib/M0lQE8t5g+NopESytxW3RPwDQ3aEXgeWIJWgRqxpfK+w9W+6Mogd13YDKAbbu1xi5K+3gXvv0fZtIEZyyd2ysLL5IFurXmY0AQxRLM2Ika5Xa1uxGFxz1JgGf5/3/rCryRtYKFTEi9j9OLLm6SoDKGrKNLwVZT6egsnuwPF71JtXqQbj1lP/6oOPZB3FGwDTz1Wlfs3GZQL8Pbv9qwBNRT5rqTdNFYIPH672B5YzzBmZzgBa3rENC0wajR1Ck++rY7GfxZE3EjjstADFrbHVe7nRMWHMYmhaZOLx8YVXEuJlVnnItXoHlVCdT/5B7vf81LShEAN4gh63lSKidQ40c=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(366004)(136003)(396003)(376002)(39860400002)(346002)(83380400001)(186003)(66574015)(2906002)(966005)(41300700001)(66946007)(478600001)(4326008)(8676002)(6666004)(54906003)(6486002)(316002)(110136005)(7416002)(66476007)(5660300002)(66556008)(8936002)(6512007)(31696002)(86362001)(38100700002)(53546011)(31686004)(36756003)(6506007)(2616005)(45980500001)(43740500002)(473944003)(414714003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NUQvU1Q0aVVXenY0TE1RN0Npb2ZtME5GQmxncEV6Nk1CazZvUytXeXNrbWZ2?=
 =?utf-8?B?Qm5hSnBGZlp6aXNzRDBkVEd6N3dSYmIwMy9GUVZyWEllbURpV0xHVDc0SHhZ?=
 =?utf-8?B?L1VPSnNnZ2FoWm9pb0owTktiU09hU0NscWliTGFZTGxwZ3U1NUdvV2lWY3gw?=
 =?utf-8?B?N2xlV0dFMVJQUmZMK1NuVkJsaWVQdHZucklaZ3ZhdmlqTkdQdExUVlppSmM1?=
 =?utf-8?B?N2J3R0psV2ZNOHY2TkFnbmZWcUplUGFsZEtBVlp5eGNON0hMZVphR014R0Np?=
 =?utf-8?B?K3NTcVU3VzErY0ttcHU0bUJpdjRvSVJMWC9hSXZXVEhkeGs0dkt4N2h5c3p0?=
 =?utf-8?B?RDRrcEsrV0p5RFdhWUhXT0lIcklUL2M1VGJmRnUyWDBhNEtENDBxdTZCS0Zy?=
 =?utf-8?B?eDVXdGhUbTEyL1Y1UXFwTFdCejBxSXh4Z3ZKK3F1SEplc3IxaWNGeFVXUGh5?=
 =?utf-8?B?dVZoZzYvMGZlNjZlbTdSK2llNWViVS96NGFjYW9oTFEvcDZxVEVUOUdlaEtt?=
 =?utf-8?B?S0MxOGRvUlB3M0R1NjZUcmduOHlTQ3N0akgvc3ljSzJtWllJQmVpRUM2V1pC?=
 =?utf-8?B?bTJEN0JKa0xzUjBobjJJY2IxTG1xWHRLTWtFZ2NVa3RoM0JlaXNXbDlLMnhz?=
 =?utf-8?B?SmVNWFVLN1E3cWNMaERaUU1zWmFqcXdvUGRLeEVNNGlCcTFlZEV2SkgvMTdu?=
 =?utf-8?B?THBSZFdYRlZwZ2ZVdVVoYnF1dVpFckh2U1ExZFJ6OTVSSEtYTWxJM3p6VWl2?=
 =?utf-8?B?K0NlWkdvUTh0cVM2a1g3Vlo5RXMzNE5SNThTVzFFejh3c1FqdjB6Q0RNV2Ro?=
 =?utf-8?B?VG1MSHFDVG5rMU1KQVNhR0ZEVkhzSklINUtwb0RkbmNkNEZUczJkZkxxQ09T?=
 =?utf-8?B?SG5UZmMvZ0ZMWVN6Q2d4TEVwbE5JUlFLaVd0Q28zdVhOcTBmWkFnZ2hLdyt6?=
 =?utf-8?B?UHJYRmFvYTl5Y2lUZzB5czJYOTVCVmh3eXpZdVFWbFBLRzNkVThkeDByckF0?=
 =?utf-8?B?OHYyNzVTZnpzVkxZTzNrUTkxZEtmN0pab2NvOEN6NmtCbHBKQ2J6VWhmYzFw?=
 =?utf-8?B?Wm9iWUl3ais0SmpER3pJMkJKbWxqckYrMzNaRjdtMU05TEdYVnpaOEJ1VmxV?=
 =?utf-8?B?ZUh3aXZpTjNSdDFjY2xRYXFJcW9HejlVWHNQK3FPY2J3Y0JDWWZMWmRpRitv?=
 =?utf-8?B?a1ZqeDRlbktxOC83V2drUi9MR0VvY3lIWFZsRkN5OW55Umh5MXd5MlB0Umds?=
 =?utf-8?B?aTlITlc1a0lPWU9aSjJPa0ZKZ1JmRm14OFhRZzM1MU9xUHNuN3VBRjJnVWs4?=
 =?utf-8?B?OEhBalBidU5RcXNJakxvMjBod3B4UE01NG5yNGhrOEZxQ3djbmhoMG5qZTRC?=
 =?utf-8?B?UzdFQ3ppT1RCUGU2WXFKb3h1dFBobTAwT25McWcySW1oY0N2bEtrRklpcERr?=
 =?utf-8?B?azF0aloyUEJUcnNNc2Y5a0pBeUg0ZkJBT2wrUVVIVkU3bmwrQmZ2R0tWNEho?=
 =?utf-8?B?MDBZZkJzNlc3Q0ViR1ZwOVNLZFg1WE9tYnEySkxPdjVWWnlBREtTb21DbnUw?=
 =?utf-8?B?dTJsWkZJbVQyMVFiVjdFVS85Q25OTk1BSTNDYjdPVE1YNzdQZFptWG8yaUN5?=
 =?utf-8?B?cTAzNXNPSituVEVQL2lqMVlkOFBnczJVVFd4UFVZWis0MStxWFNMaW8yU1ND?=
 =?utf-8?B?QzNuNjRnTWpvSDd1VkJsTTJ3dlhJWFZQY0Uyay9RUnpqOHgrMHV2bUdUd0pS?=
 =?utf-8?B?R2J0Y3JWYVkrN3c0YmJCeWJ6d0RxS3BKcUNPMXNEMW44SSt6UHVJZDd2OElJ?=
 =?utf-8?B?R1MrQ0F0a0hMSlFOUk82QmprdTFVb1EzVlNRZ0kxVDl1dXRLTXhiMno0WXhm?=
 =?utf-8?B?NGFjMkFteitjT0psc29HeWl0M005UXZWSG05K29SN3BnSE5adnh0M202RW5Y?=
 =?utf-8?B?VTN5TTBXbHorampWakZma2l3WU5EckJOSXBrdkJ3OUg2WnNvL2QwSmJPcnBZ?=
 =?utf-8?B?bGl5WGEraE9acERYVzN6R1hJRDZmNWljT2JtdVMzVGEyclc4TkFzTjdWRzhk?=
 =?utf-8?B?MXdyMklWUXZvRG1lZEJDampVVGMyMllsRXMrbmNuNWF0UWZ5eFVyUHBjVitH?=
 =?utf-8?B?Y09sTDNGRGsxM1k5a3ArZ3Q0bTI5SUxSY2ZxbTV0bzFCTEQzME13K0VnR1Jn?=
 =?utf-8?Q?XMfCaFiwvHGkgdmP4fAbD6b3rkQF85z8XcSyRGGV4Eue?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea2a4f5b-304d-4187-c15c-08da5aaf07f8
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jun 2022 15:41:42.9615
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B/DhgCD0lIWKGjax2OppuoY6p+0m48/yhHfMt8o1Pw1LAlijdUdUWb4eL8kpp8iM
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB2844
Message-ID-Hash: 5JPWIDRJD2SSAQQMGIYXFIFCJHMGV54G
X-Message-ID-Hash: 5JPWIDRJD2SSAQQMGIYXFIFCJHMGV54G
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Mukunda, Vijendar" <Vijendar.Mukunda@amd.com>, "Hiregoudar, Basavaraj" <Basavaraj.Hiregoudar@amd.com>, "Dommati, Sunil-kumar" <Sunil-kumar.Dommati@amd.com>, "Pandey, Ajit Kumar" <AjitKumar.Pandey@amd.com>, Nirmoy Das <nirmoy.das@linux.intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1] Fix: SYNCOBJ TIMELINE Test failed.
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5JPWIDRJD2SSAQQMGIYXFIFCJHMGV54G/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgSmVzc2UsDQoNCnllcywgSSBrbm93IHRoYXQncyBhIHdlbGwga25vd24gYnVnLg0KDQpUaGUg
SW50ZWwgZ3V5cyBoYXZlIGFscmVhZHkgbmFycm93ZWQgaXQgZG93biB0byBhIG1pc3NpbmcgDQpk
bWFfZmVuY2VfZW5hYmxlX3NpZ25hbGluZygpIGluIHRoZSBzeW5jb2JqIGNvZGUgcGF0aC4NCg0K
SSBzdHJvbmdseSBzdWdnZXN0IHRvIHdvcmsgdG9nZXRoZXIgd2l0aCB0aGVtIHRvIGZpbmQgd2hl
cmUgdGhhdCBuZWVkcyANCnRvIGJlIGFkZGVkIGluc3RlYWQuDQoNClJlZ2FyZHMsDQpDaHJpc3Rp
YW4uDQoNCkFtIDMwLjA2LjIyIHVtIDE3OjI2IHNjaHJpZWIgWmhhbmcsIEplc3NlKEppZSk6DQo+
IFtBTUQgT2ZmaWNpYWwgVXNlIE9ubHkgLSBHZW5lcmFsXQ0KPg0KPg0KPiBIaSAgQ2hyaXN0aWFu
LA0KPiBJZiB3ZSByZW1vdmUgdGhlIGZvbGxvd2luZyBwYXRjaCwgdGhlICAic3luY29iaiB0aW1l
bGluZSB0ZXN0IiBjYW4gcGFzcy4NCj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xp
bnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L2NvbW1pdC8/aWQ9NzIxMjU1YjUyNzAw
YjMyMGM0YWUyZTIzZDU3ZjdkOWFkMWRiNTBiOQ0KPg0KPg0KPiBUaGUgZm9sbG93aW5nIGxvZyBp
cyBwcm92aWRlZCBieSBBTUQgQ1FFIHRlYW0uIFRoZXkgcnVuIHRoZSBhbWRncHVfdGVzdCB0b29s
IG9uIHVidW50dTIyIChrZXJuZWwgdmVyc2lvbiA1LjE1LjAtMzkpDQo+IFN1aXRlOiBTWU5DT0JK
IFRJTUVMSU5FIFRlc3RzDQo+ICAgIFRlc3Q6IHN5bmNvYmogdGltZWxpbmUgdGVzdCAuLi5GQUlM
RUQNCj4gICAgICAxLiBzb3VyY2VzL2RybS90ZXN0cy9hbWRncHUvc3luY29ial90ZXN0cy5jOjI5
OSAgLSBDVV9BU1NFUlRfRVFVQUwocGF5bG9hZCwxOCkNCj4gICAgICAyLiBzb3VyY2VzL2RybS90
ZXN0cy9hbWRncHUvc3luY29ial90ZXN0cy5jOjMwOSAgLSBDVV9BU1NFUlRfRVFVQUwocGF5bG9h
ZCwyMCkNCj4gWW91IGNhbiBnZXQgbW9yZSBkZXRhaWwgaW5mb3JtYXRpb24gYnkgdGhlIGF0dGFj
aG1lbnQuDQo+DQo+IFNvIHdlIG5lZWQgZml4IHRoaXMgaXNzdWUuIEFuZCBpZiB5b3UgaGF2ZSBh
bnkgYmV0dGVyIHNvbHV0aW9uIHRvIHNvbHZlIHRoZSBpc3N1ZSwgcGxlYXNlIGxldCBtZSBrbm93
Lg0KPg0KPiBUaGFua3MNCj4gSmVzc2UNCj4NCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0N
Cj4gRnJvbTogS29lbmlnLCBDaHJpc3RpYW4gPENocmlzdGlhbi5Lb2VuaWdAYW1kLmNvbT4NCj4g
U2VudDogV2VkbmVzZGF5LCAyOSBKdW5lIDIwMjIgNToxMiBwbQ0KPiBUbzogWmhhbmcsIEplc3Nl
KEppZSkgPEplc3NlLlpoYW5nQGFtZC5jb20+OyBicm9vbmllQGtlcm5lbC5vcmc7IGFsc2EtZGV2
ZWxAYWxzYS1wcm9qZWN0Lm9yZw0KPiBDYzogTXVrdW5kYSwgVmlqZW5kYXIgPFZpamVuZGFyLk11
a3VuZGFAYW1kLmNvbT47IEhpcmVnb3VkYXIsIEJhc2F2YXJhaiA8QmFzYXZhcmFqLkhpcmVnb3Vk
YXJAYW1kLmNvbT47IERvbW1hdGksIFN1bmlsLWt1bWFyIDxTdW5pbC1rdW1hci5Eb21tYXRpQGFt
ZC5jb20+OyBQYW5kZXksIEFqaXQgS3VtYXIgPEFqaXRLdW1hci5QYW5kZXlAYW1kLmNvbT47IE5p
cm1veSBEYXMgPG5pcm1veS5kYXNAbGludXguaW50ZWwuY29tPjsgTWFhcnRlbiBMYW5raG9yc3Qg
PG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT47IE1heGltZSBSaXBhcmQgPG1yaXBh
cmRAa2VybmVsLm9yZz47IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPjsg
RGF2aWQgQWlybGllIDxhaXJsaWVkQGxpbnV4LmllPjsgRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZm
d2xsLmNoPjsgU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz47IG9wZW4gbGlz
dDpEUk0gRFJJVkVSUyA8ZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz47IG9wZW4gbGlz
dCA8bGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZz47IG9wZW4gbGlzdDpETUEgQlVGRkVSIFNI
QVJJTkcgRlJBTUVXT1JLIDxsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmc+OyBtb2RlcmF0ZWQg
bGlzdDpETUEgQlVGRkVSIFNIQVJJTkcgRlJBTUVXT1JLIDxsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmc+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjFdIEZpeDogU1lOQ09CSiBUSU1FTElO
RSBUZXN0IGZhaWxlZC4NCj4NCj4gQW0gMjkuMDYuMjIgdW0gMDg6MDIgc2NocmllYiBqaWUxemhh
bjoNCj4+ICAgIFRoZSBpc3N1ZSBjYXVzZSBieSB0aGUgY29tbWl0IDoNCj4+DQo+PiA3MjEyNTVi
NTI3KGRybS9zeW5jb2JqOiBmbGF0dGVuIGRtYV9mZW5jZV9jaGFpbnMgb24gdHJhbnNmZXIpLg0K
Pj4NCj4+IEJlY2F1c2UgaXQgdXNlIHRoZSBwb2ludCBvZiBkbWFfZmVuY2UgaW5jb3JyZWN0bHkN
Cj4+DQo+PiBDb3JyZWN0IHRoZSBwb2ludCBvZiBkbWFfZmVuY2UgYnkgZmVuY2UgYXJyYXkNCj4g
V2VsbCB0aGF0IHBhdGNoIGlzIGp1c3QgdXR0ZXJseSBub25zZW5zZSBhcyBmYXIgYXMgSSBjYW4g
c2VlLg0KPg0KPj4gU2lnbmVkLW9mZi1ieTogamllMXpoYW4gPGplc3NlLnpoYW5nQGFtZC5jb20+
DQo+Pg0KPj4gUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdA
YW1kLmNvbT4NCj4+DQo+PiBSZXZpZXdlZC1ieTogTmlybW95IERhcyA8bmlybW95LmRhc0BsaW51
eC5pbnRlbC5jb20+DQo+IEkgaGF2ZSBzdHJvbmcgZG91YnRzIHRoYXQgTmlybW95IGhhcyByZXZp
ZXdlZCB0aGlzIGFuZCBJIGNlcnRhaW5seSBoYXZlbid0IHJldmlld2VkIGl0Lg0KPg0KPiBDaHJp
c3RpYW4uDQo+DQo+PiAtLS0NCj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9kcm1fc3luY29iai5jIHwg
MiArLQ0KPj4gICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0p
DQo+Pg0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fc3luY29iai5jDQo+PiBi
L2RyaXZlcnMvZ3B1L2RybS9kcm1fc3luY29iai5jIGluZGV4IDdlNDhkY2QxYmVlNC4uZDVkYjgx
OGYxYzc2DQo+PiAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fc3luY29iai5j
DQo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3N5bmNvYmouYw0KPj4gQEAgLTg4Nyw3ICs4
ODcsNyBAQCBzdGF0aWMgaW50IGRybV9zeW5jb2JqX2ZsYXR0ZW5fY2hhaW4oc3RydWN0IGRtYV9m
ZW5jZSAqKmYpDQo+PiAgICAJCWdvdG8gZnJlZV9mZW5jZXM7DQo+PiAgICANCj4+ICAgIAlkbWFf
ZmVuY2VfcHV0KCpmKTsNCj4+IC0JKmYgPSAmYXJyYXktPmJhc2U7DQo+PiArCSpmID0gYXJyYXkt
PmZlbmNlc1swXTsNCj4+ICAgIAlyZXR1cm4gMDsNCj4+ICAgIA0KPj4gICAgZnJlZV9mZW5jZXM6
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=

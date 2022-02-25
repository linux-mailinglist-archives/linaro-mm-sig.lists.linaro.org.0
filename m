Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 035614C41EE
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Feb 2022 11:05:42 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C92803EF10
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Feb 2022 10:05:40 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2053.outbound.protection.outlook.com [40.107.243.53])
	by lists.linaro.org (Postfix) with ESMTPS id AC7B53EB7E
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Feb 2022 10:05:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HIjoaHmBPFwL2bNCI/UwZj5/I87iRortLB8nvqwRhG09nnGAX493jtMFCaE/b6kdD6aiYsQb3dJhRQEIIhPyH0cssM4iHUsKpD8cT3RXmGGMw0h1mEFIuMpfld+P6D30LlOFx4nemhE5ZHxNCcj/W9E7TtL82TVQNlLDOBS712EUh6KFFtqlR2WQeWvAyV/firYRyTV0Dpi4g1cNIX9UBXIWH6CKwmVhp0Eou743MKivmyCkxg1obNTKJ8JG/KIYBc98LWVHm/uznnlim9z1midk2wh0/hVYdm+FKqFSGPGqaTzGNeAoShd59vhQMLj4E9awoosKGqYNks4F1pQ+lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EGmmUiQBUVPT3ZdIRaI5Q8v25VA0rWwVl3W/f+c/91M=;
 b=CNcW3TSbhKe+kZY8HGIQRB3XJ+KHcmHc/5+nqwsmoc4I5pSdcSjKnjJY0oPWW7GUQOOY1L/u64aMI/QUvC5cGh7m+DOmtAJhATWcJDedL2v5/VK+qjXlWZt8gTi7NWJaT8nKEEANMJgUUM6dMrwIf8cFCbhjEuJ2in852vdbRW64/miUZ07koaPppeGhvd3nCwUpn8t2RvzDm7ZPJ4g8Aw53o5u3N4DDr2di91eaSmI/idKIPB/3/s8e9VBoT4AAViL9mkFZpe/SZmW8ZWwRqT83asrVlNtlSWBJ6lhqqAZn0KrEdEjsb3aLXu1sqFs5cQ3BNaFu8I7i10Wsxt4A7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EGmmUiQBUVPT3ZdIRaI5Q8v25VA0rWwVl3W/f+c/91M=;
 b=yo2d6xKurZlQT5AiYZJReE0NFCfgbuWQeHK6L4J0u8J3Yih8MFKOGWbyhqqiCVlTW/XDRdVWM3yf2WlfQ8qdzTWGMCDfFBcbJj9+1OnR9G67dmmWcfMMqJRiuPlXknTi1DbuXXISVXZKJhCBrr5F9cWxHk7VT+AaZHLUfmPmk4U=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by DM4PR12MB5232.namprd12.prod.outlook.com (2603:10b6:5:39c::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.25; Fri, 25 Feb
 2022 10:05:37 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::e03f:901a:be6c:b581]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::e03f:901a:be6c:b581%6]) with mapi id 15.20.5017.022; Fri, 25 Feb 2022
 10:05:37 +0000
Message-ID: <dbe0c10b-2efb-7637-6cae-ccfa33a39efb@amd.com>
Date: Fri, 25 Feb 2022 11:05:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20220225073351.3565619-1-daniel.vetter@ffwll.ch>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20220225073351.3565619-1-daniel.vetter@ffwll.ch>
X-ClientProxiedBy: AS8PR05CA0007.eurprd05.prod.outlook.com
 (2603:10a6:20b:311::12) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c240a618-a4e6-4335-4742-08d9f8465ee5
X-MS-TrafficTypeDiagnostic: DM4PR12MB5232:EE_
X-Microsoft-Antispam-PRVS: 
	<DM4PR12MB52320118452CDECF771065C1833E9@DM4PR12MB5232.namprd12.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ckLZqS+Eba8LFsgAgmGNwpqepzIFaQktHTbbvAQCrpWDVj4/X3jXnHZALEiFpJGYJH29qWBKQiucJfmh9kGfr2GPh5RgecaRTOPVqO1YIRUmHgvcWcko4c3gQLIVXdoCz+Amzl7kdUGgMaZYARslxz+Y26nxXJ90ao/KSRZAlz8s0i24pAfznp52lCM/YYjbxmzTItbBUzIafZv9gFRzz81yEEeXUQw9BYEAY1UZIvfDAoGITauj8deMMaBn5dbPx47k+ypcNLUgcFYr03WGR9x8hYPRixBQYMxWIYbME+V4RItzSdyPrS184jyJHRHrf5uQvq105f5ijB+X14Y4ukuj7bP7ieoaPv1GVCwXM6aymAx+ee412auZIFR7DwAFc3VkAHhfIggsh6L90Dz/GiLI7v16hBUx6uiCkqImUlE3z7SYJ7+wR1laTORl4wrAd+i53E0Amc1nG5R/FfsmXbHhDinH8JJ8l6wAYFWyt97K/DFyAxyW8ayArpfAUSkhsgeBTmAaNysPSNui+Li6/lDrOLTTGiTT6xdedWBzgKLoJ0VmATCJvma0xJ47MxLcynxVpzBv4NfDe2ooxnH7mzw51dc9qaArPjM2igocAuKaVJh68hiVKiBEakjAZrZ7ePZ2Lp5S4cIOE3FVlhTctEgC4gxXLEtBdXtdZU+ozErRENrggSAN0/REbcF/4PMgvxzysOsfdLQKPIpYUG4FUewbDT6HAyTvpn3bDZdpu9tWuwCd8s3NLMlpnjL13Fsc
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(186003)(54906003)(110136005)(83380400001)(66574015)(31696002)(38100700002)(86362001)(66946007)(8676002)(66556008)(66476007)(2906002)(4326008)(316002)(2616005)(508600001)(31686004)(5660300002)(6506007)(6666004)(8936002)(6486002)(36756003)(6512007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?d1AxRG11eE5tNjc1aFNLeVZzVGI3NFN1enRpY3hydXU2T0pwNktQaTlLYTh1?=
 =?utf-8?B?eHgyTzhzQkdFYlZxZ1hYSHl0R01zSGhGUVB6K0pFWmxtY1R1UzUzZktyTTZD?=
 =?utf-8?B?YUtMdFdiQlJuSGNCNmhpdFR6WlFZRG5RUnpKdzFwdW83MUY3NWFPdlJNR3Vl?=
 =?utf-8?B?S3NqaXFNY0F4cEJia3EvS25mZURKcTk3RHhWcjRRajJqYnBUeUlQSTZOMlEr?=
 =?utf-8?B?R0trcWpVN2NoMUVDdkxaMklrMnJIVm41VnlwaG8zN3RESDF1QkRRODNBWnZK?=
 =?utf-8?B?SWxqNHFvZFd2OUQ5MTlLV3pycDl0WFh3dnl5UTFtMXcxK00ya3FCUm5wTG1J?=
 =?utf-8?B?Zm1za0ZhNnRDbTNMWWpDUGlqUDJzUGZ3NkR4RXA5SFlSNzRCbmtHS3hnOVZx?=
 =?utf-8?B?cnhLa1VtekxaTEVEUWZreFVLM2VybElXOHNPbzhTZmN1Y0JpUnllcEsxWTc2?=
 =?utf-8?B?TUlNblNobWRWYnFsNEV3UU5mbktQMWtPdjB1OEpOaC9HVlR1NG1lZWl4VURH?=
 =?utf-8?B?YS93eWtqTnZWcDY1eFlyTnNmQ05PdWgwa2llWXRxbTdReUFydXNNRDVmSlpj?=
 =?utf-8?B?d3NLTFcvSkVnQndqVElheU1zWmJMT0tDbkNjRnVnSlpVTWFMT2tFcGlPcE9o?=
 =?utf-8?B?MkJKUlJ2N204MENiOG9KUFU2Q2RIYkVMaUxDaHpZU29ScXJ1Z2VZNWpiMzM1?=
 =?utf-8?B?eHI2aWJCd0xHTUtOY3k1YUlnNmJqaHhOWU1Lb0pWY0xpeHdFUUpJZ0FtV1Uw?=
 =?utf-8?B?Sk9kUlVlVkI0Vm1KZzhCdmhCTEQ4UHgwd0dWREVuQ3NYS1l0QUpPdUVRT0ZW?=
 =?utf-8?B?UEVjSFJHWkZ2TitUMHpCdlZHN21KU1pnRDNvRW13SXk0SjBXSHIvTXN5SVY3?=
 =?utf-8?B?Qm1sZlZNSUR0ZU9Dc1ZQakhiMUVvZEdXWkltcVhWT1UvZE1EazEvTW9WU2V1?=
 =?utf-8?B?WVNrQUg1MjhsZkwzZ0tjRXAzS0l5RlJCVEY5QmdqWDRXeUdBN2M3d1Nyb1dy?=
 =?utf-8?B?TjZ6d2l1aWZGdXMwOW5ETlgyUVNudDE5SlUwbG5taGZ4aWhhTFhzU0NXa1Ro?=
 =?utf-8?B?S3JpT2FWOUVQdzB6RktGWi96b2JCSTVieVIzQXJ2RVA0V1Z1VGNSb1Z1L1NL?=
 =?utf-8?B?SFArVmN1Q0Vja0xIYlRBbXBsVUVRQ3RkYlRMYXVJTHFyYmo1RUJlekwvUnpN?=
 =?utf-8?B?dXN6cjZZRnlDQnVSS0U0SGEweGFRblhuSGxJZitWdk43em9waVJ1NlFPV3dS?=
 =?utf-8?B?ZEZ6MEhKRlpGaXUxUlk0dHlXSkRZdmhrbXJNRXVBL1JWL0YzSmM0NkY1VitO?=
 =?utf-8?B?Z2M4TTUwNVllZlU1K3pTaVU2YWVTdm8rRzA5ZkFOMUNFcGh0aU1lWTVLQ0V2?=
 =?utf-8?B?NFhzQ21tc1Y5NTFMVGpkaXNMRDZ1d0JTWVBib3crSy9laisvOHBYNTFzNy84?=
 =?utf-8?B?c3BMSFJjR243Q2srdlJRbXNsMXlaeUpSYVEyVnpNZ0tvaEZaMlpiOG52ZGdS?=
 =?utf-8?B?WFhhdmhWOVFIcGN4TFRTeGxBNXdPdkJPUGYzK3hWbERpT1VDUzV5ODNoVWJz?=
 =?utf-8?B?YkttMFNTanpMUzNiRTl5dnJRVHVYVTdiWnVUUER6TVRPbzRqOWpNRGQzVUhh?=
 =?utf-8?B?d3krRE5LMEEyRExvTnpiYXg1NytOdCsycjc4RFlVNnlpdHlKOE9aOXZrRThD?=
 =?utf-8?B?RXNpOE9JWEJ5d25Oc1pxdGdibjc0L1lIWUtsMXFkOGdjQjVYSlE2ZWFxUTZk?=
 =?utf-8?B?OFBxSEVmam1PV004am5lb2ZhMkVGRjBNS0k1cWFGY283dCtHUWRjc29HWUg4?=
 =?utf-8?B?QUMxbjg1dmcvd05FT0paYXdOTnlNd0RVT3hwVGJ4ZGhjNjBPSHZDdTBCam43?=
 =?utf-8?B?bGtWdldGNkdhMEJOMGpYaTNKZmFmR0hjaUhFYUZoekFTWlFTNlk3MmxJcWZr?=
 =?utf-8?B?OWp0cUIvNzA3UWFMRVFGUnVuMTNiQzZnNWFxSTB1RlgvWjNqTEN2dWZmSllE?=
 =?utf-8?B?M205YU1PeHNRME1BMVBqK3J6TyswU2N4dTdHcDg2Um5JdEUyZUprbG1ncy9W?=
 =?utf-8?B?Y0dQbnNpakRnbWNNd09LZTA4MERKOSt0WTJjZDRQdmx0MWlzbWpDQmVuWFlY?=
 =?utf-8?B?eVdxaDZJNlhNejk0cDFqdzcvZmg5amVtSXhiRGJwdGxKNlBxUTkrRzNhdC8r?=
 =?utf-8?Q?glyiNo6qZCnPXBVSeAKW8mA=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c240a618-a4e6-4335-4742-08d9f8465ee5
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2022 10:05:37.5306
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ulPxW7ynnF7mUK1urYk2jYU4SE4mw8QQKVym3/abdb2rossHddacjRI3QffBHEH0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5232
Message-ID-Hash: N53F2HB5HQURYWTIX3MANKGCZOZN62AR
X-Message-ID-Hash: N53F2HB5HQURYWTIX3MANKGCZOZN62AR
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Matthew Brost <matthew.brost@intel.com>, Daniel Vetter <daniel.vetter@intel.com>, Gustavo Padovan <gustavo@padovan.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fance: Add dma_fence_assert_in_signalling_section
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/N53F2HB5HQURYWTIX3MANKGCZOZN62AR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjUuMDIuMjIgdW0gMDg6MzMgc2NocmllYiBEYW5pZWwgVmV0dGVyOg0KPiBVc2VmdWwgZm9y
IGNoZWNraW5nIGZvciBkbWEtZmVuY2Ugc2lnbmFsbGluZyBhbm5vdGF0aW9ucyBzaW5jZSB0aGV5
DQo+IGRvbid0IHF1aXRlIG5lc3QgYXMgZnJlZWx5IGFzIHdlJ2QgbGlrZSB0by4NCj4NCj4gQ2M6
IE1hdHRoZXcgQnJvc3QgPG1hdHRoZXcuYnJvc3RAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5
OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4NCj4gQ2M6IFN1bWl0IFNl
bXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+DQo+IENjOiBHdXN0YXZvIFBhZG92YW4gPGd1
c3Rhdm9AcGFkb3Zhbi5vcmc+DQo+IENjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5r
b2VuaWdAYW1kLmNvbT4NCj4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZw0KPiBDYzog
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnDQo+IC0tLQ0KPiAgIGRyaXZlcnMvZG1hLWJ1
Zi9kbWEtZmVuY2UuYyB8IDE5ICsrKysrKysrKysrKysrKysrKysNCj4gICBpbmNsdWRlL2xpbnV4
L2RtYS1mZW5jZS5oICAgfCAgMiArKw0KPiAgIDIgZmlsZXMgY2hhbmdlZCwgMjEgaW5zZXJ0aW9u
cygrKQ0KPg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIGIvZHJp
dmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+IGluZGV4IDA2NjQwMGVkODg0MS4uMmI3YzNmYzk2
NWU2IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4gKysrIGIv
ZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+IEBAIC0zMDcsNiArMzA3LDI1IEBAIGJvb2wg
ZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGxpbmcodm9pZCkNCj4gICB9DQo+ICAgRVhQT1JUX1NZTUJP
TChkbWFfZmVuY2VfYmVnaW5fc2lnbmFsbGluZyk7DQo+ICAgDQo+ICsvKioNCj4gKyAqIGRtYV9m
ZW5jZV9hc3NlcnRfaW5fc2lnbmFsbGluZ19zZWN0aW9uIC0gY2hlY2sgZmVuY2Ugc2lnbmFsbGlu
ZyBhbm5vdGF0aW9ucw0KPiArICoNCj4gKyAqIFNpbmNlIGRtYV9mZW5jZV9iZWdpbl9zaWduYWxs
aW5nKCkgYW5kIGRtYV9mZW5jZV9lbmRfc2lnbmFsbGluZygpIGFyZSBidWlsdA0KPiArICogdXNp
bmcgbG9ja2RlcCBhbm5vdGF0aW9ucyB0aGV5IGhhdmUgbGltaXRhdGlvbnMgb24gaG93IGZyZWVs
eSB0aGV5IGNhbiBiZQ0KPiArICogbmVzdGVkLiBTcGVjaWZpY2FsbHksIHRoZXkgY2Fubm90IGJl
IG9uIGJvdGggaW5zaWRlIGFuZCBvdXRzaWRlIG9mIGxvY2tlZA0KPiArICogc2VjdGlvbnMsIHdo
aWNoIGluIHByYWN0aWNlIG1lYW5zIHRoZSBhbm5vdGF0aW9ucyBvZnRlbiBoYXZlIHRvIGJlIHB1
c2hlZCBvdXQNCj4gKyAqIHRvIHRoZSB0b3AgbGV2ZWwgY2FsbGVycy4NCj4gKyAqDQo+ICsgKiBU
byBlbnN1cmUgbG93LWxldmVsIGZ1bmN0aW9ucyBhcmUgb25seSBjYWxsZWQgd2l0aCB0aGUgY29y
cmVjdGlvbg0KPiArICogYW5ub3RhdGlvbnMsIHRoaXMgZnVuY3Rpb24gY2FuIGJlIHVzZWQgdG8g
Y2hlY2sgZm9yIHRoYXQuDQoNCkkgdGhpbmsgSSBuZWVkIGEgY29uY3JldGUgZXhhbXBsZSB0byB1
bmRlcnN0YW5kIHdoYXQgdGhpcyBpcyBnb29kIGZvci4NCg0KQ2hyaXN0aWFuLg0KDQo+ICsgKi8N
Cj4gK3ZvaWQgZG1hX2ZlbmNlX2Fzc2VydF9pbl9zaWduYWxsaW5nX3NlY3Rpb24odm9pZCkNCj4g
K3sNCj4gKwlpZiAoIWluX2F0b21pYygpKQ0KPiArCQlsb2NrZGVwX2Fzc2VydChsb2NrX2lzX2hl
bGQoJmRtYV9mZW5jZV9sb2NrZGVwX21hcCkpOw0KPiArfQ0KPiArRVhQT1JUX1NZTUJPTChkbWFf
ZmVuY2VfYXNzZXJ0X2luX3NpZ25hbGxpbmdfc2VjdGlvbik7DQo+ICsNCj4gICAvKioNCj4gICAg
KiBkbWFfZmVuY2VfZW5kX3NpZ25hbGxpbmcgLSBlbmQgYSBjcml0aWNhbCBETUEgZmVuY2Ugc2ln
bmFsbGluZyBzZWN0aW9uDQo+ICAgICogQGNvb2tpZTogb3BhcXVlIGNvb2tpZSBmcm9tIGRtYV9m
ZW5jZV9iZWdpbl9zaWduYWxsaW5nKCkNCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1h
LWZlbmNlLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQo+IGluZGV4IDc3NWNkYzBiNGYy
NC4uNzE3OWE1NjkyZjcyIDEwMDY0NA0KPiAtLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5o
DQo+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCj4gQEAgLTM1Niw2ICszNTYsNyBA
QCBkbWFfZmVuY2VfZ2V0X3JjdV9zYWZlKHN0cnVjdCBkbWFfZmVuY2UgX19yY3UgKipmZW5jZXAp
DQo+ICAgDQo+ICAgI2lmZGVmIENPTkZJR19MT0NLREVQDQo+ICAgYm9vbCBkbWFfZmVuY2VfYmVn
aW5fc2lnbmFsbGluZyh2b2lkKTsNCj4gK3ZvaWQgZG1hX2ZlbmNlX2Fzc2VydF9pbl9zaWduYWxs
aW5nX3NlY3Rpb24odm9pZCk7DQo+ICAgdm9pZCBkbWFfZmVuY2VfZW5kX3NpZ25hbGxpbmcoYm9v
bCBjb29raWUpOw0KPiAgIHZvaWQgX19kbWFfZmVuY2VfbWlnaHRfd2FpdCh2b2lkKTsNCj4gICAj
ZWxzZQ0KPiBAQCAtMzYzLDYgKzM2NCw3IEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBkbWFfZmVuY2Vf
YmVnaW5fc2lnbmFsbGluZyh2b2lkKQ0KPiAgIHsNCj4gICAJcmV0dXJuIHRydWU7DQo+ICAgfQ0K
PiArc3RhdGljIGlubGluZSB2b2lkIGRtYV9mZW5jZV9hc3NlcnRfaW5fc2lnbmFsbGluZ19zZWN0
aW9uKHZvaWQpIHt9DQo+ICAgc3RhdGljIGlubGluZSB2b2lkIGRtYV9mZW5jZV9lbmRfc2lnbmFs
bGluZyhib29sIGNvb2tpZSkge30NCj4gICBzdGF0aWMgaW5saW5lIHZvaWQgX19kbWFfZmVuY2Vf
bWlnaHRfd2FpdCh2b2lkKSB7fQ0KPiAgICNlbmRpZg0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

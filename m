Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B2C557366
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Jun 2022 08:59:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 432A73F459
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Jun 2022 06:59:55 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2077.outbound.protection.outlook.com [40.107.237.77])
	by lists.linaro.org (Postfix) with ESMTPS id 7FEA73EA51
	for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Jun 2022 06:59:50 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EG0poeXlSpUR7cIw0qR22WETtAvE0aRDGIZkqtDVW6cACxzTvR42HRxnWexHBesGVDOnTkKZQ8wpKkT4NgF6pscRE9VWfQ28DnrunBiRLxHpK/msa0h+fKdiDktpAlZKdJQzU/udpPmUaDuP9gQAi4KZEbHifcyvCM2nF99i0+2+GFsNhEa+rQQvJsLkSaEUvaGviAYWCbIOQzfY7YPmtbM0teragPeNiK09TPa3cSZFiF2EgyhAzTW9oUJhjTuARLwPjw/let6CQmcEdJo4VRNZt/Dgf5Z/R9oV6qRAWW2FLCFfQZLVnEekFo2spOeG4HbrCmgitLvciJNctYPtNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EZcs0f0QSTT+UZ/bAPCFSuFf97Nc4vIseo9bJOsQAYY=;
 b=I+lIokdNORrs5+th/4G+p8I2/R6gDa/nf+5P9pYuCODJ26Tzm3cIINa+sYPOpUpz9ZkjsTQm2ckJ6ewznrzRu7Lrcl1dpShGg8/5wnXRzKG+pDtPQUax8GggYUkfoQdFELa+k9rh7ZTZZPAR2gUQC88XoHsaeEm/WnA7lTgUH+NXDoeXVnTz1N9EfCm4CzQtWr/j6UNze/jCSRBq8pscf02fMCeL6yAFh/qLhYiPLzNjl0Xo19/38zhiMD5I6FVIK9ZiinBSN+XgcjThrQcBbdkSJLE/1Xh7CdTzFagOV+up0wougqtI8bXyWlqnD7eeRRewvDUnB0rhCseudkK07w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EZcs0f0QSTT+UZ/bAPCFSuFf97Nc4vIseo9bJOsQAYY=;
 b=vZ+u6YnT1OXQvjRoq//snZeVHX1/MGUqb8xs5ne6f2uNv0fIpCxwjNexkQiM2aeYLE0SG7lLkS2Nj2YeBdqBEiMnJSYGGs5G31iFDWhxZPq6IsAorm3FgB+0IDbZOMzEGN1sFA51gZ4z5vOnyzBX/CDiW9TMlKPysH9W63OgcO0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by DM5PR12MB1722.namprd12.prod.outlook.com (2603:10b6:3:107::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.15; Thu, 23 Jun
 2022 06:59:48 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::e0fd:45cf:c701:2731]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::e0fd:45cf:c701:2731%6]) with mapi id 15.20.5373.015; Thu, 23 Jun 2022
 06:59:48 +0000
Message-ID: <c6e65ee1-531e-d72c-a6a6-da7149e34f18@amd.com>
Date: Thu, 23 Jun 2022 08:59:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Daniel Stone <daniel@fooishbar.org>,
 Nicolas Dufresne <nicolas@ndufresne.ca>
References: <91ff0bbb-ea3a-2663-3453-dea96ccd6dd8@amd.com>
 <YCuPhOT4GhY3RR/6@phenom.ffwll.local>
 <9178e19f5c0e141772b61b759abaa0d176f902b6.camel@ndufresne.ca>
 <CAPj87rPYQNkgVEdHECQcHcYe2nCpgF3RYQKk_=wwhvJSxwHXCg@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <CAPj87rPYQNkgVEdHECQcHcYe2nCpgF3RYQKk_=wwhvJSxwHXCg@mail.gmail.com>
X-ClientProxiedBy: AM6PR01CA0040.eurprd01.prod.exchangelabs.com
 (2603:10a6:20b:e0::17) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cb594a61-bc74-4306-2945-08da54e5f601
X-MS-TrafficTypeDiagnostic: DM5PR12MB1722:EE_
X-Microsoft-Antispam-PRVS: 
	<DM5PR12MB17223D65B4444C9D5ED4619B83B59@DM5PR12MB1722.namprd12.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	6fL375RPyYDtPu6X2ZRCSPiiwBg7INU14KVLS7GmBjumWUYJ4kGmtcXCM72tMCB7u6lNc8vbxT2qKwbVHXu8qVOgTpSyQbhzdDX5sbMmWqwN/kjfFMFLWwB9eybqRrq3yAeB+Ub785tvgSJYB9vXayglWh4RQO57Qp5mOCym6LdxJBmFQAP78eEa6JhIuAt9TBhZpqidOaikxJWaFqqc6GrFdrW2LRpqF787ycGcF8J06caNebuazfRtJN5LqROxOofisWIfprjWPk/HMomGYio0eYMFa9X22QZNREAwQfzRaEGxiUkfXKZhomWApmgCnK32F+s76gwa+lQm5cGvdl0ayDFaGPl+u6t0tIakSLBeT33ihNjRA30VXmd2GgsaVc1+rIBE4SWNGKB0moiBGCgntmrszLWLSjIDvS1LHf2JaGbPxCW0iwUdwTKSgI1Zxorn29re+errhHCg1QljJxd4qA5oW2DfxRhwHbj82HFX2jcie1oASIVfgy8reSBlGNTshXnNFkV6VQ1QVAgiEvhIkr05H3uR7bBcS8bp8oPtGXpVJ3isxbKTzKKUAbaKXtR5LG6L9va29srpjbsbwySHUKhgCJUINZ83deVK67fAmf0p8ODgTj2wuoKZkIvqORZ9sO8ZsbRfatj6lSytQ3s2Gazw5XMN0kgF6r0b1/1gCXRc/WXDeqfsz/n+cZvp9lyffecIjdGQNK5lMT1QrRd9YAgiWjuA9A9eZeGkJodkYqBJMFB0UoaBgcvhKgGu+iCvs2BiE5mURjLSXThI+VHuEDFUics/ZzxwG9TVN8M=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(366004)(39860400002)(396003)(376002)(136003)(2616005)(41300700001)(186003)(4326008)(66574015)(38100700002)(66946007)(31686004)(110136005)(66476007)(36756003)(316002)(83380400001)(66556008)(8676002)(54906003)(478600001)(86362001)(26005)(8936002)(6486002)(5660300002)(31696002)(2906002)(6666004)(6512007)(6506007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dDREWkc4Y0hUQ3hsVno4OHdBL2M1ZnIrU2JNUXIxQkRYVHpnbzBJcXI0MHhF?=
 =?utf-8?B?OVlUT29aWXpzTGM5am5aT2JtT1RJcDEya1YvWG9TbmtSV3RBc0x1ZEtnc1A1?=
 =?utf-8?B?aHJybm1NNmZZcnF5aTRKRmROTmsyZnczTUVleEViQWJmWWQyd2tyMk41U2E4?=
 =?utf-8?B?SlhRKzJucUcvN0lLeHZ2S3FnVDRKMFg2MUw3UlVuZmtRZ05Vb3NQU2lkRDlM?=
 =?utf-8?B?cUx5aGtVd25YMWNYYmgraEk0RW4yOUkyTUMxVnVpK00vRmRxK0RJZDRzVnhN?=
 =?utf-8?B?UFFkOU0rVVZrUVE2UERCV0krOUo1UXQ1a3ZTZytzRHVKc0d0ODlJSnZ3TENV?=
 =?utf-8?B?Q3RJN21iczVwSFFmTGNuQWs2SFg2MGlUV3hpNjM4MnlDMUU2ZTBZSDhhc3cr?=
 =?utf-8?B?WnNwZVlYT1dnZCtVVFdVamdnSEpKZUx4SGNhWnlYQWJSczh5MlhwOUF2d0VU?=
 =?utf-8?B?aER5QW91WVpGeXc2K3FuRGluakExcERoR1pjdURoMmtZdVZnVDRNb2lOV3hr?=
 =?utf-8?B?amJjZnRCaE5qdFlTV2F2RTlhRklpQ2NSaVJISmR5R2h4ZWhsQXZiQ3FyTE9S?=
 =?utf-8?B?NFA5RitydVBtbkJKZHVMREJiclpDWDNhYUtIOHJTQmZhc2tFdCs0aW9qNUcx?=
 =?utf-8?B?L1o1ZVBKbWJFbTZjVHpXL01UdzIwRms4SmFwNEx6NUkwd2xyelpuUVpSSGpN?=
 =?utf-8?B?N0t6TGo2V3d4WnlKemFXS1lEazFSOW9uZ2VuOUc1enFCeG9DQVgwVmxCODVK?=
 =?utf-8?B?SlJhdWlLWGMxRUZzRjZzbXdYRXkzM0dtVTAxWWRvbHMyRDQzbExtWUUvbzBr?=
 =?utf-8?B?ME1HUElKdm1vemhSTlMyVW9DcTB3ZHpoVSticE5CaWRaelpoWDhRUnlIVUNy?=
 =?utf-8?B?clFmSFROWjZoT3g5VFF5c3dxRUt0Z0o0WGVLU3VmODZGTlZSN0NpZ3FxMkw3?=
 =?utf-8?B?bjlGSEo3YVViT0x4TmxvK1FjTTdrMkx0YW9Yb2RiRjJLU1d2MVVrWWI1VW5t?=
 =?utf-8?B?V2ZVZ1E4dHJlTkk3QWpDQmdLNFltN0ZIS0VyOTQrL1RtRWZ1VDZWRUVsc1Zj?=
 =?utf-8?B?T3R2eTlPQVFzUk5aMDhZUTVRaTRwZDY1L214MzErZE40UEJDcGxuLzNkZng4?=
 =?utf-8?B?QldsSmxpY0hab05ST1E2NDYrM0llamltRDQ5Y2lwcHYyZ0tXQTU4S1ZGMEdX?=
 =?utf-8?B?ZHM4bDJkUmJpUmRCdXJlUlRVNHM2ZXc3VFNnVWg3ZTcrbzJIZS9xQ1lKaisr?=
 =?utf-8?B?NEE4Z3ZYRWtjTndaY2RZam9HSm9kVlA4MkxMdVJnVEpvN2trRC9ENXBOQUY1?=
 =?utf-8?B?bmVGUDRldit3NG03QVF2NUJZTktzblJPYnNDY2E1UVA3VUNKNHdYbmdjOWFV?=
 =?utf-8?B?R29MR3FPd0xNWUlsNUZ2ZGVYaVAwNUc2Z2xpZU9PODFkWGtoUzhYcFNRaWxB?=
 =?utf-8?B?Z25MQjhadjR2ZUhBeUxOaXN0a2MxR2pHTFp6K2U0UGZCZkJCdG8xTTF4TVZP?=
 =?utf-8?B?bWZnWVh3OFJEWTBLSzA4NkZnRzByOCszMU9acW1UZzNqVjNRMk85T0luNW9V?=
 =?utf-8?B?SGxoeFpxc0k4SWhhQWYzbVd4SzBZVUZveERqTjNXeFFxVzNqQkkvdVFSVEdt?=
 =?utf-8?B?VUhlemphcU1yc2dsbnJVck5LWWVPOVNoWkJVVm4wUXJRS0NWZ1NWMGhDTWwv?=
 =?utf-8?B?aXNuaFgwRTlWZ3RPZjNuWkZDRU9wUmFPa1dUK09NREswZHl5V2RGOVd5Z3NM?=
 =?utf-8?B?VTI0N1pxYXEySjRxTXR3L2sxZUhXa2Y0SjFNcXBGOFVvSytHZEhkZVBHallV?=
 =?utf-8?B?c0hRSFUwVE83bjFFdUU2VUc3RUh1RldBUHBxdTl5aGp3ZXQyYjc4NXA2b0tU?=
 =?utf-8?B?Ykg1ekx2UVdhaGdnY29vbUtKdUVsNEkvbm9PODk0b1N6VGdJY2k1UGpkSkw0?=
 =?utf-8?B?ZW9oNjBBaEl6dHR0Y2NuZVJGM29YalJoSWpoWTU0ZFJvQmkvYTNqOE5NUGxI?=
 =?utf-8?B?QTlRcWlyeW4wOHJkR1lHZ3U3SE8rT1d1ZWNrZEUzZm5tWi9CdmVvOENyT3I3?=
 =?utf-8?B?dXJuS0g3QVgwMWJjd21iVk5pdld6SldGSVc4cmlySmJoczdBM0JyZnJZSFN2?=
 =?utf-8?B?ZVpLbGFMWng4QnpjTWdGbG5aL09PK09ZaVhmTGV6TCt4T1dvVi94N0FCRkJM?=
 =?utf-8?B?QUxscUcwRDhWWHpvVjFZd1M4akpyQ2U4UEZqRy9SSU8yak42MkpjdFBWY0RM?=
 =?utf-8?B?am53YTBPWkJaakZOOFlJS1BvQ2lUclpsZWlyM2ZjQ1FCVmpFODlaaGNMcFdP?=
 =?utf-8?B?MHRGQk52UE9lTG5MemY4enkwVU56UXFNNE9zTzMzR2xlQml4NlVpZz09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb594a61-bc74-4306-2945-08da54e5f601
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2022 06:59:48.0049
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: duBCBOw/4MIN3I7wdS2YX0B90OaUBDld6wZY7VfsQkFZgft0HwSgVS1Nfg64aZ4N
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1722
Message-ID-Hash: MMC3UC2INDD66W2QTEBSGT4Q3QOJTTLJ
X-Message-ID-Hash: MMC3UC2INDD66W2QTEBSGT4Q3QOJTTLJ
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Daniel Vetter <daniel@ffwll.ch>, "Sharma, Shashank" <Shashank.Sharma@amd.com>, lkml <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: DMA-buf and uncached system memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MMC3UC2INDD66W2QTEBSGT4Q3QOJTTLJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjMuMDYuMjIgdW0gMDE6MzQgc2NocmllYiBEYW5pZWwgU3RvbmU6DQo+IEhpIE5pY29sYXMs
DQo+DQo+IE9uIFdlZCwgMjIgSnVuIDIwMjIgYXQgMjA6MzksIE5pY29sYXMgRHVmcmVzbmUgPG5p
Y29sYXNAbmR1ZnJlc25lLmNhPiB3cm90ZToNCj4+IExlIG1hcmRpIDE2IGbDqXZyaWVyIDIwMjEg
w6AgMTA6MjUgKzAxMDAsIERhbmllbCBWZXR0ZXIgYSDDqWNyaXQgOg0KPj4+IFNvIEkgdGhpbmsg
aWYgQU1EIGFsc28gZ3VhcmFudGVlcyB0byBkcm9wIGNsZWFuIGNhY2hlbGluZXMganVzdCBkbyB0
aGUNCj4+PiBzYW1lIHRoaW5nIHdlIGRvIHJpZ2h0IG5vdyBmb3IgaW50ZWwgaW50ZWdyYXRlZCAr
IGRpc2NyZXRlIGFtZCwgYnV0IGluDQo+Pj4gcmVzZXJ2ZS4gSXQncyBmcmFnaWxlLCBidXQgaXQg
ZG9lcyB3b3JrLg0KPj4gU29ycnkgdG8gZGlzcnVwdCwgYnV0IGlmIHlvdSBwYXNzIFY0TDIgdm1h
bGxvYyBkYXRhIHRvIEludGVsIGRpc3BsYXkgZHJpdmVyLCB5b3UNCj4+IGFsc28gZ2V0IG5pY2Ug
ZGlydCBvbiB0aGUgc2NyZWVuLiBJZiB5b3UgaGF2ZSBhIFVWQyB3ZWJjYW0gdGhhdCBwcm9kdWNl
cyBhIHBpeGVsDQo+PiBmb3JtYXQgY29tcGF0aWJsZSB3aXRoIHlvdXIgZGlzcGxheSwgeW91IGNh
biByZXByb2R1Y2UgdGhlIGlzc3VlIHF1aXRlIGVhc2lseQ0KPj4gd2l0aDoNCj4+DQo+PiAgICBn
c3QtbGF1bmNoLTEuMCB2NGwyc3JjIGRldmljZT0vZGV2L3ZpZGVvMCAhIGttc3NpbmsNCj4+DQo+
PiBwLnMuIHNvbWUgZnJhbWUtcmF0ZSBhcmUgbGVzcyBsaWtlbHkgdG8gZXhoaWJpdCB0aGUgaXNz
dWUsIG1ha2Ugc3VyZSB5b3UgY3JlYXRlDQo+PiBtb3ZlbWVudCB0byBzZWUgaXQuDQo+IFJpZ2h0
LCB0aGlzIGlzIGJlY2F1c2UgdGhlIFVWQyBkYXRhIGluIGEgdm1hbGxvYygpIGFyZWEgaXMgbm90
DQo+IG5lY2Vzc2FyaWx5IGZsdXNoZWQgZnJvbSB0aGUgQ1BVIGNhY2hlLCBhbmQgdGhlIGltcG9y
dGVyIGV4cGVjdHMgaXQNCj4gd2lsbCBiZS4NCg0KWWVhaCwgYnV0IHRoYXQgaXMgc29tZXRoaW5n
IHBlcmZlY3RseSB2YWxpZCBmb3IgYW4gZXhwb3J0ZXIgdG8gZG8uIFNvIA0KdGhlIGJ1ZyBpcyBu
b3QgaW4gVVZDLg0KDQo+PiBUaGUgb25seSBzb2x1dGlvbiBJIGNvdWxkIHRoaW5rIG9mIChub3Qg
aW1wbGVtZW50ZWQpIHdhcyB0byBkZXRlY3QgaW4gdGhlDQo+PiBhdHRhY2goKSBjYWxsIHdoYXQg
dGhlIGltcG9ydGVycyBjYW4gZG8gKHdpdGggZGV2LT5jb2hlcmVudF9kbWFfbWFzayBpZiBJDQo+
PiByZWNhbGwpLCBhbmQgb3RoZXJ3aXNlIGZsdXNoIHRoZSBjYWNoZSBpbW1lZGlhdGVseSBhbmQg
c3RhcnQgZmx1c2hpbmcgdGhlIGNhY2hlDQo+PiBmcm9tIG5vdyBvbiBzaWduYWxsaW5nIGl0IGZv
ciBEUUJVRiAoaW4gdmIyIHdvcmtxdWV1ZSBvciBkcWJ1ZiBpb2N0bCwgSSBkb24ndA0KPj4gaGF2
ZSBhbiBpZGVhIHlldCkuIEkgYmV0IHRoaXMgaWRlYSBpcyBpbmFwcGxpY2FibGUgdG8gd2VyZSB5
b3UgaGF2ZSBmZW5jZXMsIHdlDQo+PiBkb24ndCBoYXZlIHRoYXQgaW4gdjRsMi4NCj4+DQo+PiBU
aGlzIGlkZWEgd2FzIGhpbnRlZCBieSBSb2JlcnQgQmVja2V0IChub3cgaW4gQ0MpLCBidXQgcGVy
aGFwcyBJIHBpY2tlZCBpdCB1cA0KPj4gd3JvbmcsIGV4cGxhaW5pbmcgaXQgd3JvbmcsIGV0Yy4g
SSdtIG5vIGV4cGVydCwganVzdCBub3RpY2VkIHRoZXJlIHdhc24ndCByZWFsbHkNCj4+IGEgZ29v
ZCBwbGFuIGZvciB0aGF0LCBzbyBvbmUgbmVlZHMgdG8gbWFrZSBvbmUgdXAuIEknbSBub3QgYXdh
cmUgb2ggYW4gaW1wb3J0ZXINCj4+IGNvdWxkIGtub3cgaG93IHRoZSBtZW1vcnkgd2FzIGFsbG9j
YXRlZCBieSB0aGUgZXhwb3J0ZXIsIGFuZCB3b3JzdCwgaG93IGFuDQo+PiBpbXBvcnRlciBjb3Vs
ZCBmaWd1cmUtb3V0IHRoYXQgdGhlIGV4cG9ydCBpcyBnb2luZyB0byBwcm9kdWNlIGJ1ZmZlciB3
aXRoIGhvdA0KPj4gQ1BVIGNhY2hlIChVVkMgZHJpdmVyIGRvZXMgbWVtY3B5IGZyb20gVVNCIGNo
dW5rcyBvZiB2YXJpYWJsZSBzaXplIHRvIHByb2R1Y2UgYQ0KPj4gZml4ZWQgc2l6ZSBpbWFnZSku
DQo+IFRoaXMgaXMgZXhhY3RseSB3aGF0IENocmlzdGlhbiB3YXMgc2F5aW5nIGFib3ZlLg0KDQpX
ZWxsIG1vcmUgb3IgbGVzcy4NCg0KVGhlIGV4cG9ydGVyIGlzbid0IGRvaW5nIGFueXRoaW5nIHdy
b25nIGhlcmUuIERNQS1idWYgYXJlIHN1cHBvc2VkIHRvIGJlIA0KQ1BVIGNhY2hlZCBhbmQgY2Fu
IGFsc28gYmUgY2FjaGUgaG90Lg0KDQpUaGUgaW1wb3J0ZXIgbmVlZHMgdG8gYmUgYWJsZSB0byBk
ZWFsIHdpdGggdGhhdC4gRWl0aGVyIGJ5IGZsdXNoaW5nIHRoZSANCkNQVSBjYWNoZSBtYW51YWxs
eSAoYXdrd2FyZCksIHJlamVjdGluZyB0aGUgRE1BLWJ1ZiBmb3IgdGhpcyB1c2UgY2FzZSANCihk
aXNwbGF5IHNjYW5vdXQpIG9yIHdvcmtpbmcgYXJvdW5kIHRoYXQgaW5zaWRlIGl0J3MgZHJpdmVy
IChleHRyYSBjb3B5LCANCmRpZmZlcmVudCBodyBzZXR0aW5ncywgZXRjLi4uKS4NCg0KUmVnYXJk
cywNCkNocmlzdGlhbi4NCg0KPg0KPiBDaGVlcnMsDQo+IERhbmllbA0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

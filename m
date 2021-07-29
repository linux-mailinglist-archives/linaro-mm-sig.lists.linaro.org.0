Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A8C73DA258
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Jul 2021 13:43:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BD1EB647E6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Jul 2021 11:43:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 23A0963CA0; Thu, 29 Jul 2021 11:43:35 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 78C9663538;
	Thu, 29 Jul 2021 11:43:32 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2546D62F00
 for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Jul 2021 11:43:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 18C8163538; Thu, 29 Jul 2021 11:43:31 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2073.outbound.protection.outlook.com [40.107.237.73])
 by lists.linaro.org (Postfix) with ESMTPS id 0F82B62F00
 for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Jul 2021 11:43:29 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ve+KXbF+eb7+jRmd7OPgV1wu9bhDKUV85819yJuNo038xpmrQhoorP+thbKzNAAjtuJDXM4xXZ6Qp/k+gyJ1bH7VFJ8Ekx14rDS5rnqNlwZ3pa6ZIdtFBSXN5wuklxfbuxeoJqU6anbN/pKatWIsIqxcNtw1idBu2Va02oBo4E8n3Tvo5UsQd7WIkeM8At12ejIUT6ZoIMT9+fpXwYiLY+WuioF5C0rP/mcYENXP+F0PgHIXDzkp61m9MX1ZFJUJdcnNUioAl54/I1La3ELGnszAhbnc/gL9iLPiXDUkP4fd/JQvlJhnve2uFOUbET8Ar1WLZs6xG2slqq+ZPgRtKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XTy1ue7/+zLHlGBBKXx4JzII4O1brzMtFKd1csS4Qfk=;
 b=AK08goascpXYHab3s00XHd470bH53IuDLL/ZIxSgZ1kDwLht3yMP1RYkU410r+Hfp9aMA4l58EucFgJhxI+h4v4KECZd225M8TC3lohXZPwt+skNUSOMBObzNhBESvMUDQ7RNwE6x9+seqKEvtkjjnQ01Bkkzbthyh2rtv3Thk9ZY6bs9VBZxxWxgPd4VOFJFugvz4ifNTER7yfC1UY9sOtLVeM8RAG0L0kxYqsrl97WVClqhMU+b2/19XY15NUnk3ieX3/D3A6gT54qSEot5y0FBl0Vsb0OpuNN3CmZ0yS3nFbBXAid037qZrUW3fs/A1h6Edw81fpLxgg+KvgeSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XTy1ue7/+zLHlGBBKXx4JzII4O1brzMtFKd1csS4Qfk=;
 b=JOCd9qUg4RyOMcjYo0o9HC48pLrSeBi+4hFngKsM00iAVJ7FUrU/FKR4hB3hSyvSjYVSkitnvD5PT//m+TOaPYC89RlW8HGaTwPY6k99SYh0IU65Nbt72K3Ai5uBzkaqxT4dfMOgfLJ0pnbUOZJ5Zv9A7sEgKtCtGmG1wQb32qQ=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4111.namprd12.prod.outlook.com (2603:10b6:208:1de::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.28; Thu, 29 Jul
 2021 11:43:26 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756%5]) with mapi id 15.20.4352.033; Thu, 29 Jul 2021
 11:43:26 +0000
To: Pekka Paalanen <ppaalanen@gmail.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
References: <20210726233854.2453899-1-robdclark@gmail.com>
 <28ca4167-4a65-0ccc-36be-5fb017f6f49d@daenzer.net>
 <CAF6AEGuhQ2=DSDaGGVwBz5O+FoZEjpgoVJOcFecpd--a9yDY1w@mail.gmail.com>
 <99984703-c3ca-6aae-5888-5997d7046112@daenzer.net>
 <CAJs_Fx4O4w5djx3-q5zja51-ko_nQ0X2nEk3qoZB_axpBVSrKA@mail.gmail.com>
 <f6d73ec5-85f9-1b18-f2d2-a5f3b7333efa@gmail.com>
 <c9ee242e-542e-e189-a1ec-c1be34d66c93@daenzer.net>
 <04d44873-d8e6-6ae7-f0f9-17bcb484d697@amd.com>
 <9d5f4415-d470-3bc1-7d52-61ba739706ae@daenzer.net>
 <eedfdc75-72f8-9150-584b-c5e9d16db180@amd.com>
 <20210728165700.38c39cf8@eldfell>
 <74e310fa-e544-889f-2389-5abe06f80eb8@amd.com>
 <20210729112358.237651ff@eldfell>
 <3675d530-c9fc-7ec9-e157-b6abeeec7c2a@amd.com>
 <20210729121542.27d9b1cc@eldfell>
 <15cf73a8-eda4-3559-561a-a05a14f445d0@gmail.com>
 <20210729140024.6a635be4@eldfell>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <c090d320-7f2c-3858-d978-7a6f6e8001c0@amd.com>
Date: Thu, 29 Jul 2021 13:43:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <20210729140024.6a635be4@eldfell>
Content-Language: en-US
X-ClientProxiedBy: FR0P281CA0080.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1e::14) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:3e62:c902:d5a3:6f28]
 (2a02:908:1252:fb60:3e62:c902:d5a3:6f28) by
 FR0P281CA0080.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:1e::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4373.12 via Frontend Transport; Thu, 29 Jul 2021 11:43:23 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 450169df-1603-4e13-7a5f-08d9528613dc
X-MS-TrafficTypeDiagnostic: MN2PR12MB4111:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR12MB411116A32966CCCE8033EDFF83EB9@MN2PR12MB4111.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vqSNCYc3/+J2cCq6iqYXbx6mgQpGDeSMUdMM8mxJri2suqISYoAxhqoV7sePb6myMRxyIdQ5Fdx5KXdSumaI19oYscS4F2LSS79BXnuwMWtsMsr2rI5faRa/M5EStbFdu7DUBguj8u8afh1FIdplPOOCeQZHVpp2lzfeyI7nCjoX4p13D9msGa4/M3lgvq3w9pGVfiaqPI3ezPvgwIUW2tKRnWRj60OMyvH1/cAma6irEG/d0B/Fyg4YtPlKiP6fK9SIH1ngQgpLt6ELAjtQ2gjO+RqNlZgau5Q9LXeJweAR+SWh9qLXP9XEK1jj3UedFHbrAeAYiXcWi3VpmTB9pfsOx8QbBjieykYfmODTQRjHMWFbTAk35cGbvQlfD+8oLAvdN6yT2jLT1OkvWd9Sx0uUlRo/d96nlJuIUFf8UWiLli3qgU+MEpRkpK/WnHwwesevG5xe6wG0r3GPazf5rMYemhGHUSg6jDvldL7qjhHDCU/QNxLzGBvKxSSzVCLgxPIVju8JsOuoPAD8jQZttnJPzzj+fggOuT29RkM8fV/zo4Uwc7/LdEtrBEqTQ0fULomnuAlsXwV+ZDPvvv9ZgY84ezVMPt8YOueic0tqppSnxuoIxj9HOYxYQuJJJrVa0SgXuwBoaZxHNkLuDAe8lVDkU/F/iMy5lt5VN55pMoUOPmFn4lNCKdXBZacw3VLQ4OEBHqwE8Ni8Mt+kp1QuLsyFGoGNH3OxBqSDp/54mrYj9lV6JuL633tkc+bAO/sW
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(39860400002)(136003)(346002)(366004)(376002)(66574015)(54906003)(110136005)(66946007)(31696002)(66556008)(8936002)(8676002)(66476007)(5660300002)(2616005)(7416002)(31686004)(186003)(316002)(478600001)(2906002)(6486002)(86362001)(83380400001)(38100700002)(36756003)(4326008)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bmVhdWF4Z2FjRE9oTkVleUFxR0MwUW5kWFIvdk15T1Y0TkVyOXQ0eXJKVE9t?=
 =?utf-8?B?eVRSa2RSd3BvNjZseFVZZllCVm4vYmR3WFJDU1dJTFVrNXNaaXZIYkVlZDhx?=
 =?utf-8?B?TFdkR2VUc2k0NVl6RGpWV1VVdmd0UE43dkE2bzBsNkhOTDBpdnRxamc3d3JK?=
 =?utf-8?B?ZFY4UWNxQ3NaUmFpdXpvb0djb3V1VUdncjI2T1BuMytxanBVL050OHVtRzhS?=
 =?utf-8?B?dGUvL1luZVRIUTlLaTZsc0hNU1ppVTNWT0IrVUFrUDBQUC8wS0Fhcm8xaHZQ?=
 =?utf-8?B?UVEwMWxCUUdHc2x6RjRHZ2o3L25JWHh0QndrUmNNSzdvdHVpb3VTWk9TVlQ4?=
 =?utf-8?B?OS9ScUdBQTZzeUZ0ZVhEWXJHTTM4MkR6bVZWcmZ6dUhpQ09VSWRoeEUxSmti?=
 =?utf-8?B?NldOazJERXZBZ0IwRHBVOHM2VnF2WTJZamJGM3lwaDI4OVpsMlFIQzIzKzA5?=
 =?utf-8?B?VElUNnBFUy9UWXArZ1BNR3ovcC9renhzdW13OExWckY2aGIzRi9ZRjd1OXZI?=
 =?utf-8?B?Z1NJY25QRmd5NlpmeFBRNjUycUJPOUVOcytOUFM5MzkwejJ6R292ZmFYcEdG?=
 =?utf-8?B?RDI4Tm9hWjR0aVFoeTRhYXhXVGNuYzVYaGp2Vm1xejVwelh1OXJ3K21Iemgz?=
 =?utf-8?B?bnhWY3VXTG9sTUQ1N0kyZ1pmOGVjZFptVUZEWEN6SUwwclBXQ1BjTjF3aHdH?=
 =?utf-8?B?WTRMd0p4OVMwK2liRTZVOFg3R1RmNmg3UjdLSk45anVkQWNIbHJqVHBvajBo?=
 =?utf-8?B?UkxMUDVTQUYyU1NteWRtSEhrMEloTDVsWlJhNzhwcEVmYzNrTzJSdmppZDV5?=
 =?utf-8?B?N3dyNGs3eHJKaGVpLzJVMmgxbnBlNm1CNDFxVmN2Z1I2alZ6alUzV1NCQUxx?=
 =?utf-8?B?d0FsSXkrUjdUUXRrZW1sU2IxcytiTUx0YlA0eTh2dG8vL3pMYWNqbW5qbnNk?=
 =?utf-8?B?czZZOFhmM3poUnZ5RkJBQ2hPMFRVeW9yRithbmVkZk54ZVVITHU0Ti9HK0cz?=
 =?utf-8?B?aFgyRlBOSXJFN0s0OS9Yc2tpZjdiaWxJSHgzNmlUanNIWk4reG91ak9vaWJt?=
 =?utf-8?B?MkVCZ2UwN0c2MGV0TGh3ZFphSzU3WmpRWDAyaGNZV2daMGMyVjRXNFlOSnE4?=
 =?utf-8?B?WURHK0RWbmpSUXVhWmY0c3RGS1VMZThQdFpHcDRDSUp2cXhOUGwyVW0wUHFK?=
 =?utf-8?B?cXpoMy9BeXpzN0U3QjRnWUZqdjUxMVNBaW1MZHFwNjBDS2pHRFZ5MDVyb0Rv?=
 =?utf-8?B?SG11RW5SbkRlMkczT0s1S09BZ2c5NkZOOTdJdXhJQkVQRzEwbXhOSXMwWkdx?=
 =?utf-8?B?azl1eERyUEVTbEpUUndUSks2djRBejBXUFhPYmNZNlo0cm1iSy9VR25JT0M0?=
 =?utf-8?B?Z0crWFRCc3NQUlNIZUNIUlBYWmV3U3VkZmxZN0MvLzFWTmFIUVdPeFNsVzE4?=
 =?utf-8?B?Mlh5aTl0NVh5ZklTQmpsR2ZkNDNaOTVtaHNrNWVjM3lMVTYvak5GVW50dzRN?=
 =?utf-8?B?WkducU9sbURKdTJTaHRJbkcyYW1xbGJUMFZaZngyTVM5UTFSMnhkY0ZGWS81?=
 =?utf-8?B?cXZxaW5yUG1LUm0wSVhzT1plZjErUnZNcVVYalhuZFlaRGtFTm9ldDF0OEJt?=
 =?utf-8?B?Q21mZDFKSVF5UnhHWk9lUkJ4NjZkWnRVcGREYVYwUUVTbTBFeVhmeGVYaG12?=
 =?utf-8?B?WTE1cUxXL1lIUlhTYXRrUGRiMlFmdVNSWi9GZ1BoejQ3Z09XY1VQLzR2bEh5?=
 =?utf-8?B?NVp2WHBzSXhEcnMrdmhPSTNJNWpkUGxtYnl6dHRDVjVZQW8rNlRiZGJsUFI1?=
 =?utf-8?B?NXI3OEtPQ2JHOFVyUHFMb3Z5N1M0alNqY3NTQ2dzZllIazF3azhBTEZLUFF5?=
 =?utf-8?Q?qdeoRDxgfn3Gf?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 450169df-1603-4e13-7a5f-08d9528613dc
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2021 11:43:26.4705 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J4q51p8KULmj5in1dfsH/QYFfU2lwuKyP0D2RK5eVeI39mLxwwF/EGjnmiEKZ+4R
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4111
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [RFC 0/4] dma-fence: Deadline awareness
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: Rob Clark <robdclark@chromium.org>, Matthew Brost <matthew.brost@intel.com>,
 Jack Zhang <Jack.Zhang1@amd.com>, Gustavo Padovan <gustavo@padovan.org>,
 =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>,
 open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Luben Tuikov <luben.tuikov@amd.com>, Roy Sun <Roy.Sun@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>, Tian Tao <tiantao6@hisilicon.com>,
 Lee Jones <lee.jones@linaro.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMjkuMDcuMjEgdW0gMTM6MDAgc2NocmllYiBQZWtrYSBQYWFsYW5lbjoKPiBPbiBUaHUsIDI5
IEp1bCAyMDIxIDEyOjE0OjE4ICswMjAwCj4gQ2hyaXN0aWFuIEvDtm5pZyA8Y2tvZW5pZy5sZWlj
aHR6dW1lcmtlbkBnbWFpbC5jb20+IHdyb3RlOgo+Cj4+IEFtIDI5LjA3LjIxIHVtIDExOjE1IHNj
aHJpZWIgUGVra2EgUGFhbGFuZW46Cj4+PiBJZiB0aGUgYXBwIGhhcHBlbnMgdG8gYmUgZnJvemVu
IChlLmcuIHNvbWUgd2VpcmQgYnVnIGluIGZlbmNlIGhhbmRsaW5nCj4+PiB0byBtYWtlIGl0IG5l
dmVyIHJlYWR5LCBvciBtYXliZSBpdCdzIGp1c3QgYnVnZ2VkIGl0c2VsZiBhbmQgbmV2ZXIKPj4+
IGRyYXdpbmcgYWdhaW4pLCB0aGVuIHRoZSBhcHAgaXMgZnJvemVuLCBhbmQgYWxsIHRoZSByZXN0
IG9mIHRoZSBkZXNrdG9wCj4+PiBjb250aW51ZXMgcnVubmluZyBub3JtYWxseSB3aXRob3V0IGEg
Z2xpdGNoLgo+PiBCdXQgdGhhdCBpcyBpbiBjb250cmFkaWN0IHRvIHdoYXQgeW91IHRvbGQgbWUg
YmVmb3JlLgo+Pgo+PiBTZWUgd2hlbiB0aGUgd2luZG93IHNob3VsZCBtb3ZlIGJ1dCBmYWlscyB0
byBkcmF3IGl0J3MgbmV3IGNvbnRlbnQgd2hhdAo+PiBoYXBwZW5zPwo+Pgo+PiBBcmUgdGhlIG90
aGVyIHdpbmRvd3Mgd2hpY2ggd291bGQgYmUgYWZmZWN0ZWQgYnkgdGhlIG1vdmUgbm90IGRyYXdu
IGFzIHdlbGw/Cj4gTm8sIGFsbCB0aGUgb3RoZXIgd2luZG93cyB3aWxsIGNvbnRpbnVlIGJlaGF2
aW5nIG5vcm1hbGx5IGp1c3QgbGlrZQo+IHRoZXkgYWx3YXlzIGRpZC4gSXQncyBqdXN0IHRoYXQg
b25lIGZyb3plbiB3aW5kb3cgdGhlcmUgdGhhdCB3b24ndAo+IHVwZGF0ZTsgaXQgd29uJ3QgcmVz
aXplLCBzbyB0aGVyZSBpcyBubyByZWFzb24gdG8gbW92ZSB0aGF0IG90aGVyCj4gd2luZG93IGVp
dGhlci4KPgo+IEV2ZXJ5dGhpbmcgY29udGludWVzIGFzIGlmIHRoZSBmcm96ZW4gd2luZG93IG5l
dmVyIGV2ZW4gc2VudCBhbnl0aGluZwo+IHRvIHRoZSBjb21wb3NpdG9yIGFmdGVyIGl0cyBsYXN0
IGdvb2QgdXBkYXRlLgo+Cj4gV2UgaGF2ZSBhIHByaW5jaXBsZSBpbiBXYXlsYW5kOiB0aGUgY29t
cG9zaXRvciBjYW5ub3QgYWZmb3JkIHRvIHdhaXQKPiBmb3IgY2xpZW50cywgdGhlIGRlc2t0b3Ag
YXMgYSB3aG9sZSBtdXN0IHJlbWFpbiByZXNwb25zaXZlLiBTbyB0aGVyZSBpcwo+IGFsd2F5cyBh
IGJhY2t1cCBwbGFuIGV2ZW4gZm9yIGNhc2VzIHdoZXJlIHRoZSBjb21wb3NpdG9yIGV4cGVjdHMg
dGhlCj4gY2xpZW50IHRvIGNoYW5nZSBzb21ldGhpbmcuIEZvciByZXNpemVzLCBpbiBhIGZsb2F0
aW5nLXdpbmRvdyBtYW5hZ2VyCj4gaXQncyBlYXN5OiBqdXN0IGxldCB0aGluZ3MgY29udGludWUg
YXMgdGhleSBhcmU7IGluIGEgdGlsaW5nIHdpbmRvdwo+IG1hbmFnZXIgdGhleSBtYXkgaGF2ZSBh
IHRpbWVvdXQgYWZ0ZXIgd2hpY2guLi4gd2hhdGV2ZXIgaXMgYXBwcm9wcmlhdGUuCj4KPiBBbm90
aGVyIGV4YW1wbGU6IElmIGEgY29tcG9zaXRvciBkZWNpZGVzIHRvIG1ha2UgYSB3aW5kb3cgbWF4
aW1pemVkLCBpdAo+IHRlbGxzIHRoZSBjbGllbnQgdGhlIG5ldyBzaXplIGFuZCBzdGF0ZSBpdCBt
dXN0IGhhdmUuIFVudGlsIHRoZSBjbGllbnQKPiBhY2tzIHRoYXQgc3BlY2lmaWMgc3RhdGUgY2hh
bmdlLCB0aGUgY29tcG9zaXRvciB3aWxsIGNvbnRpbnVlIG1hbmFnaW5nCj4gdGhhdCB3aW5kb3cg
YXMgaWYgbm90aGluZyBjaGFuZ2VkLiBHaXZlbiB0aGUgYXN5bmNocm9ub3VzIG5hdHVyZSBvZgo+
IFdheWxhbmQsIHRoZSBjbGllbnQgbWlnaHQgZXZlbiBjb250aW51ZSBzdWJtaXR0aW5nIHVwZGF0
ZXMKPiBub24tbWF4aW1pemVkIGZvciBhIHdoaWxlLCBhbmQgdGhhdCB3aWxsIGdvIHRocm91Z2gg
YXMgaWYgdGhlCj4gY29tcG9zaXRvciBkaWRuJ3QgYXNrIGZvciBtYXhpbWl6ZWQuIEJ1dCBhdCBz
b21lIHBvaW50IHRoZSBjbGllbnQgYWNrcwo+IHRoZSB3aW5kb3cgc3RhdGUgY2hhbmdlLCBhbmQg
ZnJvbSB0aGF0IHBvaW50IG9uIGlmIGl0IGRvZXNuJ3QgYmVoYXZlCj4gbGlrZSBtYXhpbWl6ZWQg
c3RhdGUgcmVxdWlyZXMsIGl0IHdpbGwgZ2V0IGEgcHJvdG9jb2wgZXJyb3IgYW5kIGJlCj4gZGlz
Y29ubmVjdGVkLgoKWWVhaCBhbmQgYWxsIG9mIHRoaXMgdG90YWxseSBtYWtlcyBzZW5zZS4KClRo
ZSBwcm9ibGVtIGlzIHRoYXQgbm90IGZvcndhcmRpbmcgdGhlIHN0YXRlIGNoYW5nZXMgdG8gdGhl
IGhhcmR3YXJlIAphZGRzIGEgQ1BVIHJvdW5kIHRyaXAgd2hpY2ggaXMgcmF0aGVyIGJhZCBmb3Ig
dGhlIGRyaXZlciBkZXNpZ24sIAplc3BlY2lhbGx5IHBvd2VyIG1hbmFnZW1lbnQuCgpFLmcuIHdo
ZW4geW91IHN1Ym1pdCB0aGUgd29yayBvbmx5IGFmdGVyIGV2ZXJ5Ym9keSBiZWNvbWVzIGF2YWls
YWJsZSB0aGUgCkdQVSBiZWNvbWVzIGlkbGUgaW4gYmV0d2VlbiBhbmQgbWlnaHQgdGhpbmsgaXQg
aXMgYSBnb29kIGlkZWEgdG8gcmVkdWNlIApjbG9ja3MgZXRjLi4uCgpIb3cgYWJvdXQgZG9pbmcg
dGhpcyBpbnN0ZWFkOgoKMS4gQXMgc29vbiBhcyBhdCBsZWFzdCBvbmUgd2luZG93IGhhcyBuZXcg
Y29tbWl0dGVkIHN0YXRlIHlvdSBzdWJtaXQgdGhlIApyZW5kZXJpbmcuCiDCoMKgwqAgwqDCoMKg
IEFzIGZhciBhcyBJIHVuZGVyc3RhbmQgaXQgdGhhdCBpcyBhbHJlYWR5IHRoZSBjYXNlIGFueXdh
eS4KCjIuIEJlZm9yZSBzdGFydGluZyByZW5kZXJpbmcgdGhlIGhhcmR3YXJlIGRyaXZlciB3YWl0
cyB3aXRoIGEgdGltZW91dCAKZm9yIGFsbCB0aGUgd2luZG93IGNvbnRlbnQgdG8gYmVjb21lIHJl
YWR5LgogwqDCoMKgIMKgwqDCoCBUaGUgdGltZW91dCBpcyBwaWNrZWQgaW4gYSB3YXkgc28gdGhh
dCB3ZSBhdCBsZWFzdCByZWFjaCBhIApyZWFzb25hYmxlIGZwcy4gTWFraW5nIHRoYXQgZGVwZW5k
aW5nIG9uIHRoZSBtYXhpbXVtIHJlZnJlc2ggcmF0ZSBvZiB0aGUgCmRpc3BsYXkgZGV2aWNlIHNv
dW5kcyByZWFzb25hYmxlIHRvIG1lLgoKM2EuIElmIGFsbCB3aW5kb3dzIGJlY29tZSByZWFkeSBv
biB0aW1lIHdlIGRyYXcgdGhlIGZyYW1lIGFzIGV4cGVjdGVkLgozYi4gSWYgYSB0aW1lb3V0IG9j
Y3VycyB0aGUgY29tcG9zaXRvciBpcyBub3RlZCBvZiB0aGlzIGFuZCBnb2VzIG9uIGEgCmZhbGxi
YWNrIHBhdGggcmVuZGVyaW5nIG9ubHkgdGhlIGNvbnRlbnQga25vd24gdG8gYmUgcmVhZHkuCgo0
LiBSZXBlYXQuCgpUaGlzIHdheSB3ZSBzaG91bGQgYmUgYWJsZSB0byBoYW5kbGUgYWxsIHVzZSBj
YXNlcyBncmFjZWZ1bGx5LCBlLmcuIHRoZSAKaGFuZ2luZyBjbGllbnQgd29uJ3QgY2F1c2UgdGhl
IHNlcnZlciB0byBibG9jayBhbmQgd2hlbiBldmVyeXRoaW5nIApiZWNvbWVzIHJlYWR5IG9uIHRp
bWUgd2UganVzdCByZW5kZXIgYXMgZXhwZWN0ZWQuCgpSZWdhcmRzLApDaHJpc3RpYW4uCgo+Cj4K
PiBUaGFua3MsCj4gcHEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8t
bW0tc2lnCg==

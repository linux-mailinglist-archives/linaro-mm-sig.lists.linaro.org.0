Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BF9BF3F040F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Aug 2021 14:58:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EDA3A6116E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Aug 2021 12:58:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 87D3F61179; Wed, 18 Aug 2021 12:58:07 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6F516608E6;
	Wed, 18 Aug 2021 12:58:03 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A4FBD6056A
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Aug 2021 12:58:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A2AB1608E6; Wed, 18 Aug 2021 12:58:01 +0000 (UTC)
Received: from NAM04-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam08on2058.outbound.protection.outlook.com [40.107.102.58])
 by lists.linaro.org (Postfix) with ESMTPS id 894386056A
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Aug 2021 12:57:59 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eGdc/v8sBkkz6PyRCSd0URDP3UwKzWROp5P0bapgCv4aTTy0gxCkGZC08gISsf5H7MCth23A7qNnYSpA3oCwfjCvPjD0sUtH6+XqB4dXXyFWCaowCRvtM1inrnnjKub1tsbRAidHinDZf7bQsDw8ewgzUUhBEpnyK60m2z8DRd+tCEcQf7z2coh2Vq8ZfeRa6ewk/dn1umZQGo1FO2j/pe+5A3AEfT7lQ2EnUzBXs2+5Jv5KZKTJZgiLPy5G+nx6OyMtUan5zsbonmbDI6tQ7u6X2bdVOW9W+G6Uoce4yQg9QSyI6/TrNXpq4utgJC/g7KcmFR3YecjJtFDT4rCXzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CivRy1/et75oVvHubFoaKTYMEaZBUXlzkb/vam3d5jQ=;
 b=NWjKe17mH72byE0UOWtNiRXUhPteck+jCVP5XofphrngDVVlEBCbNe9UBD5BtXMPcjRF9m2JMzP0WaOHFjrHI2vr+/ZND3rWC2GP2OtxtIBeLXVnQQnrduSGo1eZe/I8NfYHd3DekpEZ2Nj+WLpaPpnbryDadVvo8J67OnrtTAUk3wfuAyAl5+8qo9arTmjElUeF4tJ/PL0oK4vNnhsgXWxfDGWDLvYbjI+3Bh70ujwPhAA6O7p5kF6nCD180J8g+vW/o/w+3dNdQoChX3/bkzMmTjc57viypOe7ggyIwwXL5ZXVtqdmjVj66nxN0sc/NAjxF1rQPk6OZARKzgaCRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CivRy1/et75oVvHubFoaKTYMEaZBUXlzkb/vam3d5jQ=;
 b=xDle+Grx3hm6HePdY84FILjr3G0YGUFJW3EPu2wR6iXJi3EmzNkv7J4RuSvFG/uOhKpXaga8UoHbnYQkCZRrSb6qZdEtCBXdTonxFFSAgBXdD+2YjnyZkY/kQt5beTU+NRoPTaG60YKK0pSSR5pJOIbXaR4OAnLhRUF3a9Qoakk=
Authentication-Results: ti.com; dkim=none (message not signed)
 header.d=none;ti.com; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4550.namprd12.prod.outlook.com (2603:10b6:208:24e::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.15; Wed, 18 Aug
 2021 12:57:57 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::dce2:96e5:aba2:66fe]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::dce2:96e5:aba2:66fe%6]) with mapi id 15.20.4415.024; Wed, 18 Aug 2021
 12:57:57 +0000
To: Daniel Vetter <daniel@ffwll.ch>
References: <20210818115810.274084-1-nuno.sa@analog.com>
 <9a63b45f-6fec-6269-ae16-8604b08514de@amd.com>
 <SJ0PR03MB6359C318092E0CB99D28D85099FF9@SJ0PR03MB6359.namprd03.prod.outlook.com>
 <ed0bf7fd-de49-f94a-3eda-0c1fac50153a@amd.com>
 <YR0BMCMFcwXLjNAe@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <74802a7d-9105-006f-bcd8-3bbf97035704@amd.com>
Date: Wed, 18 Aug 2021 14:57:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <YR0BMCMFcwXLjNAe@phenom.ffwll.local>
Content-Language: en-US
X-ClientProxiedBy: AM0PR06CA0113.eurprd06.prod.outlook.com
 (2603:10a6:208:ab::18) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.31.55.180] (165.204.72.6) by
 AM0PR06CA0113.eurprd06.prod.outlook.com (2603:10a6:208:ab::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4436.19 via Frontend Transport; Wed, 18 Aug 2021 12:57:55 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9dbc8315-c292-4da6-60fa-08d96247cca1
X-MS-TrafficTypeDiagnostic: MN2PR12MB4550:
X-Microsoft-Antispam-PRVS: <MN2PR12MB455015E954FE204E826BDEA883FF9@MN2PR12MB4550.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:669;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +T3HhjSdpjX0kLIRVci/aau9zvFZiZIelpLkUloxdtEmCi+sz7Z4wPjQLFnmUl+SNNKcxzrG2ijZpMOSxI+yMsRiOcwhu6bicSDqDoamEc5wFfZ+OG0Cvdrvb7SnKMThZiB7uXDMrggGTUu3hLT1vpcH+ONPV3LRZv++xxAeVvOPDrygie7X+4b1b7m+mRufzejX3d9t0thMT6r8c/R9uTvU3MAGkH7yEAVpeQ056AHWDsGBGFcBYtAABdPs5BCayOT30tpE/W6uzVNRpArPfevOL+Fcd0iD2Ca8U23LHTn4oX/NN7NS5FCGWU+bqpbAv5qD5Qh1QWwXGlpXidQFTFONEe04mXzscVoABNMWPf+xli6tjjV8+KALq9I6RRAI6rFa6XpXcT60IzwbIM0zTQVYX0tRHsDFnYihO3AWo0T5Vo8b8ba8CwuQO1aHC0+bAObpH8q20G/OVHnVx3tkwPsmyXkJh75kU9nzlsP7yr+Fy/vKret8jfjfPcUNJG/mOTmk6wsMNdMm44a+OciyQWjOLt2dePl+TmFTWPbUfyVwJxTOYujrqKkS8vuqgAaDlfBSACU5oISzqpybB4m3vN6vhmLc90irGKaps0SvK//DLo0sqwlSNetRWNSrgt0+Kzs31VJO8UcYXY5lKY0dTr9C/279CnKQXTiodIO49miHoKSgAbiTNfrHHIq8zye9NgyPX9oCl4R9H+P+3Im46gN5NR6DJHwGl8+69HDQLYQWYhLPxoAx6MRCh5e2QSked4DxU1ibMuzrklbImydb50BHMjph8QIg3pvvw1XuHq4fdJDfLf8MkIdR+eLMFAOG
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(39860400002)(366004)(396003)(136003)(376002)(66946007)(66574015)(6486002)(31686004)(2906002)(6666004)(2616005)(966005)(66556008)(66476007)(31696002)(38100700002)(4326008)(26005)(6916009)(316002)(83380400001)(86362001)(186003)(45080400002)(16576012)(54906003)(8676002)(8936002)(478600001)(36756003)(956004)(5660300002)(53546011)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bmFkS0F2a0lMMFE0TjBOdHczSCtpRG1YR2lldkticnR0NTJNeFlTZUoyTUlN?=
 =?utf-8?B?UmhTQU9QSzdlVlJDbFdpdENGWmdaK1V5ajJXSEhZWUtTNWVFejEvNk5XZXdD?=
 =?utf-8?B?QnZ3UVJEWWFOZ2hiWFpvYkJybUo0ZDUzd3pEakIrQkNmODdlcU43RU15NDVo?=
 =?utf-8?B?bjZMNFRPOGNLOVZSM1phclBoVjlMTjNnd1dueVFYUzRpYkRYcUsvdkVoSjNG?=
 =?utf-8?B?OXV3SGZYRUIrZVJSSUNEWHd3T0RGOS9scmZOSXBrandwbExMMlZWZDE0NWNE?=
 =?utf-8?B?dkN4KytrUTBuK04yY2VHdVJzc0UweDMxcTNzZVUwa2kzd3pnNU1aVFdGdVZS?=
 =?utf-8?B?TjBLQzZHenNNbEhnMTBINXZydUZZdDR1QjhEM1hGVUpOeUhEeE55SWcwT3Z2?=
 =?utf-8?B?ZTBGQ21pTE5GcDQ3QlpmN0crcUludmJ3ODlKdWNrdVJkTlQ3TVJPVndEbWJW?=
 =?utf-8?B?MlN1Yk5SRW5vUHJwaXdPb3ZIdFpjYlh2TEFpZDhVU3A5WUt0TTZ0NkthdWpL?=
 =?utf-8?B?OWJOdUE3Y1U3NDdqMEQwQ0UzRjR2OUt2TXBPZXBMNllhY1kxZmdTa2JSNy92?=
 =?utf-8?B?OU9URW9PWTZtb2tXaUtxdEZzV1JGV2FnTzBQMEdhbXBCWHo4L25rdVdaRGVD?=
 =?utf-8?B?cXJxd0JyQTd4ak1RWjVSUkEvbXNpMVR6R0drK1lIY2NTMVdUeXA5bStqci9r?=
 =?utf-8?B?dG83Wmd5TmJJMEF4TU5tSldoeWN5NS9ZelE0eXEwZlJnQXJMMlk3NWozVXdG?=
 =?utf-8?B?SUZrTENyUnJsc2huTzB2WDE3Y0NmREtodnE1SEZyb2JDUVVZMU5ncVlwNXR1?=
 =?utf-8?B?dzh4SGhrajBaazgwVmx6N3ZUdG1uQnpWVGl6eWZqaVhEdVQxTW04OE1zcm9i?=
 =?utf-8?B?Z2ZQSlM1U0dRVmZXM3R0VzdnVEptTzBuOStRRmZzcWh5VjI3OUl0UnVHMXhy?=
 =?utf-8?B?ai9lZ3FyLytpQ2pTanBtNGNmSWxiRS9uay9UVGQySGJJMlR2VVYzVUtSR3U3?=
 =?utf-8?B?aVlYMUFyTE00TnI3SHpjQ0FPeU9iV0FPa1Z4QVJ2QU03SGZ6VCtjc1l6UW50?=
 =?utf-8?B?cjFwRGlFOEw0dGdrcUU1OWlrSUg0Z1ZyVWhOZFN0UFpzdjVKaExmOUhEVmZk?=
 =?utf-8?B?S3pveXJyOGw0Zi9CNlFqV0MxanZlY3dkUXZYaUJHL3EvNjlMZUNYeDEzZUlC?=
 =?utf-8?B?azN3dE05cXFMNHpWeGMvTWUrOGkzT2N0czBOQzZ0NTkvaXA0Um0rS3NtalJx?=
 =?utf-8?B?MVNwRjNrc1hrcXErV20xVTAvUUlwUys2RTJkNlhvNFprSDRNdzMwS1hmK1Ev?=
 =?utf-8?B?bDdiUEtZWndBczV5MUJHeFZyRDFyNk1nWGpzWTIvdXdrYmlKTjhESm1ZL3hm?=
 =?utf-8?B?Z2VSTE8yRy9iTEVvYkN1bHVPN0FTdmRpb2QzRzVHazc4S05ZL0dGbEZaRXZz?=
 =?utf-8?B?ZHNSS1Rvd1QvRWNCMmpXSkdVbXBJUEllb3IvRUcyTStRTEc2bGYzUWU5VENN?=
 =?utf-8?B?Kzk3OTM2UTNKQ2d0UU5Rb3NsMmxrSFFHaHBoZnZUZG0ySE90ZTlVbEpJZ081?=
 =?utf-8?B?WG1FRlJMaHZEUUxaUzdVSkdlY2d1TjZRWUpVbHVkT09rL2RtZllsWDR4Wmhx?=
 =?utf-8?B?Znp1WG5LVGNQRzNabHBCK2owK0JIc25vTlJ0ckQwS3lHUzV3dXk5N2F4N0l3?=
 =?utf-8?B?RXY5NnhWWXVQQytrYitlYzFqbm9GWVZ1bVJFeGpmT3ZxS1Y0dFIxdVd1eWV0?=
 =?utf-8?Q?w5OtWd3pXrAGXn5Yk4QMTSJXJBVH2n6YAei9Onx?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9dbc8315-c292-4da6-60fa-08d96247cca1
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2021 12:57:57.4328 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pby7n+u2kmG1/M3RMYkfgyNqZZVRmij9QCi8LcXsQc8+A2jNo9WkHnuP0zVDPmHa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4550
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: return -EINVAL if dmabuf
 object is NULL
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
Cc: "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 Rob Clark <rob@ti.com>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "Sa,
 Nuno" <Nuno.Sa@analog.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMTguMDguMjEgdW0gMTQ6NDYgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIFdlZCwgQXVn
IDE4LCAyMDIxIGF0IDAyOjMxOjM0UE0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+
IEFtIDE4LjA4LjIxIHVtIDE0OjE3IHNjaHJpZWIgU2EsIE51bm86Cj4+Pj4gRnJvbTogQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+Pj4+IFNlbnQ6IFdlZG5lc2Rh
eSwgQXVndXN0IDE4LCAyMDIxIDI6MTAgUE0KPj4+PiBUbzogU2EsIE51bm8gPE51bm8uU2FAYW5h
bG9nLmNvbT47IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZzsKPj4+PiBkcmktZGV2ZWxA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKPj4+PiBD
YzogUm9iIENsYXJrIDxyb2JAdGkuY29tPjsgU3VtaXQgU2Vtd2FsCj4+Pj4gPHN1bWl0LnNlbXdh
bEBsaW5hcm8ub3JnPgo+Pj4+IFN1YmplY3Q6IFJlOiBbUEFUQ0hdIGRtYS1idWY6IHJldHVybiAt
RUlOVkFMIGlmIGRtYWJ1ZiBvYmplY3QgaXMKPj4+PiBOVUxMCj4+Pj4KPj4+PiBbRXh0ZXJuYWxd
Cj4+Pj4KPj4+PiBUbyBiZSBob25lc3QgSSB0aGluayB0aGUgaWYoV0FSTl9PTighZG1hYnVmKSkg
cmV0dXJuIC1FSU5WQUwKPj4+PiBoYW5kbGluZwo+Pj4+IGhlcmUgaXMgbWlzbGVhZGluZyBpbiB0
aGUgZmlyc3QgcGxhY2UuCj4+Pj4KPj4+PiBSZXR1cm5pbmcgLUVJTlZBTCBvbiBhIGhhcmQgY29k
aW5nIGVycm9yIGlzIG5vdCBnb29kIHByYWN0aWNlIGFuZAo+Pj4+IHNob3VsZAo+Pj4+IHByb2Jh
Ymx5IGJlIHJlbW92ZWQgZnJvbSB0aGUgRE1BLWJ1ZiBzdWJzeXN0ZW0gaW4gZ2VuZXJhbC4KPj4+
IFdvdWxkIHlvdSBzYXkgdG8ganVzdCByZXR1cm4gMCB0aGVuPyBJIGRvbid0IHRoaW5rIHRoYXQg
aGF2aW5nIHRoZQo+Pj4gZGVyZWZlcmVuY2UgaXMgYWxzbyBnb29kLi4KPj4gTm8sIGp1c3QgcnVu
IGludG8gdGhlIGRlcmVmZXJlbmNlLgo+Pgo+PiBQYXNzaW5nIE5VTEwgYXMgdGhlIGNvcmUgb2Jq
ZWN0IHlvdSBhcmUgd29ya2luZyBvbiBpcyBhIGhhcmQgY29kaW5nIGVycm9yCj4+IGFuZCBub3Qg
c29tZXRoaW5nIHdlIHNob3VsZCBidWJibGUgdXAgYXMgcmVjb3ZlcmFibGUgZXJyb3IuCj4+Cj4+
PiBJIHVzZWQgLUVJTlZBTCB0byBiZSBjb2hlcmVudCB3aXRoIHRoZSByZXN0IG9mIHRoZSBjb2Rl
Lgo+PiBJIHJhdGhlciBzdWdnZXN0IHRvIHJlbW92ZSB0aGUgY2hlY2sgZWxzZXdoZXJlIGFzIHdl
bGwuCj4gSXQncyBhIGxvdCBtb3JlIGNvbXBsaWNhdGVkLCBhbmQgV0FSTl9PTiArIGJhaWwgb3V0
IGlzIHJhdGhlcgo+IHdlbGwtZXN0YWJsaXNoZWQgY29kZS1wYXR0ZXJuLiBUaGVyZSdzIGJlZW4g
cGxlbnR5IG9mIGRpc2N1c3Npb25zIGluIHRoZQo+IHBhc3QgdGhhdCBhIEJVR19PTiBpcyBoYXJt
ZnVsIHNpbmNlIGl0IG1ha2VzIGRlYnVnZ2luZyBhIG1ham9yIHBhaW4sIGUuZy4KPgo+IGh0dHBz
Oi8vbmFtMTEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwcyUzQSUy
RiUyRmxvcmUua2VybmVsLm9yZyUyRmxrbWwlMkZDQSUyQjU1YUZ3eU5UTHVaZ09XTVRSdWFiV29i
RjI3eWdza3V4dkZkLVAwbi0zVU5UJTNEME9nJTQwbWFpbC5nbWFpbC5jb20lMkYmYW1wO2RhdGE9
MDQlN0MwMSU3Q2NocmlzdGlhbi5rb2VuaWclNDBhbWQuY29tJTdDMTlmNTNlMmEyZDE4NDNiNjVh
ZGMwOGQ5NjI0NjNiNzglN0MzZGQ4OTYxZmU0ODg0ZTYwOGUxMWE4MmQ5OTRlMTgzZCU3QzAlN0Mw
JTdDNjM3NjQ4ODc2MDc2NjEzMjMzJTdDVW5rbm93biU3Q1RXRnBiR1pzYjNkOGV5SldJam9pTUM0
d0xqQXdNREFpTENKUUlqb2lWMmx1TXpJaUxDSkJUaUk2SWsxaGFXd2lMQ0pYVkNJNk1uMCUzRCU3
QzEwMDAmYW1wO3NkYXRhPWFqeUJuamVQUmFrM283T2JwQkF1Sk5kMDhIZ2tBTk05QyUyQmd6T0Fl
SHJNayUzRCZhbXA7cmVzZXJ2ZWQ9MAo+Cj4gVGhlcmUncyBhbHNvIGEgY2hlY2twYXRjaCBjaGVj
ayBmb3IgdGhpcy4KPgo+IGNvbW1pdCA5ZDNlM2M3MDVlYjM5NTUyOGZkOGYxNzIwOGM4NzU4MWIx
MzRkYTQ4Cj4gQXV0aG9yOiBKb2UgUGVyY2hlcyA8am9lQHBlcmNoZXMuY29tPgo+IERhdGU6ICAg
V2VkIFNlcCA5IDE1OjM3OjI3IDIwMTUgLTA3MDAKPgo+ICAgICAgY2hlY2twYXRjaDogYWRkIHdh
cm5pbmcgb24gQlVHL0JVR19PTiB1c2UKPgo+IEFueW9uZSB3aG8gaXMgcGFyYW5vaWQgYWJvdXQg
c2VjdXJpdHkgY3Jhc2hlcyB0aGVpciBtYWNoaW5lIG9uIGFueSBXQVJOSU5HCj4gYW55d2F5IChs
aWtlIHN5emthbGxlciBkb2VzKS4KPgo+IE15IHJ1bGUgb2YgdGh1bWIgaXMgdGhhdCBpZiB0aGUg
V0FSTl9PTiArIGJhaWwtb3V0IGNvZGUgaXMganVzdCBhbiBpZgo+IChXQVJOX09OKCkpIHJldHVy
bjsgdGhlbiBpdCdzIGZpbmUsIGlmIGl0J3MgbW9yZSB0aGVuIEJVR19PTiBpcyB0aGUgYmV0dGVy
Cj4gY2hvaWNlIHBlcmhhcHMuCj4KPiBJIHRoaW5rIHRoZSB3b3JzdCBjaG9pY2UgaXMganVzdCBy
ZW1vdmluZyBhbGwgdGhlc2UgY2hlY2tzLCBiZWNhdXNlIGEgZmV3Cj4gY29kZSByZW9yZ3MgbGF0
ZXIgeW91IG1pZ2h0IG5vdCBPb3BzIGltbWVkaWF0ZWx5IGFmdGVyd2FyZHMgYW55bW9yZSwgYW5k
Cj4gdGhlbiB3ZSdsbCBtZXJnZSBwb3RlbnRpYWxseSB2ZXJ5IGJ1c3RlZCBuZXcgY29kZS4gV2hp
Y2ggaXMgbm8gZ29vZC4KCldlbGwgQlVHX09OKHNvbWVfY29kaXRpb24pIGlzIGEgZGlmZmVyZW50
IHByb2JsZW0gd2hpY2ggSSBhZ3JlZSBvbiB3aXRoIApMaW51cyB0aGF0IHRoaXMgaXMgcHJvYmxl
bWF0aWMuCgpCdXQgImlmIChXQVJOX09OKCFkbWFidWYpKSByZXR1cm4gLUVJTlZBTDsiIGlzIHJl
YWxseSBiYWQgY29kaW5nIHN0eWxlIAphcyB3ZWxsIHNpbmNlIGl0IGhpZGVzIHJlYWwgcHJvYmxl
bXMgd2hpY2ggYXJlIGhhcmQgZXJyb3JzIGJlaGluZCB3YXJuaW5ncy4KClJldHVybmluZyAtRUlO
VkFMIGluZGljYXRlcyBhIHJlY292ZXJhYmxlIGVycm9yIHdoaWNoIGlzIHVzdWFsbHkgY2F1c2Vk
IApieSB1c2Vyc3BhY2UgZ2l2aW5nIGludmFsaWQgcGFyYW1ldGVycyBhbmQgc2hvdWxkIG5ldmVy
IGJlIGFidXNlZCB0byAKaW5kaWNhdGUgYSBkcml2ZXIgY29kaW5nIGVycm9yLgoKRnVuY3Rpb25z
IGFyZSBlaXRoZXIgaW50ZW5kZWQgdG8gdGFrZSBOVUxMIGFzIHZhbGlkIHBhcmFtZXRlciwgZS5n
LiBsaWtlIAprZnJlZShOVUxMKS4gT3IgdGhleSBhcmUgaW50ZW5kZWQgdG8gd29yayBvbiBhbiBv
YmplY3Qgd2hpY2ggaXMgCm1hbmRhdG9yeSB0byBwcm92aWRlLgoKQ2hyaXN0aWFuLgoKPiAtRGFu
aWVsCj4KPgo+Cj4+IENocmlzdGlhbi4KPj4KPj4+IC0gTnVubyBTw6EKPj4+Cj4+Pj4gQ2hyaXN0
aWFuLgo+Pj4+Cj4+Pj4gQW0gMTguMDguMjEgdW0gMTM6NTggc2NocmllYiBOdW5vIFPDoToKPj4+
Pj4gT24gdG9wIG9mIHdhcm5pbmcgYWJvdXQgYSBOVUxMIG9iamVjdCwgd2UgYWxzbyB3YW50IHRv
IHJldHVybiB3aXRoIGEKPj4+Pj4gcHJvcGVyIGVycm9yIGNvZGUgKGFzIGRvbmUgaW4gJ2RtYV9i
dWZfYmVnaW5fY3B1X2FjY2VzcygpJykuCj4+Pj4gT3RoZXJ3aXNlLAo+Pj4+PiB3ZSB3aWxsIGdl
dCBhIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZS4KPj4+Pj4KPj4+Pj4gRml4ZXM6IGZjMTMwMjBl
MDg2YiAoImRtYS1idWY6IGFkZCBzdXBwb3J0IGZvciBrZXJuZWwgY3B1IGFjY2VzcyIpCj4+Pj4+
IFNpZ25lZC1vZmYtYnk6IE51bm8gU8OhIDxudW5vLnNhQGFuYWxvZy5jb20+Cj4+Pj4+IC0tLQo+
Pj4+PiAgICAgZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyB8IDMgKystCj4+Pj4+ICAgICAxIGZp
bGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Pj4+Cj4+Pj4+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2Rt
YS0KPj4+PiBidWYuYwo+Pj4+PiBpbmRleCA2M2QzMjI2MWI2M2YuLjhlYzc4NzZkZDUyMyAxMDA2
NDQKPj4+Pj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwo+Pj4+PiArKysgYi9kcml2
ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4+Pj4+IEBAIC0xMjMxLDcgKzEyMzEsOCBAQCBpbnQgZG1h
X2J1Zl9lbmRfY3B1X2FjY2VzcyhzdHJ1Y3QKPj4+PiBkbWFfYnVmICpkbWFidWYsCj4+Pj4+ICAg
ICB7Cj4+Pj4+ICAgICAJaW50IHJldCA9IDA7Cj4+Pj4+Cj4+Pj4+IC0JV0FSTl9PTighZG1hYnVm
KTsKPj4+Pj4gKwlpZiAoV0FSTl9PTighZG1hYnVmKSkKPj4+Pj4gKwkJcmV0dXJuIC1FSU5WQUw7
Cj4+Pj4+Cj4+Pj4+ICAgICAJbWlnaHRfbG9jaygmZG1hYnVmLT5yZXN2LT5sb2NrLmJhc2UpOwo+
Pj4+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
PiBMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdAo+PiBMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKPj4gaHR0cHM6Ly9uYW0xMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/
dXJsPWh0dHBzJTNBJTJGJTJGbGlzdHMubGluYXJvLm9yZyUyRm1haWxtYW4lMkZsaXN0aW5mbyUy
RmxpbmFyby1tbS1zaWcmYW1wO2RhdGE9MDQlN0MwMSU3Q2NocmlzdGlhbi5rb2VuaWclNDBhbWQu
Y29tJTdDMTlmNTNlMmEyZDE4NDNiNjVhZGMwOGQ5NjI0NjNiNzglN0MzZGQ4OTYxZmU0ODg0ZTYw
OGUxMWE4MmQ5OTRlMTgzZCU3QzAlN0MwJTdDNjM3NjQ4ODc2MDc2NjEzMjMzJTdDVW5rbm93biU3
Q1RXRnBiR1pzYjNkOGV5SldJam9pTUM0d0xqQXdNREFpTENKUUlqb2lWMmx1TXpJaUxDSkJUaUk2
SWsxaGFXd2lMQ0pYVkNJNk1uMCUzRCU3QzEwMDAmYW1wO3NkYXRhPTBFNUw0S2lkNVpQZUtUOFV4
eDdLNjFmQlhtSTRUT3N6JTJGNUlMc0ZwTEIlMkZvJTNEJmFtcDtyZXNlcnZlZD0wCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5s
aW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

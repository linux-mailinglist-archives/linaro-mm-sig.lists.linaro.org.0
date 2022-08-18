Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EAC0598440
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Aug 2022 15:37:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5CBC63F620
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Aug 2022 13:37:13 +0000 (UTC)
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (mail-bn8nam04on2053.outbound.protection.outlook.com [40.107.100.53])
	by lists.linaro.org (Postfix) with ESMTPS id 6FD4A3F532
	for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Aug 2022 13:37:10 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jCAMi5kWF23wPi/YtH7pNRSw3+nh7U6MAy/6E9sMiwohChVOWfRMKIDfJ8kTFjK3I5d68fbP4IXrZP35e6dFdfKdl8QU+fSRpKFnHouO7j/lLXsUXgg+PWuS6PcWaNCleXDbytb/cNaQuRwkHcbkLBU40XJMzs+UQ4aMYpA9UqdYSIA8CcqrV7tyj0ri/kUmIt5vkm+PQhBN/abqvw5RwaRRAUeDrK/SwmnY6QE5lQZTd8f0oPWCssimm4KpGFsY4h92nku6TyI10MIGSJBF6DzE8RX8XflIHKAUoZ/ivFCUYIRHUMn/2WZ65eekxopBR9tDm0ZZKjvNdopGOomRew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bVx+8gWum9/gbqU9l4Z5rJctQuHHWlWUDFQPeHmXY0k=;
 b=nDS/WJZjb/oAvkAypnb2NRSnoNbdKYkVxf3TwXiiEHy5xddROkANjrLxM/DxY+4smOThx9uAJC+7H9tZU0PDCwywRL1oNjGGJLBHYJw4x4ibTRxbv4pIUFCm7Dw+fZ9HH32BdyFizqoblzeSkJ/rkIYcs1hmuFpYWqgPeJ/7W69twMjhIDt/3dGsYxXRBlWeugsbgI0K3fjzfA8D7LS5zGIHDjEHMzzQHq767rFtGQ7EG4fRl9EOFdIMDIrNO56LyeBvJmy++LVD4O49OFua9u77a1qCi9ksyGGmEoFQplOBaXBS61wSOKOQhED7LxcRxXWerkdUhe2BokGOIOBgGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bVx+8gWum9/gbqU9l4Z5rJctQuHHWlWUDFQPeHmXY0k=;
 b=ku0tw9yabZelts1tfTEnzHToV3KKLr6sPj2kI944Ox0UJynGGEB/t+STRTz3qYa1RyNj4PeQe4/iZj+XD/wyCmwKM8aWCcF0AcxmXg1tibmh4S8HsTDHXYPv0baKOkU3Gigj0h2dqSo4rarmpQdCuAADHflSQrbR3sM5gx5tJkc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by DM6PR12MB4420.namprd12.prod.outlook.com (2603:10b6:5:2a7::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.16; Thu, 18 Aug
 2022 13:37:07 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39%2]) with mapi id 15.20.5504.020; Thu, 18 Aug 2022
 13:37:07 +0000
Message-ID: <23cb08e4-6de8-8ff4-b569-c93533bf0e19@amd.com>
Date: Thu, 18 Aug 2022 15:37:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Jason Gunthorpe <jgg@nvidia.com>
References: <0-v1-9e6e1739ed95+5fa-vfio_dma_buf_jgg@nvidia.com>
 <921de79a-9cb3-4217-f079-4b23958a16aa@amd.com> <Yv4qlOp9n78B8TFb@nvidia.com>
 <d12fdf94-fbef-b981-2eff-660470ceca22@amd.com> <Yv47lkz7FG8vhqA5@nvidia.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <Yv47lkz7FG8vhqA5@nvidia.com>
X-ClientProxiedBy: FR0P281CA0142.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:96::15) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 64824f27-6dd7-4779-ee89-08da811ebe92
X-MS-TrafficTypeDiagnostic: DM6PR12MB4420:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ALp61X/c9c/YpADkEsexlgHxu/j8U5PgGhJC5+fON4g3vRMopazdpJ18mDu2/TCNvRIhlyPQLb/cmwlnKs6OZnuRMPiSOEfmnlhESO2G/lYWnX4Zi8bPOcLBX67cBkVeHNiGAAh1I7yNedmcNd++1fM3QEd8arA96ggEwU8KEj8rRKcWbxa021XpPAgXoDrMS+JPx4a0rSMbSWoeO01NqJu9hi73fh+Kiep6xhLMGzcFUjUAxaZ34ZIAv12tnOngHrRAhKoVMgZS1rHDfkknuz/tJUh6zm2+ntLp/gXJaFcHIB2skFado8P7k9JkYivre0VOZmSRIIg2dxXLb/iGV+FLFjlor2jwFno8GhnF7yU6Ta64GP+qR9uciWaWS0qw/T255I/2BIqYsOr+nQlP+A81k3eiJMcNSQB16BbW3QlEJKZZQbws0GvUFwCtoE9SOPBtYatP28K+qEyqWgVsHp/k6xxHaRh9YZYGbkWW49DQwuiz5ss1bHwbx+Vxd18l9XBuOLMiqKOd+8pUXnvq42ujTimhtL3h1S799mf6ipnAmtKFrw4UvUlWAPuJe+UgiI1ZbkPAvLZ6mGl5H/kpb9uJzWHs1rzi6GicRUi7CkrTsWE915ZKkdcoEkjbVuP6cg0CA0DUkWy2JUaU91ztfLLTEULfC+IHUDb96Omiyb4XyEbzpH4nKk64Je6hkNM1r9/q4w5u/4oY1OeBkzTz0KagUXULBcCP6taP6IGqCpFRgaqut3g7/oD5WJ5sl09QtBHyGzEoXRHQpeU5+l5PA035gjOxexrSYCDwnTZYyu8=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(136003)(396003)(376002)(39860400002)(366004)(31696002)(478600001)(66476007)(66946007)(66556008)(66574015)(6486002)(8676002)(2906002)(41300700001)(6512007)(86362001)(26005)(4326008)(6666004)(186003)(2616005)(7416002)(5660300002)(8936002)(36756003)(54906003)(6916009)(6506007)(31686004)(38100700002)(316002)(83380400001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?eEp2UDZmdXlNeTFYTFlZKy9vblN0OFRIblZ6WWxZK2RHL1pZdWxCd0p4R1F4?=
 =?utf-8?B?Y1c5RTBMSHprcWpPczFEWGFrQ1Y5WFk3US8yQ3hZVDRwWXRKbXRrQUdTbEx2?=
 =?utf-8?B?aGd2b01zL01wRkMvdFhSajdLSTNMNXluR3ZCaGhpSG0xcFErbHdGYXVnbnVM?=
 =?utf-8?B?QW5KMFFzcWRpQ3NQMTdsL0xTSU5CaXBxU3VwenF0UEFrVjVSNmt0eXJHN2NO?=
 =?utf-8?B?U3ZjdW5GOTcwbWltcTNuYWp3UGl5SXJVNE5ONEt0ZGM4ZytqQ01MOWx1SGhu?=
 =?utf-8?B?aTIyaG1ha0hiMFcvZmNXUUh2dmxUaXluN05FbGRqSERkV3I5NHZhVDZwempH?=
 =?utf-8?B?WkE0WnllN2RkaFVYVzhwS0w4dGI3WGpyU0E4WjNhR1JuWlkzZzAzZkR3R1Qy?=
 =?utf-8?B?MmNKcjBDazhJbnE2bzhuN3NZeU9IR0hCMkExUkxtSTVMbE9DTnlZQXlXQmdW?=
 =?utf-8?B?MENEdHNsUCtYZ1hpM0pSM2s4cXV1Mmd6MG9sVTg0VUxqdG56SW9aOGl5RE9z?=
 =?utf-8?B?aDdodTFiT1BOTFBSWDBNN051QzJIQ25BUmpublRicHdwZlR1MENMZ0wyUFh1?=
 =?utf-8?B?M0Z4TC92cThWYXppRStLeWF1Q1NndXBOa0RYNE1jeHE1S2QvdlVSdyttdzFa?=
 =?utf-8?B?aVc0MTliOTBZY2trRTJqU2ZoTDkyWTlFWHV1TFVnV3luR3h5Yk1hVzg0Uy9I?=
 =?utf-8?B?MGhnYVI0d0pUZXFrMGYvYjJKRHlySUJ2MktFY0RPVUQ0cVJ3M0pIRVQxbnJX?=
 =?utf-8?B?MHhGTzVXekh3elpUTXFXS2l1UmxXR1JsTWoybVRNaGI4ZTdBRFlxaU5zWndL?=
 =?utf-8?B?bGZtYzlqazZYK09WUmNJc2NFVFdMLy95SFo2WXhpY3QrMmZJUWZSbWFySFZo?=
 =?utf-8?B?OE1UaGVPWEZTVktDNnBmQVhxa0FmbytON1JWRit1TEMvTW9JaXVOaTNFTm9D?=
 =?utf-8?B?bnBLeEtORWJlV1N3c1RPQnkvbW5tZCt3Q1p4b1p5REdTNmVaVXJLdk8reUti?=
 =?utf-8?B?bUl5V0F4NHJsZGxjTS9BOS9US1A4VWFGaDkvVHNaeS9rVmNlWXJHOG5mdDRp?=
 =?utf-8?B?SXpTR2swZFJVcGxkNTlTQzh2YzZxY0dMWnNweTA4TlI2T0tsTzdUVnkyWWdq?=
 =?utf-8?B?QzJTUzdjTmVKSTRQeDNMM1NOME9UK0ZvNEd0WDRoV1Y5eVA3Q3hLOUhUNGZi?=
 =?utf-8?B?YmJZOVdScWxzUThYR2JnVm9iMjREMGVETGV2YXY1YVZ2a3NaVFVGYXZVMzBx?=
 =?utf-8?B?ODgxTjgzSHFnbmM0YTFkeGhadjZ1cTRkdEdsSFE0b251aDlIbkVwZDgvZkpj?=
 =?utf-8?B?QkRQbjZjcHBUQ29jWWFJM0plR3NnNk9vZ0FSUyttNTBqZ2VOSk5iTm5iUW1V?=
 =?utf-8?B?NXRaWjhXWVpDWHlKcnZzS0VQTGdDQWMvK2Vocm9PN1hZZy9hdDlhM1ZCQUoz?=
 =?utf-8?B?VnI5S2ZENWZKRHZ5NnhRUmQrODI1VkRvdCtzOEJNekVrWTBqcHVlMUh2MVl6?=
 =?utf-8?B?RDFlZ3ZTOFBLbG0vRWxJQ0R0YkxkVkQyVlRVejZ6ZGxyR3laMnVwVUs2YlFN?=
 =?utf-8?B?WXYrTjRUZ0FjRkw1R0JBUzAzdGlLVWhEdlJLUlF3OE5UZk84aUwveUhyQS84?=
 =?utf-8?B?c2J0T20xcFZ6UHhmdzBZRUgrdHlhdnNZRXlVeTI5dTBpUkdpNm43M1NxbGNY?=
 =?utf-8?B?YUhGOURMRTVYS2llSngvQU5hUmZmRnlJU3lHcW1vV0d3cWlQWDVnTkNOMnBO?=
 =?utf-8?B?SEsxNmhGTEQ1ZUUwOFcxL1JPdUJ1WHJtZnFvZXA0R2VkdjRPdE44QlpIR01u?=
 =?utf-8?B?aHpveGZQYnQ2MUM4WjBkVWxpWjJxUU81NE13LzRhOElGV1ZoVGJSdkpGY3NE?=
 =?utf-8?B?ZVRoQVhpUldqcW5tTjcvMXZOa05xbWlCTnEzVFArUGEvS2FZbVpWNkh1Rk04?=
 =?utf-8?B?QU1Hc296bzZLa2o0cSt4ODkrQ0R5ZFFMbW1TN1d0UWpIdUNJTHBkdVJXQWNR?=
 =?utf-8?B?aW9LQWRvcE11T29QREVBVWkvSDJ1UDlYdTR0Z29zSElXVmMwNWhpY05hSU52?=
 =?utf-8?B?NzVMTUZkZ0R6WHlBak80T0Fhdm8zNmdIc1JCcDlKUGovaDhxbDRLQ002dk9B?=
 =?utf-8?Q?m3+ohE6Hl3Z2S0gmiNbjEgcak?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 64824f27-6dd7-4779-ee89-08da811ebe92
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2022 13:37:07.4992
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BmRrSF0Lj/2hxPw8oaAogwBW2Zo4zc6r66ZYPxC2jLFCj2mZ6foMeJCsX/n2MTCr
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4420
Message-ID-Hash: VNMYYTMX5BCZ2PWEEFSEMG3V735CA3DQ
X-Message-ID-Hash: VNMYYTMX5BCZ2PWEEFSEMG3V735CA3DQ
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Alex Williamson <alex.williamson@redhat.com>, Cornelia Huck <cohuck@redhat.com>, dri-devel@lists.freedesktop.org, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org, Maor Gottlieb <maorg@nvidia.com>, Oded Gabbay <ogabbay@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/4] Allow MMIO regions to be exported through dma-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VNMYYTMX5BCZ2PWEEFSEMG3V735CA3DQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTguMDguMjIgdW0gMTU6MTYgc2NocmllYiBKYXNvbiBHdW50aG9ycGU6DQo+IE9uIFRodSwg
QXVnIDE4LCAyMDIyIGF0IDAyOjU4OjEwUE0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6
DQo+DQo+Pj4+IFRoZSBvbmx5IHRoaW5nIEknbSBub3QgMTAwJSBjb252aW5jZWQgb2YgaXMgZG1h
X2J1Zl90cnlfZ2V0KCksIEkndmUgc2Vlbg0KPj4+PiB0aGlzIGluY29ycmVjdGx5IHVzZWQgc28g
bWFueSB0aW1lcyB0aGF0IEkgY2FuJ3QgY291bnQgdGhlbSBhbnkgbW9yZS4NCj4+Pj4NCj4+Pj4g
V291bGQgdGhhdCBiZSBzb21laG93IGF2b2lkYWJsZT8gT3IgY291bGQgeW91IGF0IGxlYXN0IGV4
cGxhaW4gdGhlIHVzZSBjYXNlDQo+Pj4+IGEgYml0IGJldHRlci4NCj4+PiBJIGRpZG4ndCBzZWUg
YSB3YXksIG1heWJlIHlvdSBrbm93IG9mIG9uZQ0KPj4gRm9yIEdFTSBvYmplY3RzIHdlIHVzdWFs
bHkgZG9uJ3QgdXNlIHRoZSByZWZlcmVuY2UgY291bnQgb2YgdGhlIERNQS1idWYsIGJ1dA0KPj4g
cmF0aGVyIHRoYXQgb2YgdGhlIEdFTSBvYmplY3QgZm9yIHRoaXMuIEJ1dCB0aGF0J3Mgbm90IGFu
IGlkZWFsIHNvbHV0aW9uDQo+PiBlaXRoZXIuDQo+IFlvdSBjYW4ndCByZWFsbHkgaWdub3JlIHRo
ZSBkbWFidWYgcmVmY291bnQuIEF0IHNvbWUgcG9pbnQgeW91IGhhdmUgdG8NCj4gZGVhbCB3aXRo
IHRoZSBkbWFidWYgYmVpbmcgYXN5bmNocm9ub3VzbHkgcmVsZWFzZWQgYnkgdXNlcnNwYWNlLg0K
DQpZZWFoLCBidXQgaW4gdGhpcyBjYXNlIHRoZSBkbWEtYnVmIGlzIGp1c3QgYSByZWZlcmVuY2Ug
dG8gdGhlIA0KcmVhbC9wcml2YXRlIG9iamVjdCB3aGljaCBob2xkcyB0aGUgYmFja2luZyBzdG9y
ZS4NCg0KV2hlbiB0aGUgZG1hLWJ1ZiBpcyByZWxlYXNlZCB5b3UgZHJvcCB0aGUgcmVhbCBvYmpl
Y3QgcmVmZXJlbmNlIGFuZCBmcm9tIA0KeW91ciBkcml2ZXIgaW50ZXJuYWxzIHlvdSBvbmx5IHRy
eV9nZXQgb25seSB0aGUgcmVhbCBvYmplY3QuDQoNClRoZSBhZHZhbnRhZ2UgaXMgdGhhdCBvbmx5
IHlvdXIgZHJpdmVyIGNhbiB1c2UgdGhlIHRyeV9nZXQgZnVuY3Rpb24gYW5kIA0Kbm90IHNvbWUg
aW1wb3J0aW5nIGRyaXZlciB3aGljaCBkb2Vzbid0IGtub3cgYWJvdXQgdGhlIGludGVybmFscyBv
ZiB0aGUgDQpleHBvcnRlci4NCg0KV2UganVzdCBoYWQgdG8gbWFueSBjYXNlcyB3aGVyZSBkZXZl
bG9wZXJzIHdlcmVuJ3Qgc3VyZSBpZiBhIHBvaW50ZXIgaXMgDQpzdGlsbCB2YWxpZCBhbmQgYnkg
dXNpbmcgdHJ5X2dldCBpdCBqdXN0ICJtYWdpY2FsbHkiIGdvdCB3b3JraW5nICh3ZWxsIEkgDQpo
YXZlIHRvIGFkbWl0IGl0IG1hZGUgdGhlIGNyYXNoaW5nIGxlc3MgbGlrZWx5Li4uLikuDQoNCj4+
PiAJZG93bl93cml0ZSgmdmRldi0+bWVtb3J5X2xvY2spOw0KPj4+IAlsaXN0X2Zvcl9lYWNoX2Vu
dHJ5X3NhZmUocHJpdiwgdG1wLCAmdmRldi0+ZG1hYnVmcywgZG1hYnVmc19lbG0pIHsNCj4+PiAJ
CWlmICghZG1hX2J1Zl90cnlfZ2V0KHByaXYtPmRtYWJ1ZikpDQo+Pj4gCQkJY29udGludWU7DQo+
PiBXaGF0IHdvdWxkIGhhcHBlbiBpZiB5b3UgZG9uJ3Qgc2tpcCBkZXN0cm95ZWQgZG1hLWJ1ZnMg
aGVyZT8gSW4gb3RoZXIgd29yZHMNCj4+IHdoeSBkbyB5b3UgbWFpbnRhaW4gdGhhdCBsaXN0IGlu
IHRoZSBmaXJzdCBwbGFjZT8NCj4gVGhlIGxpc3QgaXMgdG8ga2VlcCB0cmFjayBvZiB0aGUgZG1h
YnVmcyB0aGF0IHdlcmUgY3JlYXRlZCwgaXQgaXMgbm90DQo+IG9wdGlvbmFsLg0KPg0KPiBUaGUg
b25seSBxdWVzdGlvbiBpcyB3aGF0IGRvIHlvdSBkbyBhYm91dCBpbnZva2luZw0KPiBkbWFfYnVm
X21vdmVfbm90aWZ5KCkgb24gYSBkbWFidWYgdGhhdCBpcyBhbHJlYWR5IHVuZGVyZ29pbmcNCj4g
ZGVzdHJ1Y3Rpb24uDQoNCkFoLCB5ZXMuIFJlYWxseSBnb29kIHBvaW50Lg0KDQo+DQo+IEZvciBp
bnN0YW5jZSB1bmRlcmdvaW5nIGRlc3RydWN0aW9uIG1lYW5zIHRoZSBkbWFidWYgY29yZSBoYXMg
YWxyZWFkeQ0KPiBkb25lIHRoaXM6DQo+DQo+IAltdXRleF9sb2NrKCZkYl9saXN0LmxvY2spOw0K
PiAJbGlzdF9kZWwoJmRtYWJ1Zi0+bGlzdF9ub2RlKTsNCj4gCW11dGV4X3VubG9jaygmZGJfbGlz
dC5sb2NrKTsNCj4gCWRtYV9idWZfc3RhdHNfdGVhcmRvd24oZG1hYnVmKTsNCj4NCj4gU28gaXQg
c2VlbXMgbm9uLWlkZWFsIHRvIGNvbnRpbnVlIHRvIHVzZSBpdC4NCj4NCj4gSG93ZXZlciwgZG1h
X2J1Zl9tb3ZlX25vdGlmeSgpIHNwZWNpZmljYWxseSBoYXMgbm8gaXNzdWUgd2l0aCB0aGF0IGxl
dmVsIG9mDQo+IGRlc3RydWN0aW9uIHNpbmNlIGl0IG9ubHkgZG9lcw0KPg0KPiAJbGlzdF9mb3Jf
ZWFjaF9lbnRyeShhdHRhY2gsICZkbWFidWYtPmF0dGFjaG1lbnRzLCBub2RlKQ0KPg0KPiBBbmQg
YXR0YWNobWVudHMgbXVzdCBiZSBlbXB0eSBpZiB0aGUgZmlsZSByZWZjb3VudCBpcyB6ZXJvLg0K
Pg0KPiBTbyB3ZSBjb3VsZCBkZWxldGUgdGhlIHRyeV9idWYgYW5kIGp1c3QgcmVseSBvbiBtb3Zl
IGJlaW5nIHNhZmUgb24NCj4gcGFydGlhbGx5IGRlc3Ryb3llZCBkbWFfYnVmJ3MgYXMgcGFydCBv
ZiB0aGUgQVBJIGRlc2lnbi4NCg0KSSB0aGluayB0aGF0IG1pZ2h0IGJlIHRoZSBtb3JlIGRlZmVu
c2l2ZSBhcHByb2FjaC4gQSBjb21tZW50IG9uIHRoZSANCmRtYV9idWZfbW92ZV9ub3RpZnkoKSBm
dW5jdGlvbiBzaG91bGQgcHJvYmFibHkgYmUgYSBnb29kIGlkZWEuDQoNClRoYW5rcywNCkNocmlz
dGlhbi4NCg0KPg0KPiBKYXNvbg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

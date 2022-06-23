Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 23AEB557AB7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Jun 2022 14:52:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ECCF03F4AC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Jun 2022 12:52:39 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2041.outbound.protection.outlook.com [40.107.236.41])
	by lists.linaro.org (Postfix) with ESMTPS id 546883EA2E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Jun 2022 12:52:35 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WmrbqOwaZHJ7nJNEujBo8W3Srk6blKSBXhwPEb+jZyIHYhtWzDHyvq1Q5WYQITTIk6NC2o5gnwMjk8Fpcg3wsdDmbYptUtWy6ArTYh3MS2o0mSOFxN7MhhqqVINe8nZIwTKBiIROIYF9LOgHm68z2zYBVAMEA4gXfFXxch2jWrjqFz1FuuVZ+khb96WxOMboZehTETsejb0NYxxYxwrhQfSWb50lj71OH/qau+n8+1giHlL/y5xL3i/gn+IyEV0Gh3wyqBW46/ioSWqbZea6Md5eMNZbT8JBhwMCPDcaTLTH/gmdfShiT7dkCuj40t+pF/8lGXfU7k+aSSyG/dXn/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k18tJqJaSuedBHJ8To1ftoAuWQNKYZJt9xWlLrrL0t8=;
 b=DANLBpAUhr0x4zZv1Sc56EYKQqcXntUfbUWUJcAF5x4oriRr8YT9jFo+tEK9JbNIuY+87FTe8hRR70JhnsEDJTOBPPN/UWyMQORUHnTXAUoHNS/X9OThNEGcyQ3lz0ocCoEWfZeeRLf+uT5cH9tv+ItAZSmkbTTqY4rHyzdxqYvdXhKKQMW5vuOTtntVK0DiBcddFNQwQdsVUDi7glTfrtGim5Rbc24MIPrlV0068ImbTnIxoWkZIzO2bzlZM6TxhFICQ0AkQeakZ14cOJD56E88SYXizjwa1HZ2vw6RNHjFJ/0XQkWVVAdYuCPF5EJ1U4miK+RMkDPXL+a/1aUd3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k18tJqJaSuedBHJ8To1ftoAuWQNKYZJt9xWlLrrL0t8=;
 b=5Slu9W0px+VGnPwMa/IDyYAokCmj03mQrI2sl3E9hTg4vP0neejLuaih+Y8tMWCIXp+BJjMbERMhRQok7rdRD5+xDXrC9kYj9OTfVDkpErlzI1NuSFh4msJnSmUFeI4dzY4yrT7i2we2fNMHTj0pdFz3oeABDoUFz0Y+CmD1Zpc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by DM5PR1201MB2555.namprd12.prod.outlook.com (2603:10b6:3:ea::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5353.16; Thu, 23 Jun
 2022 12:52:33 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::e0fd:45cf:c701:2731]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::e0fd:45cf:c701:2731%6]) with mapi id 15.20.5373.015; Thu, 23 Jun 2022
 12:52:33 +0000
Message-ID: <4ea37684-5dda-94e4-a544-74d3812e8d9d@amd.com>
Date: Thu, 23 Jun 2022 14:52:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Lucas Stach <l.stach@pengutronix.de>, Pekka Paalanen <ppaalanen@gmail.com>
References: <91ff0bbb-ea3a-2663-3453-dea96ccd6dd8@amd.com>
 <YCuPhOT4GhY3RR/6@phenom.ffwll.local>
 <9178e19f5c0e141772b61b759abaa0d176f902b6.camel@ndufresne.ca>
 <CAPj87rPYQNkgVEdHECQcHcYe2nCpgF3RYQKk_=wwhvJSxwHXCg@mail.gmail.com>
 <c6e65ee1-531e-d72c-a6a6-da7149e34f18@amd.com>
 <20220623101326.18beeab3@eldfell>
 <954d0a9b-29ef-52ef-f6ca-22d7e6aa3f4d@amd.com>
 <4b69f9f542d6efde2190b73c87096e87fa24d8ef.camel@pengutronix.de>
 <adc626ec-ff5a-5c06-44ce-09111be450cd@amd.com>
 <fbb228cd78e9bebd7e7921c19e0c4c09d0891f23.camel@pengutronix.de>
 <e691bccc-171d-f674-2817-13a945970f4a@amd.com>
 <95cca943bbfda6af07339fb8d2dc7f4da3aa0280.camel@pengutronix.de>
 <05814ddb-4f3e-99d8-025a-c31db7b2c46b@amd.com>
 <708e27755317a7650ca08ba2e4c14691ac0d6ba2.camel@pengutronix.de>
 <6287f5f8-d9af-e03d-a2c8-ea8ddcbdc0d8@amd.com>
 <f3c32cdd2ab4e76546c549b0cebba8e1d19d1cb0.camel@pengutronix.de>
 <34a1efd9-5447-848b-c08c-de75b48e997e@amd.com>
 <3c088a9a511762f7868b10dbe431942d3724917a.camel@pengutronix.de>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <3c088a9a511762f7868b10dbe431942d3724917a.camel@pengutronix.de>
X-ClientProxiedBy: AM5PR0601CA0068.eurprd06.prod.outlook.com
 (2603:10a6:206::33) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9206c228-2d66-49bb-27ba-08da55173d51
X-MS-TrafficTypeDiagnostic: DM5PR1201MB2555:EE_
X-Microsoft-Antispam-PRVS: 
	<DM5PR1201MB25552DE77B39F93824F4A10E83B59@DM5PR1201MB2555.namprd12.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	iWq2B3WzWKAStAs4DMqY1vGm/eQpWviefE2jGtOKphliiERkX1h1pwpJlJfMsVylJeGdZpp+vN7d/Qqd87UuYhcYqj5m8uNkUgirvWqVxgkBZCsmmRQupAXPXwpUCMa/YFnpXXb65UCbhuv36c65aV294P4sCBwhsZIlDR+YFTQ38zKtOm4Vl+MOD96gI1oxQdNmBoJ3QXq5eVEnOKp7C5i1OhWMkwIb/TEX/pP3TniXdFetBgRmnTjEPUlnGga8zD1KiycxCKhTIdBh7xPbyDchYcSCZag9by7qdgvjPgG8Dz0CoDekkb3fT7joeeLyq433qkCxlDiH5LUzRpwCvrh8JQNgP8YU2xBPdiUCBUEhUU2hqdP19OQ2MgeDwUGLYdiWeukkSVE3+VvzJpRIxzbcOnB2okKKVXmsmxCzxdwS7OF52eSfzRScdcwzMTqWARkktrfJdtRRsjLGYHHpWH1ATLqBuW4dL4J8CKoIWN3YnySkDc4PEVgGPAyk0xtIHl0WbkOiicbNzm4togtbypYr6mnjFWHcIAEznPq73+25lhhO/AaJ/spnlhBZc7On/sqGdy4xfNSI4ndwfb/PI9Ux67qRRa0wr4nC+KbTnoOFhnSbDwtX1WBmJP36G1qRRR1aZqE+cbwvt7vhrff6s1NNGI1nBpLZikx4O6N/eODYZSECEjyEVu66xyZu/V1oU7qZIzlyrVWsW5v7zu9z2Vkyb0ECA9rhNVhziot/4mE4QgQjsDFiXHVre0AwKiRoCcYtP4/e+i2Fl5WzYFgs2vhitJ33Yk52Ix9Pb1rPjrs=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(39860400002)(376002)(136003)(346002)(366004)(396003)(316002)(31696002)(66476007)(26005)(8936002)(86362001)(38100700002)(2906002)(478600001)(36756003)(66946007)(41300700001)(54906003)(6506007)(83380400001)(66574015)(8676002)(5660300002)(31686004)(4326008)(6486002)(110136005)(6512007)(2616005)(186003)(66556008)(6666004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?S3hWWXo0UDRzTTdHcU1XM1V0UmNxSTR1UXYvdGhuMEc5RkFDNkswSzZzREI2?=
 =?utf-8?B?Um1CVkZ1eDdDYXp6Vm1naXpuOE9WL3hLL1oyZklwdjZ6dlpHMkpMaWdMNkk5?=
 =?utf-8?B?dDEyTll3WHRlanM5L3lvdzNUQzl0aWVKdWc1MkFRTUo4cDlzb2JnU3cvMG5E?=
 =?utf-8?B?WTBZbDNnZTU4YjJnSENMZUdIdWN1TE9CSU5abTFreVRJdXJ2eHZQS01HWVBM?=
 =?utf-8?B?R05MYzN6VFpJcitxMlVmaWdETEZDRVFNempvRGZnd1E4TXVReUJMbzZEaDVS?=
 =?utf-8?B?ZytmaVVLbkUyQmx0VW01SndjcGVsQml4Lzl5SEwvaHVJcDhlWElWWW03UEJ6?=
 =?utf-8?B?M3NoMVhRU3pNSWhVMHRYV2JDYzFtUjJkTWRQenNWQ05YQXNPS0pqK0FJdHJi?=
 =?utf-8?B?Yk8rOUh4ZW9GY2ZMdEM5dU9OTnFpam56ZXg4MFFydWdxWHhTSXN4Q0E4dmVi?=
 =?utf-8?B?NUMxM2RNYWkyNkxMbDAwbXBZK2pCNGNVa3B2SWZ1TW1NS3NveGpVMmJoSU1a?=
 =?utf-8?B?bVlPNUFGRmNQaTVpRDN2Q2VkckZ3d3BzRmF5K1hrSjdGbnJnVzRpZnIyVFRr?=
 =?utf-8?B?VXcwRGpMTmxxMW9DTTg2Wlcxd1g1TkZXN2RnK1lvZ2o3djZmeFVJVmZiMnky?=
 =?utf-8?B?UmJjOW5hdHlaZEU1VVJYU1VaQjM5Z0NXdm83M3N6RnBLcStCb3ZRdzcveWx4?=
 =?utf-8?B?NTdFMjhnMklLakdrL0VuVTMzKy9oNWlldDd4bEdjTjdwMWEvUGFxQ3h4T1V5?=
 =?utf-8?B?VzBVYkpQRkhTSGdrVU90SmdXQWN5d1VZcGE0VlY2Y1VSQkxRR1VEZEZ2YVA4?=
 =?utf-8?B?UG9odHBvbU4yRGdxYlR6WWFwTkJMdFh5ZjloNFBaT21rRUljbXVhK1hsMXFG?=
 =?utf-8?B?MlRmTkNSWkNSR0huODB0NzVSak9Obm5aVzAyM2hxNjhUUm5hOCs4YWdBNmxM?=
 =?utf-8?B?SVZFSUVNM2dxb2djVnA5R2VSWVV2M3NWOGt6R1J0TytzZzg0ZEtybnBQOHRL?=
 =?utf-8?B?dXN2NnlEbFRDeXV1cVhhTFFQVlpZazVDaWVvZUFDbzFBQWR1ZGNMaytpc2xL?=
 =?utf-8?B?ZnpSYkVnVkRNTVpsNTlJTld5UUR6cklnUSs5M0JoaG1lZlRRUHZyNGhiZWxw?=
 =?utf-8?B?T2RNbVJnVjNDOVdaOVdhMFQydS9rTzVJcW41ZzlibUg3Z0oyNWg4dHRleG1S?=
 =?utf-8?B?V2dYZHlhTmRlN3ZBNWR2c0hBeXZOQ1B0am5udCt2cCs3Y0JuU25jRU13WDF6?=
 =?utf-8?B?dWdKdTg1eTk2NjYwd2hTNVZka3BwYlBITmRQZTFHRVUrQ1FlemJKZElIbmgw?=
 =?utf-8?B?bVgrZnBTNm40bFpjUVh4czJzektXVC9YUW42MFhmdFRPN0RLNEVCK1NDOXEv?=
 =?utf-8?B?N0UzcWs0ZVdXbVBLNVovQ1ZmQmRuakJyVHNuL0E2cERoNlFYeHFoUjl2Vk9L?=
 =?utf-8?B?a2ZtSGNUbGFoVjBFSkwxUkRXTk1BRlFLbkdjM0R5SFluUy9xZ1JGbG9MNGZ0?=
 =?utf-8?B?aHYrYWk2WG0zMlprY3h0QU1LMDVHVUhYTjVrbjB0M1NVNVRCbUFQbmFBQnBr?=
 =?utf-8?B?aVVDTnhHQXFqcjhhQXVCUStNN0pSVzNxck1PNFhYMjRRMzJsc080R3N5d2Zz?=
 =?utf-8?B?R2hNbHhJeGR5ejN0c2J3NVlVa2pZZyt0bkNVR0FoQ0lZN05WaThZVzVNMklv?=
 =?utf-8?B?elVUeitGQzJQVTBvbHhra0k5NStFWGxVU1NodTFyNVV5Z0FqN2ZPODdEcE51?=
 =?utf-8?B?Y3NkUWJOakNXMFhZUFd0TmEzdVY2MVUrTW9uUmVqVml0c3VBZHMyeDNNUldO?=
 =?utf-8?B?NTlZU2dUZ2lIQkNZZDZLVFNmRmk5cEJpVWRuZGlSd1R0Q0pHd1FtOXN0aVZG?=
 =?utf-8?B?MVZ3TVhNeTRNc0E2dDEyTmpYa0hpQkdDME1VYmhOWkxWczRmSXkySGhrbDd3?=
 =?utf-8?B?bERxS21DdnpqdlBHenRVSnVrT3FPNlNUZ3VnQy85ZHEyd2MyT1M2RnZOYmZN?=
 =?utf-8?B?TUFIdkNxb2JiV0lkMy9nRjhtaWc5WnpicmFTc3VXQU0ybWpPZUgyaDV4WmdM?=
 =?utf-8?B?N2lKVjRsM2pHa1RQb1FZcVljUDduZlNTVGlxSjRkRnFMNjQxZC90bWNyTDVL?=
 =?utf-8?Q?nk8KueZQ4zyVRgGHP0nZrAR1W?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9206c228-2d66-49bb-27ba-08da55173d51
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2022 12:52:32.9402
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SJcUBIToynekO4bPRFH4MWl5iNZbaoat3sS1rbTvPbJOJbQzsDnOkT8kaqX3NkYa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1201MB2555
Message-ID-Hash: NTWU5S65CUERJUVGCKO3WIBI7MIWRDYG
X-Message-ID-Hash: NTWU5S65CUERJUVGCKO3WIBI7MIWRDYG
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Sharma, Shashank" <Shashank.Sharma@amd.com>, lkml <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, Nicolas Dufresne <nicolas@ndufresne.ca>, linaro-mm-sig@lists.linaro.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: DMA-buf and uncached system memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NTWU5S65CUERJUVGCKO3WIBI7MIWRDYG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjMuMDYuMjIgdW0gMTQ6MTQgc2NocmllYiBMdWNhcyBTdGFjaDoNCj4gQW0gRG9ubmVyc3Rh
ZywgZGVtIDIzLjA2LjIwMjIgdW0gMTM6NTQgKzAyMDAgc2NocmllYiBDaHJpc3RpYW4gS8O2bmln
Og0KPj4gQW0gMjMuMDYuMjIgdW0gMTM6Mjkgc2NocmllYiBMdWNhcyBTdGFjaDoNCj4+IFtTTklQ
XQ0KPj4gSSBtZWFuIEkgZXZlbiBoYWQgc29tZWJvZHkgZnJvbSBBUk0gd2hpY2ggdG9sZCBtZSB0
aGF0IHRoaXMgaXMgbm90IGdvaW5nDQo+PiB0byB3b3JrIHdpdGggb3VyIEdQVXMgb24gYSBzcGVj
aWZpYyBTb0MuIFRoYXQgdGhlcmUgYXJlIEFSTSBpbnRlcm5hbCB1c2UNCj4+IGNhc2VzIHdoaWNo
IGp1c3Qgc2VlbSB0byB3b3JrIGJlY2F1c2UgYWxsIHRoZSBkZXZpY2VzIGFyZSBub24tY29oZXJl
bnQNCj4+IGlzIGNvbXBsZXRlbHkgbmV3IHRvIG1lLg0KPj4NCj4gWWVzLCB0cnlpbmcgdG8gaG9v
ayB1cCBhIHBlcmlwaGVyYWwgdGhhdCBhc3N1bWVzIGNhY2hlIHNub29waW5nIGluIHNvbWUNCj4g
ZGVzaWduIGRldGFpbHMgdG8gYSBub24gY29oZXJlbnQgU29DIG1heSBlbmQgdXAgZXhwbG9kaW5n
IGluIHZhcmlvdXMNCj4gd2F5cy4gT24gdGhlIG90aGVyIGhhbmQgeW91IGNhbiB3b3JrIGFyb3Vu
ZCBtb3N0IG9mIHRob3NlIGFzc3VtcHRpb25zDQo+IGJ5IG1hcmtpbmcgdGhlIG1lbW9yeSBhcyB1
bmNhY2hlZCB0byB0aGUgQ1BVLCB3aGljaCBtYXkgdGFuaw0KPiBwZXJmb3JtYW5jZSwgYnV0IHdp
bGwgd29yayBmcm9tIGEgY29ycmVjdG5lc3MgUG9WLg0KDQpZZWFoLCBhbmQgZXhhY3RseSB0aGF0
J3Mgd2hhdCBJIG1lYW50IHdpdGggIkRNQS1idWYgaXMgbm90IHRoZSBmcmFtZXdvcmsgDQpmb3Ig
dGhpcyIuDQoNClNlZSB3ZSBkbyBzdXBwb3J0IHVzaW5nIHVuY2FjaGVkL25vdCBzbm9vcGVkIG1l
bW9yeSBpbiBETUEtYnVmLCBidXQgb25seSANCmZvciB0aGUgZXhwb3J0ZXIgc2lkZS4NCg0KRm9y
IGV4YW1wbGUgdGhlIEFNRCBhbmQgSW50ZWwgR1BVcyBoYXZlIGEgcGVyIGJ1ZmZlciBmbGFnIGZv
ciB0aGlzLg0KDQpUaGUgaW1wb3J0ZXIgb24gdGhlIG90aGVyIGhhbmQgbmVlZHMgdG8gYmUgYWJs
ZSB0byBoYW5kbGUgd2hhdGV2ZXIgdGhlIA0KZXhwb3J0ZXIgcHJvdmlkZXMuDQoNCj4+IFtTTklQ
XQ0KPj4+IE5vbiBjb2hlcmVudCBhY2Nlc3MsIGluY2x1ZGluZyB5b3VyIG5vbi1zbm9vcCBzY2Fu
b3V0LCBhbmQgbm8gZG9tYWluDQo+Pj4gdHJhbnNpdGlvbiBzaWduYWwganVzdCBkb2Vzbid0IGdv
IHRvZ2V0aGVyIHdoZW4geW91IHdhbnQgdG8gc29sdmUNCj4+PiB0aGluZ3MgaW4gYSBnZW5lcmlj
IHdheS4NCj4+IFllYWgsIHRoYXQncyB0aGUgc3R1ZmYgSSB0b3RhbGx5IGFncmVlIG9uLg0KPj4N
Cj4+IFNlZSB3ZSBhYnNvbHV0ZWx5IGRvIGhhdmUgdGhlIHJlcXVpcmVtZW50IG9mIGltcGxlbWVu
dGluZyBjb2hlcmVudA0KPj4gYWNjZXNzIHdpdGhvdXQgZG9tYWluIHRyYW5zaXRpb25zIGZvciBW
dWxrYW4gYW5kIE9wZW5HTCtleHRlbnNpb25zLg0KPj4NCj4gQ29oZXJlbnQgY2FuIG1lYW4gMiBk
aWZmZXJlbnQgdGhpbmdzOg0KPiAxLiBDUFUgY2FjaGVkIHdpdGggc25vb3BpbmcgZnJvbSB0aGUg
SU8gZGV2aWNlDQo+IDIuIENQVSB1bmNhY2hlZA0KPg0KPiBUaGUgVnVsa2FuIGFuZCBHTCAiY29o
ZXJlbnQiIHVzZXMgYXJlIHJlYWxseSBjb2hlcmVudCB3aXRob3V0IGV4cGxpY2l0DQo+IGRvbWFp
biB0cmFuc2l0aW9ucywgc28gb24gbm9uIGNvaGVyZW50IGFyY2hlcyB0aGF0IHJlcXVpcmUgdGhl
DQo+IHRyYW5zaXRpb25zIHRoZSBvbmx5IHdheSB0byBpbXBsZW1lbnQgdGhpcyBpcyBieSBtYWtp
bmcgdGhlIG1lbW9yeSBDUFUNCj4gdW5jYWNoZWQuIFdoaWNoIGZyb20gYSBwZXJmb3JtYW5jZSBQ
b1Ygd2lsbCBwcm9iYWJseSBub3QgYmUgd2hhdCBhcHANCj4gZGV2ZWxvcGVycyBleHBlY3QsIGJ1
dCB3aWxsIHN0aWxsIGV4cG9zZSB0aGUgY29ycmVjdCBiZWhhdmlvci4NCg0KUXVpdGUgYSBib29t
ZXIgZm9yIHBlcmZvcm1hbmNlLCBidXQgeWVzIHRoYXQgc2hvdWxkIHdvcmsuDQoNCj4+PiBSZW1l
bWJlciB0aGF0IGluIGEgZnVsbHkgKG5vdCBvbmx5IElPKSBjb2hlcmVudCBzeXN0ZW0gdGhlIENQ
VSBpc24ndA0KPj4+IHRoZSBvbmx5IGFnZW50IHRoYXQgbWF5IGNhY2hlIHRoZSBjb250ZW50IHlv
dSBhcmUgdHJ5aW5nIHRvIGFjY2Vzcw0KPj4+IGhlcmUuIFRoZSBkaXJ0eSBjYWNoZWxpbmUgY291
bGQgcmVhc29uYWJseSBzdGlsbCBiZSBzaXR0aW5nIGluIGEgR1BVIG9yDQo+Pj4gVlBVIGNhY2hl
LCBzbyB5b3UgbmVlZCBzb21lIHdheSB0byBjbGVhbiB0aG9zZSBjYWNoZWxpbmVzLCB3aGljaCBp
c24ndA0KPj4+IGEgbWFnaWMgImltcG9ydGVyIGtub3dzIGhvdyB0byBjYWxsIENQVSBjYWNoZSBj
bGVhbiBpbnN0cnVjdGlvbnMiLg0KPj4gSUlSQyB3ZSBkbyBhbHJlYWR5IGhhdmUvaGFkIGEgU1lO
Q19JT0NUTCBmb3IgY2FzZXMgbGlrZSB0aGlzLCBidXQgKEkNCj4+IG5lZWQgdG8gZG91YmxlIGNo
ZWNrIGFzIHdlbGwsIHRoYXQncyB3YXkgdG8gbG9uZyBhZ28pIHRoaXMgd2FzIGtpY2tlZA0KPj4g
b3V0IGJlY2F1c2Ugb2YgdGhlIHJlcXVpcmVtZW50cyBhYm92ZS4NCj4+DQo+IFRoZSBETUFfQlVG
X0lPQ1RMX1NZTkMgaXMgYXZhaWxhYmxlIGluIHVwc3RyZWFtLCB3aXRoIHRoZSBleHBsaWNpdA0K
PiBkb2N1bWVudGF0aW9uIHRoYXQgInVzZXJzcGFjZSBjYW4gbm90IHJlbHkgb24gY29oZXJlbnQg
YWNjZXNzIi4NCg0KWWVhaCwgZG91YmxlIGNoZWNrZWQgdGhhdCBhcyB3ZWxsLiBUaGlzIGlzIGZv
ciB0aGUgY29oZXJlbmN5IGNhc2Ugb24gdGhlIA0KZXhwb3J0ZXIgc2lkZS4NCg0KPj4+PiBZb3Ug
Y2FuIG9mIGNvdXJzZSB1c2UgRE1BLWJ1ZiBpbiBhbiBpbmNvaGVyZW50IGVudmlyb25tZW50LCBi
dXQgdGhlbiB5b3UNCj4+Pj4gY2FuJ3QgZXhwZWN0IHRoYXQgdGhpcyB3b3JrcyBhbGwgdGhlIHRp
bWUuDQo+Pj4+DQo+Pj4+IFRoaXMgaXMgZG9jdW1lbnRlZCBiZWhhdmlvciBhbmQgc28gZmFyIHdl
IGhhdmUgYmx1bnRseSByZWplY3RlZCBhbnkgb2YNCj4+Pj4gdGhlIGNvbXBsYWlucyB0aGF0IGl0
IGRvZXNuJ3Qgd29yayBvbiBtb3N0IEFSTSBTb0NzIGFuZCBJIGRvbid0IHJlYWxseQ0KPj4+PiBz
ZWUgYSB3YXkgdG8gZG8gdGhpcyBkaWZmZXJlbnRseS4NCj4+PiBDYW4geW91IHBvaW50IG1lIHRv
IHRoYXQgcGFydCBvZiB0aGUgZG9jdW1lbnRhdGlvbj8gQSBxdWljayBncmVwIGZvcg0KPj4+ICJj
b2hlcmVudCIgZGlkbid0IGltbWVkaWF0ZWx5IHR1cm4gc29tZXRoaW5nIHVwIHdpdGhpbiB0aGUg
RE1BLWJ1Zg0KPj4+IGRpcnMuDQo+PiBTZWFyY2ggZm9yICJjYWNoZSBjb2hlcmVuY3kgbWFuYWdl
bWVudCIuIEl0J3MgcXVpdGUgYSB3aGlsZSBhZ28sIGJ1dCBJDQo+PiBkbyByZW1lbWJlciBoZWxw
aW5nIHRvIHJldmlldyB0aGF0IHN0dWZmLg0KPj4NCj4gVGhhdCBvbmx5IHR1cm5zIHVwIHRoZSBs
aW5lcyBpbiBETUFfQlVGX0lPQ1RMX1NZTkMgZG9jLCB3aGljaCBhcmUNCj4gc2F5aW5nIHRoZSBl
eGFjdCBvcHBvc2l0ZSBvZiB0aGUgRE1BLWJ1ZiBpcyBhbHdheXMgY29oZXJlbnQuDQoNClNvdW5k
cyBsaWtlIEknbSBub3QgbWFraW5nIGNsZWFyIHdoYXQgSSB3YW50IHRvIHNheSBoZXJlOiBGb3Ig
dGhlIA0KZXhwb3J0ZXIgdXNpbmcgY2FjaGUgY29oZXJlbnQgbWVtb3J5IGlzIG9wdGlvbmFsLCBm
b3IgdGhlIGltcG9ydGVyIGl0IGlzbid0Lg0KDQpGb3IgdGhlIGV4cG9ydGVyIGl0IGlzIHBlcmZl
Y3RseSB2YWxpZCB0byB1c2Uga21hbGxvYywgZ2V0X2ZyZWVfcGFnZSANCmV0Yy4uLiBvbiBoaXMg
YnVmZmVycyBhcyBsb25nIGFzIGl0IHVzZXMgdGhlIERNQSBBUEkgdG8gZ2l2ZSB0aGUgDQppbXBv
cnRlciBhY2Nlc3MgdG8gaXQuDQoNClRoZSBpbXBvcnRlciBvbiB0aGUgb3RoZXIgaGFuZCBuZWVk
cyB0byBiZSBhYmxlIHRvIGRlYWwgd2l0aCB0aGF0LiBXaGVuIA0KdGhpcyBpcyBub3QgdGhlIGNh
c2UgdGhlbiB0aGUgaW1wb3J0ZXIgc29tZWhvdyBuZWVkcyB0byB3b3JrIGFyb3VuZCB0aGF0Lg0K
DQpFaXRoZXIgYnkgZmx1c2hpbmcgdGhlIENQVSBjYWNoZXMgb3IgYnkgcmVqZWN0aW5nIHVzaW5n
IHRoZSBpbXBvcnRlZCANCmJ1ZmZlciBmb3IgdGhpcyBzcGVjaWZpYyB1c2UgY2FzZSAobGlrZSBB
TUQgYW5kIEludGVsIGRyaXZlcnMgc2hvdWxkIGJlIA0KZG9pbmcpLg0KDQpJZiB0aGUgSW50ZWwg
b3IgQVJNIGRpc3BsYXkgZHJpdmVycyBuZWVkIG5vbi1jYWNoZWQgbWVtb3J5IGFuZCBkb24ndCAN
CnJlamVjdCBidWZmZXIgd2hlcmUgdGhleSBkb24ndCBrbm93IHRoaXMgdGhlbiB0aGF0J3MgY2Vy
dGFpbmx5IGEgYnVnIGluIA0KdGhvc2UgZHJpdmVycy4NCg0KT3RoZXJ3aXNlIHdlIHdvdWxkIG5l
ZWQgdG8gY2hhbmdlIGFsbCBETUEtYnVmIGV4cG9ydGVycyB0byB1c2UgYSBzcGVjaWFsIA0KZnVu
Y3Rpb24gZm9yIGFsbG9jYXRpb24gbm9uLWNvaGVyZW50IG1lbW9yeSBhbmQgdGhhdCBpcyBjZXJ0
YWlubHkgbm90IA0KZ29pbmcgdG8gZmx5Lg0KDQo+IEkgYWxzbyBkb24ndCBzZWUgd2h5IHlvdSB0
aGluayB0aGF0IGJvdGggd29ybGQgdmlld3MgYXJlIHNvIHRvdGFsbHkNCj4gZGlmZmVyZW50LiBX
ZSBjb3VsZCBqdXN0IHJlcXVpcmUgZXhwbGljaXQgZG9tYWluIHRyYW5zaXRpb25zIGZvciBub24t
DQo+IHNub29wIGFjY2Vzcywgd2hpY2ggd291bGQgcHJvYmFibHkgc29sdmUgeW91ciBzY2Fub3V0
IGlzc3VlIGFuZCB3b3VsZA0KPiBub3QgYmUgYSBwcm9ibGVtIGZvciBtb3N0IEFSTSBzeXN0ZW1z
LCB3aGVyZSB3ZSBjb3VsZCBuby1vcCB0aGlzIGlmIHRoZQ0KPiBidWZmZXIgaXMgYWxyZWFkeSBp
biB1bmNhY2hlZCBtZW1vcnkgYW5kIGF0IHRoZSBzYW1lIHRpbWUga2VlcCB0aGUgIng4Ng0KPiBh
c3N1bWVzIGNhY2hlZCArIHNub29wZWQgYWNjZXNzIGJ5IGRlZmF1bHQiIHNlbWFudGljcy4NCg0K
V2VsbCB0aGUga2V5IHBvaW50IGlzIHdlIGludGVudGlvbmFsbHkgcmVqZWN0ZWQgdGhhdCBkZXNp
Z24gcHJldmlvdXNseSANCmJlY2F1c2UgaXQgY3JlYXRlZCBhbGwga2luZCBvZiB0cm91YmxlIGFz
IHdlbGwuDQoNCkZvciB0aGlzIGxpbWl0ZWQgdXNlIGNhc2Ugb2YgZG9pbmcgYSBkb21haW4gdHJh
bnNpdGlvbiByaWdodCBiZWZvcmUgDQpzY2Fub3V0IGl0IG1pZ2h0IG1ha2Ugc2Vuc2UsIGJ1dCB0
aGF0J3MganVzdCBvbmUgdXNlIGNhc2UuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4NCj4g
UmVnYXJkcywNCj4gTHVjYXMNCj4NCj4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==

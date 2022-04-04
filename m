Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C5CB34F15EB
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 Apr 2022 15:31:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EFD9D402D6
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 Apr 2022 13:31:12 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2054.outbound.protection.outlook.com [40.107.93.54])
	by lists.linaro.org (Postfix) with ESMTPS id 077FA3EC24
	for <linaro-mm-sig@lists.linaro.org>; Mon,  4 Apr 2022 13:31:09 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RbphBmr3pWrmSlVUk2B2O7BvZOOyS1g4sZMPmgtVF0BlF7KGeiuExzlzJR5cImXRHj+ONJX6s1WqtQlttIpP971T3I52EDKnPKwJP1z0m6eLSoWdxQTYWAI2GRw3QVEItTyjdeeUvwKpp31ESQCjHynrZoUe/8FnPFkuBVVCL8U6/ObbAtrmNiYoEOoDkRRxMUhpx8hppWDkBQeI93dVPEbQ9McZi4xpckJlxXJtIBLlQJ7XzeaOjFda44i/BLXKY7WDZkQ7c0hrB57l8yYOrhmqULdz92E18Zx0OHaSd5+lRF60HEiI4UV6VSh3pfVhxYzSm5SchIt3NA1JhLUs2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qwgN7zsZHbwpmmt6AS8PPy93KBkNvCYo46p/sMaMY7k=;
 b=CHiNcXcpCkw4VS+oQWPFlU9fSwpYXc82W0vaUrT03A9zDzHTFB7fRzMcs2ZUqaKPEQTscDj17cnnbRAx0mK669xc/Je42WTNnE8/kI1BC1rd4wOl+Q2w68ZJuXANd4J39J7OruEiDRhJVoXXj6xqOPo6hgAxafKGeV5y3RhzQjV5pGo9Z0CkRFWiTO59zqkd9Ycx+04LLcuVAqnDOKSt7Dum+PW0XF5h9bP6Zvcm5KX/aumuG5rDcbbMt+yZYwT2ZCk4aUMDd5JMNZkbLJlF4JoX9NL4n6qjBAuLNU9vk3ANd6ryymiAqJY2KvqsNHfpZoSrdUkxptPwXIMD4cGG3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qwgN7zsZHbwpmmt6AS8PPy93KBkNvCYo46p/sMaMY7k=;
 b=VPdxDWwGpJd1OJb6Y7iXBggDRRTyI2zA1WjROb+HDs1w1saqC/OPgonLuJpC+/GQiCRWrdc5YO5+vcSf4XHI09O2KTty6CNZO2dpfAfH4vpt3OzU65FyfKL6FNvCUEs+2BAC/dsCcmsyeH4ek25QT88lX6qaaSX0z6xVMDSBj2c=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by BY5PR12MB4179.namprd12.prod.outlook.com (2603:10b6:a03:211::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.31; Mon, 4 Apr
 2022 13:31:06 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::404f:1fc8:9f4c:f185]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::404f:1fc8:9f4c:f185%6]) with mapi id 15.20.5123.031; Mon, 4 Apr 2022
 13:31:06 +0000
Message-ID: <724cb481-74cd-6611-df9c-12581e089acb@amd.com>
Date: Mon, 4 Apr 2022 15:30:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Daniel Vetter <daniel@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20220331204651.2699107-1-daniel.vetter@ffwll.ch>
 <20220331204651.2699107-3-daniel.vetter@ffwll.ch>
 <YkrvhG/ODfshvX+y@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <YkrvhG/ODfshvX+y@phenom.ffwll.local>
X-ClientProxiedBy: AS9PR06CA0284.eurprd06.prod.outlook.com
 (2603:10a6:20b:45a::27) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 431c36ed-b8f9-463d-3061-08da163f5f08
X-MS-TrafficTypeDiagnostic: BY5PR12MB4179:EE_
X-Microsoft-Antispam-PRVS: 
	<BY5PR12MB41797151294D085EE762F63E83E59@BY5PR12MB4179.namprd12.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	AusgN+DX/bXctcZHWwa9kyeoeq7n+qGb3qPon2xzC0FMTk81uTE38JNYmO2gZczDz6eQEDW4l5vWzsBQpXBwN+Px0CgfV+pk/Oy99bY4e/n1ZMSZ4gjt+RwyMaUCZRb/lvgMIXO+00ff1lv4Y1plZPvYJdm3M9R6J9PAhk/eNPeI7XKDl/EO8qULA5igqFWmMWZuxWXwcseOqlCrsbXouD4PmGP0xGuQ15MId02EJUzlxaHvCz0XC699b4WOdH/cgMA3KcG60uJRW9DXrabvPSP0LYVrDsWvTsVz4c1khD3dxA8XoEwVGoF66rFaKm8C+srwOioQrfk2E6XvGFmemkzLcLMdX0Hn698A6jZNQObvYthCNouxHESd1cVi1OiHfyu2BRHX2dmtqHxHeB6sSNqBZndf+Jv6cvz3p7TUNTUxDF5MULk6S6tqoTYWdAUYn2GiQ4xiP9PtpX/Qn04t06G/WX4T+P8JLeRwar6t+bc7+wFh+y//fs+juiiXWcsSSrCIDZKbS2NNq4gSI0CGZOKiFQr3Smr5GQvptKZA4V+GeH1Iat7tqK/qvPILUwfEJ7GiAQJc/PbHl36w42MWEqZmNRngK2aoToX+zrjNJ/TT66QUop1xRSroBAOZEgB5k1g2r81xqLFcawLHi6KXWbce/fOWgAg8ysvKjojCBK1UPB8ajYn+BugEgFJLmqtpdIpPYYcaqMO0UYBp5qqnnxdsvG/9IqEN1ti32IRST8QVtkCEvq81OLnEYqs+Tvbk
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(8676002)(36756003)(38100700002)(4326008)(66556008)(66946007)(66476007)(2616005)(26005)(66574015)(186003)(6512007)(31686004)(83380400001)(86362001)(110136005)(8936002)(6506007)(6666004)(508600001)(5660300002)(7416002)(2906002)(31696002)(54906003)(6486002)(316002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?elJMRWlPVVpkRVcxV2c3OTM3WTJiWlBnM0pNMndJT0Y3KzdLOHRuaWVrRUxR?=
 =?utf-8?B?ckdqdTJFLzFJZ2RuOS93NjdwTm03TW1OdkVVV3AyWmphYW1RZXRheWtGM1lu?=
 =?utf-8?B?eFdKTXNSR2k0TFdPdjRTSC9UcmlwTHdpRGRXR2JqQVkrbVZ1cGpxcHplTnMz?=
 =?utf-8?B?c1VENEQwTjJPT1hDeGRxWjU0a3FxWVhDSlpGcnhCcHFyZG13VXRhMU11aUNa?=
 =?utf-8?B?WGJLa205RTN5K2tvT0ppM2lGSW1Dc0NMc2FiWDR1RU4zVzUwbkVkeTN3bHVw?=
 =?utf-8?B?bGt0YjZiUDlCMStnRTlYTldoZThWdlJ4QkQ1SDRQdytiMXd4RzlCcUlyVUxw?=
 =?utf-8?B?Y0tsaTV1VjVKTVVsL1BCU3RxUDdFd2RXcTVvRzFsbGtWL3pBNmNEWmhNekZF?=
 =?utf-8?B?eDRjRkJOb0c3QktSQVJob01lZEltdVJvb2liL3lQUm5SK0MzZnArcFdEVkxr?=
 =?utf-8?B?a3Y2WGpKR1lwYlhlRlNGd1psODFhN0FzWTRMYy9WaFE3TUVFc1RXMWVIZGlX?=
 =?utf-8?B?THAxYm1YVVY3OTRrNUh2ZVJYLy9DQ1BWYXlJeWtTOTQvTXBLN1E2Uzl4eFFR?=
 =?utf-8?B?OFUybmRKVkRXdm0xa0NwMnQzb2pjbis1VzVEdTY0ZlJmRzZ2V1lhSkpTOHU3?=
 =?utf-8?B?ekFWc2ZoMVFpRlNmV0dKMTNoREtPMzV6TEJEcHdxQUhQVEc3MW5rK3V2aGZo?=
 =?utf-8?B?NzhKNHZiOTBvclhHTmVJUjByZWFTbTU1Y201QkgxUUVzakIvZzVxSVZ2U2tG?=
 =?utf-8?B?cGtvNFFHK01HRTBxM3Fqa3RWcWtFR08wanV3VXpSV2pNNG5QQU9yM0pnak81?=
 =?utf-8?B?eVNIM09KT3FYWU53L2lUWTRkSmIvazVyNk1yWUdTMUhNNXM4bWlUZW5aZWdp?=
 =?utf-8?B?cVdDYW9FOThlS0lwMFExTUNHc09YRUs4WG9pd1kzNHhYcDRzQ3VyVGNJU2o4?=
 =?utf-8?B?ZkJzUVpBTDR4RE1zMDFuanViQTlpNEJLa3JwRi9kM3lXc0duNjNrT3dGVW03?=
 =?utf-8?B?UHpIY3NyVFMrOFFITlFaWEMvRTRDN29RR3JCZmZYWjVuY1U4Nk5lc05aSjBp?=
 =?utf-8?B?ZTAvUkhvVmZVT1lqYTRKZ3ZlZEFrbzYyTXRtaCtoMTNIdUwxazFsTkREVzBh?=
 =?utf-8?B?c2poeTRtWWdXck1DdDk5SjVyd3RQWDNKSTlxck9lYjZEZVhBZ3NuZC9NTGVv?=
 =?utf-8?B?OUppSW9aNmVhS25vTjdWNHNmLzhwZjl5Sk1nSTJhZTYyUkdTVjV6MWRkbVRK?=
 =?utf-8?B?TTRsNFExZWphUEtBckwrZkJjSDY2RTFEUHNVMktSeW9MSFZ4MjdpSTUvTlFN?=
 =?utf-8?B?d0VzSENaUTIvMzVuZWluUWhJYWdvbFJqN01pK2ZsR2xhU0JsQ25QZWE0MWVW?=
 =?utf-8?B?ejlXait6Yzdwa2dzOU52REFXTjFhcEsxaURmT3dFbm9sS1ZadWtwVDlKZk1o?=
 =?utf-8?B?V0xIN0VLdXBKTWVTaU9ucC81Z0tzc0JvNDN6TTVBRU4zSkpNYmxTSVlmaWZP?=
 =?utf-8?B?bDJQdWZJQVB5aEFNVTh0bEp3SXNUM055b1lLYjdoTTU4M0g4MXN3b1MxdlNE?=
 =?utf-8?B?WTF3UkZoa0tWUEVaTTJkSVo0WTZOalF3ejdjOUVoSnNQMDlCZmtoeEdRNGZ4?=
 =?utf-8?B?azVTSGppQlMxendMZzdsVjZZWnZ4eE8rUUZUQWJSQkYwSDg1Q1JUbStiSERT?=
 =?utf-8?B?K0QyYTVtVWJKR09UVWhqZWhHKzBjeDZmTXlvRkVpaDQwUUkxU0hRbjQ2WjRv?=
 =?utf-8?B?ZVh5M0ZPdStSS3c5NHNQekZqWlRsSnhXTE9YdE5veW4wdXJCMCtPNDMvTVdK?=
 =?utf-8?B?SXBFVFZ0K0ZXcVFoak1wNE8wTzlxY1YrdFY1OXByL0hXNWQwWUU4M3lwWnlQ?=
 =?utf-8?B?cWJlam4yU0Q0SHNXTEI2TDkrb25NbjBoM3pWaTVaSWZ2N3FRMDVCYjRHN3lw?=
 =?utf-8?B?aXZWQk00dGhMTUtWQ0lDQ0FvZlB6WEVWQWVjWGk0NE1RdWFqUGxCV0Rzc05J?=
 =?utf-8?B?UzA2bk91c24rZzFDc2JjVHRybEt2R3Bab1FsdmxzWUw2VWNNamhpZHl4b1NR?=
 =?utf-8?B?MlVFTTJlbThScTF0NlJYSVovaFNFb0dXRWZ4Y0hxd0ZvbkxVNHZkb3FYeWpu?=
 =?utf-8?B?M3dWbU5uZTFFaXJOYkU5ODVxUGxtSnZKYzlhanRJdEkxRzdZRFFjVWcwYXhs?=
 =?utf-8?B?MndiK2lQRUlMUkt2OU4zbEp3ZC9lK3F4MnJiaFFnSUw5Um00YzN1V3NlUEZh?=
 =?utf-8?B?R1hnOW1TR0UzUEVkWXpxQXQydDBGZm02bVJ5Nk5BUkIxbUQxejROeFNhWXM2?=
 =?utf-8?B?YnJLeU5UNFFUYnFXdGxEREwrbnZ4NXlLTkttREdsS002Z2syZ3hFdz09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 431c36ed-b8f9-463d-3061-08da163f5f08
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2022 13:31:06.1812
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2+0dIbVOvlTDUzv1RT1HpgZIPhqHUI0Mo6rboyZMR0MMqQfbAuA+Nk0Up4bv5D/b
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4179
Message-ID-Hash: V2HE4772VMYEFE44CXG6NKE6756ON3LA
X-Message-ID-Hash: V2HE4772VMYEFE44CXG6NKE6756ON3LA
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Daniel Vetter <daniel.vetter@intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/4] drm/gem: Delete gem array fencing helpers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/V2HE4772VMYEFE44CXG6NKE6756ON3LA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDQuMDQuMjIgdW0gMTU6MTUgc2NocmllYiBEYW5pZWwgVmV0dGVyOg0KPiBPbiBUaHUsIE1h
ciAzMSwgMjAyMiBhdCAxMDo0Njo0OVBNICswMjAwLCBEYW5pZWwgVmV0dGVyIHdyb3RlOg0KPj4g
SW50ZWdyYXRlZCBpbnRvIHRoZSBzY2hlZHVsZXIgbm93IGFuZCBhbGwgdXNlcnMgY29udmVydGVk
IG92ZXIuDQo+Pg0KPj4gdjI6IFJlYmFzZWQgb3ZlciBjaGFuZ2VzIGZyb20gS8O2bmlnLg0KPj4N
Cj4+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29t
Pg0KPj4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRl
bC5jb20+DQo+PiBDYzogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPg0KPj4gQ2M6
IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPg0KPj4gQ2M6IERhdmlkIEFp
cmxpZSA8YWlybGllZEBsaW51eC5pZT4NCj4+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3
bGwuY2g+DQo+PiBDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4NCj4+
IENjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4+IENj
OiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcNCj4+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcNCj4gQW55b25lIHVwIGZvciBhbiBhY2sgZm9yIHRoaXMgb25lIGhlcmU/DQoN
CkFja2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQoN
ClBsZWFzZSBsYW5kIHRoYXQgQVNBUCBzbyB0aGF0IEkgY2FuIHJlYmFzZSBvbiB0b3AuDQoNClRo
YW5rcywNCkNocmlzdGlhbi4NCg0KPg0KPiBUaGFua3MsIERhbmllbA0KPg0KPj4gLS0tDQo+PiAg
IGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMgfCA4MCAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0NCj4+ICAgaW5jbHVkZS9kcm0vZHJtX2dlbS5oICAgICB8ICA1IC0tLQ0K
Pj4gICAyIGZpbGVzIGNoYW5nZWQsIDg1IGRlbGV0aW9ucygtKQ0KPj4NCj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYw0K
Pj4gaW5kZXggNTZmYjg3ODg1MTQ2Li4xMzNkZmFlMDZmYWIgMTAwNjQ0DQo+PiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vZHJtX2dlbS5jDQo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5j
DQo+PiBAQCAtMTI3Myw4MyArMTI3MywzIEBAIGRybV9nZW1fdW5sb2NrX3Jlc2VydmF0aW9ucyhz
dHJ1Y3QgZHJtX2dlbV9vYmplY3QgKipvYmpzLCBpbnQgY291bnQsDQo+PiAgIAl3d19hY3F1aXJl
X2ZpbmkoYWNxdWlyZV9jdHgpOw0KPj4gICB9DQo+PiAgIEVYUE9SVF9TWU1CT0woZHJtX2dlbV91
bmxvY2tfcmVzZXJ2YXRpb25zKTsNCj4+IC0NCj4+IC0vKioNCj4+IC0gKiBkcm1fZ2VtX2ZlbmNl
X2FycmF5X2FkZCAtIEFkZHMgdGhlIGZlbmNlIHRvIGFuIGFycmF5IG9mIGZlbmNlcyB0byBiZQ0K
Pj4gLSAqIHdhaXRlZCBvbiwgZGVkdXBsaWNhdGluZyBmZW5jZXMgZnJvbSB0aGUgc2FtZSBjb250
ZXh0Lg0KPj4gLSAqDQo+PiAtICogQGZlbmNlX2FycmF5OiBhcnJheSBvZiBkbWFfZmVuY2UgKiBm
b3IgdGhlIGpvYiB0byBibG9jayBvbi4NCj4+IC0gKiBAZmVuY2U6IHRoZSBkbWFfZmVuY2UgdG8g
YWRkIHRvIHRoZSBsaXN0IG9mIGRlcGVuZGVuY2llcy4NCj4+IC0gKg0KPj4gLSAqIFRoaXMgZnVu
Y3Rpb25zIGNvbnN1bWVzIHRoZSByZWZlcmVuY2UgZm9yIEBmZW5jZSBib3RoIG9uIHN1Y2Nlc3Mg
YW5kIGVycm9yDQo+PiAtICogY2FzZXMuDQo+PiAtICoNCj4+IC0gKiBSZXR1cm5zOg0KPj4gLSAq
IDAgb24gc3VjY2Vzcywgb3IgYW4gZXJyb3Igb24gZmFpbGluZyB0byBleHBhbmQgdGhlIGFycmF5
Lg0KPj4gLSAqLw0KPj4gLWludCBkcm1fZ2VtX2ZlbmNlX2FycmF5X2FkZChzdHJ1Y3QgeGFycmF5
ICpmZW5jZV9hcnJheSwNCj4+IC0JCQkgICAgc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQo+PiAt
ew0KPj4gLQlzdHJ1Y3QgZG1hX2ZlbmNlICplbnRyeTsNCj4+IC0JdW5zaWduZWQgbG9uZyBpbmRl
eDsNCj4+IC0JdTMyIGlkID0gMDsNCj4+IC0JaW50IHJldDsNCj4+IC0NCj4+IC0JaWYgKCFmZW5j
ZSkNCj4+IC0JCXJldHVybiAwOw0KPj4gLQ0KPj4gLQkvKiBEZWR1cGxpY2F0ZSBpZiB3ZSBhbHJl
YWR5IGRlcGVuZCBvbiBhIGZlbmNlIGZyb20gdGhlIHNhbWUgY29udGV4dC4NCj4+IC0JICogVGhp
cyBsZXRzIHRoZSBzaXplIG9mIHRoZSBhcnJheSBvZiBkZXBzIHNjYWxlIHdpdGggdGhlIG51bWJl
ciBvZg0KPj4gLQkgKiBlbmdpbmVzIGludm9sdmVkLCByYXRoZXIgdGhhbiB0aGUgbnVtYmVyIG9m
IEJPcy4NCj4+IC0JICovDQo+PiAtCXhhX2Zvcl9lYWNoKGZlbmNlX2FycmF5LCBpbmRleCwgZW50
cnkpIHsNCj4+IC0JCWlmIChlbnRyeS0+Y29udGV4dCAhPSBmZW5jZS0+Y29udGV4dCkNCj4+IC0J
CQljb250aW51ZTsNCj4+IC0NCj4+IC0JCWlmIChkbWFfZmVuY2VfaXNfbGF0ZXIoZmVuY2UsIGVu
dHJ5KSkgew0KPj4gLQkJCWRtYV9mZW5jZV9wdXQoZW50cnkpOw0KPj4gLQkJCXhhX3N0b3JlKGZl
bmNlX2FycmF5LCBpbmRleCwgZmVuY2UsIEdGUF9LRVJORUwpOw0KPj4gLQkJfSBlbHNlIHsNCj4+
IC0JCQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsNCj4+IC0JCX0NCj4+IC0JCXJldHVybiAwOw0KPj4g
LQl9DQo+PiAtDQo+PiAtCXJldCA9IHhhX2FsbG9jKGZlbmNlX2FycmF5LCAmaWQsIGZlbmNlLCB4
YV9saW1pdF8zMmIsIEdGUF9LRVJORUwpOw0KPj4gLQlpZiAocmV0ICE9IDApDQo+PiAtCQlkbWFf
ZmVuY2VfcHV0KGZlbmNlKTsNCj4+IC0NCj4+IC0JcmV0dXJuIHJldDsNCj4+IC19DQo+PiAtRVhQ
T1JUX1NZTUJPTChkcm1fZ2VtX2ZlbmNlX2FycmF5X2FkZCk7DQo+PiAtDQo+PiAtLyoqDQo+PiAt
ICogZHJtX2dlbV9mZW5jZV9hcnJheV9hZGRfaW1wbGljaXQgLSBBZGRzIHRoZSBpbXBsaWNpdCBk
ZXBlbmRlbmNpZXMgdHJhY2tlZA0KPj4gLSAqIGluIHRoZSBHRU0gb2JqZWN0J3MgcmVzZXJ2YXRp
b24gb2JqZWN0IHRvIGFuIGFycmF5IG9mIGRtYV9mZW5jZXMgZm9yIHVzZSBpbg0KPj4gLSAqIHNj
aGVkdWxpbmcgYSByZW5kZXJpbmcgam9iLg0KPj4gLSAqDQo+PiAtICogVGhpcyBzaG91bGQgYmUg
Y2FsbGVkIGFmdGVyIGRybV9nZW1fbG9ja19yZXNlcnZhdGlvbnMoKSBvbiB5b3VyIGFycmF5IG9m
DQo+PiAtICogR0VNIG9iamVjdHMgdXNlZCBpbiB0aGUgam9iIGJ1dCBiZWZvcmUgdXBkYXRpbmcg
dGhlIHJlc2VydmF0aW9ucyB3aXRoIHlvdXINCj4+IC0gKiBvd24gZmVuY2VzLg0KPj4gLSAqDQo+
PiAtICogQGZlbmNlX2FycmF5OiBhcnJheSBvZiBkbWFfZmVuY2UgKiBmb3IgdGhlIGpvYiB0byBi
bG9jayBvbi4NCj4+IC0gKiBAb2JqOiB0aGUgZ2VtIG9iamVjdCB0byBhZGQgbmV3IGRlcGVuZGVu
Y2llcyBmcm9tLg0KPj4gLSAqIEB3cml0ZTogd2hldGhlciB0aGUgam9iIG1pZ2h0IHdyaXRlIHRo
ZSBvYmplY3QgKHNvIHdlIG5lZWQgdG8gZGVwZW5kIG9uDQo+PiAtICogc2hhcmVkIGZlbmNlcyBp
biB0aGUgcmVzZXJ2YXRpb24gb2JqZWN0KS4NCj4+IC0gKi8NCj4+IC1pbnQgZHJtX2dlbV9mZW5j
ZV9hcnJheV9hZGRfaW1wbGljaXQoc3RydWN0IHhhcnJheSAqZmVuY2VfYXJyYXksDQo+PiAtCQkJ
CSAgICAgc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmosDQo+PiAtCQkJCSAgICAgYm9vbCB3cml0
ZSkNCj4+IC17DQo+PiAtCXN0cnVjdCBkbWFfcmVzdl9pdGVyIGN1cnNvcjsNCj4+IC0Jc3RydWN0
IGRtYV9mZW5jZSAqZmVuY2U7DQo+PiAtCWludCByZXQgPSAwOw0KPj4gLQ0KPj4gLQlkbWFfcmVz
dl9mb3JfZWFjaF9mZW5jZSgmY3Vyc29yLCBvYmotPnJlc3YsIHdyaXRlLCBmZW5jZSkgew0KPj4g
LQkJcmV0ID0gZHJtX2dlbV9mZW5jZV9hcnJheV9hZGQoZmVuY2VfYXJyYXksIGZlbmNlKTsNCj4+
IC0JCWlmIChyZXQpDQo+PiAtCQkJYnJlYWs7DQo+PiAtCX0NCj4+IC0JcmV0dXJuIHJldDsNCj4+
IC19DQo+PiAtRVhQT1JUX1NZTUJPTChkcm1fZ2VtX2ZlbmNlX2FycmF5X2FkZF9pbXBsaWNpdCk7
DQo+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJtX2dlbS5oIGIvaW5jbHVkZS9kcm0vZHJt
X2dlbS5oDQo+PiBpbmRleCBlMjk0MWNlZTE0YjYuLjlkN2M2MWExMjJkYyAxMDA2NDQNCj4+IC0t
LSBhL2luY2x1ZGUvZHJtL2RybV9nZW0uaA0KPj4gKysrIGIvaW5jbHVkZS9kcm0vZHJtX2dlbS5o
DQo+PiBAQCAtNDA3LDExICs0MDcsNiBAQCBpbnQgZHJtX2dlbV9sb2NrX3Jlc2VydmF0aW9ucyhz
dHJ1Y3QgZHJtX2dlbV9vYmplY3QgKipvYmpzLCBpbnQgY291bnQsDQo+PiAgIAkJCSAgICAgIHN0
cnVjdCB3d19hY3F1aXJlX2N0eCAqYWNxdWlyZV9jdHgpOw0KPj4gICB2b2lkIGRybV9nZW1fdW5s
b2NrX3Jlc2VydmF0aW9ucyhzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKipvYmpzLCBpbnQgY291bnQs
DQo+PiAgIAkJCQkgc3RydWN0IHd3X2FjcXVpcmVfY3R4ICphY3F1aXJlX2N0eCk7DQo+PiAtaW50
IGRybV9nZW1fZmVuY2VfYXJyYXlfYWRkKHN0cnVjdCB4YXJyYXkgKmZlbmNlX2FycmF5LA0KPj4g
LQkJCSAgICBzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSk7DQo+PiAtaW50IGRybV9nZW1fZmVuY2Vf
YXJyYXlfYWRkX2ltcGxpY2l0KHN0cnVjdCB4YXJyYXkgKmZlbmNlX2FycmF5LA0KPj4gLQkJCQkg
ICAgIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqLA0KPj4gLQkJCQkgICAgIGJvb2wgd3JpdGUp
Ow0KPj4gICBpbnQgZHJtX2dlbV9kdW1iX21hcF9vZmZzZXQoc3RydWN0IGRybV9maWxlICpmaWxl
LCBzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LA0KPj4gICAJCQkgICAgdTMyIGhhbmRsZSwgdTY0ICpv
ZmZzZXQpOw0KPj4gICANCj4+IC0tIA0KPj4gMi4zNC4xDQo+Pg0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

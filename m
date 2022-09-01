Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4125A9107
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 09:47:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2F7B9479BA
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 07:47:21 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2064.outbound.protection.outlook.com [40.107.93.64])
	by lists.linaro.org (Postfix) with ESMTPS id 926963F55D
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Sep 2022 07:47:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aPG0t1a2d6ycTpZIduUFcLk+dCEvP27AJaT7Vs3uQzE8CbLjYUDeEuhn1q8xJrfN9GXPRhJrIrshSIExVfX6a076U1Nfgv4vEDDjf/kGzNhT4n74FT/TcXqhuvWUe/v1EHACy3sHtkz8CbC6CtQyJfbqK7v+mD3a7zSPYNNtilw1baQKtl4XZNIdm6b8LPo+caQ/xr9RTp+4tXUJTfrMEwNdPTYFCGsXTZiPdCRum6rT6pEad93h+gzg+r57TjYjePs5Mtgh+nW8hfqr0FTzv4ONTzamPvR8e5mc3fkToDTk1akGStHQDlxMCjcf68Imq/lMTd/9WgWhIap1wk/5dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D/Bdyndzcla1GmGf06qfQ4CIfG9ZrhA2pOhkF4w4RcI=;
 b=AzXNO/Ebgs7KsYboZQ81Sy9mXuqZse2alEpRnI8UFdmC36QKnTbaqkUYfMF/bc84LUJO1O8LNobeayXJdMd8B1+vZ1ulcTfN7V8vn9utAeTKDa8VIcIuGRY43YD6T6EKFu+VoG6YORXh45i/dQ5Z6kuDUJcQWVWN6HjAq1i9Hi0mUYUTA++ku9cm6teMExm4Rh0MZlcxU8taIL/OJAKU5tE5hM4jP6TJ/1rAosqC716u3cEBjvNbJPZH+9i7EACPlQ5SnlxUP0u5+sF2ShnC7d8X4MA8y//6QJ3BlB5zbOLr4W3/TGMV1nI6KgiPlzWN+R93zPx/ZPJxTAPGItBBmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D/Bdyndzcla1GmGf06qfQ4CIfG9ZrhA2pOhkF4w4RcI=;
 b=QHhWeo5JdnCPYgnKYkkB4WTvB4iI0sk32s+d2dQqETr8PVjd5a633escMfpuCZ1RBQkUpAH+jC95L2t4yEY26qWRpru2M+T5XcUfeha5T9pAoJv5XqBONOTUnX8aWnzb9NpkCU4hZ7eTJuuBS2dyTIoiB/OxJ08upO7PH7L3UoY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by SJ0PR12MB7068.namprd12.prod.outlook.com (2603:10b6:a03:4ae::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.15; Thu, 1 Sep
 2022 07:47:12 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::4524:eda6:873a:8f94]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::4524:eda6:873a:8f94%7]) with mapi id 15.20.5588.012; Thu, 1 Sep 2022
 07:47:11 +0000
Message-ID: <fd3ceab5-585f-c814-5df6-408f25e96354@amd.com>
Date: Thu, 1 Sep 2022 09:46:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>,
 Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu
 <olvaffe@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Gert Wollny <gert.wollny@collabora.com>,
 Gustavo Padovan <gustavo.padovan@collabora.com>,
 Daniel Stone <daniel@fooishbar.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Clark <robdclark@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 "Pan, Xinhui" <Xinhui.Pan@amd.com>, Thierry Reding
 <thierry.reding@gmail.com>, Tomasz Figa <tfiga@chromium.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas_os@shipmail.org>,
 Qiang Yu <yuq825@gmail.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Amol Maheshwari <amahesh@qti.qualcomm.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 Leon Romanovsky <leon@kernel.org>, Juergen Gross <jgross@suse.com>,
 Stefano Stabellini <sstabellini@kernel.org>,
 Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>,
 Tomi Valkeinen <tomba@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Lucas Stach <l.stach@pengutronix.de>,
 Christian Gmeiner <christian.gmeiner@gmail.com>
References: <20220831153757.97381-1-dmitry.osipenko@collabora.com>
 <20220831153757.97381-22-dmitry.osipenko@collabora.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20220831153757.97381-22-dmitry.osipenko@collabora.com>
X-ClientProxiedBy: AS9PR07CA0005.eurprd07.prod.outlook.com
 (2603:10a6:20b:46c::28) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2e46d7f8-95a1-43b4-ab5e-08da8bee2dac
X-MS-TrafficTypeDiagnostic: SJ0PR12MB7068:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	G04l9/jWR2wcOGf4mzqMHPpFHGj6dRta1rTvry398jlRnBYgTPPgoNz8A8LV0ejXK5MoD4hlKvziGfZzBoRm5M/bZieHhjEflISu4+0G6gwRA6pLSwNHVeI9i7xkm/83vIwgkX4JAxMZtP1JrbJ68hatX68KyIW8RquOYllAfmRLSpfX6p51SZqluLqPwlnV/7EH0GEEK+ctpGI5BdeQc+DNaUKB4TnnP/X7mTj0Gr71uME5l3BYDj+VN61qZOP7A2zlB3Vukl8CKeJC37mpFKIgaS7Byyhp3pOUTmK47BTC1slgYL6IKhdPHQ9vNW+JettpXcOLr8SxqBOoZvbHaybGsqhOmjMQEIjsMT49ReWhA50rqtjno44PAqnkNqOE0AQgBUQrgT7iQweyWQ/uN4Vst7yF4K42y799A1C1FRpPabOSSvd6OLAdO7jYjMfeA4s9ozYv+p8dljYzTqE0qa51VwcHKt60j5PaXTQW3g1cs9z/dBy0EK6KqJLJKdKKqbgrXXd5PeetxFrJkaGU17HYIbT0nSnourNArYUeNLdNcniSoX2U/WIraPjpplTssF5s+1kIWqe0XHPshBoZOiaGye24FCz7zgFFn+85tdaFt4+liBWJA6KOc6UnLka7tUJZPZ+aB5xdnqXAsVxpY1zXK2+ATj7P1WjOX5aZspcW2G1cWygdJSn93GUbQNemK3dPlVT5HkvizxfZ4Wyii+/DcM7EQxo4AIe6750du1PXToYDiDGezZv63xrcKlTf/rMSTNcEUlWRSK3ONJ66OK941P909SNWJy7MDeDj8a9LQRVfbvNJtDcm33nlKUxx
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(39860400002)(376002)(136003)(396003)(346002)(366004)(31686004)(316002)(110136005)(38100700002)(186003)(86362001)(921005)(31696002)(36756003)(2616005)(2906002)(83380400001)(6486002)(41300700001)(8676002)(66556008)(66476007)(66946007)(4326008)(478600001)(7416002)(6666004)(8936002)(7406005)(5660300002)(6506007)(66574015)(6512007)(26005)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YzNjYVh3bjRSREJWbkcwTTY2UFJ6UFptZExGRldSanB4RXhncGkxTEtuUHNk?=
 =?utf-8?B?UXBzVGNoUC9xVHE5TGZYa0RwbGE0cFcrcmUwamhHd1llMkVHTkMyQktGOGhh?=
 =?utf-8?B?aHpBVkl3U0FyVGpUc0pZK2Ywa3lOaTgyckZIMUtlQXBXTjh5NkpwbkdHendZ?=
 =?utf-8?B?UVE2b0hVK2FTUVEvWEUwVVR6b0FqNERHVjlnNVAzNmNKNnlkMzB3di9iTFRi?=
 =?utf-8?B?SDE2eFhpYmIzZEdGUFBYYjh2ZVBZcnJLNFlFMDlzYk9aNkhzY2N4SmxCQU1X?=
 =?utf-8?B?cXJYSTl0ZzBFSS9nU0w0bnBPQzlPMkczVXRDZDR0dkJ6L3F1ZW5sRE02a3p0?=
 =?utf-8?B?WHJkTGF2QktuVnFKK21LV09CK050dW56d0o3c21qMWRGVnFvenhnMG1vVURr?=
 =?utf-8?B?bWwwYTBTc3VaeUUwVGNmZThCR3NQQXd6S3I0bEMrbVFMSENpSzhEZWZ4MGkr?=
 =?utf-8?B?UStYVStBbVo2elBnbEFTQllxdFFoRDNQWFNDL0lYSm9JclpzSnFncUZSSDRR?=
 =?utf-8?B?SkxNSTg4eThlTjVuQXRTZzR6cERSTDZwR1FqZTJCYnV0MWdtb0Frc3JIdlh4?=
 =?utf-8?B?WHB3cHFIb0NCK3EwMWxMRWppWmdoMU14eDNvTWxZdXNjMG9tbkVoNHIwRXFK?=
 =?utf-8?B?eW9od2hXT2hXNU5yUVhEVFpVNEFoYVI3ZC91MEdrMlUxc0hIUHg2VDhDRTMy?=
 =?utf-8?B?NjJpTmhNdDFUaXQxYVN5WnZUNkVIcFpLUjRVYlY5cmpMazd0QUZSYjhqek1j?=
 =?utf-8?B?MkxlUHBFbDFhclpVU3JIb2NtRjg4bzBYNUVJSW5pUEFKWExuTUpGb3h1SjZo?=
 =?utf-8?B?VDlwNnE3MlhuRGJqdUdxb3dsWmMvME5tQlBZbjByQlRTVkh2U2g3U0t3Q0ht?=
 =?utf-8?B?R0FFV2VwQ0RyVFlVclRaRk9FM0l6MTRuTWFYRldqYWNwYnRwLzRIdGp4QW9v?=
 =?utf-8?B?d1Y5Sms4VHdmK2J0ZmgxWUxERGZjS0ZIczAxN2l5dkE2Z2s2Q0I5dEJlYjh3?=
 =?utf-8?B?YWhVYWNpZmwrdWhWbUJUTGwrSWYvN1IwcFAwUi9jMlgrZko2cTF1WUhITXR3?=
 =?utf-8?B?SkRNbXJrUEZFZVZ1bitveVA3U2RhOWhZZTFOV2YwdmtjY0dwUVFhRTd3MGdG?=
 =?utf-8?B?bk52Uk9nTGJZdW9ZaDVHUUx3NGdkNlFWbzQrTmZsMFNyaTlXZDk1SUVlSXcr?=
 =?utf-8?B?dklUSXh6aHF5bnp4bEROdnJUWjhQd2RZdVZzQ29iOHprK003aEVUVzY5dHo0?=
 =?utf-8?B?U2gvazlUWkdxSi9wSFY2UFFnZTBRbVJnVHJPOXlBRjZ3NHNCQnc4cDk1OUZS?=
 =?utf-8?B?b2dzQnVRYmZaTlhXTldqaGE5WHpkcXhvem0wQWRzZVVod0xHbGI4V0g2b3Fh?=
 =?utf-8?B?aXpoTysrcjZVcWx6TCtvU1hZcWNMWW5uVytuM0JCVmFPTzZxVFlNWmZDTEFS?=
 =?utf-8?B?dGZ4VENoQWpJY2sraDBUTzY3QnVzYXloNm5sTGI3Qkx4N3ZuWVo5SEVCdXFV?=
 =?utf-8?B?dmV0NUtQMmp2Mk5GMTNadW9VMGNwZS9NQ2hRV1k5dFpxTHcvZDEwcXNuRVI5?=
 =?utf-8?B?bld4a2c2WFdIUnhWcmtPd09Yay9UL1ZXclhGN256ajZrV3pUbGk5YmgrTzVE?=
 =?utf-8?B?aXpUOGdDVUg3M1hoaExhOWhCK3lGV2ptaDdwbFh2VGpIL2pGSjJyS3gzaEsr?=
 =?utf-8?B?emRoSjZvRnlqS3hGVm12N3BNVnc2TnY0S0RKRURraEhrSFZ5blpYcTVaOXdJ?=
 =?utf-8?B?bDVvZ0hJR1YzeGJIWmphMkFZZEJWenUrSWRidzExTkdranFuS09DbzdYVTEr?=
 =?utf-8?B?akRVQ1oxZHplaEQyMyt5T05aYi93UXl2QThnVmNWZWR4c3hDVmxYdEF1TThu?=
 =?utf-8?B?cklyeGVlRkFxOGxWSUZpdzdFQXdkWkQ1ekRnWldwaE52WFFVdFNYNEFadkQ3?=
 =?utf-8?B?RGgvM2pONEsrT1BDMHdsOVk3V2R4WFZLeWk4eWhWSk9RYXRrbUt3RlVvcjd6?=
 =?utf-8?B?R1FrN2laaXl1VW00SGh1WWl0NEZHOS96VFNoZjZWRnpPajJrNnNBUnhsdk9V?=
 =?utf-8?B?UHQrLzg0TlhUVXZDbTFGV2Z4cHBOaUtzMWhpdXkzbVE2RllXUktsOWl1OWhH?=
 =?utf-8?Q?O/rAMylHuTAEoHWME4UOlIt3n?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e46d7f8-95a1-43b4-ab5e-08da8bee2dac
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Sep 2022 07:47:11.3301
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uf0HmlRAio7B1t1ZrPjLhQVBm0H/97h+pRNX+q/ypQEEyT+GZrbM4JEDfPR+jfau
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB7068
Message-ID-Hash: Y54MUGAD22AXPLP6XMHXF72BD2L77YDN
X-Message-ID-Hash: Y54MUGAD22AXPLP6XMHXF72BD2L77YDN
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 21/21] dma-buf: Remove obsoleted internal lock
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y54MUGAD22AXPLP6XMHXF72BD2L77YDN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMzEuMDguMjIgdW0gMTc6Mzcgc2NocmllYiBEbWl0cnkgT3NpcGVua286DQo+IFRoZSBpbnRl
cm5hbCBkbWEtYnVmIGxvY2sgaXNuJ3QgbmVlZGVkIGFueW1vcmUgYmVjYXVzZSB0aGUgdXBkYXRl
ZA0KPiBsb2NraW5nIHNwZWNpZmljYXRpb24gY2xhaW1zIHRoYXQgZG1hLWJ1ZiByZXNlcnZhdGlv
biBtdXN0IGJlIGxvY2tlZA0KPiBieSBpbXBvcnRlcnMsIGFuZCB0aHVzLCB0aGUgaW50ZXJuYWwg
ZGF0YSBpcyBhbHJlYWR5IHByb3RlY3RlZCBieSB0aGUNCj4gcmVzZXJ2YXRpb24gbG9jay4gUmVt
b3ZlIHRoZSBvYnNvbGV0ZWQgaW50ZXJuYWwgbG9jay4NCj4NCj4gQWNrZWQtYnk6IENocmlzdGlh
biBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogRG1p
dHJ5IE9zaXBlbmtvIDxkbWl0cnkub3NpcGVua29AY29sbGFib3JhLmNvbT4NCg0KUmV2aWV3ZWQt
Ynk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCg0KPiAtLS0N
Cj4gICBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIHwgMTQgKysrKy0tLS0tLS0tLS0NCj4gICBp
bmNsdWRlL2xpbnV4L2RtYS1idWYuaCAgIHwgIDkgLS0tLS0tLS0tDQo+ICAgMiBmaWxlcyBjaGFu
Z2VkLCA0IGluc2VydGlvbnMoKyksIDE5IGRlbGV0aW9ucygtKQ0KPg0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4g
aW5kZXggOTdjZTg4NGZhZDc2Li43NzJmZGQ5ZWVlZDggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
ZG1hLWJ1Zi9kbWEtYnVmLmMNCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KPiBA
QCAtNjU2LDcgKzY1Niw2IEBAIHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmX2V4cG9ydChjb25zdCBz
dHJ1Y3QgZG1hX2J1Zl9leHBvcnRfaW5mbyAqZXhwX2luZm8pDQo+ICAgDQo+ICAgCWRtYWJ1Zi0+
ZmlsZSA9IGZpbGU7DQo+ICAgDQo+IC0JbXV0ZXhfaW5pdCgmZG1hYnVmLT5sb2NrKTsNCj4gICAJ
SU5JVF9MSVNUX0hFQUQoJmRtYWJ1Zi0+YXR0YWNobWVudHMpOw0KPiAgIA0KPiAgIAltdXRleF9s
b2NrKCZkYl9saXN0LmxvY2spOw0KPiBAQCAtMTUwMiw3ICsxNTAxLDcgQEAgRVhQT1JUX1NZTUJP
TF9OU19HUEwoZG1hX2J1Zl9tbWFwLCBETUFfQlVGKTsNCj4gICBpbnQgZG1hX2J1Zl92bWFwKHN0
cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBpb3N5c19tYXAgKm1hcCkNCj4gICB7DQo+ICAg
CXN0cnVjdCBpb3N5c19tYXAgcHRyOw0KPiAtCWludCByZXQgPSAwOw0KPiArCWludCByZXQ7DQo+
ICAgDQo+ICAgCWlvc3lzX21hcF9jbGVhcihtYXApOw0KPiAgIA0KPiBAQCAtMTUxNCwyOCArMTUx
MywyNSBAQCBpbnQgZG1hX2J1Zl92bWFwKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBp
b3N5c19tYXAgKm1hcCkNCj4gICAJaWYgKCFkbWFidWYtPm9wcy0+dm1hcCkNCj4gICAJCXJldHVy
biAtRUlOVkFMOw0KPiAgIA0KPiAtCW11dGV4X2xvY2soJmRtYWJ1Zi0+bG9jayk7DQo+ICAgCWlm
IChkbWFidWYtPnZtYXBwaW5nX2NvdW50ZXIpIHsNCj4gICAJCWRtYWJ1Zi0+dm1hcHBpbmdfY291
bnRlcisrOw0KPiAgIAkJQlVHX09OKGlvc3lzX21hcF9pc19udWxsKCZkbWFidWYtPnZtYXBfcHRy
KSk7DQo+ICAgCQkqbWFwID0gZG1hYnVmLT52bWFwX3B0cjsNCj4gLQkJZ290byBvdXRfdW5sb2Nr
Ow0KPiArCQlyZXR1cm4gMDsNCj4gICAJfQ0KPiAgIA0KPiAgIAlCVUdfT04oaW9zeXNfbWFwX2lz
X3NldCgmZG1hYnVmLT52bWFwX3B0cikpOw0KPiAgIA0KPiAgIAlyZXQgPSBkbWFidWYtPm9wcy0+
dm1hcChkbWFidWYsICZwdHIpOw0KPiAgIAlpZiAoV0FSTl9PTl9PTkNFKHJldCkpDQo+IC0JCWdv
dG8gb3V0X3VubG9jazsNCj4gKwkJcmV0dXJuIHJldDsNCj4gICANCj4gICAJZG1hYnVmLT52bWFw
X3B0ciA9IHB0cjsNCj4gICAJZG1hYnVmLT52bWFwcGluZ19jb3VudGVyID0gMTsNCj4gICANCj4g
ICAJKm1hcCA9IGRtYWJ1Zi0+dm1hcF9wdHI7DQo+ICAgDQo+IC1vdXRfdW5sb2NrOg0KPiAtCW11
dGV4X3VubG9jaygmZG1hYnVmLT5sb2NrKTsNCj4gLQlyZXR1cm4gcmV0Ow0KPiArCXJldHVybiAw
Ow0KPiAgIH0NCj4gICBFWFBPUlRfU1lNQk9MX05TX0dQTChkbWFfYnVmX3ZtYXAsIERNQV9CVUYp
Ow0KPiAgIA0KPiBAQCAtMTU3NywxMyArMTU3MywxMSBAQCB2b2lkIGRtYV9idWZfdnVubWFwKHN0
cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBpb3N5c19tYXAgKm1hcCkNCj4gICAJQlVHX09O
KGRtYWJ1Zi0+dm1hcHBpbmdfY291bnRlciA9PSAwKTsNCj4gICAJQlVHX09OKCFpb3N5c19tYXBf
aXNfZXF1YWwoJmRtYWJ1Zi0+dm1hcF9wdHIsIG1hcCkpOw0KPiAgIA0KPiAtCW11dGV4X2xvY2so
JmRtYWJ1Zi0+bG9jayk7DQo+ICAgCWlmICgtLWRtYWJ1Zi0+dm1hcHBpbmdfY291bnRlciA9PSAw
KSB7DQo+ICAgCQlpZiAoZG1hYnVmLT5vcHMtPnZ1bm1hcCkNCj4gICAJCQlkbWFidWYtPm9wcy0+
dnVubWFwKGRtYWJ1ZiwgbWFwKTsNCj4gICAJCWlvc3lzX21hcF9jbGVhcigmZG1hYnVmLT52bWFw
X3B0cik7DQo+ICAgCX0NCj4gLQltdXRleF91bmxvY2soJmRtYWJ1Zi0+bG9jayk7DQo+ICAgfQ0K
PiAgIEVYUE9SVF9TWU1CT0xfTlNfR1BMKGRtYV9idWZfdnVubWFwLCBETUFfQlVGKTsNCj4gICAN
Cj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oIGIvaW5jbHVkZS9saW51eC9k
bWEtYnVmLmgNCj4gaW5kZXggZjExYjViYmMyZjM3Li42ZmE4ZDRlMjk3MTkgMTAwNjQ0DQo+IC0t
LSBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQo+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLWJ1
Zi5oDQo+IEBAIC0zMjYsMTUgKzMyNiw2IEBAIHN0cnVjdCBkbWFfYnVmIHsNCj4gICAJLyoqIEBv
cHM6IGRtYV9idWZfb3BzIGFzc29jaWF0ZWQgd2l0aCB0aGlzIGJ1ZmZlciBvYmplY3QuICovDQo+
ICAgCWNvbnN0IHN0cnVjdCBkbWFfYnVmX29wcyAqb3BzOw0KPiAgIA0KPiAtCS8qKg0KPiAtCSAq
IEBsb2NrOg0KPiAtCSAqDQo+IC0JICogVXNlZCBpbnRlcm5hbGx5IHRvIHNlcmlhbGl6ZSBsaXN0
IG1hbmlwdWxhdGlvbiwgYXR0YWNoL2RldGFjaCBhbmQNCj4gLQkgKiB2bWFwL3VubWFwLiBOb3Rl
IHRoYXQgaW4gbWFueSBjYXNlcyB0aGlzIGlzIHN1cGVyc2VlZGVkIGJ5DQo+IC0JICogZG1hX3Jl
c3ZfbG9jaygpIG9uIEByZXN2Lg0KPiAtCSAqLw0KPiAtCXN0cnVjdCBtdXRleCBsb2NrOw0KPiAt
DQo+ICAgCS8qKg0KPiAgIAkgKiBAdm1hcHBpbmdfY291bnRlcjoNCj4gICAJICoNCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==

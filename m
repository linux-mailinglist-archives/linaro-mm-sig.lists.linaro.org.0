Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 966D3537D27
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 May 2022 15:42:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C6BA43EC7E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 May 2022 13:42:05 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2067.outbound.protection.outlook.com [40.107.92.67])
	by lists.linaro.org (Postfix) with ESMTPS id 3E81E3F23B
	for <linaro-mm-sig@lists.linaro.org>; Mon, 30 May 2022 13:41:29 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gWhkfLs65iVQv0+mt9DfStWvXbcYjJJ5myovjcMm7Ta3TEc8sSAcaV4LMo2zqgR+vBqlLNSmRFohsrgyUsInoYd5+DGRszdinu+j5JN+Xf2DodW8bD1gWPlFV+09sBT7KNW5tj5QK2Sh4oW6W7OvKobFwceAn2zhioyqZvp6ITO7GoCZru13szVhTy/SqLqdOzvnjDJEZPrsIEvj9MRDMvKZdmgVMSDX7TapjTXFLfMCDFS9t41YHC2Rt7uqLOXdqQX0y/hDmGh1BLsIY1BOr9PBEJm+YzyhdStVZuqHnFtbsI9ytqL41Qk48Xt7IXUHFv9zqx86VgkV+m6QsooteQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8Ln1IYHCrBrCaQS84rnoFBpWZLwjNyjzT+nTzcBkppU=;
 b=TbDgXJLIzJ1kD4HWYPsJhR7NFIxy3EhpXBGRzWXRJdA4R8akIE0mNkcsrvmfJAz4lulPj/sMPPQCa/9zrqiPCA+lhI0aTBQeVYGWHd0De7sUI2icHwV3YNIvWbvf7F6eexVOC6VIOcrzEFUQ4jUwj6+OZblwN/sO+6hsT8BfeLQMu2cBA7RslLAZK/5iloKeLLBiuNayQMhCPPCyoz4eHYyB6nJfv6m/A8/7UTuzzIieWcZh8zFnJvg1HxT0pvKs+4DKhFdae82/DR+biXmDn5S2wzlmCAtrhxEcYdanTas5gH0ADqC6dlTi+0rj+6RGs2XUqijMEibtP/AabWFOCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8Ln1IYHCrBrCaQS84rnoFBpWZLwjNyjzT+nTzcBkppU=;
 b=13ehhYFfxSWwAGsLkIAQffpe4EG92IwRz4RVTkutxhpU6BCWdggdvfHywDUQDBskAdXfedmF+60Eub0upNf3famO8vYXRRxBpWsIgBxw8OR00s4Jvx8/Uaap5BBkXQrjccQMwNUdkxi+myiNcPi9scswbsI3ZxJspipPqOUWjAQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by MW2PR12MB2441.namprd12.prod.outlook.com (2603:10b6:907:f::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5293.13; Mon, 30 May
 2022 13:41:26 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::7146:65ee:8fd3:dd03]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::7146:65ee:8fd3:dd03%4]) with mapi id 15.20.5293.019; Mon, 30 May 2022
 13:41:25 +0000
Message-ID: <02e7946b-34ca-b48e-1ba6-e7b63740a2d9@amd.com>
Date: Mon, 30 May 2022 15:41:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
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
 Rob Herring <robh@kernel.org>, Steven Price <steven.price@arm.com>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Rob Clark <robdclark@gmail.com>, Emil Velikov <emil.l.velikov@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, Qiang Yu <yuq825@gmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, "Pan, Xinhui" <Xinhui.Pan@amd.com>,
 Thierry Reding <thierry.reding@gmail.com>, Tomasz Figa <tfiga@chromium.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20220526235040.678984-1-dmitry.osipenko@collabora.com>
 <20220526235040.678984-15-dmitry.osipenko@collabora.com>
 <0a02a31d-a256-4ca4-0e35-e2ea1868a8ae@amd.com>
 <e6e17c52-43c2-064b-500e-325bb3ba3b2c@collabora.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <e6e17c52-43c2-064b-500e-325bb3ba3b2c@collabora.com>
X-ClientProxiedBy: AM6P193CA0085.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:209:88::26) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c1ffce7a-8d23-4703-3cdb-08da42421776
X-MS-TrafficTypeDiagnostic: MW2PR12MB2441:EE_
X-Microsoft-Antispam-PRVS: 
	<MW2PR12MB2441DBAE277206CC9B13C10D83DD9@MW2PR12MB2441.namprd12.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	iSW1wIoCn3nNFjZJBQ1vVHTV4DmbG7Pguh9zjakZuKfexezjAX9RzSr2q+jzbmy/pmZffq8/LpakTy5pBFcDAworhdC/7/i1vg8M76wK2hEcPOwrV+FPaB0gaA3b6ou5npDbyKmelZ9o+gLFGHSLYIU3WyrL1hcJOBI0x7269ze2XOmr65aRKKBRAOAKFE4eIofz0U1UsWLiaEW0mrxY+Ee15EUJ9ZYZ7ne4rzcGPgLsjOZfmF1QS+iCcpOmzeAI1mF0VzgjkT2h/p2o378+qIb0XPuGI0LsIwQne/y/bTWmX/uTsfwGfCD/X/eeNHuhGHUiawshG6purNZ3P/Gl01dBkomujtNqIs4WPJ4hS8GG22IvqjY7uC6dSKRf0cAq+4oyD/bzGNx4Q4Bov2KbPdu5eIkBJW6xmWZ06K5fQTS7KXP8+OlfnC761AirGjBvz7OEMdYQLCUVfPFRK07BX1r/misEdHCvyzWxfVu4F3iPlUe9On/qIFBrlz96lVC7reTmjbqZYQ1NIzFyNZhTvLrNDWr41V/dYj1meGasC4tGClUxRG/YlcJavEGJkX8mQDrlI/5fKT2RfGg6CU/wyQL9Tm6vuZ7hvtx8BOGDpoCXe1C3NpyFm0l0PU9dOkkHLMLsjlMILagVF1RYcItVWeef0wAN6sD52qXCXlEyWYwn5QL67/wSMGPmDIw7dy+c2nimlRzNxOJ1lrB1RZvmzLHGeK9QjXGqgL1dNa/xWsf/zWxEnElUKJib5NRQGmJm
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(508600001)(83380400001)(110136005)(66574015)(6666004)(6506007)(8936002)(7406005)(5660300002)(38100700002)(66476007)(66946007)(86362001)(26005)(66556008)(53546011)(186003)(7416002)(6486002)(36756003)(2616005)(8676002)(6512007)(31686004)(4326008)(31696002)(2906002)(921005)(316002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?L0pPUFVQVUgyMjFNaVg2cE5QdUJjWG5Xb3FTOUlsNUhlRjVkMSsyRGM0NTNr?=
 =?utf-8?B?TU8xbURXdlZSRXh2TnhlanJramY2R0V2VDIvR2VzVnVqTlRLbWdkMTlFVnhp?=
 =?utf-8?B?OG44WGpBd0pRaHd5eXhTZmFHL0M4UUM0ZWtJVzFuSEUwQVZnT0d6QWFQYlc0?=
 =?utf-8?B?U1BsbkxtUytQV2hyaGtXVUdDY1FlQ1AwZTRvTDRkdENETGZtZ1Vwd0JvZFBU?=
 =?utf-8?B?emw4MUhDZmNhTWE3R3BwUVg1RzJ6bnQzejdhMG15MTNvcU9FWTAxdEJ1bkVl?=
 =?utf-8?B?TVlsb1pYTnlvYmtqTE5kK3lDU2Fld2lZSm15UkgzdmFEMmFkeEJLTUdoN255?=
 =?utf-8?B?TFR4TWRwSkw4cysyOXFTUUxsWTFrMndXTWxiajVJdmdwN3ZpNWVEZ0pubzkx?=
 =?utf-8?B?dHMxR0hidHZUKzlZbm1UZC9LOFFNQUJrdW80dnY3Q2dQK1F6NS82NHN5bVZs?=
 =?utf-8?B?RTFYWm5HOXN5SzB1Vjkyb2NHQVkxMWRkNU5jM2l5eU1NMVhUSWRFTkhHZ3Ra?=
 =?utf-8?B?dVBtRFJNbGt2RitTV1laQnBtdnkreGdRd0JocFFaVDlHSTFnMEpiMFVBUWoz?=
 =?utf-8?B?Mk14TkVXZDNoQlY1OXNYMGtQR09ZM29uTVdyVUJMeHp0MW0zMXlCdVphZ3do?=
 =?utf-8?B?dnBraTliZTZUMitDR0ZsUnF4ZE9VRy9vUzgwL1R3UVhMdi9OeXNhallkbTNK?=
 =?utf-8?B?eWl1b1pIREJrandSd21WeVd6VmhQTE9MaWJqZFA2eUlKNkltWi8vV1ZMRlpj?=
 =?utf-8?B?NmxvbXVEL0EvRW5NWlMzYWNyM2t4YTh0MmEwZE5MS0xsNVVVU0tqUGNIV2Zy?=
 =?utf-8?B?SlhNZldFaWN5eE01Vit3c2pMYlpxV09ZcExOcXpPYjltdDZwVGozT2FKSkpu?=
 =?utf-8?B?d3dnYTIrZVlmRXZPeklEYUg1Y21TUFE1ZTJEUGJabWE4NnpmMFNXeE9zTlhI?=
 =?utf-8?B?ZVY0cjBaeTMzalRYR2MyZisrRkNmL05BMEIrWXJxTlB0SzEwVEZPdi9TQW53?=
 =?utf-8?B?NkNnU1h2elNBcHBrRExlRzBSTVZPOW85Y2pEWE02NE9wTEg1bFhOL1ZvZ2Mv?=
 =?utf-8?B?Z0JIdnQ5Sld1OW53U0R5YTY2R294Y0ZrQTVERWl2QWJ5MVFMVHYzcXcrUk96?=
 =?utf-8?B?eEtTM3NPRzBmRGxNTk5ub2NrYUF1azRhS09LM0hEaSs0ZENZbVozWXBmR0t1?=
 =?utf-8?B?NE9RbDJzRDQxRkxHWDRSWHBDOFdyVkZXejJqZ2RHeHAySTFRL1pSTHlnWGhY?=
 =?utf-8?B?WExMYjBsRlpXTWNMTFZGUXdRMCswNjVHQU4zT2Rta2Y0YklUN0YvYVlVb0ti?=
 =?utf-8?B?VGVLY3YrNCtCVEFVbEJNb1h3YXJRMGZESERmS0w5ZFNWRTJXTTJKdy9WZi9x?=
 =?utf-8?B?VVU2VG1hbllJeW9CcFZGSTJNQlV1akJyenBQMThncW4zaTR4dit4KzRVQ3Er?=
 =?utf-8?B?WUlnUy90clRXS2MrNVV3WFBFWis1YWZRTFNUMnlNNWJWNElWaGdGU2hJUUZR?=
 =?utf-8?B?V0RFSCtNRTFnQTVHMEFqSDJMenBzYTluVkZwWlRmR1VLVWpXRkQxWmFUVEdk?=
 =?utf-8?B?ZmpnakorY0puZ2lKQ0JjVE4wSzMySVNTL0dBK0pFN0ZTWmM2YmVnNVZyLzNy?=
 =?utf-8?B?Q09zbUR5cjZtMXI4M1JmMlV0eWdFZTBrd1VZR0ZRbnZObkxjRHM3Q1pqWml1?=
 =?utf-8?B?d2E4czZZbjFwWFBaZ3VjWW1vWmYrOWFCNDdraEVqV3pFOTVqeThSbTdrcHpo?=
 =?utf-8?B?emVDNmd1MXJIZHd1MkplZGVJY001cSs4ZHFSaTg4ZHl4OS9zOVJMa0Q4dVNt?=
 =?utf-8?B?dnRFUUVnbkJCNkRaUFFKdGFuMTd2c0ZpSHdMLzN1MTUrUTJkdlVxY0V3SFFv?=
 =?utf-8?B?UHhaWlZUN1ZWQ3pmanYyVWc2eUo2by9qbDBnYm42YTRFQVM1TjdhMVM0M05P?=
 =?utf-8?B?M1RIQ1k1VE5MbUdhSHIyanBSdENHYTUwMWtTMjN0VndqVUl4REZBanV2V1hN?=
 =?utf-8?B?MzlueVd0dGZzM3M1MERRWlMyUStwTHpGbDczZ2JWMHhsd3NsaE93OTAyd2lW?=
 =?utf-8?B?WVFRdkJSdHpMSmxMWHZSYkw0ajZOWm5tRURiRnF4SWU3SUdNZ05VRDhCcWlF?=
 =?utf-8?B?Y0xycnVtejF1MXZWZ0p4Yzljem9KTzhJOXdMR3pLc1VMUEpwYjFYK0M0ZnA3?=
 =?utf-8?B?b2QycFAxTmJQUHRtRFcwcVM3dUFmUjgvamVsenVjM0pXb2lvSHJBMFA2RXBu?=
 =?utf-8?B?dS81TFRDK3ltdW1WSDF4b0x3K1lvNHZ5Zk40cEdRNCtSeGVFN2Z5cjBWQjZZ?=
 =?utf-8?B?eUVSU1c4eUErVUZwdVJlVXV4R1hxdElUOXJ1UEZyTHR4VEg2djdiQT09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1ffce7a-8d23-4703-3cdb-08da42421776
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 May 2022 13:41:25.6964
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bKlBf/nVEJ1X9nxM5Oz0JjeCcNh0J4+oP26sfpG5+KmhP4Sme4vWuenl2MB9dIje
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR12MB2441
Message-ID-Hash: OLRGMWNITCD7AGBT4IB2GL6Z3NELAALA
X-Message-ID-Hash: OLRGMWNITCD7AGBT4IB2GL6Z3NELAALA
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, virtualization@lists.linux-foundation.org, Dmitry Osipenko <digetx@gmail.com>, linux-tegra@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 14/22] dma-buf: Introduce new locking convention
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OLRGMWNITCD7AGBT4IB2GL6Z3NELAALA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgRG1pdHJ5LA0KDQpBbSAzMC4wNS4yMiB1bSAxNToyNiBzY2hyaWViIERtaXRyeSBPc2lwZW5r
bzoNCj4gSGVsbG8gQ2hyaXN0aWFuLA0KPg0KPiBPbiA1LzMwLzIyIDA5OjUwLCBDaHJpc3RpYW4g
S8O2bmlnIHdyb3RlOg0KPj4gSGkgRG1pdHJ5LA0KPj4NCj4+IEZpcnN0IG9mIGFsbCBwbGVhc2Ug
c2VwYXJhdGUgb3V0IHRoaXMgcGF0Y2ggZnJvbSB0aGUgcmVzdCBvZiB0aGUgc2VyaWVzLA0KPj4g
c2luY2UgdGhpcyBpcyBhIGNvbXBsZXggc2VwYXJhdGUgc3RydWN0dXJhbCBjaGFuZ2UuDQo+IEkg
YXNzdW1lIGFsbCB0aGUgcGF0Y2hlcyB3aWxsIGdvIHZpYSB0aGUgRFJNIHRyZWUgaW4gdGhlIGVu
ZCBzaW5jZSB0aGUNCj4gcmVzdCBvZiB0aGUgRFJNIHBhdGNoZXMgaW4gdGhpcyBzZXJpZXMgZGVw
ZW5kIG9uIHRoaXMgZG1hLWJ1ZiBjaGFuZ2UuDQo+IEJ1dCBJIHNlZSB0aGF0IHNlcGFyYXRpb24g
bWF5IGVhc2UgcmV2aWV3aW5nIG9mIHRoZSBkbWEtYnVmIGNoYW5nZXMsIHNvDQo+IGxldCdzIHRy
eSBpdC4NCg0KVGhhdCBzb3VuZHMgbGlrZSB5b3UgYXJlIHVuZGVyZXN0aW1hdGluZyBhIGJpdCBo
b3cgbXVjaCB0cm91YmxlIHRoaXMgDQp3aWxsIGJlLg0KDQo+PiBJIGhhdmUgdHJpZWQgdGhpcyBi
ZWZvcmUgYW5kIGZhaWxlZCBiZWNhdXNlIGNhdGNoaW5nIGFsbCB0aGUgbG9ja3MgaW4NCj4+IHRo
ZSByaWdodCBjb2RlIHBhdGhzIGFyZSB2ZXJ5IHRyaWNreS4gU28gZXhwZWN0IHNvbWUgZmFsbG91
dCBmcm9tIHRoaXMNCj4+IGFuZCBtYWtlIHN1cmUgdGhlIGtlcm5lbCB0ZXN0IHJvYm90IGFuZCBD
SSBzeXN0ZW1zIGFyZSBjbGVhbi4NCj4gU3VyZSwgSSdsbCBmaXggdXAgYWxsIHRoZSByZXBvcnRl
ZCB0aGluZ3MgaW4gdGhlIG5leHQgaXRlcmF0aW9uLg0KPg0KPiBCVFcsIGhhdmUgeW91IGV2ZXIg
cG9zdGVkIHlvdXJzIHZlcnNpb24gb2YgdGhlIHBhdGNoPyBXaWxsIGJlIGdyZWF0IGlmDQo+IHdl
IGNvdWxkIGNvbXBhcmUgdGhlIGNoYW5nZWQgY29kZSBwYXRocy4NCg0KTm8sIEkgbmV2ZXIgZXZl
biBmaW5pc2hlZCBjcmVhdGluZyBpdCBhZnRlciByZWFsaXppbmcgaG93IG11Y2ggd29yayBpdCAN
CndvdWxkIGJlLg0KDQo+Pj4gVGhpcyBwYXRjaCBpbnRyb2R1Y2VzIG5ldyBsb2NraW5nIGNvbnZl
bnRpb24gZm9yIGRtYS1idWYgdXNlcnMuIEZyb20gbm93DQo+Pj4gb24gYWxsIGRtYS1idWYgaW1w
b3J0ZXJzIGFyZSByZXNwb25zaWJsZSBmb3IgaG9sZGluZyBkbWEtYnVmIHJlc2VydmF0aW9uDQo+
Pj4gbG9jayBhcm91bmQgb3BlcmF0aW9ucyBwZXJmb3JtZWQgb3ZlciBkbWEtYnVmcy4NCj4+Pg0K
Pj4+IFRoaXMgcGF0Y2ggaW1wbGVtZW50cyB0aGUgbmV3IGRtYS1idWYgbG9ja2luZyBjb252ZW50
aW9uIGJ5Og0KPj4+DQo+Pj4gIMKgwqAgMS4gTWFraW5nIGRtYS1idWYgQVBJIGZ1bmN0aW9ucyB0
byB0YWtlIHRoZSByZXNlcnZhdGlvbiBsb2NrLg0KPj4+DQo+Pj4gIMKgwqAgMi4gQWRkaW5nIG5l
dyBsb2NrZWQgdmFyaWFudHMgb2YgdGhlIGRtYS1idWYgQVBJIGZ1bmN0aW9ucyBmb3IgZHJpdmVy
cw0KPj4+ICDCoMKgwqDCoMKgIHRoYXQgbmVlZCB0byBtYW5hZ2UgaW1wb3J0ZWQgZG1hLWJ1ZnMg
dW5kZXIgdGhlIGhlbGQgbG9jay4NCj4+IEluc3RlYWQgb2YgYWRkaW5nIG5ldyBsb2NrZWQgdmFy
aWFudHMgcGxlYXNlIG1hcmsgYWxsIHZhcmlhbnRzIHdoaWNoDQo+PiBleHBlY3QgdG8gYmUgY2Fs
bGVkIHdpdGhvdXQgYSBsb2NrIHdpdGggYW4gX3VubG9ja2VkIHBvc3RmaXguDQo+Pg0KPj4gVGhp
cyBzaG91bGQgbWFrZSBpdCBlYXNpZXIgdG8gcmVtb3ZlIHRob3NlIGluIGEgZm9sbG93IHVwIHBh
dGNoIHNldCBhbmQNCj4+IHRoZW4gZnVsbHkgbW92ZSB0aGUgbG9ja2luZyBpbnRvIHRoZSBpbXBv
cnRlci4NCj4gRG8gd2UgcmVhbGx5IHdhbnQgdG8gbW92ZSBhbGwgdGhlIGxvY2tzIHRvIHRoZSBp
bXBvcnRlcnM/IFNlZW1zIHRoZQ0KPiBtYWpvcml0eSBvZiBkcml2ZXJzIHNob3VsZCBiZSBoYXBw
eSB3aXRoIHRoZSBkbWEtYnVmIGhlbHBlcnMgaGFuZGxpbmcNCj4gdGhlIGxvY2tpbmcgZm9yIHRo
ZW0uDQoNClllcywgSSBjbGVhcmx5IHRoaW5rIHNvLg0KDQo+DQo+Pj4gIMKgwqAgMy4gQ29udmVy
dGluZyBhbGwgZHJpdmVycyB0byB0aGUgbmV3IGxvY2tpbmcgc2NoZW1lLg0KPj4gSSBoYXZlIHN0
cm9uZyBkb3VidHMgdGhhdCB5b3UgZ290IGFsbCBvZiB0aGVtLiBBdCBsZWFzdCByYWRlb24gYW5k
DQo+PiBub3V2ZWF1IHNob3VsZCBncmFiIHRoZSByZXNlcnZhdGlvbiBsb2NrIGluIHRoZWlyIC0+
YXR0YWNoIGNhbGxiYWNrcw0KPj4gc29tZWhvdy4NCj4gUmFkZW9uIGFuZCBOb3V2ZWF1IHVzZSBn
ZW1fcHJpbWVfaW1wb3J0X3NnX3RhYmxlKCkgYW5kIHRoZXkgdGFrZSByZXN2DQo+IGxvY2sgYWxy
ZWFkeSwgc2VlbXMgdGhleSBzaG91bGQgYmUgb2theSAoPykNCg0KWW91IGFyZSBsb29raW5nIGF0
IHRoZSB3cm9uZyBzaWRlLiBZb3UgbmVlZCB0byBmaXggdGhlIGV4cG9ydCBjb2RlIHBhdGgsIA0K
bm90IHRoZSBpbXBvcnQgb25lcy4NCg0KU2VlIGZvciBleGFtcGxlIGF0dGFjaCBvbiByYWRlb24g
d29ya3MgbGlrZSB0aGlzIA0KZHJtX2dlbV9tYXBfYXR0YWNoLT5kcm1fZ2VtX3Bpbi0+cmFkZW9u
X2dlbV9wcmltZV9waW4tPnJhZGVvbl9ib19yZXNlcnZlLT50dG1fYm9fcmVzZXJ2ZS0+ZG1hX3Jl
c3ZfbG9jay4NCg0KU2FtZSBmb3Igbm91dmVhdSBhbmQgcHJvYmFibHkgYSBmZXcgb3RoZXIgZXhw
b3J0ZXJzIGFzIHdlbGwuIFRoYXQgd2lsbCANCmNlcnRhaW5seSBjYXVzZSBhIGRlYWRsb2NrIGlm
IHlvdSBkb24ndCBmaXggaXQuDQoNCkkgc3Ryb25nbHkgc3VnZ2VzdCB0byBkbyB0aGlzIHN0ZXAg
Ynkgc3RlcCwgZmlyc3QgYXR0YWNoL2RldGFjaCBhbmQgdGhlbiANCnRoZSByZXN0Lg0KDQpSZWdh
cmRzLA0KQ2hyaXN0aWFuLg0KDQo+DQo+IEkgYXNzdW1lIGFsbCB0aGUgYmFzaWNzIHNob3VsZCBj
b3ZlcmVkIGluIHRoaXMgdjYuIEF0IG1pbmltdW0gSW50ZWwsDQo+IFRlZ3JhLCBQYW5mcm9zdCwg
TGltYSBhbmQgUm9ja2NoaXAgZHJpdmVycyBzaG91bGQgYmUgZ29vZC4gSWYgSSBtaXNzZWQNCj4g
c29tZXRoaW5nLCB0aGVuIHBsZWFzZSBsZXQgbWUga25vdyBhbmQgSSdsbCBjb3JyZWN0IGl0Lg0K
Pg0KPj4+IFNpZ25lZC1vZmYtYnk6IERtaXRyeSBPc2lwZW5rbyA8ZG1pdHJ5Lm9zaXBlbmtvQGNv
bGxhYm9yYS5jb20+DQo+Pj4gLS0tDQo+Pj4gIMKgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmPC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMjcwICsrKysrKysrKysr
LS0tLS0tLQ0KPj4+ICDCoCBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmPC
oMKgwqDCoMKgwqAgfMKgwqAgNiArLQ0KPj4+ICDCoCBkcml2ZXJzL2dwdS9kcm0vZHJtX2NsaWVu
dC5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoCA0ICstDQo+Pj4gIMKg
IGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHzCoCAzMyArKysNCj4+PiAgwqAgZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fZnJh
bWVidWZmZXJfaGVscGVyLmPCoCB8wqDCoCA2ICstDQo+Pj4gIMKgIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuY8KgwqDCoCB8wqAgMTAgKy0NCj4+PiAgwqAgZHJpdmVy
cy9ncHUvZHJtL3F4bC9xeGxfb2JqZWN0LmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAg
MTcgKy0NCj4+PiAgwqAgZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfcHJpbWUuY8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgfMKgwqAgNCArLQ0KPj4+ICDCoCAuLi4vY29tbW9uL3ZpZGVvYnVm
Mi92aWRlb2J1ZjItZG1hLWNvbnRpZy5jwqDCoCB8wqAgMTEgKy0NCj4+PiAgwqAgLi4uL21lZGlh
L2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1zZy5jIHzCoCAxMSArLQ0KPj4+ICDCoCAu
Li4vY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItdm1hbGxvYy5jwqDCoMKgwqDCoCB8wqAgMTEg
Ky0NCj4+PiAgwqAgaW5jbHVkZS9kcm0vZHJtX2dlbS5owqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDMgKw0KPj4+ICDCoCBpbmNsdWRlL2xpbnV4
L2RtYS1idWYuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzC
oCAxNCArLQ0KPj4+ICDCoCAxMyBmaWxlcyBjaGFuZ2VkLCAyNDEgaW5zZXJ0aW9ucygrKSwgMTU5
IGRlbGV0aW9ucygtKQ0KPj4+DQo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
YnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+Pj4gaW5kZXggMzJmNTU2NDA4OTBj
Li42NGE5OTA5Y2NmYTIgMTAwNjQ0DQo+Pj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYu
Yw0KPj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4+PiBAQCAtNTUyLDcgKzU1
Miw2IEBAIHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmX2V4cG9ydChjb25zdCBzdHJ1Y3QNCj4+PiBk
bWFfYnVmX2V4cG9ydF9pbmZvICpleHBfaW5mbykNCj4+PiAgwqDCoMKgwqDCoCBmaWxlLT5mX21v
ZGUgfD0gRk1PREVfTFNFRUs7DQo+Pj4gIMKgwqDCoMKgwqAgZG1hYnVmLT5maWxlID0gZmlsZTsN
Cj4+PiAgwqAgLcKgwqDCoCBtdXRleF9pbml0KCZkbWFidWYtPmxvY2spOw0KPj4gUGxlYXNlIG1h
a2UgcmVtb3ZpbmcgZG1hYnVmLT5sb2NrIGEgc2VwYXJhdGUgY2hhbmdlLg0KPiBBbHJpZ2h0DQo+
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=

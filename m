Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F20F78A56C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Aug 2023 07:57:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 547F540AB9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Aug 2023 05:56:59 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2072.outbound.protection.outlook.com [40.107.243.72])
	by lists.linaro.org (Postfix) with ESMTPS id 8ABE83EF6B
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Aug 2023 05:56:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=M0XcT3RZ;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.243.72 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eHHqd84MmclxzsOioAZaKL3le/dV8O37ex5VJ3imvFwdd0htq4x9ZVhG8mCDlFdPvUfP1fwT0KYat4rOnJK5pPTmtF1ikHYshH6f4EaDtg2W/H3wcacULXxCKt8LgZlXC9UstfxwSa/Q/lLQ9FRBS41hqVZYGEy3lWhQjNI8+z/nQwH997JN/PdXKYgEO6JO3dM2BYz/ntp1J/psIb0gqECzONyucrFxpuctliqTHAiyGcqXhuuqoZfnPcSfNIlkDzwpislzc1WUU1XE+qr91mcnDDUT8+gudo+tvl67LgjzQVp4EpeACrTCD7VJ6tyJGfxKBbZjAp0uOJRru9YHig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eHN8+OjQMk3jl/guE/GK5p/E93q3CRsBtEGpayG1VW4=;
 b=Ukx/SdcYF2pSQgh6FwRAWm7AtlOWFc6llspqxJN9xnjfFevlyR0v1CV4KPVFnQn4jCNDnjQGyMCo8tGVeszvTRGtY7O/nECnev2dgnw3M55BDs5mPcMuC426rteItkADz+WLXZRll8WGg3ZDDCKmBLwSjAz5OBvVibXduIqckOAWNNw8xjvHQ7wLES8YzZGtbDkWSmgebX3IY1XR0zFqDQ6Bh3Zzs33CYgebuaNIKKe3+3pIuAyb7nuCuM0QIp+nRcmNJUP7isRDf99PfW4sVPnBMDvD6YP6aKEgOhqXZxsjX8EnzjtvS/u2rg7UYMVZJyQfsQtSOQwBRo9UqYGe+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eHN8+OjQMk3jl/guE/GK5p/E93q3CRsBtEGpayG1VW4=;
 b=M0XcT3RZ++OSPd1B02xEBcnDXyICUlSvDu3a3QPf1xTKebxKldb59FOEDf3K+0ksloSH05I3L94/PfHAd8YuDPKQxEN7J5syyRW+ilN63dtvClKuriRHYwsg8W+jq5nYTKThwvBzjFnRZRfhmZqUJQHS1RwAwUQTvV4V6dRUDSQ=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by DM6PR12MB4089.namprd12.prod.outlook.com (2603:10b6:5:213::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.34; Mon, 28 Aug
 2023 05:56:52 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::3d:c14:667a:1c81]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::3d:c14:667a:1c81%4]) with mapi id 15.20.6699.034; Mon, 28 Aug 2023
 05:56:52 +0000
Message-ID: <7cc6172e-b068-341c-f4b0-e6a8d1b968e7@amd.com>
Date: Mon, 28 Aug 2023 07:56:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Rob Clark <robdclark@gmail.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
References: <20230818145939.39697-1-robdclark@gmail.com>
 <a05e0c2e-fd62-4a8e-9fa4-dffaf86f7730@gmail.com>
 <CAF6AEGs+6cveKbv=onEJSZJERk8m56YJzza6A2+eLd3+6MuWMg@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <CAF6AEGs+6cveKbv=onEJSZJERk8m56YJzza6A2+eLd3+6MuWMg@mail.gmail.com>
X-ClientProxiedBy: FR0P281CA0169.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b4::11) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|DM6PR12MB4089:EE_
X-MS-Office365-Filtering-Correlation-Id: bb498fa0-fb9e-4c2f-e6d5-08dba78b9393
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	MqTnKf2iMup8Af8bdohE8pzGYPZFKfOxjGwsMnxoQfu/8a7XKDEwFQ15wvOapRdzff8sSPVk+uD6J/0Gu3z79l8hFB571cmGj8msBOasLvAqwL1eoPs5xedxXBKzpPhjVA+0UDbwwkszqQO1dLAhuiqBnLL6AZqPZ5bYdVkNFLmdnYVCa9tT/jc2Q7ipN/DB9KldODQoXHbBNztnTGAP8f+kEtn9qWY2SC/uLbSQx802OOhQCPZAPRhPsihs9/k8FE+FkPYTDQ61iLwHBr9AEUIOR/MWSP+8b6EdMHRBeir3mWPMMqO43Rvry/YBUkKoqrBf5iYbwiFLvbW29CO7dwu7KCsqKaYiham4essIN4DZ6M90mpXaj4rzq1L7cPlBY3+zlExVPwVny7FctA6xsABdhVN/mWQ0YW+UKs/Gmrl2JZFG0nXick8vbt8xqBt3eFJXNJBfEbuYaRQVUSKO7W6IuWDjuT6/iUwMysbUw1edU6G5lsgdhk0JnvIrssEDff3iJ/ISmW5eGoxVoOfwfZ+gv1+3En3eVj9yYIwAefJa4ZqIfDGs9pb8FcEydKfIS7VEOKwMEpYvnNJqGlFzhL7KNqOyv68xdQI3/ztkHSadEQTHP19v9ZFqJ4GZmUw5bWkl7v1mcMfacRfA+AhDAw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(396003)(346002)(39860400002)(366004)(136003)(186009)(1800799009)(451199024)(31686004)(6506007)(6486002)(6512007)(6666004)(36756003)(86362001)(38100700002)(31696002)(2616005)(2906002)(26005)(53546011)(966005)(478600001)(83380400001)(41300700001)(66556008)(110136005)(66946007)(4326008)(66574015)(8936002)(5660300002)(8676002)(7416002)(54906003)(316002)(66476007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dlZ6YXFlR09oTi9YME9GbE5DbHhBVWx6V0dpUytYZTcvM1BaWU9lU2lhYk8r?=
 =?utf-8?B?aldqMmR4eVNUNmsvRlhOaFJZeGFicjY5ekhEZVNkQTN5L3MzUlBGZnM5RTlr?=
 =?utf-8?B?WGR6L1dEa2hnbWdxUWhjR0hFTk10MWQweTBnWlFPdWM1OStHWlc3aThNM0Rt?=
 =?utf-8?B?ZnZmWGFYQTJ2QTJMQWYzVHNWeVBsQ25KTGZvNTdCUVlMcEFIWXhKc1V0MzJK?=
 =?utf-8?B?cmpCVHZmSk5FNUtLQks4ZFdDMHpkKzZvelpmZnZ5Q1FIUzQ2VWNNazlsK1RR?=
 =?utf-8?B?RW45aTZ4Z3U3OEcveXd2M2d2cHhyVy9jYy90Qi9QcjlVRndzMFBCYkxRQjV0?=
 =?utf-8?B?eEJKUWcycUhwc0hwQ0ZrV1VDVEF4WXhWZ0hiUFdxSzZtd3BOTXMvZ0JPVnZk?=
 =?utf-8?B?QmdoamVjTFB0Q0JwSVZUWEgrUHF1TnhOVWU1TGJLd2s1djc4R0l4ZFZrZjdr?=
 =?utf-8?B?NTMrOWhJQ2xPNGZ2d0hXbG1lUkxiVTlyVHozU2J0OEFXL01uVWNQWkZzbTBT?=
 =?utf-8?B?ZEM2OHRPdE5lSGsrZFNVREZZU1J2R0lMVFpDN0VVQzQ1RG5GNitrL2VOVnQ4?=
 =?utf-8?B?bDd1UnJqMFFiMWxUSTYzUzdSeVIzQ1FRWW43V1hsL0I1Yk84MS9SbzhDQzNq?=
 =?utf-8?B?WXMxMFdZNFNKc2Mzem40UitQNTFZN2RhSWhnbXBIMXppZ2ZVRVpaQWpsSGk3?=
 =?utf-8?B?OXlTTENIdnc5RTljckdrUmw5S01ISHA3VFp5QUozRmdVSzE5Q1F5dW5venJs?=
 =?utf-8?B?Z3k1bnBUcFo2dzduSktCNTkwRGQ3RHNEaVVsMDlhMDQxRXMxL3hEUkMrSFV2?=
 =?utf-8?B?QzRrckpVRE0zWWNEMGMvSWJScGxYMHdsWXQybUJrNHhRZStVMDQveWpoSHMr?=
 =?utf-8?B?L0RWTGExSXhjSlBiNExGRDVtdklIaWZ6eGRqL0IvOVNHWklPK1pyY1g4cjRj?=
 =?utf-8?B?c0tWUjZNMHY0MnplekgxMmdXUi9KYWZBN0dhMnN4ajV4TGFNMHBUdUU1YVRi?=
 =?utf-8?B?Z0VIS0p0dUp5YUwxYmdxTDlhTjJjRmVQMDl2d2cxNCtSaklkMkcvdzhZWitO?=
 =?utf-8?B?dXJETlJOV3dFU2tWZ2VMeE5JZjdxOFR6aFNKckp1Rm5HZUZ6YVdTOFNCcnJs?=
 =?utf-8?B?ZnBEblgvTVVocE9hZVhnb2tFR00xUWs0YlpsZWxwOCszS0wrMHpoakVrRG1w?=
 =?utf-8?B?UFdKMnVnYkhFeFZodmozbGpBcFd6dXdsZ2JKUVRlaExXMW45RU9ZVStQL0kr?=
 =?utf-8?B?SHZpRExVSUh6Uml3VjRsUVcxaFlrNThFMENBQk9IVFQwa3FLRG1YYjJlV3A4?=
 =?utf-8?B?bk4rQThDRjNuRU5rTDJNK0Z6QzY2cE5DZXR1MXVFWmdGcXlVdzRhck1xWnBo?=
 =?utf-8?B?WVgrd2w3WHVhaGxxMkZCKzVEamNIbkNyeEVjaFVHeS9HMDVrWTZLcGU0THVC?=
 =?utf-8?B?SWlrSlY3aHdHUU9zTkl4ZGh5QkxjT1EyTlhsVjRmaEQ4c0tmV2E5cjF4Nm5w?=
 =?utf-8?B?S1VnUnNsSDBaQTkvMnVmR0d4cUJ0c3hHM1QvMm5BaVhZdW1Nc0RFcURwZ3Nt?=
 =?utf-8?B?dnlrQjMwYXFpdFVIU2kxNzBzYXVkTVZTaVMyTkZrQ1pIZHRsQ2piNmZISzJz?=
 =?utf-8?B?QW4xaFRnWEFwbzd6aXlQMWZvWVJLL1BXLzZsdmNXVUNRdVU1dlMzQy85UEpj?=
 =?utf-8?B?aDYxUUN0WW1GWWw1K3hlOWFNUnRmNWRKWVh3VzZyZTF3REExKytBMnpTNUNF?=
 =?utf-8?B?OWMwTTBDcWN3WHVxNnBXSkJCM0JBTjJ3QkxEdjAvTURYL3NLcU9ESEpsc3lQ?=
 =?utf-8?B?VFZYQ3NKSmd0dktRSGNhTW0wSjFIT2ZsMUZVbWt6UHk5ZmJuU1hTQU0wVkxM?=
 =?utf-8?B?MUljMTZLUWJPbmQzRDZuUzRNZ05yaHdBZy9BdW1NdDdjaVJnOVd0NXl0Qnhm?=
 =?utf-8?B?KzN6WG1sWTJFN2RJYzliUTd0ekpaNFRpbEM3T01ROVBrRGJUUk1lYzdRNjVk?=
 =?utf-8?B?ZEp5dGJlVzFLMHZyUjVzS200enpDdXFFQ2ZobHBERjYwbGl5ditzeGtEd2pM?=
 =?utf-8?B?Y1dxZVNVOEwxbXlCODZVNk9INWlVSEJjdzRhYzNHZXE0dS9DZmF5SjdLMTRO?=
 =?utf-8?Q?ohsSAafCge20o1q6zEBK44BEG?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb498fa0-fb9e-4c2f-e6d5-08dba78b9393
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2023 05:56:52.3973
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Vj0wd6KvvG/TfDm+7tsBpMcNYgpWbbLKjAevrUCOXotNcbF0sIT/vNVxou5JnUO+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4089
X-Rspamd-Queue-Id: 8ABE83EF6B
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.243.72:from];
	TAGGED_RCPT(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: AXSMTG67WAEG4OV4CLA7FAKJY4EJPMXT
X-Message-ID-Hash: AXSMTG67WAEG4OV4CLA7FAKJY4EJPMXT
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>, Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Chris Wilson <chris@chris-wilson.co.uk>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf/sw_sync: Avoid recursive lock during fence signal
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AXSMTG67WAEG4OV4CLA7FAKJY4EJPMXT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjIuMDguMjMgdW0gMTk6MTUgc2NocmllYiBSb2IgQ2xhcms6DQo+IE9uIFR1ZSwgQXVnIDIy
LCAyMDIzIGF0IDY6MDHigK9BTSBDaHJpc3RpYW4gS8O2bmlnDQo+IDxja29lbmlnLmxlaWNodHp1
bWVya2VuQGdtYWlsLmNvbT4gd3JvdGU6DQo+PiBBbSAxOC4wOC4yMyB1bSAxNjo1OSBzY2hyaWVi
IFJvYiBDbGFyazoNCj4+PiBGcm9tOiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+
DQo+Pj4NCj4+PiBJZiBhIHNpZ25hbCBjYWxsYmFjayByZWxlYXNlcyB0aGUgc3dfc3luYyBmZW5j
ZSwgdGhhdCB3aWxsIHRyaWdnZXIgYQ0KPj4+IGRlYWRsb2NrIGFzIHRoZSB0aW1lbGluZV9mZW5j
ZV9yZWxlYXNlIHJlY3Vyc2VzIG9udG8gdGhlIGZlbmNlLT5sb2NrDQo+Pj4gKHVzZWQgYm90aCBm
b3Igc2lnbmFsaW5nIGFuZCB0aGUgdGhlIHRpbWVsaW5lIHRyZWUpLg0KPj4+DQo+Pj4gVG8gYXZv
aWQgdGhhdCwgdGVtcG9yYXJpbHkgaG9sZCBhbiBleHRyYSByZWZlcmVuY2UgdG8gdGhlIHNpZ25h
bGxlZA0KPj4+IGZlbmNlcyB1bnRpbCBhZnRlciB3ZSBkcm9wIHRoZSBsb2NrLg0KPj4+DQo+Pj4g
KFRoaXMgaXMgYW4gYWx0ZXJuYXRpdmUgaW1wbGVtZW50YXRpb24gb2YgaHR0cHM6Ly9wYXRjaHdv
cmsua2VybmVsLm9yZy9wYXRjaC8xMTY2NDcxNy8NCj4+PiB3aGljaCBhdm9pZHMgc29tZSBwb3Rl
bnRpYWwgVUFGIGlzc3VlcyB3aXRoIHRoZSBvcmlnaW5hbCBwYXRjaC4pDQo+Pj4NCj4+PiB2Mjog
UmVtb3ZlIG5vdyBvYnNvbGV0ZSBjb21tZW50LCB1c2UgbGlzdF9tb3ZlX3RhaWwoKSBhbmQNCj4+
PiAgICAgICBsaXN0X2RlbF9pbml0KCkNCj4+Pg0KPj4+IFJlcG9ydGVkLWJ5OiBCYXMgTmlldXdl
bmh1aXplbiA8YmFzQGJhc25pZXV3ZW5odWl6ZW4ubmw+DQo+Pj4gRml4ZXM6IGQzYzZkZDFmYjMw
ZCAoImRtYS1idWYvc3dfc3luYzogU3luY2hyb25pemUgc2lnbmFsIHZzIHN5bmNwdCBmcmVlIikN
Cj4+PiBTaWduZWQtb2ZmLWJ5OiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+DQo+
PiBSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
Pg0KPiBUaGFua3MsIGFueSBjaGFuY2UgeW91IGNvdWxkIHRha2UgdGhpcyB2aWEgZHJtLW1pc2M/
DQoNCkkndmUgYWxyZWFkeSBwdXNoZWQgdGhpcyBxdWl0ZSBhIHdoaWxlIGFnby4NCg0KQXQgdGhl
IG1vbWVudCBJIGhhdmUgcHJvYmxlbSBhbnN3ZXJpbmcgYmVjYXVzZSBBTUQgaGFzIGEgbmV3IHNl
Y3VyaXR5IA0KcG9saWN5IHdoaWNoIG1ha2VzIGl0IGltcG9zc2libGUgdG8gcHVzaCBwYXRjaGVz
IGFuZCBhY2Nlc3MgbWFpbHMgYXQgdGhlIA0Kc2FtZSB0aW1lLg0KDQpXZSBhcmUgd29ya2luZyB3
aXRoIG91ciBJVCB0byBnZXQgdGhpcyBmaXhlZCwgYnV0IGF0IHRoZSBtb21lbnQgaXRzIA0KZWF0
aW5nIG15IHRpbWUuDQoNClNvcnJ5IGZvciB0aGUgZGVsYXksDQpDaHJpc3RpYW4uDQoNCj4NCj4g
QlIsDQo+IC1SDQo+DQo+Pj4gLS0tDQo+Pj4gICAgZHJpdmVycy9kbWEtYnVmL3N3X3N5bmMuYyB8
IDE4ICsrKysrKysrKy0tLS0tLS0tLQ0KPj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlv
bnMoKyksIDkgZGVsZXRpb25zKC0pDQo+Pj4NCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEt
YnVmL3N3X3N5bmMuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9zd19zeW5jLmMNCj4+PiBpbmRleCA2M2Yw
YWViNjZkYjYuLmYwYTM1Mjc3ZmQ4NCAxMDA2NDQNCj4+PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYv
c3dfc3luYy5jDQo+Pj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL3N3X3N5bmMuYw0KPj4+IEBAIC0x
OTEsNiArMTkxLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzIHRpbWVsaW5l
X2ZlbmNlX29wcyA9IHsNCj4+PiAgICAgKi8NCj4+PiAgICBzdGF0aWMgdm9pZCBzeW5jX3RpbWVs
aW5lX3NpZ25hbChzdHJ1Y3Qgc3luY190aW1lbGluZSAqb2JqLCB1bnNpZ25lZCBpbnQgaW5jKQ0K
Pj4+ICAgIHsNCj4+PiArICAgICBMSVNUX0hFQUQoc2lnbmFsbGVkKTsNCj4+PiAgICAgICAgc3Ry
dWN0IHN5bmNfcHQgKnB0LCAqbmV4dDsNCj4+Pg0KPj4+ICAgICAgICB0cmFjZV9zeW5jX3RpbWVs
aW5lKG9iaik7DQo+Pj4gQEAgLTIwMywyMSArMjA0LDIwIEBAIHN0YXRpYyB2b2lkIHN5bmNfdGlt
ZWxpbmVfc2lnbmFsKHN0cnVjdCBzeW5jX3RpbWVsaW5lICpvYmosIHVuc2lnbmVkIGludCBpbmMp
DQo+Pj4gICAgICAgICAgICAgICAgaWYgKCF0aW1lbGluZV9mZW5jZV9zaWduYWxlZCgmcHQtPmJh
c2UpKQ0KPj4+ICAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7DQo+Pj4NCj4+PiAtICAgICAg
ICAgICAgIGxpc3RfZGVsX2luaXQoJnB0LT5saW5rKTsNCj4+PiArICAgICAgICAgICAgIGRtYV9m
ZW5jZV9nZXQoJnB0LT5iYXNlKTsNCj4+PiArDQo+Pj4gKyAgICAgICAgICAgICBsaXN0X21vdmVf
dGFpbCgmcHQtPmxpbmssICZzaWduYWxsZWQpOw0KPj4+ICAgICAgICAgICAgICAgIHJiX2VyYXNl
KCZwdC0+bm9kZSwgJm9iai0+cHRfdHJlZSk7DQo+Pj4NCj4+PiAtICAgICAgICAgICAgIC8qDQo+
Pj4gLSAgICAgICAgICAgICAgKiBBIHNpZ25hbCBjYWxsYmFjayBtYXkgcmVsZWFzZSB0aGUgbGFz
dCByZWZlcmVuY2UgdG8gdGhpcw0KPj4+IC0gICAgICAgICAgICAgICogZmVuY2UsIGNhdXNpbmcg
aXQgdG8gYmUgZnJlZWQuIFRoYXQgb3BlcmF0aW9uIGhhcyB0byBiZQ0KPj4+IC0gICAgICAgICAg
ICAgICogbGFzdCB0byBhdm9pZCBhIHVzZSBhZnRlciBmcmVlIGluc2lkZSB0aGlzIGxvb3AsIGFu
ZCBtdXN0DQo+Pj4gLSAgICAgICAgICAgICAgKiBiZSBhZnRlciB3ZSByZW1vdmUgdGhlIGZlbmNl
IGZyb20gdGhlIHRpbWVsaW5lIGluIG9yZGVyIHRvDQo+Pj4gLSAgICAgICAgICAgICAgKiBwcmV2
ZW50IGRlYWRsb2NraW5nIG9uIHRpbWVsaW5lLT5sb2NrIGluc2lkZQ0KPj4+IC0gICAgICAgICAg
ICAgICogdGltZWxpbmVfZmVuY2VfcmVsZWFzZSgpLg0KPj4+IC0gICAgICAgICAgICAgICovDQo+
Pj4gICAgICAgICAgICAgICAgZG1hX2ZlbmNlX3NpZ25hbF9sb2NrZWQoJnB0LT5iYXNlKTsNCj4+
PiAgICAgICAgfQ0KPj4+DQo+Pj4gICAgICAgIHNwaW5fdW5sb2NrX2lycSgmb2JqLT5sb2NrKTsN
Cj4+PiArDQo+Pj4gKyAgICAgbGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZlKHB0LCBuZXh0LCAmc2ln
bmFsbGVkLCBsaW5rKSB7DQo+Pj4gKyAgICAgICAgICAgICBsaXN0X2RlbF9pbml0KCZwdC0+bGlu
ayk7DQo+Pj4gKyAgICAgICAgICAgICBkbWFfZmVuY2VfcHV0KCZwdC0+YmFzZSk7DQo+Pj4gKyAg
ICAgfQ0KPj4+ICAgIH0NCj4+Pg0KPj4+ICAgIC8qKg0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A9658D5FE
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Aug 2022 11:09:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8E2EF3F080
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Aug 2022 09:09:08 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2072.outbound.protection.outlook.com [40.107.92.72])
	by lists.linaro.org (Postfix) with ESMTPS id A78A33EA18
	for <linaro-mm-sig@lists.linaro.org>; Tue,  9 Aug 2022 09:09:05 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Uy3HdsHiLpnp+4rrRmsRkePcWFaknb+Z7bSahXJiNafyLuQUCpw7yRJaPmdKqvmAa+3dKN9NeqZsT0cOOv+513RsAipctjGw5ijH4zgbESFgQK4uWjXNn0TDxMdHFjJcZmZf92GIaiBJ85WacSh4z1KRESMWbEZP5pSMiKiQDDD1trLZFRNxj8851LGVim74B5L15nQYh6RjDn5qcsu/kKr0fjdJdxQTv/JDHgP6UCdmCN80naR6TM4Kaq3SLZlKRZxMClC2JeiA0sfaFYv3f4HW4XuVBgVSDmujqSC5rLBun6N9xt1+D0Eoq3j4r/zXiL3+GLpGyVwWtIph/zZ8qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k/zM4ne7UuDgrhObzuvjQfDUYwgMez4H6/oxZ3QrBoA=;
 b=n7lT+QfuZzpwShHZb6PjgxiJiBsiEe3ucmY8vLo827+MeWEtdXIdOE08J1lsSItOOESp5qVoEpz6zI0PyAmQaYMdojNKKI+U7EmoaJjGL1ZRZ3WxCE7fd/n/wMHn3fmTS5vLknVjSBKdU9aP/zCACVvV7mCRfSSW9aFx16+AgUAzKs23U2wew+/LVvFN0lvFeGI8qfOlVjBImwDRfJYk+wkAgfIR2lCX3vz+GLjHjV+qqvj4wY3VCtAasTgabL/E7N7Jp0bt2c25KZIaz0j4sIyCswuggeqqwHpgbG9lwuGwaGk5Fan3acVHInftJGrQ8wI/e98KT887LYzZtbQIQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k/zM4ne7UuDgrhObzuvjQfDUYwgMez4H6/oxZ3QrBoA=;
 b=NOdJ2lKJlFLW3/1ZbmBtCuZ8N8Y4SntFUTDHrn2E2OdBcRacxnVoMnHjXahzPBeTQ/XEkgzFZjQxbo802RrsLtJ5SHexi4VmIMG+iKTOfqnOSSUdTnRK5mseoHHlnCCWTQwKgW55buYmiocjmkJ6EwTIsKiJkgsr9/eMshD769A=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by MWHPR1201MB0109.namprd12.prod.outlook.com (2603:10b6:301:52::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.15; Tue, 9 Aug
 2022 09:09:03 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39%2]) with mapi id 15.20.5504.020; Tue, 9 Aug 2022
 09:09:03 +0000
Message-ID: <71e47fe6-440b-e9ea-cd66-8362c41428ca@amd.com>
Date: Tue, 9 Aug 2022 11:08:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
To: Chen Jeffy <jeffy.chen@rock-chips.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
References: <20220803083237.3701-1-jeffy.chen@rock-chips.com>
 <c7cb225b-7f21-8d9a-773b-efc655e6332c@amd.com>
 <7cd16264-fa84-7b50-f3ed-64f7f22dcef2@rock-chips.com>
 <64bf4e4b-4e22-0ff0-5f92-76f603c04ec0@amd.com>
 <cd806954-e94e-aec8-2b0c-4047da9a92ec@rock-chips.com>
 <0e284f57-e03c-f128-f6e7-52a58edbcd54@amd.com>
In-Reply-To: <0e284f57-e03c-f128-f6e7-52a58edbcd54@amd.com>
X-ClientProxiedBy: FR0P281CA0131.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:97::16) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e7e39b51-c6eb-4109-33b3-08da79e6cdd1
X-MS-TrafficTypeDiagnostic: MWHPR1201MB0109:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	075tL2Z1pFRgecThBnpN1l5zecHkk+J+88JN7wzlBu+PCCGkVRh/qJU9HfMCa3eaX2gQj/5ZVzMHwYc/6DrldoYNcaU/0Ocakpnesn618XLLZgaABmMOcGOuTDncdaK7MqljfD9G6q7RRKwV8DD8LV3P9OpHweLH1yXlMkrfTRcHTTtPVtdGh2cqhZ85VWFUL5N4pIBoH6VO12EWII4hLFc4t9HicwHkrbfqL3+t3w77etP5ey588UsJHv6EH/nWuzEBG1BEwvXog/aeZWxTzRzB5oYJ8xl4CZRfkcb1t9PnFUyviAMp00hYHvX8LE31AwQDOzDfxvMfJC/X2exeOEyNSQFzGdl0SM9ZVxm5dz4M0rfFYyESQEGhwyoOphNnjX4R1DuHs3FoPbbHxHf/42wMbMXXcZ3l9N5WCcEBd2zF7MNTWqaivproA8NU1iGt9COe1dTzT5QzrsQBIHOl+ZkncGz4rRgXri0YTP98OdVFJKJivdb5spj1F9YzBFyKQv+XGvOrEbswom2avFBGDRX4M/+dftdPme4bbxfJzQQHBBIuBXX5zWaNkiy2eLZ3EdhZSOT24RTPcx1wOlX63PD7F8GFozrMSZA+jpPbiNA6fSPKzRBYYskhYyB9GKlTGETE20lNTdQgzfK5AqKs7kcFb4BapSjBPcbJQSufxRHF1dCkSDVCZ9xi2MmMMf/fOg2C1BC5TuNm+o0fHDlBWVX93jZ5YgB7wR6v3CkBSCd+izeEyEwkp1w61byEB9pBhkbbZoJQpzFtdrkasfp5Uy8cGNEx2gq/RuyR3Ld1CqLpygDxrYSZeqhCYPilxdLjHB+EoieFoNC+biD4/Ox1MQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(366004)(136003)(376002)(39860400002)(346002)(396003)(41300700001)(6666004)(26005)(2906002)(83380400001)(6512007)(2616005)(38100700002)(6506007)(66574015)(316002)(186003)(66476007)(31686004)(6486002)(8676002)(36756003)(66946007)(4326008)(66556008)(110136005)(8936002)(54906003)(86362001)(478600001)(5660300002)(7416002)(31696002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZjA0OVRKV3ZuRURHWGR1T29xQmZWYUlCNDRkWXQ5MmZBc3RtWkp3SjFyMWcw?=
 =?utf-8?B?bjdoMVM2WjZnczc3U3R0aDVUNmg4OHFNVVFWV2dnZ1dPODNWNGxuczZmWFNh?=
 =?utf-8?B?eml6UjZJMFNldXorMWVEWTlxQzhtS0xTMk1WRFZUemorTDBydmd4V0NKZG01?=
 =?utf-8?B?YUFDb2k4bjFqbHQwTEpSTUdRWWFxVktVczFoY1c3eVlPeG5Rb1NnSm51QzZY?=
 =?utf-8?B?eDUxR0hod0JTOVNiOFFjc2xGNExLeGE2djZzQWdvbG1mUldhaDhOZXlYNm1O?=
 =?utf-8?B?dm1jbWhENnI2ekNuL1Z2RVcvNDNEOXR5a0xjUnJ6WCt4RlFsbHgxVnVIZVVO?=
 =?utf-8?B?bFBEWGh6eWxMYUZhamhXV1hFdlZFMllzQ3Q4OGFnRGhPRzFJWmd2YlJGVito?=
 =?utf-8?B?L2x0ZFdzVHFQOThTazJVUzhjMnFnVExxbjAySkZmbW1KT3JXVzY4SThSeG1w?=
 =?utf-8?B?R3U1Z2RaWENPMEZrQVJGMk5TQVE2OXl5S0h2RC9ZYVhiUjNCbk1UdHZBcSt4?=
 =?utf-8?B?aDRCd2dPSXVTcm9NR2R5VFVNWHFlcjlEK1dnZGNobGdCb2o1Q1BWbDZqSTNM?=
 =?utf-8?B?dkZ6bXNuN3hhOE5ZdCt5U01UaHJIei9VT1ovWklCSVFEaEEvSjRBZ1BVKzkw?=
 =?utf-8?B?RWF0MTl2a2VSNmdneXF0anFrdnRGVDZleHRJVGE5WVBxY0piMzhxbW1oQkkw?=
 =?utf-8?B?RENVQUtUQVZFcG85MzlESXRRVDZGb0o5WU0rR3NsY3pQWHVpd2dleCtaeU9k?=
 =?utf-8?B?enBpL3JyOFVPM3RhaVVEV3ZMMkZzM293SjlJaHNDOXZjZVJpYzd3cVRjQm9G?=
 =?utf-8?B?U3BvZ1JzSjBEeXB1UXNtLzJ3S0Q2ZzFwR3FzZXJkTG9sVkk5SEZDbXU4VS9Y?=
 =?utf-8?B?STI4M014SUd3S1RsVFUyUVlzdUlBdUdhZTRJMWdkb0Z3RFB1K0ZmN0tQQUR6?=
 =?utf-8?B?V053Zk9FK1EzK0MvQWVnclNFdFAvbnl6bmwrVnJ6dDJGRGRGdjM4ZTBIL0pa?=
 =?utf-8?B?cXFaSTU2WUt5Ui9UKyt1cldId0R0UExsMDk3YWo4TVhSOWdOa2pUMCtCakZa?=
 =?utf-8?B?QkltTnhzeDlxOCs4UmIveUR0RVVmbkpoUys0eFh1Ym1RQlpCQU9mOWp3b1hv?=
 =?utf-8?B?dllPa1JjaXYzSThsWlIrQjNwR3NVUWVVeWFBSUVZdHU3cDJ3c0xRd2syczBO?=
 =?utf-8?B?dUMvRHJCNU9JekwzUEtWbm9oc3ZyWERZL1M1S0dFdWplRGM2WGRVNE1MaCt0?=
 =?utf-8?B?S2RWa3Znenk0WkYrWU5rMkpCMDlmaGtRK1NrN0dGUmt0UTk3NUxwcWhwYzFq?=
 =?utf-8?B?M2xZaGltM2FnR1A0TlV1OUg3b1V2SjU5Wm1jcC9uRjNsZCtXdUpnallhN1la?=
 =?utf-8?B?a2prdTRNM3hrbUJ6N0dsK1NjcklMS2pLSUN0a01XOHptTjhzc2hBM2ZpbGpz?=
 =?utf-8?B?MUJSQVhmdXFVU3ZwZGpSSVJZR2VnM203MmsrenEvOG4zMFJnTEpPNThxUVVM?=
 =?utf-8?B?N256SGRWcXV1ZmJHUE5Cbng1TzZIMTZLcGQ4bFNUdm5vMHhIQlcybGY3Y0tG?=
 =?utf-8?B?eGd0a2VPa1V5bW4yZzR5Z2tESkhiRVFDRXZqdlJuVm43UGlCdndreERXbzNK?=
 =?utf-8?B?MGl6NEdWYlduUXd6aytJcXdtZDUxeHBubnBDR3JwdEFkUkMzcW1yWXFnYURj?=
 =?utf-8?B?b2ZHZ0Y3bXJsVkZqZFNib3JCNWpIWm5wTmllbG5SK3FFVGJZQ05qZ1l0MHRw?=
 =?utf-8?B?c25ZUnY5MEZ1Tms3ZU56MzNUeVBRbW5DaVdZMWd1SWJwblBhVHB3dVZ3YWx5?=
 =?utf-8?B?YVlucmh6YkJzQ01vZ3JObTJwRlBJNHR5eWM2STRMZnZhN3NROHc1MkVRajYz?=
 =?utf-8?B?UWRyTzBiWTM0Vy9MSVY5MHdDM29nT0QzeFY4MDQvZmhtYTdnQ2dwZDBmNnNR?=
 =?utf-8?B?d25EN0lVSEw0V0lsYzdJYTVzVW5jZU9HMlkvbzFWNW5DbFdzTnZNazVtQ25t?=
 =?utf-8?B?Z1VtK0E5Q2tQc0xuMGRJUkpJYkxGZmFsK3hxTkNzanUzN1pFVUJHYlkxdzVE?=
 =?utf-8?B?T05MZURrTS83bE5hWnJTSEozZitzWmFxUnlpU3E2N0trd3hqNEhzeUlmL05V?=
 =?utf-8?Q?+i51h57/VnIygkcn4XbVaojPB?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e7e39b51-c6eb-4109-33b3-08da79e6cdd1
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Aug 2022 09:09:03.0387
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rIg8nuCcBGNc+/zsWAcrO3Apnbd+9R8aYgvCQoBhFAT72JvBQ5ONoQX7hfyd8qkR
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1201MB0109
Message-ID-Hash: RFRJ5WPUGUQ7RDVNPMZBQOW4BE3YI5I6
X-Message-ID-Hash: RFRJ5WPUGUQ7RDVNPMZBQOW4BE3YI5I6
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Andy Yan <andy.yan@rock-chips.com>, Jianqun Xu <jay.xu@rock-chips.com>, Maxime Ripard <mripard@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Thomas Zimmermann <tzimmermann@suse.de>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, David Airlie <airlied@linux.ie>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, linux-media@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] drm/gem: Fix GEM handle release errors
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RFRJ5WPUGUQ7RDVNPMZBQOW4BE3YI5I6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgSmVmZnksDQoNCkFtIDA5LjA4LjIyIHVtIDA5OjU1IHNjaHJpZWIgQ2hyaXN0aWFuIEvDtm5p
ZzoNCj4gW1NOSVBdDQo+Pj4NCj4+Pj4NCj4+Pj4NCj4+Pj4gU28gd2UgYXJlIGFsbG93aW5nIEdF
TSBvYmplY3QgdG8gaGF2ZSBtdWx0aXBsZSBoYW5kbGVzLCBhbmQgR0VNIA0KPj4+PiBvYmplY3Qg
Y291bGQgaGF2ZSBhdCBtb3N0IG9uZSBkbWEtYnVmLCBkb2Vzbid0IHRoYXQgbWVhbnMgdGhhdCAN
Cj4+Pj4gZG1hLWJ1ZiBjb3VsZCBtYXAgdG8gbXVsdGlwbGUgaGFuZGxlcz8NCj4+Pg0KPj4+IE5v
LCBhdCBsZWFzdCBub3QgZm9yIHRoZSBzYW1lIEdFTSBmaWxlIHByaXZhdGUuIFRoYXQncyB0aGUg
cmVhc29uIA0KPj4+IHdoeSB0aGUgcmIgaXMgaW5kZXhlZCBieSB0aGUgZG1hX2J1ZiBvYmplY3Qg
YW5kIG5vdCB0aGUgaGFuZGxlLg0KPj4+DQo+Pj4gSW4gb3RoZXIgd29yZHMgdGhlIHJiIGlzIHNv
IHRoYXQgeW91IGhhdmUgZXhhY3RseSBvbmUgaGFuZGxlIGZvciANCj4+PiBlYWNoIGRtYV9idWYg
aW4gZWFjaCBmaWxlIHByaXZhdGUuDQo+Pg0KPj4gSSBkb24ndCB0aGluayBzbywgYmVjYXVzZSBp
ZiB1c2VyIGdldCBtdWx0aXBsZSBoYW5kbGVzIGZvciB0aGUgc2FtZSANCj4+IEdFTSBvYmogYW5k
IHVzZSBkcm1fZ2VtX3ByaW1lX2hhbmRsZV90b19mZCgpIGZvciB0aG9zZSBoYW5kbGVzDQo+DQo+
IE1obSwgdGhhdCB3b3Jrcz8gVGhpcyBpcyBpbGxlZ2FsIGFuZCBzaG91bGQgaGF2ZSBiZWVuIHBy
ZXZlbnRlZCBzb21laG93Lg0KDQpBdCBsZWFzdCBJIHNlZSB0aGUgcHJvYmxlbSBub3cuIEknbSBq
dXN0IG5vdCBzdXJlIGhvdyB0byBmaXggaXQuDQoNCllvdXIgdjIgcGF0Y2ggaW5kZWVkIHByZXZl
bnRzIGxlYWthZ2Ugb2YgdGhlIGRybV9wcmltZV9tZW1iZXIgZm9yIHRoZSANCmFkZGl0aW9uYWwg
aGFuZGxlcywgYnV0IHRob3NlIHNob3VsZG4ndCBoYXZlIGJlZW4gYWRkZWQgaW4gdGhlIGZpcnN0
IHBsYWNlLg0KDQpUaGUgaXNzdWUgaXMgdGhhdCB3aXRoIHRoaXMgd2UgbWFrZSBpdCB1bnByZWRp
Y3RhYmxlIHdoaWNoIGhhbmRsZSBpcyANCnJldHVybmVkLiBFLmcuIGlmIHdlIGhhdmUgaGFuZGxl
IDIsNSw3IGl0IGNhbiBiZSB0aGF0IGJlY2F1c2Ugb2YgDQpyZS1iYWxhbmNpbmcgdGhlIHRyZWUg
c29tZXRpbWVzIDIgYW5kIHNvbWV0aW1lcyA1IGlzIHJldHVybmVkLg0KDQpUaGF0J3Mgbm90IHJl
YWxseSBhIGdvb2QgaWRlYSBhbmQgYnJlYWtzIGEgY291cGxlIG9mIGFzc3VtcHRpb25zIGFzIGZh
ciANCmFzIEkga25vdy4NCg0KSWRlYXM/DQoNClRoYW5rcywNCkNocmlzdGlhbi4NCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

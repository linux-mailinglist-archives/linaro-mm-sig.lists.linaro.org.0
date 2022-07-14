Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D6A257478C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 Jul 2022 10:49:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3333D3F49E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 Jul 2022 08:49:43 +0000 (UTC)
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (mail-dm3nam02on2047.outbound.protection.outlook.com [40.107.95.47])
	by lists.linaro.org (Postfix) with ESMTPS id CEA093F49E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 14 Jul 2022 08:49:37 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZrOmMRKVCSeoXSYLFvRhEL7Q8ASt+ClxGE8on+boeXj16vhRsRjg5DNhFbcdq9Zvh3tu1EmuWJC09TgnQbdPuJm0Alpy+kTof7Bp+i/PEP4df28eslp+yMZYgLzx8zvGyWzm6VCA5eBQFTfG/oLgl0rrzIHIGOebbWyGbLXNLSe5Ah1AHYeGyEMj/69hlmme/PvBHW95qacbRhh8K2De6kZ8D8H8q4Kxg4s1JV07cHDLtrSLCpNfKhZtvbeYHBAsxxxhM4ocyQsR6IbvQf/fCyuX3t5zJTAxSsSBE7mQxUrMcbaFmjmk1975QgtPOrW32NnXUUInP0X/hmlwin32Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vhIjWPzKmQt86le0XcME9raamf8KpGScOb53tDxK+iU=;
 b=Bhoa7RBBPnlKUd4VvRMx2QgIpCi9XU21qT5NtJx3IV55aBlL/HyAP/gbzXqFuchopqFhjHTfLK+1Tz6tFu+UGtZpqclLBDehh9FPMBeK3ynWDBeRJPxy8hEroApeBW0T4p5etMhS8XTTgxYr+YG0susmmwNLNB7VXq+KiZljSDTfG2HhhHXZJi8UNqzOd0NWOrRMpiq3Bj+GS+9MbAbSbovZJFt86Ag21ay/ePkn3uhcqKhueULHOXZtyvTLqrE+3ehdnuO7CPt+UQRfIvEs6DFPhwqwTyrKwHRLA33XLvITn19GgNy9EyfOS04uT4CpiLypCRurozoz/0KnKN6Y2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vhIjWPzKmQt86le0XcME9raamf8KpGScOb53tDxK+iU=;
 b=rN/N3487KtepS/MV/UiKus887UpGYQfv7wr7Wmb587S0r5CgokaCJpRMsS/InPYAOZEGQz3nqVkRBKqH84PY8LghxVG2AJS9YFFQvqG6UmIDPJI9ggrt+oig2RJFDjWUVewI/sziIjq4ySQY4Vb11swdFsefy3oikjwkEH9Do4E=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by DM6PR12MB3834.namprd12.prod.outlook.com (2603:10b6:5:14a::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.14; Thu, 14 Jul
 2022 08:49:35 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39%2]) with mapi id 15.20.5438.013; Thu, 14 Jul 2022
 08:49:35 +0000
Message-ID: <e3accc2e-75e5-459a-ea72-116e44f73238@amd.com>
Date: Thu, 14 Jul 2022 10:49:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Thomas Zimmermann <tzimmermann@suse.de>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 karolina.drobnik@intel.com, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
References: <20220712102849.1562-1-christian.koenig@amd.com>
 <5b8aa549-c2f1-19b2-d0f4-26d4ea1a7ade@suse.de>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <5b8aa549-c2f1-19b2-d0f4-26d4ea1a7ade@suse.de>
X-ClientProxiedBy: FR3P281CA0050.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4a::19) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 360349d0-22ca-4132-6f21-08da6575c751
X-MS-TrafficTypeDiagnostic: DM6PR12MB3834:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	SpM9gi1W27m+L01UIynXcjK6me/QizPLSHej04HptW4PnqDfkLeKk0nBsFqPCjgdeOXxvSXjVQLmniGxxBa9cERljgpnntovscNXYQ+Xi6UZ50SQavbYG+mJn0lRjEEcaVSiBkQ7wp30vF8WIJjqo56y8lzZUI/BOCHhloROPEWoL3JW31gSTrpRVepGci+7f6j8kDuaUk4VCpyMPV97R9VmjCz9c7xDKqocLNc1kOfPk//dGAvIq78dgLNwx/2QtpWpS6v/8MxNaPtkIiE4P74LriOI+46x7lteWx5LaaXtcZFLc+dgcvlmbpdgWIB4nCzC0+mBkqV3EPGYaTVtRokKDdAlC0+HguTRrs6guIn/pIZ9wSmzKiDRYfu+HdkZxTBj+mjNUjRMCdRD0xdtz6JxK0QXTFdkNyyozUfjiu+wHEh8WmDr4xkv6rQMaWQAyzMf2fwU2x7WDXqG909wivkSlyZofapAE0p/31LOtDnT+45kZszaetPX/KwucCEy1bsu39/GNnSPChd5gPVmxD5PBsVkDfSc20lJvPCR8jmOhx1SRslcXbrBdGuJKxgkNSzkVNSlLa6dKh5vJo8v7GMzoWJ2F5ou6Q2g6hfS3hjlcJUhsqAyKaPMTmIRQL3mbRjwrmEqa0WzklVlARtfwJEpHquIkH3gxqbXsZPfAVoGmvmHz3UBgy/QjMOo3iT14hR5QHD1tJm4J9XtRs7ESNzzO5Zl+WHpQHVzWRvLsAWQyqkHKMzYADTV40ZLT66edagNqrWzvHxM3Vx4d6gebDxP94R8LLweWP9hlqh4fGAhKtPoZsgjtreiYpz98hcM/aAno3GvZDiFdkji5NulqYsPVEjcXzT+dUCcxrXH7fQ=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(376002)(366004)(136003)(396003)(39860400002)(38100700002)(186003)(66574015)(2906002)(316002)(110136005)(83380400001)(2616005)(31686004)(36756003)(8676002)(8936002)(6512007)(31696002)(5660300002)(6486002)(478600001)(6506007)(26005)(66556008)(66476007)(41300700001)(66946007)(6666004)(86362001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?OXRKbkdRVkdxNGlUVUo2UXVwa2lLZWlmWUVQMFkxdHBPY3RDN3ZaVnJIRUo2?=
 =?utf-8?B?MmdwdlkwakEzQ1ZwODg3clNuY3dESTVTSmJXbWFkUVA2TDV4YjY3cGpjcDJ2?=
 =?utf-8?B?VEEyaVFDdlk4YWVuNTJrMVJ3MzZNTGdJcWlTUTlyK0ZuRDVUMGYrSkp1cVFO?=
 =?utf-8?B?ZWhEdGFSQjV4dUJJOHVwb2tkWGVGNmcvcklJVnYxZzMwc29kNmJ6bjEyVW9B?=
 =?utf-8?B?dFRmTUhleVVaSzdwdTgxTkRtc0lERnVxSmxMTGltN0dIS0p1akNkaTgrcGZQ?=
 =?utf-8?B?bnQ4NHVoS0RFODQycnVMZndUcStTcG93K2dkdEdUV3dsazZkSU9BQlQ5Y3NQ?=
 =?utf-8?B?dXZFeXpvaDFZc0FzTzk5U0RkRDgyRFh4K3R4MElXUTZZa3hGMDRtRm96dXZt?=
 =?utf-8?B?YXYycDdoUmdLeWpWVnhiLzM4aFNOVkxRcittYWJ2MXltQjQrdmtsbEc5WE9W?=
 =?utf-8?B?V0swSkdGRUs1NWVLaFZkeTFvRVliZTV0cjFSTGRJeUV1R3RKd1pLNHljMkFk?=
 =?utf-8?B?TCt0OHNwTCt0M1lEcVFvbmpDWm5mTDJmS2NLYzlybjVMRmozakZXc2VGZysr?=
 =?utf-8?B?eE1aUmhIMEhBRlI2NHB0Yk5wZDN5Wms2aGU2VmlaekE1Tk43aFFTYlIrSFgx?=
 =?utf-8?B?VHQyQXBaTnRpeHFIK0Q1ZEhxUTk0UllXZFBJeXJ5TEFucFpOZ1ljVHRGbnA4?=
 =?utf-8?B?ZGpBZ0o0OEFoT2ZzdWZqQ0pyUG8wNkc3M3RXMlNZTVNXekFiQ1M1VHVPYWFz?=
 =?utf-8?B?NnNmWk5sQkh4QytKWGNPaTkwcC9CeWtwNW5tUlN5NXg5T2tJdWZGKy9ETWRF?=
 =?utf-8?B?anFwbXBzOTNEWFI4Nno0eWRETkM0bDE2U2tHR3huVFpxTlJlWDRaQ2tuL1Mx?=
 =?utf-8?B?OFNWaGZhNEc5cUVTeHVRNzkrSzAyM0krZ0k4MmdLUXNxM1lac2tjeTJQV09h?=
 =?utf-8?B?Snc1VE1XZU9OV0doNnhKY21DVUoxVUw2eVFHSGYyaUEvZGROaWc4QjNrbkdP?=
 =?utf-8?B?cjQ5aENVRHdDdFFuUFhpWlBPR29MK3JNUWtTUUdwQ3FLanpIRS9CY2wzN1pV?=
 =?utf-8?B?bzBMNmRMYmxBV080SVJOeFNLOGV2dlZVZVRwMklyQWNzc09oWU84RXUzMEk4?=
 =?utf-8?B?b0RPSmlYYXJPYks5dHM5RXBuYXo5alY3OHhkZGRiRi8yTllJdVJQZ0RUTStB?=
 =?utf-8?B?MU5PZTU0bTBCc1pqRVVVRWNUYzJrNktHMU5CRER6VUtBOWp3L0k4YnIxL2VI?=
 =?utf-8?B?N1g0ZjJiVXhsdjZ2VmtmKzAwZkhoYXVKbEFpRlFZYjB5OTBySUZqQmNnT1pV?=
 =?utf-8?B?Q1lkc1hSYXg3UmYxaTdXa2Q3SXRZQkNoR1J6M1dJOEFNZnRiWmkvZnFuZk81?=
 =?utf-8?B?M3M4ZGgvdWsvY0NVdEZNYVNFNmpOdEFFZXFvMkpZYnp1V3Y1Nm1xSWpqOUxC?=
 =?utf-8?B?a2tQamY0c0oyZXFYNlBKZE84ejl5YnMzQUhFek02cXhhbWt0OVN0a1dKNHI1?=
 =?utf-8?B?akxCeCt1a3J4VjNEeVIrUVJ1aHJYMVVvOWdLc2c3ZWtQd3ZhbkR6cWJtUFFY?=
 =?utf-8?B?MWNwdC9UMXZjeVVDcmFGeFRTUmdjU1VRL1I1aExXU0lobTRvbkFDekZVdnVH?=
 =?utf-8?B?eW1WU1BFZzZkTHNyVzU3ZjQvdFZpOFlDVk1SUDNGK1NWaGdWZ1E4ZE05VEQ1?=
 =?utf-8?B?ZjIvSXEraVZ1aWVNZGRuNzNsaEZqQ0krbkJ2L2REWFlORGdpYzg3VUorR1dj?=
 =?utf-8?B?SkRvaGtxVmpTZ21hS0FEY215SXNTeFREb0FMTHJGTGdQSFdiQ1dQSUhlLzZy?=
 =?utf-8?B?RWd5L29iQTZVTUV0dFJDdURWclR3Q2g2NW5LU0ZkR3I5Q0tXa3RJWlBTYWNQ?=
 =?utf-8?B?T2xwamZ4OHBqZVFkdXJNMlZNTVhjZjB1T1Mzc2JaMG1QVkROcFNTZ1psT2Ey?=
 =?utf-8?B?UkFjbThaYVJYai9PV29USE81NHR3M2dnZU5pcUppdHp4T3ZqNUxWdkU4V0ZO?=
 =?utf-8?B?L3pUOUx2MEIwMEVWeDJQb043bnkvL1ZQdDBJL2lYTktWck5MZFdLU0VlNTVX?=
 =?utf-8?B?cnRKRXYvblE3U1gvaldvTFphY0VSTDQrTElKNm9wQU43Z0I0am5aVmgvcjZv?=
 =?utf-8?Q?UYmDu4BsQThkgdOnl3f1ifgvt?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 360349d0-22ca-4132-6f21-08da6575c751
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2022 08:49:35.8428
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lcKTMpaNGSrGtkIEKd73Klsz/EYWYCW5RiuzWI9hwJ7E7ahen1WBussbBoXH5K67
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB3834
Message-ID-Hash: PWUNMS2KWP7DBTBICJHYQXHCTV3UHSPC
X-Message-ID-Hash: PWUNMS2KWP7DBTBICJHYQXHCTV3UHSPC
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: revert "return only unsignaled fences in dma_fence_unwrap_for_each v3"
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PWUNMS2KWP7DBTBICJHYQXHCTV3UHSPC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgVGhvbWFzLA0KDQpBbSAxNC4wNy4yMiB1bSAxMDo0MCBzY2hyaWViIFRob21hcyBaaW1tZXJt
YW5uOg0KPiBIaSBDaHJpc3RpYW4NCj4NCj4gQW0gMTIuMDcuMjIgdW0gMTI6Mjggc2NocmllYiBD
aHJpc3RpYW4gS8O2bmlnOg0KPj4gVGhpcyByZXZlcnRzIGNvbW1pdCA4ZjYxOTczNzE4NDg1ZjNl
ODliYzRmNDA4ZjkyOTA0OGI3YjQ3YzgzLg0KPg0KPiBJIG9ubHkgZm91bmQgdGhpcyBjb21taXQg
aW4gZHJtLW1pc2MtbmV4dC4gU2hvdWxkIHRoZSByZXZlcnQgYmUgDQo+IGNoZXJyeS1waWNrZWQg
aW50byBkcm0tbWlzYy1uZXh0LWZpeGVzPw0KDQp5ZXMgZm9yIGFsbCB0aHJlZSBwYXRjaGVzIHlv
dSBqdXN0IHBpbmdlZCBtZS4NCg0KSSd2ZSBhbHJlYWR5IHRyaWVkIHRvIHB1c2ggdGhlbSB0byBk
cm0tbWlzYy1uZXh0LWZpeGVzLCBidXQgdGhlIHBhdGNoZXMgDQpzb21laG93IHdvdWxkbid0IGFw
cGx5LiBJIHRoaW5rIHRoZSAtbmV4dC1maXhlcyBicmFuY2ggd2FzIHNvbWVob3cgDQpsYWdnaW5n
IGJlaGluZC4NCg0KVGhhbmtzLA0KQ2hyaXN0aWFuLg0KDQo+DQo+IEJlc3QgcmVnYXJkcw0KPiBU
aG9tYXMNCj4NCj4+DQo+PiBJdCB0dXJuZWQgb3V0IHRoYXQgdGhpcyBpcyBub3QgY29ycmVjdC4g
RXNwZWNpYWxseSB0aGUgc3luY19maWxlIGluZm8NCj4+IElPQ1RMIG5lZWRzIHRvIHNlZSBldmVu
IHNpZ25hbGVkIGZlbmNlcyB0byBjb3JyZWN0bHkgcmVwb3J0IGJhY2sgdGhlaXINCj4+IHN0YXR1
cyB0byB1c2Vyc3BhY2UuDQo+Pg0KPj4gSW5zdGVhZCBhZGQgdGhlIGZpbHRlciBpbiB0aGUgbWVy
Z2UgZnVuY3Rpb24gYWdhaW4gd2hlcmUgaXQgbWFrZXMgc2Vuc2UuDQo+Pg0KPj4gU2lnbmVkLW9m
Zi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4gLS0t
DQo+PiDCoCBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLXVud3JhcC5jIHwgMyArKy0NCj4+IMKg
IGluY2x1ZGUvbGludXgvZG1hLWZlbmNlLXVud3JhcC5owqDCoCB8IDYgKy0tLS0tDQo+PiDCoCAy
IGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkNCj4+DQo+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS11bndyYXAuYyANCj4+IGIvZHJp
dmVycy9kbWEtYnVmL2RtYS1mZW5jZS11bndyYXAuYw0KPj4gaW5kZXggNTAyYTY1ZWE2ZDQ0Li43
MDAyYmNhNzkyZmYgMTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLXVu
d3JhcC5jDQo+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLXVud3JhcC5jDQo+PiBA
QCAtNzIsNyArNzIsOCBAQCBzdHJ1Y3QgZG1hX2ZlbmNlICpfX2RtYV9mZW5jZV91bndyYXBfbWVy
Z2UodW5zaWduZWQgDQo+PiBpbnQgbnVtX2ZlbmNlcywNCj4+IMKgwqDCoMKgwqAgY291bnQgPSAw
Ow0KPj4gwqDCoMKgwqDCoCBmb3IgKGkgPSAwOyBpIDwgbnVtX2ZlbmNlczsgKytpKSB7DQo+PiDC
oMKgwqDCoMKgwqDCoMKgwqAgZG1hX2ZlbmNlX3Vud3JhcF9mb3JfZWFjaCh0bXAsICZpdGVyW2ld
LCBmZW5jZXNbaV0pDQo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCArK2NvdW50Ow0KPj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKCFkbWFfZmVuY2VfaXNfc2lnbmFsZWQodG1wKSkNCj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKytjb3VudDsNCj4+IMKgwqDCoMKgwqAg
fQ0KPj4gwqAgwqDCoMKgwqDCoCBpZiAoY291bnQgPT0gMCkNCj4+IGRpZmYgLS1naXQgYS9pbmNs
dWRlL2xpbnV4L2RtYS1mZW5jZS11bndyYXAuaCANCj4+IGIvaW5jbHVkZS9saW51eC9kbWEtZmVu
Y2UtdW53cmFwLmgNCj4+IGluZGV4IDM5MGRlMWVlOWQzNS4uNjZiMWU1NmZiYjgxIDEwMDY0NA0K
Pj4gLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtdW53cmFwLmgNCj4+ICsrKyBiL2luY2x1
ZGUvbGludXgvZG1hLWZlbmNlLXVud3JhcC5oDQo+PiBAQCAtNDMsMTQgKzQzLDEwIEBAIHN0cnVj
dCBkbWFfZmVuY2UgKmRtYV9mZW5jZV91bndyYXBfbmV4dChzdHJ1Y3QgDQo+PiBkbWFfZmVuY2Vf
dW53cmFwICpjdXJzb3IpOw0KPj4gwqDCoCAqIFVud3JhcCBkbWFfZmVuY2VfY2hhaW4gYW5kIGRt
YV9mZW5jZV9hcnJheSBjb250YWluZXJzIGFuZCBkZWVwIA0KPj4gZGl2ZSBpbnRvIGFsbA0KPj4g
wqDCoCAqIHBvdGVudGlhbCBmZW5jZXMgaW4gdGhlbS4gSWYgQGhlYWQgaXMganVzdCBhIG5vcm1h
bCBmZW5jZSBvbmx5IA0KPj4gdGhhdCBvbmUgaXMNCj4+IMKgwqAgKiByZXR1cm5lZC4NCj4+IC0g
Kg0KPj4gLSAqIE5vdGUgdGhhdCBzaWduYWxsZWQgZmVuY2VzIGFyZSBvcHBvcnR1bmlzdGljYWxs
eSBmaWx0ZXJlZCBvdXQsIHdoaWNoDQo+PiAtICogbWVhbnMgdGhlIGl0ZXJhdGlvbiBpcyBwb3Rl
bnRpYWxseSBvdmVyIG5vIGZlbmNlIGF0IGFsbC4NCj4+IMKgwqAgKi8NCj4+IMKgICNkZWZpbmUg
ZG1hX2ZlbmNlX3Vud3JhcF9mb3JfZWFjaChmZW5jZSwgY3Vyc29yLCBoZWFkKcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgXA0KPj4gwqDCoMKgwqDCoCBmb3IgKGZlbmNlID0gZG1hX2ZlbmNlX3Vud3Jh
cF9maXJzdChoZWFkLCBjdXJzb3IpOyBmZW5jZTvCoMKgwqAgXA0KPj4gLcKgwqDCoMKgwqDCoMKg
wqAgZmVuY2UgPSBkbWFfZmVuY2VfdW53cmFwX25leHQoY3Vyc29yKSnCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIFwNCj4+IC3CoMKgwqDCoMKgwqDCoCBpZiAoIWRtYV9mZW5jZV9pc19zaWduYWxlZChm
ZW5jZSkpDQo+PiArwqDCoMKgwqDCoMKgwqDCoCBmZW5jZSA9IGRtYV9mZW5jZV91bndyYXBfbmV4
dChjdXJzb3IpKQ0KPj4gwqAgwqAgc3RydWN0IGRtYV9mZW5jZSAqX19kbWFfZmVuY2VfdW53cmFw
X21lcmdlKHVuc2lnbmVkIGludCBudW1fZmVuY2VzLA0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBkbWFfZmVuY2UgKipmZW5jZXMsDQo+
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=

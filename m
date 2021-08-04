Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5AC3DFB91
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Aug 2021 08:49:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 59E8B60558
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Aug 2021 06:49:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 429D5634D8; Wed,  4 Aug 2021 06:49:30 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2E40F612E7;
	Wed,  4 Aug 2021 06:49:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CF26260558
 for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Aug 2021 06:49:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C1D3A612E7; Wed,  4 Aug 2021 06:49:25 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2076.outbound.protection.outlook.com [40.107.223.76])
 by lists.linaro.org (Postfix) with ESMTPS id A718E60558
 for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Aug 2021 06:49:23 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MEYarYTigaYaLi8xSNpD2BBwiwGiOgsXf14IGQJL9O3CvdAozpPyOSCVjgnsouZM96ONove42l6KNpH8VxrkFOqwqX7aolLrrT/cfdxq9SJWjJhBV8kYwwY1GuuWiF19Ey/DRhXnO7Nn2X4rb+x5QRYFwFD8XyVpLm1Tdt/Pm19CuYRfNmH/7WpL9oqiMKiQxEYZGJExzrFxR00E/YXGLyg8OHWhFZU/7QZnpOXUAkXJ2oxDTvIJNfjGaTejF+bm/VvAs7f81bEzKS5ecKxMzNEh5JVkHr24xzQxqYxWLN7Hl2EUEchsVhizRAfra/P0rrHnSGM4LZhArsRM0YfoJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R21oSnGALzqbjJeYzxNUJDx/qMtkpewI2Ldb9Zf3myo=;
 b=G9hZoVoe9eHiPSU2jGCxSFohCpz8P5t45UhxgOTKkTTKxM1+ICzZ3y6IUfzh7nZUDgU0m4S1blYUqdwZFLzbMXkm+66CwBKP9Do0/MQ84DiDZX+Hjmiuu3thUA5LODQ21Nr2xaNispwuu9N3YkKtcqGqolRZA4vqWnFdrAA6UIWOOiLenUbuFTpy61Vi3HIamW8IdYnBdDB93m+06GEBeFjkl30pHZDETWcJSI1K9GfRh5pnoASwPxk7DscIYPpv7RgbQeTm14XXu7KLBEI89vwcrANxNt02IMhg0LTMxNf0n2ddXvvWzcBZn53bTpIrrL7EF5oVaBKJt7t3AJxG4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R21oSnGALzqbjJeYzxNUJDx/qMtkpewI2Ldb9Zf3myo=;
 b=C/ZT5enuuFdyLQunCZ88Lny5mR48e2ZmFLtlPmBjwQn6N5sASl5Jk2xjJSIB6yRjzl3BQ363TXuZPUvBe4zySnilG6im5ZBbDdVTE2dtofvM07+f0YrQ+srEDYg82yZNFa2gurzNHudUxb86qPRiR8NbgRSnB37xGIDuixMcQJI=
Authentication-Results: tsinghua.edu.cn; dkim=none (message not signed)
 header.d=none;tsinghua.edu.cn; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by BL0PR12MB2514.namprd12.prod.outlook.com (2603:10b6:207:43::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.15; Wed, 4 Aug
 2021 06:49:18 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756%5]) with mapi id 15.20.4373.026; Wed, 4 Aug 2021
 06:49:18 +0000
To: Tuo Li <islituo@gmail.com>, alexander.deucher@amd.com,
 Xinhui.Pan@amd.com, airlied@linux.ie, daniel@ffwll.ch,
 sumit.semwal@linaro.org, airlied@redhat.com, Felix.Kuehling@amd.com,
 Oak.Zeng@amd.com, nirmoy.das@amd.com, tzimmermann@suse.de,
 Philip.Yang@amd.com
References: <20210804015132.29617-1-islituo@gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <f515880f-17f8-66b3-20d9-c1a46a252463@amd.com>
Date: Wed, 4 Aug 2021 08:49:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <20210804015132.29617-1-islituo@gmail.com>
Content-Language: en-US
X-ClientProxiedBy: AM0PR07CA0024.eurprd07.prod.outlook.com
 (2603:10a6:208:ac::37) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:fc63:9f41:3d77:1613]
 (2a02:908:1252:fb60:fc63:9f41:3d77:1613) by
 AM0PR07CA0024.eurprd07.prod.outlook.com (2603:10a6:208:ac::37) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4415.4 via Frontend Transport; Wed, 4 Aug 2021 06:49:13 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e2f79aee-7de1-4374-1ef2-08d95713fa73
X-MS-TrafficTypeDiagnostic: BL0PR12MB2514:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BL0PR12MB251449AEEF598E86CFF8F3F683F19@BL0PR12MB2514.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Z6PzogWllAT/MkfYMMYVScVnhKZm0JTIEJi9QVKTWur/CPm4k0ACEtA2fjBxfw9UTnpwz89L8FC+4VamU8UrFq4RJDbLxK0Ykz8ruZFcA+7eBO68YfMRRj24uk6Z7fFJnWawirX7V5u6GlX08iSxSwnRshlgoiDguxj4RNyCZuprbGsdj/Id65/oxVAIos5ns30QDlsQ89MdNNivNZONMJGLunuFtUt/7xT2SankKKUsS1KLkeO2lyi/cMvMKZuFDrRylZWRexEagyPHKGNhtctYjq4zKBcxKFZ3N8avPzD2wKQydgEOiPWQMJZsDzoLhmlk3PNHb52TBGPMYaUmAM5uX0om212z1u8N5w6mAhm+wlWNCgAih8J0bq0L0mdRNagK1xUOzLRyQazEq5km2u41U90IW6myz4Aw0SZiwJTMV2pRf9V9GBgEMeS6GBJDWLswMwXoKOjNQIKmvwmtKMg5gMK1acv+y4XIqUrUMR1watKURA2NCe+Pu4Yhd/HQqEsE79xOuqQ8PgWN1NR9GQNkVlMRA136hr+cL7pNp9GFmj0LyUvLTR1/7hTC1peLenm3bOlaNBUnRxR7wCBQkNxmWqXgawtnSSt9Czuw2LAwHvJ4Vpt9skRWwGN2L9y4uWmG27UOH1jantkN/LHUnn1+KS5U/9Nd4BxfEdxItWMPuzWoemhv7xCKioMgpsq10FpoQl4IrpHbxMRlibSKzZhT36zBJZ1FSxmKRsGoYP0JL2v9z2DZ/Kch4ExZLb+M
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(346002)(39860400002)(376002)(136003)(366004)(31696002)(86362001)(83380400001)(4326008)(8676002)(478600001)(38100700002)(8936002)(6636002)(5660300002)(6486002)(36756003)(921005)(7416002)(31686004)(66556008)(2906002)(66476007)(186003)(316002)(2616005)(66946007)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ejRXaHRwb3BoUUV4UjJsdUJGenBPYUNEY0hGem5iaXVYMUVEZThtdGhUU05L?=
 =?utf-8?B?TWlyQVE5U1BZcjMxYThEd0Y1ZWFxSmFWbFVKdkliTVZzK2o0eXNlc3dOWlpB?=
 =?utf-8?B?YUhZZFNEdU1xSnFRMzQzc2tva3JnYmlyd0EyWWoveWkyUFRLc2dwSXNGUEZr?=
 =?utf-8?B?RUVzR2NOTFZ2V1ZpbzFrOVc0cE9KWnBnNEhMd1Q0WVdkdld2UTVZcHpSV0h1?=
 =?utf-8?B?VXhpMDBOQnZZczZiTmhEWDFROTVNTnd4OUtzZm5WZGoyS3Z4bzk1R0ppR2Y1?=
 =?utf-8?B?Qlg2MmF4emxuRldQeHJlTXBralFxeEt2RFJvcnJvT3ZBY1IzMUFQMDNHSHNV?=
 =?utf-8?B?QW1sZDhuSkx2VCs4Q2RvKzFZZ1NzdDZPMWhPOGJUa3lPdXdNN3NoY2tkeFNP?=
 =?utf-8?B?VFgzS1QwZTkzaGtuajd5VnlId0dhN0dDanFLYnlvRk9rOURPeHI1a05UTWE5?=
 =?utf-8?B?ZzlJSzVzUzBZWW5PT1B1U05UVldVSHpRVjZoNWtxM0ljdEtFVDBnRVFWT1Bu?=
 =?utf-8?B?eUg0cEdVcjhvaW42T0dFYnZGUktXdHo5aG13Q2s3azc2U29KSHlpQzZhZ3RK?=
 =?utf-8?B?WitFS210dVhRUTFHNTlTSGNxUmFYdW4rWVlkbXdGT2pwTEg5OG1CRUdydERh?=
 =?utf-8?B?bGNjd1dmN2U4MitJR2NnT3RwTStKTUkwTWlzUlR6RVJKNk44eEhRL0Z4VjZX?=
 =?utf-8?B?WUxNd25jZWZiNkI3dkVKNUZrQ25SS2hXS0VjcmZUTGJYWXU3TmxvaWxkMGxm?=
 =?utf-8?B?dGtxcVBiWlIva2Y5Y0diRGZXQXQ4M25DaGVOandkaWdFTisycTNDSUtMSEZs?=
 =?utf-8?B?NXAzM0FjZFdkSmc3d2FteXd0a2o5SnBBTXhMeVRwTDdMK2NEbHRidVlPQ0xF?=
 =?utf-8?B?WDIzRm9ob1ZYZnBDbURla3JqSlc0bWhLZ1lLNzIvdHNCdUM0UkZkR29sK0F6?=
 =?utf-8?B?ZTJ3eUFlOTV1blNoYkpCek5FYzczcFE2UW5MdXo1d2g4UkVZQUdqem1ORFM5?=
 =?utf-8?B?Z0JPNUNHdHJ5dmNvckZLWFN5dUt0L1FTS281Ky9LWHdkQW14Q1MxQzExblk5?=
 =?utf-8?B?UjVIdEFkYTY2a2pzNnJkVllSVHBXd3ExeTF5WDZFWHE1Y2w2a1JNNTNOelkx?=
 =?utf-8?B?UVRCeWdjbi9nU2dJTzBtbmcxVk8rc1g3MXY3bDlPdmpScVR3Vm5CZFFmL0dL?=
 =?utf-8?B?aVRtZ2NuTTkzOS9BbEEyQlo5OXl3MDArdVJpc2UwcS9HL3dJcEFoWU5WL2M5?=
 =?utf-8?B?dGZHYi9BY1JNbkcva09vN1ZGZTVYakJEYi8rbUVIZjhSVFRNQXA3clUwQ3hm?=
 =?utf-8?B?dUM3RVdzYnFwbkdrRjk4WFg3dlNtLy9PTVVkc2RuSm5vY3lMVHdFc2s0UW0r?=
 =?utf-8?B?RGFNWlhUSFJ2WXNDS0liZnhrMXpnUVB4NVNRR1l5Q1lrOWJJQWtWd1BVZ3k3?=
 =?utf-8?B?YkZRbWFkRmZWVnovSDczK2FML2NzUFdMTzlQb2pKa3o5Ymk0elh1RVdpYlA3?=
 =?utf-8?B?TTJHZVQ1a0QvTEkrcVBpckpIbEZqVGVNaTJpbzRtL2Z5Wmtkay9QeFNEOUdX?=
 =?utf-8?B?RnhJcmo2ejQ0OHFnZlBzUDFqSnhQTnJiQ0FzdVBkdUR2UTRzRnF0SDVPejhF?=
 =?utf-8?B?ZFFIWmVOdGNRa01xWnpHVTIya0lMMG84NnVReGNZbWh2OGNiV1dYZGxOVjdn?=
 =?utf-8?B?dURIOWdIaXcvZG1oSkZRWVc5ZVVISU9aNDk0Z3RvRG16UEJ3WmpFdG9SaEo2?=
 =?utf-8?B?TU9mMTNMdFgwQS8yS1diYTlPLzI0MklHR2JWOU9DYjZyM1EzZE4zNU1YSmtW?=
 =?utf-8?B?YjRWMEMvVFVNYXJzcE0vMGlTZWpYUFpqMjJFZEZUTmNXSnZLbEVzeTRUN044?=
 =?utf-8?Q?od+dMww5VN9vC?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2f79aee-7de1-4374-1ef2-08d95713fa73
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2021 06:49:17.7693 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +On/45LMIKsd7zxRBKEq8IoKbUkzHvteg3bW4SKXFnk5fTwe2KfdgKYqfOENFbfL
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2514
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] drm/amdgpu: drop redundant null-pointer
 checks in amdgpu_ttm_tt_populate() and amdgpu_ttm_tt_unpopulate()
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
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, baijiaju1990@gmail.com,
 amd-gfx@lists.freedesktop.org, TOTE Robot <oslab@tsinghua.edu.cn>,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMDQuMDguMjEgdW0gMDM6NTEgc2NocmllYiBUdW8gTGk6Cj4gVGhlIHZhcmlhbGJlIGd0dCBp
biB0aGUgZnVuY3Rpb24gYW1kZ3B1X3R0bV90dF9wb3B1bGF0ZSgpIGFuZAo+IGFtZGdwdV90dG1f
dHRfdW5wb3B1bGF0ZSgpIGlzIGd1YXJhbnRlZWQgdG8gYmUgbm90IE5VTEwgaW4gdGhlIGNvbnRl
eHQuCj4gVGh1cyB0aGUgbnVsbC1wb2ludGVyIGNoZWNrcyBhcmUgcmVkdW5kYW50IGFuZCBjYW4g
YmUgZHJvcHBlZC4KPgo+IFJlcG9ydGVkLWJ5OiBUT1RFIFJvYm90IDxvc2xhYkB0c2luZ2h1YS5l
ZHUuY24+Cj4gU2lnbmVkLW9mZi1ieTogVHVvIExpIDxpc2xpdHVvQGdtYWlsLmNvbT4KClJldmll
d2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cgo+IC0t
LQo+ICAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jIHwgNCArKy0tCj4g
ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Cj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYyBiL2RyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYwo+IGluZGV4IDNhNTVmMDhlMDBlMS4u
NzE5NTM5YmQ2YzQ0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV90dG0uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0u
Ywo+IEBAIC0xMTIxLDcgKzExMjEsNyBAQCBzdGF0aWMgaW50IGFtZGdwdV90dG1fdHRfcG9wdWxh
dGUoc3RydWN0IHR0bV9kZXZpY2UgKmJkZXYsCj4gICAJc3RydWN0IGFtZGdwdV90dG1fdHQgKmd0
dCA9ICh2b2lkICopdHRtOwo+ICAgCj4gICAJLyogdXNlciBwYWdlcyBhcmUgYm91bmQgYnkgYW1k
Z3B1X3R0bV90dF9waW5fdXNlcnB0cigpICovCj4gLQlpZiAoZ3R0ICYmIGd0dC0+dXNlcnB0cikg
ewo+ICsJaWYgKGd0dC0+dXNlcnB0cikgewo+ICAgCQl0dG0tPnNnID0ga3phbGxvYyhzaXplb2Yo
c3RydWN0IHNnX3RhYmxlKSwgR0ZQX0tFUk5FTCk7Cj4gICAJCWlmICghdHRtLT5zZykKPiAgIAkJ
CXJldHVybiAtRU5PTUVNOwo+IEBAIC0xMTQ2LDcgKzExNDYsNyBAQCBzdGF0aWMgdm9pZCBhbWRn
cHVfdHRtX3R0X3VucG9wdWxhdGUoc3RydWN0IHR0bV9kZXZpY2UgKmJkZXYsCj4gICAJc3RydWN0
IGFtZGdwdV90dG1fdHQgKmd0dCA9ICh2b2lkICopdHRtOwo+ICAgCXN0cnVjdCBhbWRncHVfZGV2
aWNlICphZGV2Owo+ICAgCj4gLQlpZiAoZ3R0ICYmIGd0dC0+dXNlcnB0cikgewo+ICsJaWYgKGd0
dC0+dXNlcnB0cikgewo+ICAgCQlhbWRncHVfdHRtX3R0X3NldF91c2VyX3BhZ2VzKHR0bSwgTlVM
TCk7Cj4gICAJCWtmcmVlKHR0bS0+c2cpOwo+ICAgCQl0dG0tPnNnID0gTlVMTDsKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxp
bmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

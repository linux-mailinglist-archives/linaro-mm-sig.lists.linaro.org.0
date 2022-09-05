Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 04AFA604326
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 13:28:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0AAC23ED77
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 11:28:05 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2088.outbound.protection.outlook.com [40.107.93.88])
	by lists.linaro.org (Postfix) with ESMTPS id 0E9B83F93F
	for <linaro-mm-sig@lists.linaro.org>; Mon,  5 Sep 2022 13:50:18 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G3x/vg9Vd2IA9gV/HbEho1RWJkMlNpsNX27m1NkmjD3LF/IJ09qmeZDJJesQLFFKvRyayTrKFIucto5d5dgxNNmeSD76AAFUBwEGtnAy7CUuU786u7X9bPAGCUjStgC8WoXkJ4rBlEpNX1YJJwoAsI9S7X5vYUGQUnOGmScAC4ikH6VXCkxdjYpVXTZiRH63LHrAyBgN5a09hOFHs10djuIOewmQyRtOm0Z+ESjq53wUpUPf/sdcUmYSQhgNKzDTMwjXEpmFFEO4M0610D6KiZmKxmXU83NdkHJAhRHNpB+nAGWJeedXFpliJeNsMNiTa0diOW6er+/p7cDJBde2ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iDVr77z/lBvaY5ggSYdWov7wrnngYiW92g2jspttE0Q=;
 b=JxAGN5dsbyD/aOyhAU4F7ZAfb31RciXfPLgUS6VQCAFo0O2i5jD/SgUzA7pDEZ8t5hFcXapBeOtUXZa5aNOX3tCPQDTPi74NgOANMf1ptYIlnrsHXzAraUt+sODsM9YrPVezHM5SxbuLm8Fbg8fljiXpRLBdIJRFl9oyInEEuV64noOOjuuEIhGZPxQblmGZ8lLoWFzkOGmP290kaBGISzrH1VM7Jlq2oNk16bnqo85GtwnVSc9qRO6IoUR9xPNTNGQGWw5f4t76wUxVoxgSaz8qC3jQh2GUgASlMjQ/QgmmJQr6j3E3AMn802qV12kz5Zddml2GDA17aLu44dCLfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iDVr77z/lBvaY5ggSYdWov7wrnngYiW92g2jspttE0Q=;
 b=rJ0hZoLumd+4tNJArqS/WBQjvnV+6x0MdV8SewzKHnRsZSqhGwCrNoI8ziKHFO0DQIMM56fc8t/4zQeKiS4o+9EeHv1jqJNXLOhvW3tzvZhUVufCppLMzSgiJ51NW10Dlvr6qFnzHKPCsJqIrxXVlpIO4/gIz6BSEov++l0w7eo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from PH7PR12MB6000.namprd12.prod.outlook.com (2603:10b6:510:1dc::15)
 by BL3PR12MB6474.namprd12.prod.outlook.com (2603:10b6:208:3ba::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.21; Mon, 5 Sep
 2022 13:50:15 +0000
Received: from PH7PR12MB6000.namprd12.prod.outlook.com
 ([fe80::2e8f:6161:3959:aa0c]) by PH7PR12MB6000.namprd12.prod.outlook.com
 ([fe80::2e8f:6161:3959:aa0c%5]) with mapi id 15.20.5588.015; Mon, 5 Sep 2022
 13:50:15 +0000
Message-ID: <0ce528c5-dbeb-4bad-9bfb-68decb46a1a8@amd.com>
Date: Mon, 5 Sep 2022 19:20:03 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Arvind Yadav <Arvind.Yadav@amd.com>, andrey.grodzovsky@amd.com,
 shashank.sharma@amd.com, amaranath.somalapuram@amd.com,
 Arunpravin.PaneerSelvam@amd.com, sumit.semwal@linaro.org,
 gustavo@padovan.org, airlied@linux.ie, daniel@ffwll.ch,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20220905105653.13670-1-Arvind.Yadav@amd.com>
 <20220905105653.13670-4-Arvind.Yadav@amd.com>
 <47d30adc-00ac-75ad-106b-18010d8083c5@amd.com>
From: "Yadav, Arvind" <arvyadav@amd.com>
In-Reply-To: <47d30adc-00ac-75ad-106b-18010d8083c5@amd.com>
X-ClientProxiedBy: PN2PR01CA0237.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:eb::19) To PH7PR12MB6000.namprd12.prod.outlook.com
 (2603:10b6:510:1dc::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a50b0c58-149c-4541-a4d5-08da8f458fba
X-MS-TrafficTypeDiagnostic: BL3PR12MB6474:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	wxWVehsDFkDTpAPsSPkDdHkhJ48wDlUL2zycCo1nm0KNJ5MUFW34I097Jg1trccu/XaPW4imrLZj1QaPNBGHciwhybzxYbMJVFvT7DhE1sr1+5PF1DdHr2/bkSeeWDpE6HhaERYa20c3iln/UczmdCp9ieDcleb2Kd+5b65NwFeY9KDaodSKuP4j/N8Nzfw8F5l+MObkCJTeOU4izPKdhYNV8RwvMakTc7PVWhEGzc05mDdIInE2Eo+oAuaXrBKVPsgHSagVv+7pzscvxMrKUTNmHXQ1MG4pROyz04yDv5X6edoXrj2pQIG26oqqWpHKNOK44nboHZEj1GUdEqrDSfE1IeT8PiuW2PByzKRZzy54Kx617y/sA1NYe+qRSYK+ribfbD4+jbjGH6wAcMyMzvEA9SLj4UFNR74uDE1p6AxkhgxA2I4C4wnfzx3iBTE0kWwgL62GT3lA659s8i+XmsPisP6QNnhJTrPFWO/8uPrZzwZVt1AlTHj/Fp/ii+zbfhnFMXCw1jGcip0bdm4Vc488Pv1SmEESg3+o0E7k8QrtGUtge7niWsPmFa1txmClnDC7NmZVbKYSKJf3s8vmjzflb4SiPuIMR34X59D7uvrMLXZ9GrLKJKd2eeGrEgT3HeZCHSty0IVgo8Rl2Q3rHwLN+XOG6oUKtcCtmCfNGFbkx6UZHqmCWJOC3tWfF5XH32CYyiILq325HYyNRuEdo81IOR4WbA7cEPpLJdfX5eIB47arDdHcYXCkQ0F1FEPncPIs0rtJHmXIiGs9Kxxpu+SPyIWv1r33kqynGJKJ4hynVPc5RdX3w1eGNv3hvFYT
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB6000.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(136003)(346002)(376002)(39860400002)(366004)(316002)(31686004)(36756003)(478600001)(110136005)(66946007)(66476007)(66556008)(38100700002)(6486002)(8676002)(921005)(41300700001)(8936002)(2616005)(5660300002)(31696002)(53546011)(6506007)(26005)(83380400001)(6512007)(2906002)(66574015)(6666004)(186003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Tmp3RUIrK1Y3a1dodU4rVzFWMGJrTnEzamxwK2JlMDgxYnNXMEE5ZnNTdytq?=
 =?utf-8?B?czNMbnUvVlBPeHdLdjNIdER6aytjMW9LK3laZmR3bnVFVkx3cm5jU2dsaURp?=
 =?utf-8?B?Qzg3alBFNVlnYnBtM0c4b2R4ak50U3E0bDhFQ0Fwd3FqRW9iREsyZytZdnhJ?=
 =?utf-8?B?NzJhdzBkbEhYZFhvSDN0THNEMXFQTHFiOFBjS3NzNHJJbFlCanVRbVB2RzZk?=
 =?utf-8?B?b0JIcFRRcWJXSDQ2Vyt1VFNmTUhEL3MyQ2pibkRKMkttMlBPZHlmNm90QUNo?=
 =?utf-8?B?RWlUbEUzYXVlaGxiNjVDMndxNUlqcms3M1RLOUlRVW9BMVUrQmhpb2VMTG1I?=
 =?utf-8?B?b1E1WSt1b0twTEV4MGFCa3B4Y05yc25lOXE3amNHYUdJaDdPeWFZOVB0cmNz?=
 =?utf-8?B?c3ZYRzkxRnFwdTVmaW42MzJlRlZ4L29RYm5zWjc2Zlh5Vi9mT0c1dTlibVlR?=
 =?utf-8?B?L2V1QndiMzFkM2hkN0toT2toK1NxMkFqRWxuRGZQSXdNcGtuemxRVSt1VDl1?=
 =?utf-8?B?bDVjbFkzRk1mRUJoaUdicDU5OWluVllVWjN6dnFVVFUxUERJSk1zZ1ZyN3Fp?=
 =?utf-8?B?TkJOUkVLc3hxVzhTUHFYVC8rMmhibjhaWFVSelFGaG1XaFpzTXdDbk9MZmw2?=
 =?utf-8?B?VkYyK1A0SklHOVdLN0FjRm10alJzRytIbW84WHZVakdIMDNUT3IxSk5ndkQ5?=
 =?utf-8?B?N1J2K0lkeDRLRElDQUZPejV0WmNjZmk1SENKSUNNVXVqQ2dhSGZ5ZXBmamRQ?=
 =?utf-8?B?WE1UUFE5MU9seXJlUU9uSFliQUdiQkhmU2lkZHAvRVlCWEl3bU02ZGhFaUQz?=
 =?utf-8?B?cHZWZnRucU5oZEhVYk1BS1o0NnRUclcwcVBkc2UxZ05wMld5MXdLSi9zTENG?=
 =?utf-8?B?aHA2cnNLd0xzRmtkMjdaTUpncG93TElST3Y0Y1R4UnhqN0lhbkphb283Tllt?=
 =?utf-8?B?V28rU0V5ZUNxWkdPb1RKc0xXcHFhR3NoeEFtS2hJZGxFTHYrcDFoRkZTdlhS?=
 =?utf-8?B?anNpSTV6N0M4dC85WTR5NzZSSFRmK3p2WUk5VExBL0x1czRnbnVHZTU0R3NH?=
 =?utf-8?B?UERQa3VBNFpKWkpTa2Q4cjlSb2x1VEhTODA0Wk1kc2hTUEJVeENqZGlXZ1ZB?=
 =?utf-8?B?bFgvUTA2Nkp1QjYrYVV1ei81b1RTdFJwczVEUG1oR0RQYWhTMTFGYmMwRFM3?=
 =?utf-8?B?VlRYaVhrdGlXVFhiQVJya0VlYStyeE1zUU5tbk5IUjJYSkhkUDkyT3B5VHE1?=
 =?utf-8?B?MHhSVm1HcDluelRtWDB3TnVpUHhiazAyUFZuTmRLemtZQWVmMVl0cDNvSDBR?=
 =?utf-8?B?a1R1OGFxZ1JOWUQyemVlVkFUOEhmZGdpUmlmTTYzQ0pINmRnNVZFL3RHVmdr?=
 =?utf-8?B?M2kwUWhEbkJSTGZqOEphdmJYcWo5UUhnZDNCMTBjZ21DeTZ1UW9NRnFxS21s?=
 =?utf-8?B?ZGR2SGRmaDgzWGlCOUFGM0Ric3JmVzh1aEtGaG5NS01ZS1llemx2eW9nU1dz?=
 =?utf-8?B?UVA2RWtFeWdvRmZ5ektNaE11UUw3NXQ4eVd1QlJKWnJIODYyR1F5UlAyTThJ?=
 =?utf-8?B?TGw1NDB1U0t1SVo1K25VY3lDbTdFMVI3Q2lYWEd1dytUOHpBcUNoUUQ1dHlZ?=
 =?utf-8?B?S2RNcTB1L01mc0Zyc2lNKzc4dWsxT2V0d09wK0J1MjVWYkJZM0xuYlRyMC9K?=
 =?utf-8?B?WFlZYjlBMEZwMFR1SGhSTUlQNTR3TU5DYlJuMWdzeUZBd0NKcWJCVFVxOUw2?=
 =?utf-8?B?b2lEYjVnWnFXQ215Sk80Sm1xOUxQQVFFUzZZeWtpVFRFZWNDS1JoTnRQdjdV?=
 =?utf-8?B?TjZCTklYVUozcEtRSTdTdWJFdnBwMTArVlBPSytBL0VPUmRiN2didlZDaDUy?=
 =?utf-8?B?S2RWOUhUanpWTEFVdmZ6Q09WMXoxQUNiTVhCOTd4bVRQOVZYbWppV2ZzdjNy?=
 =?utf-8?B?Q0FTUGFlcW5VN1ZiOFdWTWFXQlY2QkFEM1NySUhmVXFFQUJJditQUEZuY3dB?=
 =?utf-8?B?N3E5elE3eDFLTUlmeTgxcnYybVdVMkxBdmR1QkpMRUxhU1A3UU01T3Y5Rzc1?=
 =?utf-8?B?QmhUdzJqanlNcjY5QW1FTWJYQmRGdm1iVFJMa1dicHBzakdBS0tVVEd2NlBi?=
 =?utf-8?Q?lOETh3Xb5PNuQmPYHAZ6BTibr?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a50b0c58-149c-4541-a4d5-08da8f458fba
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB6000.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2022 13:50:15.6360
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dwMHNPo3Iy9CKGTi21aP9ZYdFdfwSdh83i/pSWl4ORifGpXLjR35ymKTIKhKifkDHYepU+8w3sFVdtv37hVLzg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR12MB6474
X-MailFrom: Arvind.Yadav@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: N67GMSIMCXPMYRGK4UXCIEC5VKN6UHRQ
X-Message-ID-Hash: N67GMSIMCXPMYRGK4UXCIEC5VKN6UHRQ
X-Mailman-Approved-At: Wed, 19 Oct 2022 11:25:29 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/4] dma-buf: Add callback and enable signaling on debug
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/N67GMSIMCXPMYRGK4UXCIEC5VKN6UHRQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpPbiA5LzUvMjAyMiA0OjU2IFBNLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPg0KPg0KPiBB
bSAwNS4wOS4yMiB1bSAxMjo1NiBzY2hyaWViIEFydmluZCBZYWRhdjoNCj4+IEhlcmUncyBvbiBk
ZWJ1ZyBhZGRpbmcgYW4gZW5hYmxlX3NpZ25hbGluZyBjYWxsYmFjayBmb3IgdGhlIHN0dWINCj4+
IGZlbmNlcyBhbmQgZW5hYmxpbmcgc29mdHdhcmUgc2lnbmFsaW5nIGZvciB0aGUgc3R1YiBmZW5j
ZSB3aGljaA0KPj4gaXMgYWx3YXlzIHNpZ25hbGVkLiBUaGlzIGZlbmNlIHNob3VsZCBlbmFibGUg
c29mdHdhcmUgc2lnbmFsaW5nDQo+PiBvdGhlcndpc2UgdGhlIEFNRCBHUFUgc2NoZWR1bGVyIHdp
bGwgY2F1c2UgYSBHUFUgcmVzZXQgZHVlIHRvIGENCj4+IEdQVSBzY2hlZHVsZXIgY2xlYW51cCBh
Y3Rpdml0eSB0aW1lb3V0Lg0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IEFydmluZCBZYWRhdiA8QXJ2
aW5kLllhZGF2QGFtZC5jb20+DQo+PiAtLS0NCj4+IMKgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVu
Y2UuYyB8IDE3ICsrKysrKysrKysrKysrKysrDQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMTcgaW5z
ZXJ0aW9ucygrKQ0KPj4NCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNl
LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4+IGluZGV4IDA2NjQwMGVkODg0MS4u
MGE2N2FmOTQ1ZWY4IDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5j
DQo+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4+IEBAIC0yNyw2ICsyNywx
MCBAQCBFWFBPUlRfVFJBQ0VQT0lOVF9TWU1CT0woZG1hX2ZlbmNlX3NpZ25hbGVkKTsNCj4+IMKg
IHN0YXRpYyBERUZJTkVfU1BJTkxPQ0soZG1hX2ZlbmNlX3N0dWJfbG9jayk7DQo+PiDCoCBzdGF0
aWMgc3RydWN0IGRtYV9mZW5jZSBkbWFfZmVuY2Vfc3R1YjsNCj4+IMKgICsjaWZkZWYgQ09ORklH
X0RFQlVHX0ZTDQo+PiArc3RhdGljIGJvb2wgX19kbWFfZmVuY2VfZW5hYmxlX3NpZ25hbGluZyhz
dHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSk7DQo+PiArI2VuZGlmDQo+PiArDQo+PiDCoCAvKg0KPj4g
wqDCoCAqIGZlbmNlIGNvbnRleHQgY291bnRlcjogZWFjaCBleGVjdXRpb24gY29udGV4dCBzaG91
bGQgaGF2ZSBpdHMgb3duDQo+PiDCoMKgICogZmVuY2UgY29udGV4dCwgdGhpcyBhbGxvd3MgY2hl
Y2tpbmcgaWYgZmVuY2VzIGJlbG9uZyB0byB0aGUgc2FtZQ0KPj4gQEAgLTExNiw5ICsxMjAsMTkg
QEAgc3RhdGljIGNvbnN0IGNoYXIgDQo+PiAqZG1hX2ZlbmNlX3N0dWJfZ2V0X25hbWUoc3RydWN0
IGRtYV9mZW5jZSAqZmVuY2UpDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuICJzdHViIjsN
Cj4+IMKgIH0NCj4+IMKgICsjaWZkZWYgQ09ORklHX0RFQlVHX0ZTDQo+PiArc3RhdGljIGJvb2wg
ZG1hX2ZlbmNlX3N0dWJfZW5hYmxlX3NpZ25hbGluZyhzdHJ1Y3QgZG1hX2ZlbmNlICpmKQ0KPj4g
K3sNCj4+ICvCoMKgwqAgcmV0dXJuIHRydWU7DQo+PiArfQ0KPj4gKyNlbmRpZg0KPg0KPiBBZ2Fp
biwgYWRkaW5nIHRoZSBjYWxsYmFjayBpcyB1bm5lY2Vzc2FyeS4NCg0Kc3VyZSwgSSB3aWxsIHJl
bW92ZSBjYWxsYmFjayBmcm9tIGhlcmUgYW5kIG90aGVyIHBhdGNoIGFsc28uDQoNCn5hcnZpbmQN
Cg0KPg0KPj4gKw0KPj4gwqAgc3RhdGljIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzIGRtYV9m
ZW5jZV9zdHViX29wcyA9IHsNCj4+IMKgwqDCoMKgwqAgLmdldF9kcml2ZXJfbmFtZSA9IGRtYV9m
ZW5jZV9zdHViX2dldF9uYW1lLA0KPj4gwqDCoMKgwqDCoCAuZ2V0X3RpbWVsaW5lX25hbWUgPSBk
bWFfZmVuY2Vfc3R1Yl9nZXRfbmFtZSwNCj4+ICsjaWZkZWYgQ09ORklHX0RFQlVHX0ZTDQo+PiAr
wqDCoMKgIC5lbmFibGVfc2lnbmFsaW5nID3CoCBkbWFfZmVuY2Vfc3R1Yl9lbmFibGVfc2lnbmFs
aW5nLA0KPj4gKyNlbmRpZg0KPj4gwqAgfTsNCj4+IMKgIMKgIC8qKg0KPj4gQEAgLTEzNiw2ICsx
NTAsOSBAQCBzdHJ1Y3QgZG1hX2ZlbmNlICpkbWFfZmVuY2VfZ2V0X3N0dWIodm9pZCkNCj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgJmRtYV9mZW5jZV9zdHViX29w
cywNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgJmRtYV9mZW5j
ZV9zdHViX2xvY2ssDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IDAsIDApOw0KPj4gKyNpZmRlZiBDT05GSUdfREVCVUdfRlMNCj4+ICvCoMKgwqDCoMKgwqDCoCBf
X2RtYV9mZW5jZV9lbmFibGVfc2lnbmFsaW5nKCZkbWFfZmVuY2Vfc3R1Yik7DQo+PiArI2VuZGlm
DQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgZG1hX2ZlbmNlX3NpZ25hbF9sb2NrZWQoJmRtYV9mZW5j
ZV9zdHViKTsNCj4+IMKgwqDCoMKgwqAgfQ0KPj4gwqDCoMKgwqDCoCBzcGluX3VubG9jaygmZG1h
X2ZlbmNlX3N0dWJfbG9jayk7DQo+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

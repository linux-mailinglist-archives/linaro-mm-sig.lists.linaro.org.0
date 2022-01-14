Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DD66D48E4CA
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Jan 2022 08:16:48 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A62943EDB0
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Jan 2022 07:16:47 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2059.outbound.protection.outlook.com [40.107.244.59])
	by lists.linaro.org (Postfix) with ESMTPS id 9C50B3ED97
	for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Jan 2022 07:16:43 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tp4Dc/mzMZbYOLnvrNS6lcYeu/ojPqn/jji5HNQsYkHmTJhpQkYZzx02qOyKqZ6t4kjIPwSee1QTZ3CEM6fnFwJayPRX9L6VtZIqYTZ4peKAD2Duck7sMB2DOElTqOvTWnlNTyNwoIlw79urXcZ666QycwxlrJ5rgNbvAAxeCf7LhboblIAdhlzq2X6r6U0Kn2BdRwsGCKF+rK5gxT1g8edgY9ksrcWpuLQKdYUiyP8eT7zSRpgE9wErJQRMC4vjbnnqisScxEUntbMz3nTf/hXpzeubMcJlbsBGDJnR91GHL6Nl5ctdnBnMjm1qM+7ILy3yZhFX6yLaZsqeFnX1Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m4YGYzpqhydG50UG1r0lJhuJ/hvrWmb6ePIQFPRI8Do=;
 b=mkgibP7U+wHpOeSoknKhMMPgNVEYjUWnJxV5ish6/JTnHQKbCCQqzpB7okRvvz7UFXxMhz3MXvcf5drKarB+HhlQhmzfJUg6de9sxzH681SuZrZBZWWSOvXWzGW/FQQNdhrLOgecl2GYX0xnZLM15MB8EOLF5MMw+kpFBGL9M+kEHWreV5lIGV9j/fiqxPcfaqGTAQpiZPKaV93vKEB7DbE8cmzk+CS218Eozijen83VRsevKna2D1BrxadV2hZYs8nzzUVUMdWyhIjwGttcRPo6E5Qam4HMGYyHZSMSSVLTHSd958skgFS+ztoUCKmpdA7FYuhPWhmlRqfyhOmsVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m4YGYzpqhydG50UG1r0lJhuJ/hvrWmb6ePIQFPRI8Do=;
 b=oCm8e8wIsNhQeClCnouj2QrZOAb1FZ6lbOL+UGZtn9LyqZKmB/5LGffnwKrelTmRlI56DepLHz+Zf6npA3tmZ6U7eOopLAO0v8TulaGLJBPsn/DZVek7uu2ZOOgiJuWoc8+l8YomGq0BTHcZ3HhD2oz+ladTFqHa4dPpZBw7vkc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from MWHPR1201MB0192.namprd12.prod.outlook.com
 (2603:10b6:301:5a::14) by BN6PR1201MB0210.namprd12.prod.outlook.com
 (2603:10b6:405:59::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.9; Fri, 14 Jan
 2022 07:16:41 +0000
Received: from MWHPR1201MB0192.namprd12.prod.outlook.com
 ([fe80::b4d6:f148:3798:6246]) by MWHPR1201MB0192.namprd12.prod.outlook.com
 ([fe80::b4d6:f148:3798:6246%7]) with mapi id 15.20.4888.010; Fri, 14 Jan 2022
 07:16:40 +0000
To: John Stultz <john.stultz@linaro.org>
References: <CAO_48GF=ttKqSOm9GRoA3Mq+-RQOtRjWp449XPcz-wH=kjaTjw@mail.gmail.com>
 <20220113123406.11520-1-guangming.cao@mediatek.com>
 <4f88205c1b344aea8608960e2f85b8f4@intel.com>
 <e657f5257cbf4955817b0bbf037de9f9@intel.com>
 <24157767-dc29-bbdd-5428-d89ecc6b9606@amd.com>
 <CALAqxLXRtYDNQ8y1efVGa4SwUH_oAaHviZFjsOVSNFmUHnCCeQ@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <6b8182a1-7cdc-7369-5c34-e6d0c24efcca@amd.com>
Date: Fri, 14 Jan 2022 08:16:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <CALAqxLXRtYDNQ8y1efVGa4SwUH_oAaHviZFjsOVSNFmUHnCCeQ@mail.gmail.com>
Content-Language: en-US
X-ClientProxiedBy: AM6P192CA0026.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:209:83::39) To MWHPR1201MB0192.namprd12.prod.outlook.com
 (2603:10b6:301:5a::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 523cd04d-5346-49f8-7d54-08d9d72dcf9a
X-MS-TrafficTypeDiagnostic: BN6PR1201MB0210:EE_
X-Microsoft-Antispam-PRVS: 
	<BN6PR1201MB0210240F26477824A724CD3983549@BN6PR1201MB0210.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	O8bpkGMVZfLgbmZAVdz2ZF7t8c4nmVEBlmPdwzoiIclJaC9gfgKwQZuVQvoxupboHBUCcBrKcZhe1ZThWBebHdLfvPvoVlehXOyxKK8ZgZNed7rkj0on1rPL4o3t1Lgxh2+/LIdDnaJ49+mRIzyXt1FfR1DqMG97AK/aofvfcG+qyWh4zKZxbsCjAPKnVGPRZp4QKw5LKy8fwFjzx1R2pjOfmwHvGyB3+9kxlUOqYeVznGxBK1bKF9NHy+KlKr3ei6ZHOgqTt0B9uuCEh28wFNfEmFtXeNH+BcPyXAt6C1OMDXIjybZK3G3wrhWZ5uqnEAtiPZ1Z+H6KypqH9RSjmRCux1nk4ENmGzbqdoOOBtBNlb1FBqiT5JcKr8bG/y2/8KxUpko76wIwPK6MCcmWKEFeXdmbr1E/io6iRU/hF9Vv5lHiY171znb+NOd2LqKS5ZunmIMJtByGoIyZgQmfjv9OAlzCUhJFdApl8PtjQDzlSFL4OBb+p4zTFPdLNSsDT9PjLn3JLEKo23QtgmHP4LqgLThJkGx/HhsfJic5UIJ5XyPVWPJrJYPEkp8+1QlOpccEFAgjUxiNBeMxkvnu9En8iFHeSzMe9XrTi9pWhVXS8r6+xijfLX0uk+usJS5DylQ/8Q/fSVwO0Ghz7BS0J40de/lwmeOf+Xwr8Mup2fBSSV12wjE6sK/j81GtAlEVa1tvdTQITu/wjcJrNl5VzOe97zhRYIEsJD9AUQqBMzEP8Ghy63KL2BqhrEUuudiV
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR1201MB0192.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(66556008)(26005)(66476007)(8676002)(5660300002)(54906003)(8936002)(2906002)(66946007)(6916009)(186003)(83380400001)(4326008)(36756003)(2616005)(6512007)(31696002)(7416002)(508600001)(316002)(6486002)(31686004)(86362001)(38100700002)(53546011)(6666004)(6506007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cDNnVUwva1Y2MmdzeUdNRXowa3dTYWVoR0kyM0ZKQy80eEJIbXFhR3hUeTQ3?=
 =?utf-8?B?ckRzKzdFMUZCZ3BZNEJWQ0V2WUYyblFabTc3a3JZNTJVSXBPRkgzQU5mNHJX?=
 =?utf-8?B?NEl5azg0MmpuampjVWZTZmVGd01iNUVxeUxkdm5DRFdUa1RBVjBZMmRLMS94?=
 =?utf-8?B?ZlJMY0hQTTk3YzNsbityU3pXajZMV2RDY2hKSFY0aVB6UEhGQ1FIZ1lFeW42?=
 =?utf-8?B?aklZcTVzemNGbEpqamhtbUhqT05hMm5NSTBXdGFzb2tsMzNUTVNRMEhTMmVq?=
 =?utf-8?B?OUU2QWp2RlVycGFzOWUyNEhPZ2RJZGJhZE9FYVF5QkcwTWpxZzAyeVQ1Uk85?=
 =?utf-8?B?MDNNNFRSa3lvU3QvbjVnWnpJNHBVZUFBazFQMHpwN2kwTzQvOTdEQjZrZWtU?=
 =?utf-8?B?ZUcrdWplZ3lTalNVMkVrSHFpN2hqdEpnSDVYU3JhVWYyRXJDQzdYempTQjBu?=
 =?utf-8?B?U0V2TFZyMjlQVEpEM3A1WUx5VkpnOE50ekREcHRlenVuS0ExWE00cHlTK2p1?=
 =?utf-8?B?QS8yWnltSWRibnBrM1JaMG1PSzNtaUFUYVQrcVorMnM4ZmIvNC9GSTl3VlJh?=
 =?utf-8?B?eHR0MzYzcGxPeUowOTlubEdTdVZnM3ZOUVJya3ZkeGd3ZlNOUmNIaWJyVUhs?=
 =?utf-8?B?Ky9tU2NZZEd2ZlFqOGJCSXZhZkt1aExYN0RLdnhDMUZ0bHhQRDNSRnREczVs?=
 =?utf-8?B?YU0xbFFsQUp1c2tOck9vV3M2WWVCbE85YkhGRUhSTjdRUnJXanR2RW1DazRS?=
 =?utf-8?B?QkhpdlFlclNZSzBqMndkNm5NWHdjMUJLN3NOZTY0dTBSY0RsN2RhM2lzM1lS?=
 =?utf-8?B?bTQ1VU9lYWxKODdqS01mdDZzNWwrUlRJcERaWjlDcmEwckcvZERla0lMRnhP?=
 =?utf-8?B?K0J0VjNMeHVEUjA1RFFqSmgxQ1JzSmp1MDBVczNMb25CbzE3WVdjT1EwS0V0?=
 =?utf-8?B?QVlEQURXRE5aUndzQ3VjV0dhMm40NGpKOFFJeFZwNTNFTU45YzU0WEcyZmRX?=
 =?utf-8?B?MEZ0SjlpaW11dEVPMjZGK3pYT0R0cmh2RU5hZTBJemwwckQwUXd2ZGU2NE1p?=
 =?utf-8?B?VzdMZlNhS0wvYjhLWVJqSHhqYjNPMi9wSkt5Ui91R1NmT3hJYU80bTFIbHFK?=
 =?utf-8?B?MzMwdzNYNXRKTUJKdCtMRkNjMjQ5NDBrMVpxZmc3K1JveWxzTlpkZi9XMUFW?=
 =?utf-8?B?UXlFVmdweldEeGFUeTlYNkZhWllVNkxiZ3drQ2tPVkE2c2ZFZFVrZmtZMGZL?=
 =?utf-8?B?Mm5wNU5iVjhxVlFmSUdQNkpSZ3VWMnJuVnlTNUJxeEJQOFRBeWg4dzlBOGJQ?=
 =?utf-8?B?MUg0bGI5VEY1VkZCUWlkL2tpVEs3ZDBVcmtKZWtObllNaGJyU296Y3Z3VmI1?=
 =?utf-8?B?Q08vcXQvUFBwNzAveEJTcUhGWGNkRWEwNE9LT1g5YXVEZ0FzRDdrblpVUWNS?=
 =?utf-8?B?dXFOOXhRNDFYVkpFSnpwODFiTytBb05jK3VxRmpqYm5lUVVBcm5CVXNJUHJZ?=
 =?utf-8?B?Rk1BZ1NPRVB5UW5uK1Rtck4zLzVPTTJZQmhWbHdhblZzZjVwaFpjYS9USVVQ?=
 =?utf-8?B?UHViVVl2RnVSQzlFSzd6c2pLakxzNWp3dnFCUlFPdlViUFpkeGxpNDFJdmdR?=
 =?utf-8?B?OC80bmhtNGhUbTNKYy9ZZnlhRGxhVWh0KzZBUFBpaTJVOVh3Rk5ZNG9LZ3Iz?=
 =?utf-8?B?OUp3em1wN2w5Mmh6VENyVWJadUgrUTJRanVLZDBzYWpDeGVvYWRwcHZIL1Zx?=
 =?utf-8?B?bDcxVGlrZmxmRG1wSGNMSlVJaUdWbGtCaXB5RzNaQS8veDlkQUVSQVJWL2xK?=
 =?utf-8?B?NjVUOWpiWnR2R0gyNmM1NHVWRWQ5eHN6WmZaeTZ4ZTJiblY4bmY2OG1pVHov?=
 =?utf-8?B?M1BOWmc0ZnNCeC9RVG5VSEtvMU5RdjRvajNtbC8rQy9oRHlPU2ZDc1ZMZG8r?=
 =?utf-8?B?aXlRNjBhZ1l2L1NhTjQ2cDFTYkU1UUlJY0g5ZG9JUXFrKzJCbnpCVWU2SEgx?=
 =?utf-8?B?WGxWcndncm5hUDRwR1dZcnM5U3U4LytnVFlwVVRsTzJ2YWFkWU1aUkZnM01H?=
 =?utf-8?B?dU05eHZyR1NFUk9icU1NRXBsSEN6aU1wbnNMZnRyQkRDV3RuZHd2VTl3MWZi?=
 =?utf-8?Q?BoLI=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 523cd04d-5346-49f8-7d54-08d9d72dcf9a
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1201MB0192.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2022 07:16:40.8175
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RPy5XcfbxMexvhvTV6UrXBjMOLo17XYewv0gQDBGswg7pUNAEydXCY+xMyebvhiM
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1201MB0210
Message-ID-Hash: ROJ36B72PE5SFQMZADDVS26FGQTIQAJL
X-Message-ID-Hash: ROJ36B72PE5SFQMZADDVS26FGQTIQAJL
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Ruhl, Michael J" <michael.j.ruhl@intel.com>, "guangming.cao@mediatek.com" <guangming.cao@mediatek.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "wsd_upstream@mediatek.com" <wsd_upstream@mediatek.com>, "libo.kang@mediatek.com" <libo.kang@mediatek.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "yf.wang@mediatek.com" <yf.wang@mediatek.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "lmark@codeaurora.org" <lmark@codeaurora.org>, "benjamin.gaignard@linaro.org" <benjamin.gaignard@linaro.org>, "bo.song@mediatek.com" <bo.song@mediatek.com>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "labbott@redhat.com" <labbott@redhat.com>, "mingyuan.ma@mediatek.com" <mingyuan.ma@mediatek.com>, "jianjiao.zeng@mediatek.com" <jianjiao.zeng@mediatek.com>, "linux-media@vge
 r.kernel.org" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] dma-buf: dma-heap: Add a size check for allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ROJ36B72PE5SFQMZADDVS26FGQTIQAJL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTQuMDEuMjIgdW0gMDA6MjYgc2NocmllYiBKb2huIFN0dWx0ejoNCj4gT24gVGh1LCBKYW4g
MTMsIDIwMjIgYXQgNTowNSBBTSBDaHJpc3RpYW4gS8O2bmlnDQo+IDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+IHdyb3RlOg0KPj4gQW0gMTMuMDEuMjIgdW0gMTQ6MDAgc2NocmllYiBSdWhsLCBN
aWNoYWVsIEo6DQo+Pj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+Pj4+IEZyb206IGRy
aS1kZXZlbCA8ZHJpLWRldmVsLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhh
bGYgT2YNCj4+Pj4gUnVobCwgTWljaGFlbCBKDQo+Pj4+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2Ut
LS0tLQ0KPj4+Pj4gRnJvbTogZHJpLWRldmVsIDxkcmktZGV2ZWwtYm91bmNlc0BsaXN0cy5mcmVl
ZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZg0KPj4+Pj4gZ3VhbmdtaW5nLmNhb0BtZWRpYXRlay5j
b20NCj4+Pj4+ICsgICAvKg0KPj4+Pj4gKyAgICAqIEludmFsaWQgc2l6ZSBjaGVjay4gVGhlICJs
ZW4iIHNob3VsZCBiZSBsZXNzIHRoYW4gdG90YWxyYW0uDQo+Pj4+PiArICAgICoNCj4+Pj4+ICsg
ICAgKiBXaXRob3V0IHRoaXMgY2hlY2ssIG9uY2UgdGhlIGludmFsaWQgc2l6ZSBhbGxvY2F0aW9u
IHJ1bnMgb24gYSBwcm9jZXNzDQo+Pj4+PiB0aGF0DQo+Pj4+PiArICAgICogY2FuJ3QgYmUga2ls
bGVkIGJ5IE9PTSBmbG93KHN1Y2ggYXMgImdyYWxsb2MiIG9uIEFuZHJvaWQgZGV2aWNlcyksIGl0
DQo+Pj4+PiB3aWxsDQo+Pj4+PiArICAgICogY2F1c2UgYSBrZXJuZWwgZXhjZXB0aW9uLCBhbmQg
dG8gbWFrZSBtYXR0ZXJzIHdvcnNlLCB3ZSBjYW4ndCBmaW5kDQo+Pj4+PiB3aG8gYXJlIHVzaW5n
DQo+Pj4+PiArICAgICogc28gbWFueSBtZW1vcnkgd2l0aCAiZG1hX2J1Zl9kZWJ1Z19zaG93IiBz
aW5jZSB0aGUgcmVsZXZhbnQNCj4+Pj4+IGRtYS1idWYgaGFzbid0IGV4cG9ydGVkLg0KPj4+Pj4g
KyAgICAqLw0KPj4+Pj4gKyAgIGlmIChsZW4gPj4gUEFHRV9TSElGVCA+IHRvdGFscmFtX3BhZ2Vz
KCkpDQo+Pj4+IElmIHlvdXIgImhlYXAiIGlzIGZyb20gY21hLCBpcyB0aGlzIHN0aWxsIGEgdmFs
aWQgY2hlY2s/DQo+Pj4gQW5kIHRoaW5raW5nIGEgYml0IGZ1cnRoZXIsIGlmIEkgY3JlYXRlIGEg
aGVhcCBmcm9tIHNvbWV0aGluZyBlbHNlIChzYXkgZGV2aWNlIG1lbW9yeSksDQo+Pj4geW91IHdp
bGwgbmVlZCB0byBiZSBhYmxlIHRvIGZpZ3VyZSBvdXQgdGhlIG1heGltdW0gYWxsb3dhYmxlIGNo
ZWNrIGZvciB0aGUgc3BlY2lmaWMNCj4+PiBoZWFwLg0KPj4+DQo+Pj4gTWF5YmUgdGhlIGhlYXAg
bmVlZHMgYSBjYWxsYmFjayBmb3IgbWF4IHNpemU/DQo+PiBXZWxsIHdlIGN1cnJlbnRseSBtYWlu
dGFpbiBhIHNlcGFyYXRlIGFsbG9jYXRvciBhbmQgZG9uJ3QgdXNlIGRtYS1oZWFwLA0KPj4gYnV0
IHllcyB3ZSBoYXZlIHN5c3RlbXMgd2l0aCAxNkdpQiBkZXZpY2UgYW5kIG9ubHkgOEdpQiBzeXN0
ZW0gbWVtb3J5IHNvDQo+PiB0aGF0IGNoZWNrIGhlcmUgaXMgY2VydGFpbmx5IG5vdCBjb3JyZWN0
Lg0KPiBHb29kIHBvaW50Lg0KPg0KPj4gSW4gZ2VuZXJhbCBJIHdvdWxkIHJhdGhlciBsZXQgdGhl
IHN5c3RlbSBydW4gaW50byAtRU5PTUVNIG9yIC1FSU5WQUwNCj4+IGZyb20gdGhlIGFsbG9jYXRv
ciBpbnN0ZWFkLg0KPiBQcm9iYWJseSB0aGUgc2ltcGxlciBzb2x1dGlvbiBpcyB0byBwdXNoIHRo
ZSBhbGxvY2F0aW9uIGNoZWNrIHRvIHRoZQ0KPiBoZWFwIGRyaXZlciwgcmF0aGVyIHRoYW4gZG9p
bmcgaXQgYXQgdGhlIHRvcCBsZXZlbCBoZXJlLg0KPg0KPiBGb3IgQ01BIG9yIG90aGVyIGNvbnRp
Z3VvdXMgaGVhcHMsIGxldHRpbmcgdGhlIGFsbG9jYXRvciBmYWlsIGlzIGZhc3QNCj4gZW5vdWdo
LiBGb3Igbm9uY29udGlndW91cyBidWZmZXJzLCBsaWtlIHRoZSBzeXN0ZW0gaGVhcCwgdGhlDQo+
IGFsbG9jYXRpb24gY2FuIGJ1cm4gYSBsb3Qgb2YgdGltZSBhbmQgY29uc3VtZSBhIGxvdCBvZiBt
ZW1vcnkgKGNhdXNpbmcNCj4gb3RoZXIgdHJvdWJsZSkgYmVmb3JlIGEgbGFyZ2UgYWxsb2NhdGlv
biBtaWdodCBuYXR1cmFsbHkgZmFpbC4NCg0KWWVhaCwgbGV0dGluZyBhIGFsbG9jX3BhZ2UoKSBs
b29wIHJ1biBmb3IgYSB3aGlsZSBpcyB1c3VhbGx5IG5vdCBuaWNlIGF0IA0KYWxsIDopDQoNCllv
dSBjYW4gc3RpbGwgZG8gYSBzYW5pdHkgY2hlY2sgaGVyZSwgZS5nLiB0aGUgc2l6ZSBzaG91bGQg
bmV2ZXIgaGF2ZSANCnRoZSBtb3N0IHNpZ25pZmljYW50IGJpdCBzZXQgZm9yIGV4YW1wbGUuDQoN
ClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4NCj4gdGhhbmtzDQo+IC1qb2huDQoNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

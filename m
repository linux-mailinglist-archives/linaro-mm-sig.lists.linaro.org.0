Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F65C6791BD
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Jan 2023 08:16:02 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0FCC23EE61
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Jan 2023 07:16:01 +0000 (UTC)
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (mail-mw2nam04on2059.outbound.protection.outlook.com [40.107.101.59])
	by lists.linaro.org (Postfix) with ESMTPS id C69D13EC63
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Jan 2023 07:15:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="NY/zvQ3i";
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.101.59 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YZHzVmdPWsLXaIT3tTMoK79rBTBqeKXbT5Wn/EBAxcM6DuzvHTRiLoYmZ0BzLzH2gw8jjuUomdFZJeqPBqoKfsmRfqjrXxXiqJXXVFIXtJGwb/ed1tAVSwd0Xpx9gXmARnvBEoa8MqJlJkbl/ff7aBy7xgVwNYaLzquqfgj5v1il0+kJn1Awa0LpASTxWrMrKgSLBh6YRdQnihAkswCLUQzLbYmYS+pXJfMdlgb5p1cM48vDuVY/1Wq+R2HHwB5aJU7OY2jSoTGLNHjuVR5KmtSqDDrEJNfx+YaDIp3dEOL+dl2VFAw2N6nDzYZvxnfVK/G/vVumeGYyG6gX/BFCUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4whNJEub6QoNHbzXiObbVmUH0H0fp6h85OjDkSlplBg=;
 b=afDJEiSlUYJCwss2sX4f6cUuhVvWgKHu0l6y5G6XQPwi7tVe5CA6GoNCyV5IYNd2bI7eys1071vWahAG9KDzUg8qHwVWIE8OC/a4YIeJzbIbvM5wSlXK0ejI6evgBMeU4CvUxYpS0u5hEgVP53oi+2tiPvKZEG7c2Q8KydRljimnS/9UoNHDBVSgvWEx3vRqc8ESgxw9uFrEIdI408yCOA2vnb+waKRhxY2GA5vZY9T2NDXkRxXCXLKVU0o2Cm7dmUnb57yerY5Nj0JdP9l/bx4OE2Uid82A3m6zZBWOpQFnOSccidClJglFlE98d4yCQFu+Wd9A2WceuorXmthnEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4whNJEub6QoNHbzXiObbVmUH0H0fp6h85OjDkSlplBg=;
 b=NY/zvQ3iV1Aenkn/uwZRVH/NYGzSmRF8iMJMsa3GcR+JbBy1w8tHdI7eqkVhi3D9dfU7c2qck2JU46YalyDqnIRBiKKlRoPJ3Qr+WT0AR3ZxsMSsX4V0JyxWLMVj8SS4I4i+lFINJvZrLu3FkZjnFF2F9QwUqSvq/i21HIo9vfU=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by SJ1PR12MB6100.namprd12.prod.outlook.com (2603:10b6:a03:45d::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Tue, 24 Jan
 2023 07:15:37 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::80d8:934f:caa7:67b0]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::80d8:934f:caa7:67b0%3]) with mapi id 15.20.6002.033; Tue, 24 Jan 2023
 07:15:37 +0000
Message-ID: <33f87d88-b05d-e524-54fb-d5fd2f676217@amd.com>
Date: Tue, 24 Jan 2023 08:15:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: John Stultz <jstultz@google.com>
References: <20230123123756.401692-1-christian.koenig@amd.com>
 <Y86R3vQX+vW0+oxw@pendragon.ideasonboard.com>
 <1f4a1a5c-e0d5-7f0e-353c-daa89f1369ea@amd.com>
 <CANDhNCoVkq4pQJvtgmvJJe=68ZoQOdjYFkbGG-PXVujX1py4aw@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <CANDhNCoVkq4pQJvtgmvJJe=68ZoQOdjYFkbGG-PXVujX1py4aw@mail.gmail.com>
X-ClientProxiedBy: FR2P281CA0127.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9e::15) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|SJ1PR12MB6100:EE_
X-MS-Office365-Filtering-Correlation-Id: 4042651a-e433-43e7-c501-08dafddaca9b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	z/KkuUwXPDbEGjFoiYLvdP4v9O4IynmfAwXY1QaLj3AQjMcFolgCcpaHrawdwV7wZ1+EU2SZQ1sHz2c1qIu7JP1ZdvDS2EF6y33dbPpCyyOm+93d70WoHX3iOu7tgIDVgLFidsQ6wTDiDNJzdGy60Ksl1+Piq866Fc0YXrI24Sn0Jh4ioNyCzYHzebf4F8WRrDpW4+Z1mRqwB6IdIPQofrxv5gmo7LF+vr+Sv9R+RmwffBa6RDk3o/QsN3a+DuU360HmU7WXbu2qcRqzimeJO66dVf1SdzWgU0HbPPqGVC964BWQRLr8+BWM1iGRGv2uDIQHD4N/XYwPyx1FbljRntziem8BKF4vn5WqtVqW0rbJ0jDlN514oBti1S7+eXNoyBLRcflfGgZKKIYWo6LZxL28WW3cZw0w8ZnrVlNJynXvYwxybbh2bhC5eyUxGv20uKwoPlmsx0ei8oUK3m+CL97xdlVMuX1XEkFvzRHXCfqC0HyKEGCVOpSGPdAKPSPhqnSRvvWKFKZaQ8NQ+KCmCePY9So2kBF/8aq3+eGrnmXow4xgqAZYe6SmW3uayNX7Zlwj8rgcvHwb0x7JqW6JXb0wyyOJcMS86fgBvLUHM7BOrVaxbCVvyMAUgul/+oYLdCsBbAreuffC3Puu2srMrvUmp/3ba7Tsot22nR0UXjRHxd1jBzNm4Njmi76SjaSsqxSmoO2RrepYkCdrCdmPSFWkv5f+PKkD6pNgsmOjnDo=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(396003)(346002)(376002)(39860400002)(136003)(451199015)(38100700002)(3480700007)(83380400001)(7416002)(41300700001)(86362001)(2906002)(5660300002)(8936002)(4326008)(8676002)(6512007)(26005)(53546011)(6916009)(6506007)(186003)(316002)(6666004)(66476007)(66556008)(54906003)(2616005)(478600001)(6486002)(66946007)(31686004)(66899015)(31696002)(36756003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RnBtNjdVRnZaMzJ3YS9OWGN3THlDczVCdGVWaW5qM1NrbXVHYWlQT0daNW5q?=
 =?utf-8?B?Njk5cnJib0poUDJpSlFIaWlpQTl0RGpnN1hZTmpwd2tPbUdIRVlhelhtVTk2?=
 =?utf-8?B?MmtuRWZMd2ovRmNHNkpZdGdVUlNReDJhOEtaT1FhQnNjeVBFOHlLQjdLcFlC?=
 =?utf-8?B?UFF0ZkNORGwxVk5yaDJxR05wNEFIZDJTWUMvQ01RVzlGTmM4eVZHTGJuYUdl?=
 =?utf-8?B?NkY0TGE5VytHZ0p3bEdMTEhEcDBLc2l1T3cvaTJ1MmdQSzU0RTBJMmFYNHBl?=
 =?utf-8?B?M3pqejRqNWdlcFJ3eElDTGFyUkhXT3Y0elJHZGtyU212eWI4YWlzQXJsUjlF?=
 =?utf-8?B?YTU2aTYzL2l0R0xsODdod3ZoUUdRdFNRdWp4RVh5SnV4KzdPNEwyV1drdTNu?=
 =?utf-8?B?ZXRyYXhWTnVjbWxRUGNxTGtremxrcEE5WGRLODNUeXBDZnNvcXZFWU91QVhI?=
 =?utf-8?B?VnRtU3dPTUZJRWdIdG85ZnpXUW1CSXJSc2ozZmtsWGttQmNqanozK2NwWlhp?=
 =?utf-8?B?ejRIQjFGTjJCcVRRc3IwNWdhbWQzZFl0enVtMTFjMjJuY0tsZVkrd0FjZ3gz?=
 =?utf-8?B?dndXVzlVQ3U1cENpSnQ2eldWeGNLL0J5WHNaTld1OVc1dkVpcTVoaGJSSzlE?=
 =?utf-8?B?MkpqempLVkl4ZGtRZUQwSk5qOEppQi9SVE9ocW96ckhNTjhlUVY0elZqQWwv?=
 =?utf-8?B?UERNRWtTQTlLN25yN2JXTWJIbzBndU9yMFN1VloyZnlHZXV3VE44NjFXWnlX?=
 =?utf-8?B?VTF1SDJ5VTQ3QVEvRzB3SVZpdTFNTDFkbXVXaU4xZDhadnUwelVYRHQ5eHVU?=
 =?utf-8?B?WERwY3AzT2pKWkN2MnVjSXVUaU56Q0ZZa0s5Z2huTHNTTTRWNEhkNTBFZ1RJ?=
 =?utf-8?B?blJOcnJxWXdqcTM2Y3JtbmFTUVlKMGt3ZzRpcm1tWVhLdVVGdHZQS3NFKzlz?=
 =?utf-8?B?VG1OOTVqYWJNdklqWnY5Q2NGY3FVNUZiMjZrMjRkcmJyYU4xdENMRGc2RU82?=
 =?utf-8?B?ZlFTMVpCcndJVzdXa21acndkaEU1TkNUYS9SdXhXc0w0cXVseS93dCtlTFMy?=
 =?utf-8?B?Vll3ZmxITmFDa1oyc0o2L2dTL2t1eXdTVkl3RGdvR3lCazZwT2lIdFo2bW9S?=
 =?utf-8?B?V0J1ZmZwaGlpUkwyTm1DenRwVnZta014YmRRMWpOUTlKeXhwUWZMMEZUaTdh?=
 =?utf-8?B?blhVc294S3VEVXFrejRXRUFGMStKR3o5TXU2UytJRS9Lb3NEb3luTW03dTdz?=
 =?utf-8?B?WWk1RzYvMnJEakwrZkFSNTlDSVhrb1NoeUIyemM3ZlFTMUZFTDNVbHhldWI1?=
 =?utf-8?B?Yzc2N0ZFMVdNTmd4cmZvektSQ21VSklSNXp3ZlVQUTJXdW85QWNMaEY0Rkp4?=
 =?utf-8?B?SGNtK0pJZkYwNndtRi9vRW5lOVMydGJIU3dwbllsVCtNVjE2aFRPSWRwQmVh?=
 =?utf-8?B?WFRqUTFrbVV0ankzNmd6VWtFdlJ1RVBmdjhBZm14SnpKU0x1STM1Y08vaDl1?=
 =?utf-8?B?RzFDTWpxanRXdUZOb1NyMjEwNWZZUHQ5clpyN3NRK1U3K1pqSWdxM0oyU1l1?=
 =?utf-8?B?VXBPendjZmVqc2I2OThEbVVrbjhxZWo2TzdDSGxCQUNFYjBUZWh5cU9aUHZQ?=
 =?utf-8?B?UkdhZ2ovaWlQMkFzeEpVTDFhcjZXSjBNM2VCb2F2SElHTDQ5TU1xUXNzNW54?=
 =?utf-8?B?RjJLbG1nS3ppaVJ6bGNPdFVNWnZrdkZvTmE2eUxIdGt6VEoyWi9PM3AwSm5p?=
 =?utf-8?B?NTFWOTZqeEc0MC9wQlAzaTVFaWgySjM1UndaR2p1SzlmNWc0QW5ZSWpjZlpH?=
 =?utf-8?B?TjlUTUxYREU4TEJQeTg2b1VXSTlxdXFJeVdPNld6MHNURGFoVjNWL3R2U2hI?=
 =?utf-8?B?SW14UWNOMnZnMGRtLzd5S0xUVU5UMlp2N3l4SFVBbTFHUVJKYm43d1pIR2FE?=
 =?utf-8?B?NGRGUUdkcGZScVViQ3hBK3FzNHJVQmdqZXA0QkVVa0Z0TkkyWkNYUWdPK3hD?=
 =?utf-8?B?VVhaV3dxeERRcFBDWWdoa0d1bklURVNhYW1nSXVYQlpPSXo5WFQ5Vit5dSt4?=
 =?utf-8?B?dkJWNzEzRUh3dGJVNWFtTGRJblpER2tDVkQ3ald2Q2w5dDZlK2pqQUNQa05k?=
 =?utf-8?Q?Fk9wQZ94ZQX4SogVQKCcfWrfS?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4042651a-e433-43e7-c501-08dafddaca9b
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2023 07:15:37.2750
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pRmE6Ut31RrjrrN6Z8rDdXGWYih5oMSR/sOs1H/4GgKGjryC/ckIe50y5D3vc6r2
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR12MB6100
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C69D13EC63
X-Spamd-Bar: -----------
X-Spamd-Result: default: False [-11.79 / 15.00];
	REPLY(-4.00)[];
	DWL_DNSWL_HI(-3.50)[amd.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	R_MIXED_CHARSET(0.71)[subject];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[ideasonboard.com,pengutronix.de,ndufresne.ca,gmail.com,linaro.org,ffwll.ch,chromium.org,redhat.com,xs4all.nl,lists.freedesktop.org,lists.linaro.org,vger.kernel.org,collabora.com,codeaurora.org,arm.com,kernel.org,nvidia.com];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	NEURAL_HAM(-0.00)[-0.992];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.101.59:from]
X-Rspamd-Action: no action
Message-ID-Hash: 7ACO2C6Y5ZGYGKSF73QMKDS3NCSWLPY3
X-Message-ID-Hash: 7ACO2C6Y5ZGYGKSF73QMKDS3NCSWLPY3
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, nicolas@ndufresne.ca, ppaalanen@gmail.com, sumit.semwal@linaro.org, daniel@ffwll.ch, robdclark@gmail.com, tfiga@chromium.org, sebastian.wick@redhat.com, hverkuil@xs4all.nl, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, benjamin.gaignard@collabora.com, lmark@codeaurora.org, labbott@redhat.com, Brian.Starkey@arm.com, mchehab@kernel.org, James Jones <jajones@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: DMA-heap driver hints
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7ACO2C6Y5ZGYGKSF73QMKDS3NCSWLPY3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjQuMDEuMjMgdW0gMDY6MTkgc2NocmllYiBKb2huIFN0dWx0ejoNCj4gT24gTW9uLCBKYW4g
MjMsIDIwMjMgYXQgODoyOSBBTSBDaHJpc3RpYW4gS8O2bmlnDQo+IDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+IHdyb3RlOg0KPj4gQW0gMjMuMDEuMjMgdW0gMTQ6NTUgc2NocmllYiBMYXVyZW50
IFBpbmNoYXJ0Og0KPj4+IC0gSSBhc3N1bWUgc29tZSBkcml2ZXJzIHdpbGwgYmUgYWJsZSB0byBz
dXBwb3J0IG11bHRpcGxlIGhlYXBzLiBIb3cgZG8NCj4+PiAgICAgeW91IGVudmlzaW9uIHRoaXMg
YmVpbmcgaW1wbGVtZW50ZWQgPw0KPj4gSSBkb24ndCByZWFsbHkgc2VlIGFuIHVzZSBjYXNlIGZv
ciB0aGlzLg0KPj4NCj4+IFdlIGRvIGhhdmUgc29tZSBkcml2ZXJzIHdoaWNoIHNheTogZm9yIHRo
aXMgdXNlIGNhc2UgeW91IGNhbiB1c2UNCj4+IHdoYXRldmVyIHlvdSB3YW50LCBidXQgZm9yIHRo
YXQgdXNlIGNhc2UgeW91IG5lZWQgdG8gdXNlIHNwZWNpZmljIG1lbW9yeQ0KPj4gKHNjYW4gb3V0
IG9uIEdQVXMgZm9yIGV4YW1wbGUgd29ya3MgbGlrZSB0aGlzKS4NCj4+DQo+IFtzbmlwcGluZyB0
aGUgY29uc3RyYWludHMgYXJndW1lbnQsIHdoaWNoIEkgYWdyZWUgd2l0aF0NCj4+IFdoYXQgd2Ug
ZG8gaGF2ZSBpcyBjb21wYXRpYmlsaXR5IGJldHdlZW4gaGVhcHMuIEUuZy4gYSBDTUEgaGVhcCBp
cw0KPj4gdXN1YWxseSBjb21wYXRpYmxlIHdpdGggdGhlIHN5c3RlbSBoZWFwIG9yIG1pZ2h0IGV2
ZW4gYmUgYSBzdWJzZXQgb2YNCj4+IGFub3RoZXIgQ01BIGhlYXAuIEJ1dCBJIHdhbnRlZCB0byBh
ZGQgdGhhdCBhcyBuZXh0IHN0ZXAgdG8gdGhlIGhlYXBzDQo+PiBmcmFtZXdvcmsgaXRzZWxmLg0K
PiBTbyB0aGUgZGlmZmljdWx0IHF1ZXN0aW9uIGlzIGhvdyBpcyB1c2VybGFuZCBzdXBwb3NlZCB0
byBrbm93IHdoaWNoDQo+IGhlYXAgaXMgY29tcGF0aWJsZSB3aXRoIHdoaWNoPw0KDQpUaGUgaGVh
cHMgc2hvdWxkIGtub3cgd2hpY2ggb3RoZXIgaGVhcCB0aGV5IGFyZSBjb21wYXRpYmxlIHdpdGgu
DQoNCkUuZy4gdGhlIENNQSBoZWFwIHNob3VsZCBoYXZlIGEgbGluayB0byB0aGUgc3lzdGVtIGhl
YXAgYmVjYXVzZSBpdCBjYW4gDQpoYW5kbGUgYWxsIHN5c3RlbSBtZW1vcnkgYWxsb2NhdGlvbnMg
YXMgd2VsbC4NCg0KSWYgd2UgaGF2ZSBhIHNwZWNpYWxpemVkIENNQSBoZWFwIChmb3IgZXhhbXBs
ZSBmb3IgMzJiaXQgRE1BKSBpdCBzaG91bGQgDQpoYXZlIGEgbGluayB0byB0aGUgZ2VuZXJhbCBD
TUEgaGVhcC4NCg0KPiBJZiB5b3UgaGF2ZSB0d28gZGV2aWNlcywgb25lIHRoYXQgcG9pbnRzIHRv
IGhlYXAgImZvbyIgYW5kIHRoZSBvdGhlcg0KPiBwb2ludHMgdG8gaGVhcCAiYmFyIiwgaG93IGRv
ZXMgdXNlcmxhbmQga25vdyB0aGF0ICJmb28iIHNhdGlzZmllcyB0aGUNCj4gY29uc3RyYWludHMg
b2YgImJhciIgYnV0ICJiYXIiIGRvZXNuJ3Qgc2F0aXNmeSB0aGUgY29uc3RyYWludHMgb2YNCj4g
ImZvbyIuDQo+IChmb28gPSJjbWEiLCAgYmFyPSJzeXN0ZW0iKQ0KPg0KPiBJIHRoaW5rIGl0IHdv
dWxkIGJlIG11Y2ggYmV0dGVyIGZvciBkZXZpY2UgMSB0byBsaXN0ICJmb28iIGFuZCBkZXZpY2UN
Cj4gMiB0byBsaXN0ICJmb28iIGFuZCAiYmFyIiwgc28geW91IGNhbiBmaW5kIHRoYXQgImZvbyIg
aXMgdGhlIGNvbW1vbg0KPiBoZWFwIHdoaWNoIHdpbGwgc29sdmUgYm90aCBkZXZpY2VzJyBuZWVk
cy4NCg0KSSB0aGluayB0aGF0IHRoaXMgd291bGQgYmUgYSByYXRoZXIgYmFkIGlkZWEgYmVjYXVz
ZSB0aGVuIGFsbCBkZXZpY2VzIA0KbmVlZCB0byBrbm93IGFib3V0IGFsbCB0aGUgcG9zc2libGUg
ZGlmZmVyZW50IGhlYXBzIHRoZXkgYXJlIGNvbXBhdGlibGUgDQp3aXRoLg0KDQpGb3IgZXhhbXBs
ZSBhIGRldmljZSB3aGljaCBrbm93cyB0aGF0IGl0J3MgY29tcGF0aWJsZSB3aXRoIHN5c3RlbSBt
ZW1vcnkgDQpzaG91bGQgb25seSBleHBvc2UgdGhhdCBpbmZvcm1hdGlvbi4NCg0KVGhhdCBhIENN
QSBoZWFwIGlzIGFsc28gY29tcGF0aWJsZSB3aXRoIHN5c3RlbSBtZW1vcnkgaXMgaXJyZWxldmFu
dCBmb3IgDQp0aGlzIGRldmljZSBhbmQgc2hvdWxkIGJlIGhhbmRsZWQgYmV0d2VlbiB0aGUgQ01B
IGFuZCBzeXN0ZW0gaGVhcC4NCg0KPj4+IC0gRGV2aWNlcyBjb3VsZCBoYXZlIGRpZmZlcmVudCBj
b25zdHJhaW50cyBiYXNlZCBvbiBwYXJ0aWN1bGFyDQo+Pj4gICAgIGNvbmZpZ3VyYXRpb25zLiBG
b3IgaW5zdGFuY2UsIGEgZGV2aWNlIG1heSByZXF1aXJlIHNwZWNpZmljIG1lbW9yeQ0KPj4+ICAg
ICBsYXlvdXQgZm9yIG11bHRpLXBsYW5hciBZVVYgZm9ybWF0cyBvbmx5IChhcyBpbiBhbGxvY2F0
aW5nIHRoZSBZIGFuZCBDDQo+Pj4gICAgIHBsYW5lcyBvZiBOVjEyIGZyb20gZGlmZmVyZW50IG1l
bW9yeSBiYW5rcykuIEEgZHluYW1pYyBBUEkgbWF5IHRodXMgYmUNCj4+PiAgICAgbmVlZGVkIChi
dXQgbWF5IGFsc28gYmUgdmVyeSBwYWluZnVsIHRvIHVzZSBmcm9tIHVzZXJzcGFjZSkuDQo+PiBV
ZmYsIGdvb2QgdG8ga25vdy4gQnV0IEknbSBub3Qgc3VyZSBob3cgdG8gZXhwb3NlIHN0dWZmIGxp
a2UgdGhhdC4NCj4gWWVhaC4gVGhlc2UgZWRnZSBjYXNlcyBhcmUgcmVhbGx5IGhhcmQgdG8gc29s
dmUgZ2VuZXJpY2FsbHkuICBBbmQNCj4gc2luZ2xlIGRldmljZXMgdGhhdCBoYXZlIHNlcGFyYXRl
IGNvbnN0cmFpbnRzIGZvciBkaWZmZXJlbnQgdXNlcyBhcmUNCj4gYWxzbyBub3QgZ29pbmcgdG8g
YmUgc29sdmFibGUgd2l0aCBhIHNpbXBsZSBsaW5raW5nIGFwcHJvYWNoLg0KPg0KPiBCdXQgSSBk
byB3b25kZXIgaWYgYSBnZW5lcmljIHNvbHV0aW9uIHRvIGFsbCBjYXNlcyBpcyBuZWVkZWQNCj4g
KGVzcGVjaWFsbHkgaWYgaXQgcmVhbGx5IGlzbid0IHBvc3NpYmxlKT8gSWYgd2UgbGVhdmUgdGhl
IG9wdGlvbiBmb3INCj4gZ3JhbGxvYyBsaWtlIG9tbmlzY2llbnQgZGV2aWNlLXNwZWNpZmljIHVz
ZXJsYW5kIHBvbGljeSwgdGhvc2UgZWRnZQ0KPiBjYXNlcyBjYW4gYmUgaGFuZGxlZCBieSB0aG9z
ZSBkZXZpY2VzIHRoYXQgY2FuJ3QgcnVuIGdlbmVyaWMgbG9naWMuDQo+IEFuZCB0aG9zZSBkZXZp
Y2VzIGp1c3Qgd29uJ3QgYmUgYWJsZSB0byBiZSBzdXBwb3J0ZWQgYnkgZ2VuZXJpYw0KPiBkaXN0
cm9zLCBob3BlZnVsbHkgbW90aXZhdGluZyBmdXR1cmUgZGVzaWducyB0byBoYXZlIGxlc3Mgb2Rk
DQo+IGNvbnN0cmFpbnRzPw0KDQpQb3RlbnRpYWxseSB5ZXMsIGJ1dCBJIHRoaW5rIHRoYXQgYW55
dGhpbmcgbW9yZSBjb21wbGV4IHRoYW4gInBsZWFzZSANCmFsbG9jYXRlIGZyb20gdGhpcyBwaWVj
ZSBvZiBtZW1vcnkgZm9yIG1lIiBpcyBub3Qgc29tZXRoaW5nIHdoaWNoIHNob3VsZCANCmJlIGhh
bmRsZWQgaW5zaWRlIHRoZSBkZXZpY2UgaW5kZXBlbmRlbnQgZnJhbWV3b3JrLg0KDQpFc3BlY2lh
bGx5IGRldmljZSBzcGVjaWZpYyBtZW1vcnkgYW5kIGFsbG9jYXRpb24gY29uc3RyYWlucyAoZS5n
LiB0aGluZ3MgDQpsaWtlIGRvbid0IHB1dCB0aG9zZSB0d28gdGhpbmdzIG9uIHRoZSBzYW1lIG1l
bW9yeSBjaGFubmVsKSBpcyAqbm90KiANCnNvbWV0aGluZyB3ZSBzaG91bGQgaGF2ZSBpbiBhbiBp
bnRlciBkZXZpY2UgZnJhbWV3b3JrLg0KDQpJbiB0aG9zZSBjYXNlcyB3ZSBzaG91bGQganVzdCBi
ZSBhYmxlIHRvIHNheSB0aGF0IGFuIGFsbG9jYXRpb24gc2hvdWxkIA0KYmUgbWFkZSBmcm9tIGEg
c3BlY2lmaWMgZGV2aWNlIGFuZCB0aGVuIGxldCB0aGUgZGV2aWNlIHNwZWNpZmljIGRyaXZlcnMg
DQpkZWFsIHdpdGggdGhlIGNvbnN0cmFpbi4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPg0K
PiB0aGFua3MNCj4gLWpvaG4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1t
LXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3139F69F31B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Feb 2023 12:02:22 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1FDC73EBF1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Feb 2023 11:02:21 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2040.outbound.protection.outlook.com [40.107.93.40])
	by lists.linaro.org (Postfix) with ESMTPS id 499F73E96B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Feb 2023 11:02:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=ek65xw3D;
	spf=pass (lists.linaro.org: domain of Luben.Tuikov@amd.com designates 40.107.93.40 as permitted sender) smtp.mailfrom=Luben.Tuikov@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hBSOf4gDDg4VEA+0v9nqivzlVuZqmm4Uj5xF5W7NjHazkHxwPTycjLZjOsRxksA429DbiB1745j7YmaJx6NDLK1U05GnLO22u2uZh3cgwAGluu+aGjGEp0aGFOeBGXBW4GFPtXTaRK9jVWUnLFPt/pCqjOAd/03oRQnIKENiY0/UtPuKL4s9RE8opi4zZ7rjYCLZToVI0/HU+X43xHWiJulSwlRmLLYMNp3/6eq+ryzWmK8shPVDVVY4mLOMp4AAHERW3IJKIzYo6ke6wXTPmFus2+eGadl22sKCa3lcwfanVwS83lU21fZ9qNY+RTs2Qth18rwXD/m2XhMyogap7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3jlfcYPUTSLmU+Hm+u46D5s/HQSMBjI3mN8gB8KisP0=;
 b=EpZ72gOq8NlMG0kFb/3LL9IwDEDrxF0ikq9yTfyobCry/i87G+RhQ8YQhKfMv80ZA463VcbH/eUhFFiopXQjrXXnMWCnFJrjA/v/0xXG56KYkfAqezsKVSRZl6DLbRzoK6wYZuyiOO/Aom5qdV23CJ7lFV0erNAvRDRTSRVSzAK2t1SBRPELAxsDy+v18IYzJKqR4pGUr36JfiMrUo0vosNEe9E3y8+hDs7TBQKhxLHfrYKHr4B2MEVmzRBWHGZJx0RI5xZC4uv/s7IbIc642j9PwfyUbFBxGITKANyd3EFQVilPRpG8qI9O2rxA5fueFg6s8AXR55W7EXuyPuVqhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3jlfcYPUTSLmU+Hm+u46D5s/HQSMBjI3mN8gB8KisP0=;
 b=ek65xw3DudBOk5Mk7OB5gebDPHoNXiULKDCsrW8wP1Kf1MOaXhGrsqJZuLJC5VlMflh1c5afPGXgpYYQZwOsu1W6nFlCV0H+GVKudGh0RCYtsHF+Q+XXc0UKy2eHnHbrJP5WNJA8JFbou56UWx1jM9rx+RbNYjZUhkc72+f1Ggw=
Received: from DM6PR12MB3370.namprd12.prod.outlook.com (2603:10b6:5:38::25) by
 SJ0PR12MB7082.namprd12.prod.outlook.com (2603:10b6:a03:4ae::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.19; Wed, 22 Feb
 2023 11:01:58 +0000
Received: from DM6PR12MB3370.namprd12.prod.outlook.com
 ([fe80::4df2:b32a:e628:c57e]) by DM6PR12MB3370.namprd12.prod.outlook.com
 ([fe80::4df2:b32a:e628:c57e%7]) with mapi id 15.20.6134.019; Wed, 22 Feb 2023
 11:01:58 +0000
Message-ID: <7e158702-19fe-594d-6c94-5b5378848521@amd.com>
Date: Wed, 22 Feb 2023 06:01:55 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-CA
To: Rob Clark <robdclark@gmail.com>, dri-devel@lists.freedesktop.org
References: <20230218211608.1630586-1-robdclark@gmail.com>
 <20230218211608.1630586-2-robdclark@gmail.com>
From: Luben Tuikov <luben.tuikov@amd.com>
In-Reply-To: <20230218211608.1630586-2-robdclark@gmail.com>
X-ClientProxiedBy: YT4PR01CA0139.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:d5::6) To DM6PR12MB3370.namprd12.prod.outlook.com
 (2603:10b6:5:38::25)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR12MB3370:EE_|SJ0PR12MB7082:EE_
X-MS-Office365-Filtering-Correlation-Id: 8382c51c-1521-455a-b117-08db14c4372f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	WiT+SMuIZguggGauLnBVv1RAzuzHIJXcXOupMcuAJOF2NLnioQPLIbFKvOu7tlDS2xkDWEdBPWJpsv0NRZ5kgTw34qk8wkU2RPPoyRDaM1g/rS+2z1Ckr1vYTFutWj2HQfy3xSBoRT0UulFZoI8UDFLaeG0oIuVnfOCfaeFsL3aj3NosIQllrY1bMdAe0pMRmDr4+fcjIebu5ce9TlxUlf0hlI42rN1aDHMlmWP22oGq9NfAUkHLGPT5G5c+7GDN0AIEgEuyfPcXLbAnvEePnsoQklIUHZ7WbyhnqQqQlRKCgVbULE32UJyBT3Ai4FCBD1+VtJD/5rSgK1IVHMp+YvKkDPpWgM6rnC7ITW3x/I0CXt/+gPfeGrILG+J5TBKKLlLnvW/UOOlSoGVOpRydV5Heo2jkz7t4fE967MYPSO01jcSwL+xpew/t71mv9KEZjXZmA6DFcBLQ9GJ8xIunzezbigv497gJ3mKzFzSdKK0ACY1vAxs7wxEua1u+Fvf2Z8q2rvZyY3aQMzxJMD+UZo4QfNgJGUdcSJF1GHJ3e6I620Gpn1kpNxiOx0b47LRO0IWBHlUwtSvdT8oUaka35Y/dS1LKJv10fFgTTfwxJj6ux7JX3hpM2J8WDWHK6FGnsBtRxkzGQK43CJVc9gLxyMxWpgzkt8xOska9k9pFwtcRpQ7mE6lUhnielObVsrAEB3aH/vsxX+NB8Lr4JB9Ep8jmuDy/hCmr22tI9Wuicmo=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR12MB3370.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(346002)(396003)(366004)(39860400002)(376002)(136003)(451199018)(31686004)(66574015)(36756003)(5660300002)(2906002)(44832011)(7416002)(83380400001)(6486002)(6506007)(6512007)(55236004)(53546011)(54906003)(31696002)(478600001)(86362001)(41300700001)(6666004)(2616005)(38100700002)(186003)(26005)(66556008)(8676002)(66476007)(316002)(4326008)(8936002)(66946007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?andCU1Jnc252dTBxd09Fc0RueGhPL2RNODhQNlIyT2dYeCs2WWxucHN0K3Fu?=
 =?utf-8?B?ZEc2ck1XNXpMY0tvRE1leVJPQkhBblNIZC9lWHFQYVZ5OC9DSjNPdkUxOENa?=
 =?utf-8?B?L0RlOU96Y0JEdE9saWpIdmdxN3hpM2w0M3dEYm1XTjZROE9UYTcwUExDMkRO?=
 =?utf-8?B?cGRoNkxsaEhvUkFud2dmMTNyZXBNMkdGdzF4c1ZFc2g1YTJwUW5zRFRramFK?=
 =?utf-8?B?SlJyOW1sKzhWcWdiN2dJV2huNjFpNlVYNUFreDZIazc3RkR3akFOSkpJeVAw?=
 =?utf-8?B?UG9xcmx2R0x4NFd2ajBDL0I3QVQ0aWpnWUV0OGdONlEzTXR0UWYzM2Q5VElN?=
 =?utf-8?B?UzdBamNxeXU2eStPS2dsT1dFRHl4bkV4dU5PNTcxVFp3eU1YMjJOZXJNY3ZZ?=
 =?utf-8?B?WjhWNTR0OFhkR1Z6M0RNOHNuWk5QcjkrSFYrRUtzVU1SK1RlSFFBTm9hL1Nv?=
 =?utf-8?B?YjgrU1BlbjZDUHdENVgxbzhCQ1NJN3NsMnpkaGU4dEhxUTlBRlUwSG1VL1JD?=
 =?utf-8?B?R0hyTHNiamVGRDg1dUcvNWRkWnFNN056cmx2OGdGYzdhUG05cXdoN2ozUkwv?=
 =?utf-8?B?Y2MzMUZQMmVWZW4vc3g2alNOQ1hzSHJMblo0QlhmSE1SckxiYXJaL1poUmtt?=
 =?utf-8?B?SmNlSDJIbXBmUm5yYnBqdStjYVZUZUIrTG5WczdPUlcwcTZ0UVJnM3lzQTB1?=
 =?utf-8?B?UWQ1RlNhRTZsTzlIMHJpUnY4YndhYUlxYkU5dzdKZEZma1dXR3I3QnRUejh0?=
 =?utf-8?B?VG1KbkdTanE5clgrV3pLdUVndStsUC9TOGVQUWluSXFEcFhDdXhvZ0oxaGx4?=
 =?utf-8?B?bTYrOENRWFB5Sk1RMkUydnZzcWRad2Z0a1hxYW5WZmdkWHYyNGtNYTE5WkY0?=
 =?utf-8?B?SGI3bm55bjBBOXZabGtxWVlRWXdNNVJieUxmMVVYOVBhdmFUamZXdUQ0VGlS?=
 =?utf-8?B?UHpnMi9oUkdrUXNHbmllMmdtU3NENnZsQjlaSFlkVGQ5eGFHeCtLMkJBRHhp?=
 =?utf-8?B?ZXJ1TjYxWlc2RDQrSWRicFdkVUhZWFRyWGY2UmFNbWd5Vzd5WW1YV25nRlF3?=
 =?utf-8?B?ZDZ1RmdkdVRteHZpK1FLS3JZN2dmRzhKUS9zWHZrSFpjamVmWmNzUjUzaHo4?=
 =?utf-8?B?bmRiTWlhQkxEaEpZY0Z4ZjhPS2svS3BnU28rckNYZURTQ0VHYmFlYWNicFp4?=
 =?utf-8?B?d281U21nOXpSWFNSVDZCOUJLTFNJbTFKdy8vR25JcGxmOWRSSUM1bzg5RWtC?=
 =?utf-8?B?NlI2ZFg4UTZWKzdpamphWDZuTGlZNkJ3bjFsVHI5YVQvWHhIRHZuNkRLYlFG?=
 =?utf-8?B?UUNkbnduczRGYVdad1pEWC92blNMOXZkSXJmR3BVdW5WdFBHNGxETENUWmJv?=
 =?utf-8?B?N1VvM3kwbjVWWWRWd3NyOG9nL2J3SkQ4Q2Q5MmZTZ2ZMUnp1V2NyYlBQZW9V?=
 =?utf-8?B?WVBUNmtxS3MvYXU4c3ZWanhsRnRMZTJQeHkwYkxseFNFSjRHeWhUQVFlRmZD?=
 =?utf-8?B?RjlpU1ZSWHdxUDl3OWI3SmgvQ2V1Q2o1UDM5V3MwY2xzbThMdHNBb3ZmRkVJ?=
 =?utf-8?B?REtQaGlCdWlJVFV1ZWFHNktiMVpnMlV2Z2FtUXB2NzJNTm1pd0diOXhEeHRq?=
 =?utf-8?B?RjdJUGZqU25JQVhEOWtLQmx6ZWhUTWhvbHZJNFpWMHdpdFA2cytScVUrOXhy?=
 =?utf-8?B?aHNPUTJsZ09jcS83UGd4ZHBlWnRlcldFdVQwNWlZdjBhUlF0RUdnNldqeHlX?=
 =?utf-8?B?TEI0MXhOSGVTWVlOaHJybm40c0lrckdvV0h4akk4dWVyUE50aGw3VDBuQ0Fu?=
 =?utf-8?B?SGtQM3NESDVLcy84L0ZKdG1BNEtRZWdEckdkSGQ3OXc5T3JsYmlWZmRZWVE4?=
 =?utf-8?B?VC9MTVgxcDdtamlwZDAvbVNhN0hYRlFraVRrZWxzSmZwdVVxWk1paUQrTm1R?=
 =?utf-8?B?RjBvdmF1cFJUdE5DK1o2RE95S0g3ckxUOTJpUmt3ZktrQ045cmdiWHRHczFt?=
 =?utf-8?B?cFM0UngwV0pidlFhbmx2emRCQ2hGLzZYaDVoWjVIQmE3bkZTL3Z3dDM4cFkz?=
 =?utf-8?B?aHhsNUZqd3ZVUjAxNlRSUzFxcmwxQmRmRVJZS0tGeXFzSk9WN1doYTAxeHNK?=
 =?utf-8?Q?ad7hZ95luVnnt4XdQ/TeG2/ka?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8382c51c-1521-455a-b117-08db14c4372f
X-MS-Exchange-CrossTenant-AuthSource: DM6PR12MB3370.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2023 11:01:57.8824
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jvPbPrYnOXOMX0pbPG+9VwOtueSZgrAKnJ9aPmNwGMdQ5s7+0WBRuCJ/KNNo5hbd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB7082
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 499F73E96B
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,lists.freedesktop.org];
	FREEMAIL_CC(0.00)[chromium.org,padovan.org,intel.com,gmail.com,daenzer.net,vger.kernel.org,linaro.org,lists.linaro.org,amd.com,lists.freedesktop.org];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[amd.com:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[40.107.93.40:from];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.93.40:from]
Message-ID-Hash: UZZS2PW7532U7M7RHPBSWHRMI3MZYD73
X-Message-ID-Hash: UZZS2PW7532U7M7RHPBSWHRMI3MZYD73
X-MailFrom: Luben.Tuikov@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rob Clark <robdclark@chromium.org>, Gustavo Padovan <gustavo@padovan.org>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>, open list <linux-kernel@vger.kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Pekka Paalanen <ppaalanen@gmail.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 01/14] dma-buf/dma-fence: Add deadline awareness
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UZZS2PW7532U7M7RHPBSWHRMI3MZYD73/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMjAyMy0wMi0xOCAxNjoxNSwgUm9iIENsYXJrIHdyb3RlOg0KPiBGcm9tOiBSb2IgQ2xhcmsg
PHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+DQo+IA0KPiBBZGQgYSB3YXkgdG8gaGludCB0byB0aGUg
ZmVuY2Ugc2lnbmFsZXIgb2YgYW4gdXBjb21pbmcgZGVhZGxpbmUsIHN1Y2ggYXMNCj4gdmJsYW5r
LCB3aGljaCB0aGUgZmVuY2Ugd2FpdGVyIHdvdWxkIHByZWZlciBub3QgdG8gbWlzcy4gIFRoaXMg
aXMgdG8gYWlkDQo+IHRoZSBmZW5jZSBzaWduYWxlciBpbiBtYWtpbmcgcG93ZXIgbWFuYWdlbWVu
dCBkZWNpc2lvbnMsIGxpa2UgYm9vc3RpbmcNCj4gZnJlcXVlbmN5IGFzIHRoZSBkZWFkbGluZSBh
cHByb2FjaGVzIGFuZCBhd2FyZW5lc3Mgb2YgbWlzc2luZyBkZWFkbGluZXMNCj4gc28gdGhhdCBj
YW4gYmUgZmFjdG9yZWQgaW4gdG8gdGhlIGZyZXF1ZW5jeSBzY2FsaW5nLg0KPiANCj4gdjI6IERy
b3AgZG1hX2ZlbmNlOjpkZWFkbGluZSBhbmQgcmVsYXRlZCBsb2dpYyB0byBmaWx0ZXIgZHVwbGlj
YXRlDQo+ICAgICBkZWFkbGluZXMsIHRvIGF2b2lkIGluY3JlYXNpbmcgZG1hX2ZlbmNlIHNpemUu
ICBUaGUgZmVuY2UtY29udGV4dA0KPiAgICAgaW1wbGVtZW50YXRpb24gd2lsbCBuZWVkIHNpbWls
YXIgbG9naWMgdG8gdHJhY2sgZGVhZGxpbmVzIG9mIGFsbA0KPiAgICAgdGhlIGZlbmNlcyBvbiB0
aGUgc2FtZSB0aW1lbGluZS4gIFtja29lbmlnXQ0KPiB2MzogQ2xhcmlmeSBsb2NraW5nIHdydC4g
c2V0X2RlYWRsaW5lIGNhbGxiYWNrDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBSb2IgQ2xhcmsgPHJv
YmRjbGFya0BjaHJvbWl1bS5vcmc+DQo+IFJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxj
aHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9kbWEtYnVmL2RtYS1m
ZW5jZS5jIHwgMjAgKysrKysrKysrKysrKysrKysrKysNCj4gIGluY2x1ZGUvbGludXgvZG1hLWZl
bmNlLmggICB8IDIwICsrKysrKysrKysrKysrKysrKysrDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDQw
IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZl
bmNlLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4gaW5kZXggMGRlMDQ4MmNkMzZl
Li43NjNiMzI2Mjc2ODQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2Uu
Yw0KPiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4gQEAgLTkxMiw2ICs5MTIs
MjYgQEAgZG1hX2ZlbmNlX3dhaXRfYW55X3RpbWVvdXQoc3RydWN0IGRtYV9mZW5jZSAqKmZlbmNl
cywgdWludDMyX3QgY291bnQsDQo+ICB9DQo+ICBFWFBPUlRfU1lNQk9MKGRtYV9mZW5jZV93YWl0
X2FueV90aW1lb3V0KTsNCj4gIA0KPiArDQo+ICsvKioNCg0KVGhlIGFkZGVkIGVtcHR5IGxpbmUg
YWJvdmUgY3JlYXRlcyBhIHByb2JsZW0gZm9yIHNjcmlwdHMvY2hlY2twYXRjaC5wbC0tYW5kDQp0
aGVyZSdzIGEgZmV3IG90aGVycyBoZXJlIGFuZCB0aGVyZS4gSXQnZCBiZSBhIGdvb2QgaWRlYSB0
byBydW4gdGhpcyBzZXJpZXMNCnRocm91Z2ggY2hlY2twYXRjaC5wbCwgaWYgYXQgbGVhc3QgaW5m
b3JtYXRpdmVseS4NCg0KSSB3YXNuJ3QgYWJsZSB0byBhcHBseSBwYXRjaCAxMyB0byBkcm0tbWlz
Yy1uZXh0IG9yIGFueSBvdGhlciBrbm93biB0byBtZQ0KYnJhbmNoLCBhbmQgSSBkaWRuJ3Qgc2Vl
IGJhc2UgdHJlZSBpbmZvcm1hdGlvbiBpbiB0aGUgY292ZXIgbGV0dGVyLiBJIHNraXBwZWQNCml0
IGFuZCBpdCBjb21waWxlZCBva2F5IHdpdGhvdXQgaXQuDQotLSANClJlZ2FyZHMsDQpMdWJlbg0K
DQo+ICsgKiBkbWFfZmVuY2Vfc2V0X2RlYWRsaW5lIC0gc2V0IGRlc2lyZWQgZmVuY2Utd2FpdCBk
ZWFkbGluZQ0KPiArICogQGZlbmNlOiAgICB0aGUgZmVuY2UgdGhhdCBpcyB0byBiZSB3YWl0ZWQg
b24NCj4gKyAqIEBkZWFkbGluZTogdGhlIHRpbWUgYnkgd2hpY2ggdGhlIHdhaXRlciBob3BlcyBm
b3IgdGhlIGZlbmNlIHRvIGJlDQo+ICsgKiAgICAgICAgICAgIHNpZ25hbGVkDQo+ICsgKg0KPiAr
ICogSW5mb3JtIHRoZSBmZW5jZSBzaWduYWxlciBvZiBhbiB1cGNvbWluZyBkZWFkbGluZSwgc3Vj
aCBhcyB2YmxhbmssIGJ5DQo+ICsgKiB3aGljaCBwb2ludCB0aGUgd2FpdGVyIHdvdWxkIHByZWZl
ciB0aGUgZmVuY2UgdG8gYmUgc2lnbmFsZWQgYnkuICBUaGlzDQo+ICsgKiBpcyBpbnRlbmRlZCB0
byBnaXZlIGZlZWRiYWNrIHRvIHRoZSBmZW5jZSBzaWduYWxlciB0byBhaWQgaW4gcG93ZXINCj4g
KyAqIG1hbmFnZW1lbnQgZGVjaXNpb25zLCBzdWNoIGFzIGJvb3N0aW5nIEdQVSBmcmVxdWVuY3kg
aWYgYSBwZXJpb2RpYw0KPiArICogdmJsYW5rIGRlYWRsaW5lIGlzIGFwcHJvYWNoaW5nLg0KPiAr
ICovDQo+ICt2b2lkIGRtYV9mZW5jZV9zZXRfZGVhZGxpbmUoc3RydWN0IGRtYV9mZW5jZSAqZmVu
Y2UsIGt0aW1lX3QgZGVhZGxpbmUpDQo+ICt7DQo+ICsJaWYgKGZlbmNlLT5vcHMtPnNldF9kZWFk
bGluZSAmJiAhZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKGZlbmNlKSkNCj4gKwkJZmVuY2UtPm9wcy0+
c2V0X2RlYWRsaW5lKGZlbmNlLCBkZWFkbGluZSk7DQo+ICt9DQo+ICtFWFBPUlRfU1lNQk9MKGRt
YV9mZW5jZV9zZXRfZGVhZGxpbmUpOw0KPiArDQo+ICAvKioNCj4gICAqIGRtYV9mZW5jZV9kZXNj
cmliZSAtIER1bXAgZmVuY2UgZGVzY3JpYnRpb24gaW50byBzZXFfZmlsZQ0KPiAgICogQGZlbmNl
OiB0aGUgNmZlbmNlIHRvIGRlc2NyaWJlDQo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2Rt
YS1mZW5jZS5oIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KPiBpbmRleCA3NzVjZGMwYjRm
MjQuLmQ3N2Y2NTkxYzQ1MyAxMDA2NDQNCj4gLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2Uu
aA0KPiArKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQo+IEBAIC05OSw2ICs5OSw3IEBA
IGVudW0gZG1hX2ZlbmNlX2ZsYWdfYml0cyB7DQo+ICAJRE1BX0ZFTkNFX0ZMQUdfU0lHTkFMRURf
QklULA0KPiAgCURNQV9GRU5DRV9GTEFHX1RJTUVTVEFNUF9CSVQsDQo+ICAJRE1BX0ZFTkNFX0ZM
QUdfRU5BQkxFX1NJR05BTF9CSVQsDQo+ICsJRE1BX0ZFTkNFX0ZMQUdfSEFTX0RFQURMSU5FX0JJ
VCwNCj4gIAlETUFfRkVOQ0VfRkxBR19VU0VSX0JJVFMsIC8qIG11c3QgYWx3YXlzIGJlIGxhc3Qg
bWVtYmVyICovDQo+ICB9Ow0KPiAgDQo+IEBAIC0yNTcsNiArMjU4LDIzIEBAIHN0cnVjdCBkbWFf
ZmVuY2Vfb3BzIHsNCj4gIAkgKi8NCj4gIAl2b2lkICgqdGltZWxpbmVfdmFsdWVfc3RyKShzdHJ1
Y3QgZG1hX2ZlbmNlICpmZW5jZSwNCj4gIAkJCQkgICBjaGFyICpzdHIsIGludCBzaXplKTsNCj4g
Kw0KPiArCS8qKg0KPiArCSAqIEBzZXRfZGVhZGxpbmU6DQo+ICsJICoNCj4gKwkgKiBDYWxsYmFj
ayB0byBhbGxvdyBhIGZlbmNlIHdhaXRlciB0byBpbmZvcm0gdGhlIGZlbmNlIHNpZ25hbGVyIG9m
DQo+ICsJICogYW4gdXBjb21pbmcgZGVhZGxpbmUsIHN1Y2ggYXMgdmJsYW5rLCBieSB3aGljaCBw
b2ludCB0aGUgd2FpdGVyDQo+ICsJICogd291bGQgcHJlZmVyIHRoZSBmZW5jZSB0byBiZSBzaWdu
YWxlZCBieS4gIFRoaXMgaXMgaW50ZW5kZWQgdG8NCj4gKwkgKiBnaXZlIGZlZWRiYWNrIHRvIHRo
ZSBmZW5jZSBzaWduYWxlciB0byBhaWQgaW4gcG93ZXIgbWFuYWdlbWVudA0KPiArCSAqIGRlY2lz
aW9ucywgc3VjaCBhcyBib29zdGluZyBHUFUgZnJlcXVlbmN5Lg0KPiArCSAqDQo+ICsJICogVGhp
cyBpcyBjYWxsZWQgd2l0aG91dCAmZG1hX2ZlbmNlLmxvY2sgaGVsZCwgaXQgY2FuIGJlIGNhbGxl
ZA0KPiArCSAqIG11bHRpcGxlIHRpbWVzIGFuZCBmcm9tIGFueSBjb250ZXh0LiAgTG9ja2luZyBp
cyB1cCB0byB0aGUgY2FsbGVlDQo+ICsJICogaWYgaXQgaGFzIHNvbWUgc3RhdGUgdG8gbWFuYWdl
Lg0KPiArCSAqDQo+ICsJICogVGhpcyBjYWxsYmFjayBpcyBvcHRpb25hbC4NCj4gKwkgKi8NCj4g
Kwl2b2lkICgqc2V0X2RlYWRsaW5lKShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwga3RpbWVfdCBk
ZWFkbGluZSk7DQo+ICB9Ow0KPiAgDQo+ICB2b2lkIGRtYV9mZW5jZV9pbml0KHN0cnVjdCBkbWFf
ZmVuY2UgKmZlbmNlLCBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyAqb3BzLA0KPiBAQCAtNTgz
LDYgKzYwMSw4IEBAIHN0YXRpYyBpbmxpbmUgc2lnbmVkIGxvbmcgZG1hX2ZlbmNlX3dhaXQoc3Ry
dWN0IGRtYV9mZW5jZSAqZmVuY2UsIGJvb2wgaW50cikNCj4gIAlyZXR1cm4gcmV0IDwgMCA/IHJl
dCA6IDA7DQo+ICB9DQo+ICANCj4gK3ZvaWQgZG1hX2ZlbmNlX3NldF9kZWFkbGluZShzdHJ1Y3Qg
ZG1hX2ZlbmNlICpmZW5jZSwga3RpbWVfdCBkZWFkbGluZSk7DQo+ICsNCj4gIHN0cnVjdCBkbWFf
ZmVuY2UgKmRtYV9mZW5jZV9nZXRfc3R1Yih2b2lkKTsNCj4gIHN0cnVjdCBkbWFfZmVuY2UgKmRt
YV9mZW5jZV9hbGxvY2F0ZV9wcml2YXRlX3N0dWIodm9pZCk7DQo+ICB1NjQgZG1hX2ZlbmNlX2Nv
bnRleHRfYWxsb2ModW5zaWduZWQgbnVtKTsNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
bGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==

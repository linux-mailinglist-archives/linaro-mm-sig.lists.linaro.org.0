Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7018425CE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jan 2024 14:10:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 79386400A0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jan 2024 13:10:03 +0000 (UTC)
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (mail-dm6nam04on2050.outbound.protection.outlook.com [40.107.102.50])
	by lists.linaro.org (Postfix) with ESMTPS id F3F5F400A0
	for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Jan 2024 13:09:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=yYCnlwpY;
	arc=pass ("microsoft.com:s=arcselector9901:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.102.50 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KfKrprOf3PaAZA4V1PfAyXaIVaH/MYvYumsBuSHCT9o3PJvzDCewsIckSelRYUhVCg/UfgyYrxuNL9wjjFGwfcj+m22an0aVUEJbide0DwjHX3AxgdIHzBlSvIVGE34moL65ssP3fCm8gw8V86YT6h+FM0p9Vu3RXzBFDzNtte8+WyLyeSIcnQ2pMwxHShid690g/G2zqntbksxd7oBb5ntZHYSSjBbfOgFjcWvkHr8fRHtO8wgYxVzFIU4iIq1xa+YDFY+o65sV/TFw5iE3G++8fqG+QNGlKljecimFti1wciCYKr+Aag9EIvDM9tkY1vEeVlQZEdtygoXIsnMbFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8YyCWdugEcbPxK31IUu4twc4iWTbXF20lRfL264iGms=;
 b=nx/FGXxxaiSKatI26s0Z8BBC3FkzFvhUpz16hccBZlwmjRUboBhZ2mmyp/BAmNBy7hutl32IcU5E2x66h0tfZTD5QXGuIbBEO04YijphUUk6e36Y3RaovazaFT2Nbo8IoDjqAksS7XiridzOSaQ+qw4YaHg0QrtMkpo7e3C7B0/RUMFwco6qH1SPtCKHFubjVkoE6MIcqxG6yi8ijutEQI1jOPrL5LZhQMWyretJQrcW0xkHkW+IMVFnAgM2G3/49TkUKTxdDRLC7zBO+CJDDvlnO6C5qZOxu+fQJK0aXNsIPDEyN5dMwVkUGUnkpYrmgUNJ/KLx+vXgS/kq3jEzZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8YyCWdugEcbPxK31IUu4twc4iWTbXF20lRfL264iGms=;
 b=yYCnlwpYtBswQbu32R+MCg1B2U7INFj0GH2Fj8rqQSo5k2dliF9K7QUvqH9Bmv64Z6oY1DaHG6mBL0V6AZVUZzWgTIrQKmd8HoshRZ8HNz5dZxWZX72JqfCKjngSUADI/CDyPMK1fnrnpDBsuedu3Fghuvp8aIqIPCDktinxNWs=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CY5PR12MB6528.namprd12.prod.outlook.com (2603:10b6:930:43::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.34; Tue, 30 Jan
 2024 13:09:53 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::e1fb:4123:48b1:653]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::e1fb:4123:48b1:653%4]) with mapi id 15.20.7228.029; Tue, 30 Jan 2024
 13:09:52 +0000
Message-ID: <1d912523-b980-4386-82b2-8d79808398c1@amd.com>
Date: Tue, 30 Jan 2024 14:09:45 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Paul Cercueil <paul@crapouillou.net>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <noname.nuno@gmail.com>, Michael Hennerich <Michael.Hennerich@analog.com>,
 linux-usb@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Christoph Hellwig <hch@lst.de>
References: <85a89505-edeb-4619-86c1-157f7abdd190@amd.com>
 <0fe2755fb320027234c086bcc88fd107855234c5.camel@crapouillou.net>
 <577501f9-9d1c-4f8d-9882-7c71090e5ef3@amd.com>
 <7928c0866ac5b2bfaaa56ad3422bedc9061e0f7b.camel@crapouillou.net>
 <2ac7562c-d221-409a-bfee-1b3cfcc0f1c6@amd.com>
 <ZbKiCPhRvWaz4Icn@phenom.ffwll.local>
 <c97e38ee-b860-4990-87f1-3e59d7d9c999@amd.com>
 <Zbi6zQYtnfOZu5Wh@phenom.ffwll.local>
 <a2346244-e22b-4ff6-b6cd-1da7138725ae@amd.com>
 <7eec45a95808afe94ac65a8518df853356ecf117.camel@crapouillou.net>
 <ZbjSJi07gQhZ4WMC@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <ZbjSJi07gQhZ4WMC@phenom.ffwll.local>
X-ClientProxiedBy: FR4P281CA0383.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f7::6) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CY5PR12MB6528:EE_
X-MS-Office365-Filtering-Correlation-Id: 7585fff9-e117-467c-e830-08dc2194bf2a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	qcof7NtiKz2W+HNvj5RLPNzZhhTRZQffg+5djtOVtdoBmkoukeqHBY9QxGwshN27bhAHn1f8T9X9Bb7iWr5P1H7DSKnCz1QpalsGUT0GNAXKns3+2UWKS2kJmHwOEueUOrNEEib2Tq+NoVFzOJmbtzDo9wlTQNTwYF2OL3p0TCw0uEwd9vjExqFRCJ//tlkue/6HHQvpHEBhg1IXgH08W6jtqLz+NHfRz5Y2aW/qI/n9bwqjta8ZJsZ77BgN9Kf+W3wVlAMobwy7+9cmEIX8xODaXYioiEhdQOC1cd0bmb1en54RH7l8o2ooHcsrnfHrfLTi9s7N7nEyCuDtA/DjGWuk9nTalRx8TIXewjwPtyGg4AHTmAadb0xn7ZlbtHuO1J5yxMzgQUCffgyL25RiIh/qbj6opIMRcdv8kYO+PytFEdV1EXxsAciPbb/7394GRt037CeC0eF8fzAoJZk0v+qcRsQOV8MVGjf1SCUT5bxNMbhrUL8FSeByz3gswwudRL78qXTTgCaEq4J0Pl4GygMKg4/zJDxTHy2KuE+9SbW2koWiwBbKc1/Rz7qEbbB08tU/d4tuvAQ5Js46xBkskN1MfmWemUed+UaxvzjV/4+AU8bljDUW5xyldiJc+81tbQmUSw6dUe6Go6AA3UBheLsqmlTfAD51I+jhXo3tpLU=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(366004)(376002)(136003)(396003)(39860400002)(230922051799003)(451199024)(64100799003)(1800799012)(186009)(41300700001)(2906002)(7416002)(5660300002)(36756003)(921011)(66556008)(86362001)(66946007)(66476007)(316002)(31696002)(83380400001)(110136005)(478600001)(6486002)(6666004)(26005)(2616005)(8936002)(6512007)(8676002)(6506007)(66574015)(31686004)(38100700002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?b08xM2thSWdTWVEyWEZEWFVWemdTK1BGVDdyY1JVdmRaZXo4QjUvRlF5b0Q1?=
 =?utf-8?B?eDMyZWV2QWorQXZvZzdSNUdBSnBnVXdqRWc2TEZUbWp6UnFTQVBYRS9FaVJE?=
 =?utf-8?B?alA3N21rVEhTVkN1NEdFMG83ZVFlVGZRa2l2b25vcFZSdS9naTFaZld5MGdL?=
 =?utf-8?B?cVZjbVJvTnJuY0l4OTdiQldIbWRZbDRUN2g5QVgweVgvc2ZNYjJ5NUQxL0JT?=
 =?utf-8?B?Q2tNYVhqaWc1dlNFVkNxc1BBZklSbUN0VTlFQ2pjRm5oZERTeUsvVTc2RmZh?=
 =?utf-8?B?a2NKMXd3WStCUVdaTkNUd3dwOG1HK0YvZXY3d1M1YTdUV29SZ2lPeTByanpG?=
 =?utf-8?B?SHd2aXgxOTFCTGVVajVqYm1qb0Rabzc0YzhnWVpzR01OdVBVTE1Zd2liRGZV?=
 =?utf-8?B?OUhPa3gyTWZvVU11QzEwNEt6bmJqSWtOR0tuREVNeW1Na2lTeit4a3ovZzhq?=
 =?utf-8?B?NjJLdFNjZ1lQQ0J0TGQ0OW0vdXJ2T1licXZ3M3p4dUJVdGVQeWpTQXpFa1ZB?=
 =?utf-8?B?bUVFbTV5cGg1RXd6bkxkdjhxcWRHTXp6aXhhMlVrN2VPMHozbmoyajhLUWZX?=
 =?utf-8?B?eVVhTGpJWmY2eUNjQU5GQ3E3Lzg0R1JQazZEeEthRFk2eFQ1TU1EWjh1OWZL?=
 =?utf-8?B?cEFaRWpiQk95OU1iZkpSWGhvSFY3VG5pWFZ0cnNkbFpaeHZsTFNkUnJFem9o?=
 =?utf-8?B?NHAvUVJCL1ZuUzV3TmpaWndQRC9zQVhvZU5FVlMwL3IyQkpWaU9NMzdRRHQy?=
 =?utf-8?B?Y00veXYxTjJiZnVQQVlIUm9QVUxRQ3BlSGdrYzlxRGFSYkNUcmZrL1UraHo1?=
 =?utf-8?B?SDlJTXAvT1RZdUc4MlRhazhSRVdrblpYS0VJK0hoZ0x2a0xmMGZxVkhISklz?=
 =?utf-8?B?Sm91RjhSOFdSN0owOXU0YjlpUVRMc1ROcjlOeStCZGJkOFVSaEM4bmU3MVRz?=
 =?utf-8?B?MVdnTUtEdHBjdHJISFJRMFQ0dk16NFJjN0pPc0lXTy8zMzhOc0ZEMjhwZEw2?=
 =?utf-8?B?QVZUY2U4Y25IQlM2Tm5ZVHNwUVo5d0cwZjc3bWpmaFlKamUrYWxYaGJ5S0hy?=
 =?utf-8?B?aEQ4czR4K0tFZGVVMk5hdEU1Mzg2L3lwQ1hBRGNvMFhMV3F6dHZPM0VFZU51?=
 =?utf-8?B?Z0YrYWlkT0x3L1VjKzJqTFV4ZWlrR0RuV0s0ZGFGQW54ZXhTbE8zU3ZreDRW?=
 =?utf-8?B?SlFJWTZjcUZOSFFiV2dueURLbXpzeS9yMHZwd0ZFd2o5WEt0REVJZHNSeDhs?=
 =?utf-8?B?ZmtvaUYwNFJ3UjNTZmFwUEcrSk13cHZidW12S1p1RlFMYjIyYWlnV2w1Y1NY?=
 =?utf-8?B?Mzl5QnE0UVg3aWVjZ0ErRm8xcEI3Y3BPZnpmUDNLR3U0OTRUUkVpR0Z3V3hj?=
 =?utf-8?B?TzBjc2UybUZyMkh1d3JNR09Bd0MzWjVvOHNhcDYxUklhTWhsSG85MzBwWHNJ?=
 =?utf-8?B?Nzd6dk5LQzlORGlRTlRWN3NQL2tVR1B6WlFEbEtZRXAvK0diTDFlY01OOHpI?=
 =?utf-8?B?YlZLa2ZUVlA3d2JvbEd6bEZmWSt4MkEwQzZwaWl4V1lwMDNrVTVobU5JaTBh?=
 =?utf-8?B?T1h0K05nYVNTWU5IT2x2dDQrWU1WbmZCRktCYkl6bXU0SzFyQjVsb2daOUZQ?=
 =?utf-8?B?TEFMZDRQUk9xQktVTGQ1QjRBc2ZOQlFjekhSWE04ck03ZktjaHpYZnMzSHkr?=
 =?utf-8?B?QmNhT2RiYklMZG5FclFkNkpaaTIrWUVod1ZEZlk4QmhtVGNDNTBLM0I4K3JJ?=
 =?utf-8?B?emZwa2syNjR1STdlYXpiT2VTY3dBL3NVa2FwMWZsSVFCNHJmdEJSei91ZFVX?=
 =?utf-8?B?MnVzYmpzaXJrbEdIV0U2T3lJSkQ0QTBuVkNybVNydmp1Y1YrZzViZHlQWC9P?=
 =?utf-8?B?NVpUMnpld3NwSVE2NmxYckppMjZPNzA4dkljTnBHdUs5dzlaTTRKZ1ZITkgw?=
 =?utf-8?B?dExVYTdTWUExcmU3Y3RaV05Mbk9wUDVoWkxJbjM1cVBFSzlWSzQzSm5Cazlr?=
 =?utf-8?B?MVd6T1B4aHJMazNOUUNBUWtHZmhBOUpZa2RVMDZlSW5oY0JuUlFPdnkyMkJ3?=
 =?utf-8?B?dVRQa1RwbjRvY29aMm1QL3VXR2xwa0hvR2NxQUoxZTlXaTFiNjhpZ1hpNGZa?=
 =?utf-8?Q?h5EAqCcP51ixF3oy1i7IdvimL?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7585fff9-e117-467c-e830-08dc2194bf2a
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2024 13:09:52.7870
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RiH56v4IHea2T5VGpf6DL4a9H+TpS+18JQF55hxSqBFbOilKHlTE95QmJmFogqeQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR12MB6528
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: F3F5F400A0
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.49 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.102.50:from];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[crapouillou.net,gmail.com,linuxfoundation.org,lwn.net,linaro.org,kernel.org,analog.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lst.de];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: 7K65MTWRKOLY5GPCWGK7MORLFX7KVLQM
X-Message-ID-Hash: 7K65MTWRKOLY5GPCWGK7MORLFX7KVLQM
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/6] dma-buf: Add dma_buf_{begin,end}_access()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7K65MTWRKOLY5GPCWGK7MORLFX7KVLQM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMzAuMDEuMjQgdW0gMTE6NDAgc2NocmllYiBEYW5pZWwgVmV0dGVyOg0KPiBPbiBUdWUsIEph
biAzMCwgMjAyNCBhdCAxMDo0ODoyM0FNICswMTAwLCBQYXVsIENlcmN1ZWlsIHdyb3RlOg0KPj4g
TGUgbWFyZGkgMzAgamFudmllciAyMDI0IMOgIDEwOjIzICswMTAwLCBDaHJpc3RpYW4gS8O2bmln
IGEgw6ljcml0wqA6DQo+Pj4gIMKgSSB3b3VsZCBzYXkgd2Ugc3RhcnQgd2l0aCB0aGUgRE1BLUFQ
SSBieSBnZXR0aW5nIGF3YXkgZnJvbSBzZ190YWJsZXMNCj4+PiB0byBzb21ldGhpbmcgY2xlYW5l
ciBhbmQgc3RhdGUgb3JpZW50ZWQuDQo+PiBGWUkgSSBhbSBhbHJlYWR5IGFkZGluZyBhICdkbWFf
dmVjJyBvYmplY3QgaW4gbXkgSUlPIERNQUJVRiBwYXRjaHNldCwNCj4+IHdoaWNoIGlzIGp1c3Qg
YSBkZWFkIHNpbXBsZQ0KPj4NCj4+IHN0cnVjdCBkbWFfdmVjIHsNCj4+ICAgIGRtYV9hZGRyX3Qg
YWRkcjsNCj4+ICAgIHNpemVfdCBsZW47DQo+PiB9Ow0KPj4NCj4+IChUaGUgcmF0aW9uYWxlIGZv
ciBpbnRyb2R1Y2luZyBpdCBpbiB0aGUgSUlPIERNQUJVRiBwYXRjaHNldCB3YXMgdGhhdA0KPj4g
dGhlICJzY2F0dGVybGlzdCIgd291bGRuJ3QgYWxsb3cgbWUgdG8gY2hhbmdlIHRoZSB0cmFuc2Zl
ciBzaXplLikNCj4+DQo+PiBTbyBJIGJlbGlldmUgYSBuZXcgInNnX3RhYmxlIi1saWtlIGNvdWxk
IGp1c3QgYmUgYW4gYXJyYXkgb2Ygc3RydWN0DQo+PiBkbWFfdmVjICsgZmxhZ3MuDQo+IFllYWgg
dGhhdCdzIHByZXR0eSBtdWNoIHRoZSBwcm9wb3NhbCBJJ3ZlIHNlZW4sIHNwbGl0IHRoZSBzZyB0
YWJsZSBpbnRvDQo+IGlucHV0IGRhdGEgKHN0cnVjdCBwYWdlICsgbGVuKSBhbmQgb3V0cHV0IGRh
dGEgKHdoaWNoIGlzIHRoZSBkbWFfYWRkcl90ICsNCj4gbGVuIHlvdSBoYXZlIGFib3ZlKS4NCg0K
SSB3b3VsZCBleHRlbmQgdGhhdCBhIGJpdCBhbmQgc2F5IHdlIGhhdmUgYW4gYXJyYXkgd2l0aCAN
CmRtYV9hZGRyK3Bvd2VyX29mX3R3b19vcmRlciBhbmQgYSBoZWFkZXIgc3RydWN0dXJlIHdpdGgg
bG93ZXIgYml0IG9mZnNldCANCmFuZCBzb21lIERNQSB0cmFuc2FjdGlvbiBmbGFncy4NCg0KQnV0
IHRoaXMgaXMgc29tZXRoaW5nIHdoaWNoIGNhbiBiZSB3b3JrZWQgYXMgYW4gb3B0aW1pemF0aW9u
IGxhdGVyIG9uLiANCkZvciBhIHN0YXJ0IHRoaXMgcHJvcG9zYWwgaGVyZSBsb29rcyBnb29kIHRv
IG1lIGFzIHdlbGwuDQoNCj4gVGhlIHBhcnQgSSBkb24ndCBleHBlY3QgdG8gZXZlciBoYXBwZW4s
IGJlY2F1c2UgaXQgaGFzbid0IHRoZSBwYXN0IDIwIG9yDQo+IHNvIHllYXJzLCBpcyB0aGF0IHRo
ZSBkbWEtYXBpIHdpbGwgZ2l2ZSB1cyBpbmZvcm1hdGlvbiBhYm91dCB3aGF0IGlzDQo+IG5lZWRl
ZCB0byBrZWVwIHRoZSBidWZmZXJzIGNvaGVyZW5jeSBiZXR3ZWVuIHZhcmlvdXMgZGV2aWNlcyBh
bmQgdGhlIGNwdS4NCg0KV2VsbCBtYXliZSB0aGF0J3Mgd2hhdCB3ZSBhcmUgZG9pbmcgd3Jvbmcu
DQoNCkluc3RlYWQgb2YgYXNraW5nIHRoZSBkbWEtYXBpIGFib3V0IHRoZSBuZWNlc3NhcnkgaW5m
b3JtYXRpb24gd2Ugc2hvdWxkIA0KZ2l2ZSB0aGUgQVBJIHRoZSBvcHBvcnR1bml0eSB0byB3b3Jr
IGZvciB1cy4NCg0KSW4gb3RoZXIgd29yZHMgd2UgZG9uJ3QgbmVlZCB0aGUgaW5mb3JtYXRpb24g
YWJvdXQgYnVmZmVyIGNvaGVyZW5jeSB3aGF0IA0Kd2UgbmVlZCBpcyB0aGF0IHRoZSBBUEkgd29y
a3MgZm9yIGFzIGFuZCBmdWxmaWxscyB0aGUgcmVxdWlyZW1lbnRzIHdlIGhhdmUuDQoNClNvIHRo
ZSBxdWVzdGlvbiBpcyByZWFsbHkgd2hhdCBzaG91bGQgd2UgcHJvcG9zZSB0byBjaGFuZ2Ugb24g
dGhlIA0KRE1BLWFwaSBzaWRlIHRvIGdldCB0aGlzIHdvcmtpbmcgYXMgZXhwZWN0ZWQ/DQoNClJl
Z2FyZHMsDQpDaHJpc3RpYW4uDQoNCg0KDQoNCg0KPiAtU2ltYQ0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

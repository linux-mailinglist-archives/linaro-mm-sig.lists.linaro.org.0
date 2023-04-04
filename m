Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 504366D5B3E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Apr 2023 10:54:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 51B8C3E89F
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Apr 2023 08:54:32 +0000 (UTC)
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (mail-bn1nam02on2059.outbound.protection.outlook.com [40.107.212.59])
	by lists.linaro.org (Postfix) with ESMTPS id 26C723E89F
	for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Apr 2023 08:54:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=cUTxmSNd;
	arc=pass ("microsoft.com:s=arcselector9901:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.212.59 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LAr0NqjBBUdxmcNjJaGPpw0L6ZL5F9siziHT6zJDU40buuEcHQVaLTWjA8YrDPXUasbYDTJcNtySbJsKvRhJbFIEiq6C7swwH5V1pCDyfemWjQ+h091RZff2HeKcgOvCLhKru1Bk1ea23NdTFvMvGapEMSL0mOICBAWIn8CBUYM4Gv/LTRJj3i5r/P1bB9GagUFbo/URGdQPGL0eop/tkCrSRLkyXdJZTohLLOPZmAfzgyNYftj3FRKCqJjnJYAUC5oUjBilr6ZTfMu+2T+sBnPwOoF7FuPmb9+i4v60TlzfALfOIYNGaauXofHKdWNxK8jFL31Drbdf3To08quJ3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8FAOgb0ZuQYpU1C9FVOQOQ/sS2a+fKHxaC/jUDzvyZE=;
 b=UZ9bUvZD8G+hRLH0xOcQDZDK67zwYJMsEPgnloP5CnnBxwJ54SZVvMbJm/kVgX6rdpiC8S8D0iVXynnUpJQZkiA1RC0IrZDOY6jRQR28TAisq9TsWKcB6EbaKyVmMr/HgH0GPByVavS06lik+Fm3Mr1sIY15U52loFhHGS8JcXAW+2yrEyHSujy5TSlAmW+XRR0C6/bpf13VxbYYmRkl6JTDvjJjWNdHyQ1i31gkLcfhVOWnkxK61ozBKrlIba5ZSRnEjFjjKRfJNnavj76g4dqmdtn7/teZbG/+8aJxeO3kg3ry0IaZN1kZJa22DWpZuLk457xdwzwS5NAJ3XuRaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8FAOgb0ZuQYpU1C9FVOQOQ/sS2a+fKHxaC/jUDzvyZE=;
 b=cUTxmSNdE8QpG+06zW9wf4ATjBOvwz9lctOQOH1baKwyofB9YZIVGaMeG6NWIpIpKFfhfURxDrmIPAxIT74OpRuYg2SkWoZGqBffSpUyt47/hbIFuKhyEJf9MId7Os0VLChm4Payuikz6nCAk3+8eZuCUFrb7H6G5NJvyfV3opA=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by DM4PR12MB8521.namprd12.prod.outlook.com (2603:10b6:8:17e::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.33; Tue, 4 Apr
 2023 08:54:19 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::4624:dc39:943e:6ae]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::4624:dc39:943e:6ae%5]) with mapi id 15.20.6254.035; Tue, 4 Apr 2023
 08:54:19 +0000
Message-ID: <a83e960f-9a7f-95be-e00c-acd94a967e1b@amd.com>
Date: Tue, 4 Apr 2023 10:54:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Paul Cercueil <paul@crapouillou.net>, Hillf Danton <hdanton@sina.com>
References: <20230403154800.215924-1-paul@crapouillou.net>
 <20230404015944.502-1-hdanton@sina.com>
 <c9c9fa881aeda36862d0ad8c5a46472e0e363531.camel@crapouillou.net>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <c9c9fa881aeda36862d0ad8c5a46472e0e363531.camel@crapouillou.net>
X-ClientProxiedBy: FR0P281CA0072.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:49::9) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|DM4PR12MB8521:EE_
X-MS-Office365-Filtering-Correlation-Id: 59bc0b0c-c1dd-4320-9645-08db34ea2d5c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	mOwncSXMbBBXBVLiitG2czFxR0U6DRyO7EDrYtew12m0UzI5D0vHEqlIID8pDm+RUnXU5gNJ0sfPLNTosi9GKozos/anXovbUpk5Bm16RuanXMKWllbWclIL9qXMyACvX5354CFdS3M1vFQXAZ+atwq692KIicc5er8adubVfdiF+Ntw9ldK7LnZYg/v+iRdU1bgMDKdGS29hRs1sm/yvW0d4Bk+vWm4sSbN9a2SkG/NKXiPTGUXLAnFsTwwDDf2VPVuO6L3WMSQgCoOa1WbbgFk1BrFqmP+sqd1UMn5dZC6x1YrRu60UCIzBLiQa+xOtNksid0v5su+qMFWC70aw/JZDCZ415IaMq+7QyErek5goWRYwVYNFQ2AHWyp8JcQst9kh7c/wLJbeC0HZEfZycGTcvhwekeHzVCsZNengJ1kDkEKT/u+e2w9AyaapqhOPZjAaHceg9C9OF8zp5UkX7LdU0BISLjGhbmAw1jrBpS17Fn+CuMgzS3CBKoJd15cBoRTJp+hRrj0unWxH2M2Ks93F0MDze9Ch30HEjqPMop82KXNVc40IRcOhX+QYp4Rs6fQXhpV37tQ/iqmoqoqjeECwja42yG89Qb8l+136h42wJxpLcQRjevid4XZ/9p7MN+3R8wQQotJkVxADMom3A==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(136003)(366004)(376002)(39860400002)(396003)(451199021)(38100700002)(5660300002)(7416002)(2616005)(31696002)(54906003)(6506007)(316002)(110136005)(6486002)(186003)(6666004)(478600001)(86362001)(26005)(6512007)(36756003)(4326008)(8676002)(41300700001)(8936002)(66946007)(66476007)(66556008)(31686004)(2906002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NWZXYVczcXdEWmJQaFpXODhyaTFiN2VXVlRyYldiK1RNb1hpNmcxZjhrcWNG?=
 =?utf-8?B?NzVCckhzQzhjTjluQ0lOZG5takZ4b09mOVVuOG9adm8zRGxVK2ZpK0h4QUdP?=
 =?utf-8?B?UXovUVVsS1hrM3h1TW1HUFJLVzFyYlhpbHMwUUd4YWV2T3pmbVQyU00vMVQ4?=
 =?utf-8?B?aVJEa0Nkdk9ueTBORW1WNkVFMVFWbzhBYWJTdGE3cUl6b0o3Qi9oZ3J4OTBo?=
 =?utf-8?B?b016WG1hTERHZ0FrYm0vQ3VlMDNCZkRSTjhTbWwraSt2UFNnV1JLZjlaaFk1?=
 =?utf-8?B?ZTllNlNoU2VBRThZMy9oRjN2WDJmOXdDWmdBOUJPeWVrS0JhREZjUDEzRU9K?=
 =?utf-8?B?eUE4QXRoenJPOGFpTjV6Ly94MGE3RnZBdFA0dEFyRGFsN0FJT2JRLy9PaWM5?=
 =?utf-8?B?QWdBajVLWTUzR045Sk8rbVR3bVJ4eVU2dDNXaUdtaCtSRHlWRk5LR0kwMUpR?=
 =?utf-8?B?dHc1SkZORXFaS0N0SFoydU43dk1rdENEeFdRcGg5a2VqWXlpSUgvNGtpSS81?=
 =?utf-8?B?UVdyOTFUbTZ4MHRNakxseEJmdHJ4NjY1eGZiSS8xcVQvRHlydUN4QUdmSlJM?=
 =?utf-8?B?YnQreHdkQUV4ZTl1V200Zi9WcVVPN2VIYVB1TzlhZ09DSC9QdHA4WkdqYmdl?=
 =?utf-8?B?c3ZIOXZhNThOTTBSTlNBNi91Y2k0eWJZT3pJdUl5REdDcElWVHB6UlNibUlM?=
 =?utf-8?B?OGtXSFBWandDR0xLS2lROXBRckxROW1na3d1bktEOFR0RVdDWmk5aXNyVGww?=
 =?utf-8?B?dTNTanJlUUVLcmhrRzg5NEllRGQ4NHBXOERTQ2NaTFBocEFwYTU1SlVqMm5T?=
 =?utf-8?B?YVlMY1V0L2RFb1BhK2tzV1o5OE9BVWJySVlUYmVxOGVJRnF0eU9NSWRDczVN?=
 =?utf-8?B?cFV4QW5uVlF5Zis5MFFQUmM5MkdlR3R4a0N6aHJjdTJNaWJrMnAvQ0NuT2h0?=
 =?utf-8?B?QXNuWFRNeE9Nc2srT2g1cDhKcnkxcCtZUGlRbnFVWXhSOUtaeFJwSUxieVRE?=
 =?utf-8?B?TC9Nejd2Uk9Eak9QeXdaRkZ3a2tmb1UwaUlGclFvSzYvUHVDazhEY2lFa1Rr?=
 =?utf-8?B?ZzdXT1ZTd3hBcWQ4bUNhNjZmL3pQbTUySXYxK1NzK0lkTnk2cmRacG56Y0pW?=
 =?utf-8?B?cVlhWEE2VzZiL1pNN3AvUXM5NUdVUGlPeVpoQ1VCbVZxNGdTSzRGVnl5Tzhz?=
 =?utf-8?B?S0FTM1hqZmY2RnBheVczYTM0MkhOdU4wQXptQk53ZzNSMG0wTlNjUGErMzFT?=
 =?utf-8?B?cE51MXpmb0t1S2NReE44aUFGNFJWL2lvSUNGK2YwM2pmS2xaSnE1Tlg0QjZD?=
 =?utf-8?B?VkY4Vm85UVQ2dUtpRXh0d0NkTkYyZWNxYytiOGp2cXNkY0JOV2MxQXBLdGZ0?=
 =?utf-8?B?SjBXQXQveExHNnlXRFU2VmFjaHBnNkhtTGlyZnNUbzdFNUFOTjN2U2w1SXRM?=
 =?utf-8?B?YU16QjNWcS9nTzRqS0YwcEJzbXg2TDJBQnVmekdldm80QTErdnRZUE9nVnNl?=
 =?utf-8?B?dm5RbUwwemtmd1oxaUpaZkNCaVJtUC92UnJ2NTNyS3NmL0VBR0t6WDA5VmRa?=
 =?utf-8?B?WTVLN0R5UjVvNnVDdzNmRXJUNGtqY2FveW9kaU5XTGI5T1FBQ1hOeUFXcVNr?=
 =?utf-8?B?bXNQNU1zT3BiZVZUTmxpTldVOE5Ka1VWQUFvYklmZkYvdXBzaGVWYkhtdGFH?=
 =?utf-8?B?WkxzMU5ZSFgxOFpJRTZCSm5ERXJwc2pORk5iVGZSeHpZUHJhSy9JellMUW1C?=
 =?utf-8?B?T1pKcWw0Q1h0d00xWTZsZC9pai93Z1EvcjhJb3ZTaGRnQ3JJZk00c3YyWmxH?=
 =?utf-8?B?dzdNVHdENFNOQWlOTmpYZ1g3dlF6VkNIdXJJcHpUeE5TMXpTUDM4VlNNNUpU?=
 =?utf-8?B?aTVGV256OFRuOTdTUmdhQkdBSXY3d3lLNHZoYzRUYWRNVzJ4aUNMYWxldGUy?=
 =?utf-8?B?Y2xNbFhqZEowc0huVmFZUThtQmk1M3IyMGZXTlYrUnpvSkFBbXVnSmwvczI4?=
 =?utf-8?B?ZU1jNjRDWDlTNUtIYjZsSGNoYkNpTkNoeitTOXk1dm9RSy8xMTZEZUlKdm9U?=
 =?utf-8?B?Z1dKMU5iNVBGK09vdlJPMTNuaEIzTDNCWnRUQTZIZFFCb2haK1JLb1hPRFZa?=
 =?utf-8?Q?WN0c=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59bc0b0c-c1dd-4320-9645-08db34ea2d5c
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2023 08:54:19.3579
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EFk3236ISv2jdvj8fTS1rwMIpheEma2zmSSDnareet4EN/BYTYcb07JgR6DGYARm
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB8521
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 26C723E89F
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[crapouillou.net,sina.com];
	FREEMAIL_CC(0.00)[kernel.org,metafoo.de,analog.com,gmail.com,linaro.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.212.59:from];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: F2MFMB2NCVEVHA2DMM4DRTVQCQHIXUII
X-Message-ID-Hash: F2MFMB2NCVEVHA2DMM4DRTVQCQHIXUII
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, Vinod Koul <vkoul@kernel.org>, Michael Hennerich <Michael.Hennerich@analog.com>, =?UTF-8?Q?Nuno_S=c3=a1?= <noname.nuno@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 01/11] dmaengine: Add API function dmaengine_prep_slave_dma_array()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/F2MFMB2NCVEVHA2DMM4DRTVQCQHIXUII/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDQuMDQuMjMgdW0gMDk6NDIgc2NocmllYiBQYXVsIENlcmN1ZWlsOg0KPiBIaSBIaWxsZiwN
Cj4NCj4gTGUgbWFyZGkgMDQgYXZyaWwgMjAyMyDDoCAwOTo1OSArMDgwMCwgSGlsbGYgRGFudG9u
IGEgw6ljcml0wqA6DQo+PiBPbiAzIEFwciAyMDIzIDE3OjQ3OjUwICswMjAwIFBhdWwgQ2VyY3Vl
aWwgPHBhdWxAY3JhcG91aWxsb3UubmV0Pg0KPj4+IFRoaXMgZnVuY3Rpb24gY2FuIGJlIHVzZWQg
dG8gaW5pdGlhdGUgYSBzY2F0dGVyLWdhdGhlciBETUEgdHJhbnNmZXINCj4+PiB3aGVyZSB0aGUg
RE1BIGFkZHJlc3NlcyBhbmQgbGVuZ3RocyBhcmUgbG9jYXRlZCBpbnNpZGUgYXJyYXlzLg0KPj4+
DQo+Pj4gVGhlIG1ham9yIGRpZmZlcmVuY2Ugd2l0aCBkbWFlbmdpbmVfcHJlcF9zbGF2ZV9zZygp
IGlzIHRoYXQgaXQNCj4+PiBzdXBwb3J0cw0KPj4+IHNwZWNpZnlpbmcgdGhlIGxlbmd0aHMgb2Yg
ZWFjaCBETUEgdHJhbnNmZXI7IGFzIHRyeWluZyB0byBvdmVycmlkZQ0KPj4+IHRoZQ0KPj4+IGxl
bmd0aCBvZiB0aGUgdHJhbnNmZXIgd2l0aCBkbWFlbmdpbmVfcHJlcF9zbGF2ZV9zZygpIGlzIGEg
dmVyeQ0KPj4+IHRlZGlvdXMNCj4+PiBwcm9jZXNzLiBUaGUgaW50cm9kdWN0aW9uIG9mIGEgbmV3
IEFQSSBmdW5jdGlvbiBpcyBhbHNvIGp1c3RpZmllZA0KPj4+IGJ5IHRoZQ0KPj4+IGZhY3QgdGhh
dCBzY2F0dGVybGlzdHMgYXJlIG9uIHRoZWlyIHdheSBvdXQuDQo+PiBHaXZlbiBzZydzIHdheW91
dCBhbmQgY29uY2VwdHVhbGx5IGlvdmVjIGFuZCBrdmVjIChpbg0KPj4gaW5jbHVkZS9saW51eC91
aW8uaCksDQo+PiB3aGF0IHlvdSBhZGQgc2hvdWxkIGhhdmUgYmVlbiBkbWFfdmVjIHRvIGVhc2Ug
cGVvcGxlIG1ha2luZyB1c2Ugb2YNCj4+IGl0Lg0KPj4NCj4+ICDCoMKgwqDCoMKgwqDCoMKgc3Ry
dWN0IGRtYV92ZWMgew0KPj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZG1hX2Fk
ZHJfdMKgwqDCoMKgwqDCoGFkZHI7DQo+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBzaXplX3TCoMKgwqDCoMKgwqDCoMKgwqDCoGxlbjsNCj4+ICDCoMKgwqDCoMKgwqDCoMKgfTsN
Cj4gV2VsbCBpdCdzIG5vdCB0b28gbGF0ZSA7KQ0KDQpZZWFoIGFkZGluZyB0aGF0IGlzIHByZXR0
eSBtdWNoIHRoZSBqb2IgSSBoYXZlIG9uIG15IFRPRE8gbGlzdCBmb3IgcXVpdGUgDQpzb21lIHRp
bWUuDQoNCkkgd291bGRuJ3QgbWluZCBpZiB5b3Ugc3RhcnQgYWRkaW5nIHRoYXQgYW5kIHByb3Zp
ZGUgaGVscGVyIGZ1bmN0aW9ucyBpbiANCkRNQS1idWYgdG8gY29udmVydCBmcm9tL3RvIGFuIHNn
X3RhYmxlLg0KDQpUaGlzIHdheSB3ZSBjYW4gbWlncmF0ZSB0aGUgaW50ZXJmYWNlIG92ZXIgdG8g
YSBuZXcgZGVzaWduIG92ZXIgdGltZS4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPg0KPiBU
aGFua3MgZm9yIHRoZSBmZWVkYmFjay4NCj4NCj4gQ2hlZXJzLA0KPiAtUGF1bA0KPg0KPj4+IFNp
Z25lZC1vZmYtYnk6IFBhdWwgQ2VyY3VlaWwgPHBhdWxAY3JhcG91aWxsb3UubmV0Pg0KPj4+DQo+
Pj4gLS0tDQo+Pj4gdjM6IE5ldyBwYXRjaA0KPj4+IC0tLQ0KPj4+ICDCoGluY2x1ZGUvbGludXgv
ZG1hZW5naW5lLmggfCAxNiArKysrKysrKysrKysrKysrDQo+Pj4gIMKgMSBmaWxlIGNoYW5nZWQs
IDE2IGluc2VydGlvbnMoKykNCj4+Pg0KPj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2Rt
YWVuZ2luZS5oIGIvaW5jbHVkZS9saW51eC9kbWFlbmdpbmUuaA0KPj4+IGluZGV4IGMzNjU2ZTU5
MDIxMy4uNjJlZmEyOGMwMDlhIDEwMDY0NA0KPj4+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hZW5n
aW5lLmgNCj4+PiArKysgYi9pbmNsdWRlL2xpbnV4L2RtYWVuZ2luZS5oDQo+Pj4gQEAgLTkxMiw2
ICs5MTIsMTEgQEAgc3RydWN0IGRtYV9kZXZpY2Ugew0KPj4+ICDCoMKgwqDCoMKgwqDCoMKgc3Ry
dWN0IGRtYV9hc3luY190eF9kZXNjcmlwdG9yDQo+Pj4gKigqZGV2aWNlX3ByZXBfZG1hX2ludGVy
cnVwdCkoDQo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRtYV9j
aGFuICpjaGFuLCB1bnNpZ25lZCBsb25nIGZsYWdzKTsNCj4+PiAgIA0KPj4+ICvCoMKgwqDCoMKg
wqDCoHN0cnVjdCBkbWFfYXN5bmNfdHhfZGVzY3JpcHRvcg0KPj4+ICooKmRldmljZV9wcmVwX3Ns
YXZlX2RtYV9hcnJheSkoDQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN0cnVj
dCBkbWFfY2hhbiAqY2hhbiwgZG1hX2FkZHJfdCAqYWRkcnMsDQo+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHNpemVfdCAqbGVuZ3Rocywgc2l6ZV90IG5iLA0KPj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBlbnVtIGRtYV90cmFuc2Zlcl9kaXJlY3Rpb24gZGlyZWN0
aW9uLA0KPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB1bnNpZ25lZCBsb25nIGZs
YWdzKTsNCj4+IFRoZW4gdGhlIGNhbGxiYWNrIGxvb2tzIGxpa2UNCj4+DQo+PiAgwqDCoMKgwqDC
oMKgwqDCoHN0cnVjdCBkbWFfYXN5bmNfdHhfZGVzY3JpcHRvciAqKCpkZXZpY2VfcHJlcF9zbGF2
ZV92ZWMpKA0KPj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRtYV9j
aGFuICpjaGFuLA0KPj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRt
YV92ZWMgKnZlYywNCj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludCBudmVj
LA0KPj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZW51bSBkbWFfdHJhbnNmZXJf
ZGlyZWN0aW9uIGRpcmVjdGlvbiwNCj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oHVuc2lnbmVkIGxvbmcgZmxhZ3MpOw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

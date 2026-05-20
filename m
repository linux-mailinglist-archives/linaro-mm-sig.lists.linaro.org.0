Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kBN3JgnADWr32wUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 16:07:05 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C31658F50A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 16:07:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E22253F96B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 14:07:03 +0000 (UTC)
Received: from SN4PR2101CU001.outbound.protection.outlook.com (mail-southcentralusazon11012033.outbound.protection.outlook.com [40.93.195.33])
	by lists.linaro.org (Postfix) with ESMTPS id 60C093F96B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 14:06:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=AFMSxe8q;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.195.33 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kpOyo+/TLANd/IcVZ9iTeCzM+iWPvIpUT1PraH4IJiApMjDU21ebv5uX91/OFUVidUMeBZc5WuItNuE64zclBaSll75/qDo8dZUpKd7N8yNGRFZFgFIgm8HmTBwrkWYHkQRqpeLmzgWloksNjMFHUbmqEMjf6eSHb5piopJe1vX5ACblS0ptxx9d9zrNo+VHLsyRtqh2OSaw7p68ZVsaiFuIX2CLdAFKmmyy/uZcdaexH2/EE9lH01F3Pmk4aFriCj1lu1NmSghWgQOVvua8hRLdYqGvrf5+UqcNn69bVvvgf2B3u+ZY/I3ugBBUYj/fjoHppS285jUFz+kVyqjw9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WwRAxA2xjM/8GXGvL0/VQ+RAkvqW6+6IFH9/uO5POT0=;
 b=We3ER79Jy2bKbnqEV1OVK42Qb1c7++5OFc+hB8FN4QQvYtZibi+hzJgeQJjgzI4+1NTWRLO732aPOdMkNv+J38pNy3u6E5SSeUNVEdIepXqRsJEPACEpXH80YqS+YcSycf+B2HScBFlDWf6a4R2PjkqmRuy39kCfQ2B7z+pNYteM1c1SJrkOi1SN9gcWqJcJDEN2/7tAHNX0gOqxLbZKOmm2XMAigKXtnZsaooFQfZOGuhNZCgQgfHtvsTrcAKRAWimociXFT4g87hq8BXh3ivBSMJUbDdMn6bKnhS1wvrM/tEkuo6zzDfotJ7z8oSudBrH7I7iKVebxo1Ke95GENQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WwRAxA2xjM/8GXGvL0/VQ+RAkvqW6+6IFH9/uO5POT0=;
 b=AFMSxe8qijd1eEjDo/2vFAidfFNFj25gumlZ+DoUrcuQ6g/BiT6N2V7IMEFXCNoMxgSqZi5+CY2NpftyJ9ioVK5RWTskS1epptapbB5pVrERRZm9yLtJAJ7op6RIk+mdtvG108W/DZsdsu74ZTCC5zixTelt/gu9454QaSn78xU=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DS4PR12MB9610.namprd12.prod.outlook.com (2603:10b6:8:277::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.14; Wed, 20 May
 2026 14:06:46 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0025.022; Wed, 20 May 2026
 14:06:46 +0000
Message-ID: <c9fbfdaf-2a58-4423-8dc5-6e29a88f6293@amd.com>
Date: Wed, 20 May 2026 16:06:40 +0200
User-Agent: Mozilla Thunderbird
To: Xaver Hugl <xaver.hugl@kde.org>
References: <20260516-jorth-syncobj-v1-0-88ede9d98a81@gmail.com>
 <c6c91de9-a34b-4b50-a3c1-d42bf7631f8e@amd.com>
 <CAHijbEUzWZC4GAMU6YGV42gOYkrQaMZZPiwS4Erb4H1J-fh_8Q@mail.gmail.com>
 <69dcbcc1-da58-4d34-bfb0-5c8d33b75d59@amd.com>
 <CAHijbEWqc2+kSkk3i_LxB2PQ6XwUetw1UkdUdXJfdv3zgKd1kA@mail.gmail.com>
 <38551bfe-75e1-4978-b57d-adc43cebc85e@amd.com>
 <CAHijbEWHp960qvZFoK7+9ppHAqkAR7=UQhtMUccqWzGd_pFPQA@mail.gmail.com>
 <5ee6d5af-ac48-41d7-a19f-e08a3c5b7d19@amd.com>
 <CAFZQkGwmeipZnvmBkcE7KhvUSMkSE=fzLBZtiMyhv3mM04Vudg@mail.gmail.com>
 <dff60378-4e47-4753-8878-feec6e1c2690@amd.com>
 <CAFZQkGz=UJqaJ_eTwKBy1pAg5xL+PLibh7W1vYf7JD7Jrx-LZQ@mail.gmail.com>
 <53edf0b5-e733-4b96-87d7-3307275500c0@amd.com>
 <CAFZQkGxpPm081Fz8UtDuBA1PKD42+9YDA+cc6fbSpfawXwu9+g@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <CAFZQkGxpPm081Fz8UtDuBA1PKD42+9YDA+cc6fbSpfawXwu9+g@mail.gmail.com>
X-ClientProxiedBy: BN9P222CA0009.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:408:10c::14) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DS4PR12MB9610:EE_
X-MS-Office365-Filtering-Correlation-Id: 88fa798b-97b9-4634-eea4-08deb6790733
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|7416014|366016|1800799024|22082099003|56012099003|18002099003|5023799004|11063799006|3023799007|4143699003;
X-Microsoft-Antispam-Message-Info: 
	7OpWPTtRHid9cGBpyrX1pfLsQshnFvsiAvR7eSku5pVcjPU0OCVhan2G8zBbU0WF1ewXRgO+1sMD8VQj/eP4eE1W9X1Rr4527rLkGnCtCiZsB3OYZSIi2OWGFIvyKZpiruEY/8MZfvejDY5GQesyxy3oWVGYxrZfj6E6cJlm8DD0BGbPUznYEFey+Zd4o3EiSKapgmnycWBSqiYVtsT5TlaNVzYhs5GWH04GhYQYp+zwiAhJIJhjvFhq4zQR5ilzeLJ9gPwiXxpQLO6wZS10/WgnoC50DfzqL9ds9HJKwdRKASUmDmZu1TFTyF9IOWUxi5/VxILFQx1zCVP+C7lFiOHHGLSpuEWR1velcWesuP/JagOct1ailXhT1kRRGdK3RM195neWg4heGYEsWT4hUc+XQZ79p54U4Ks4gVQfUOJsMqBLX1VK/IGksBB7o+puXup1hATyNyUTCURbzp/OvbcD3z4tRR/AIlfKS445nGS2CiABpD7XdFbDQzmSBH6ozxOdMhSIt2Veb/1a8rJjTzKzIsHv+y5/w3gSlbq7kk2CNGo6XwD63Ut+HXArm2qjjElUp03j1L4O4KINrH4ADFyQO0kapaa3TJWlYrVuNK9o9jsH8gadZ5Y/OuJG4jL3EHrT8nGFJ0ZHK6yBIN72BVGe7jrD+c31V2leuSsABUr3oPOrZWHkMGnymfU+TEtu
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(1800799024)(22082099003)(56012099003)(18002099003)(5023799004)(11063799006)(3023799007)(4143699003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cmxkRlNWblZidkc1cTJzNGF6R3EvN2dycGExd1lZdXhDWkMxUmVMSVFlaW9N?=
 =?utf-8?B?WVNBajFVcEhwRFVjNXJLQ294L3lrQ3ltWDJiUEU0WWlLa3lEWmV3Ulp5VlZy?=
 =?utf-8?B?VGVwbnpNZ0NKNUZZZ2cwbmVyNEZHcE9zWHV6aVVNc0l6SmhXQVBDaE85TWF3?=
 =?utf-8?B?REQ2U3Q1azhtY1NuTEVOK1BpOE5nUnVWSjlnT05JcVVHa1hCeVNhL2FiNnhZ?=
 =?utf-8?B?MW1MYm1kZzhEb3RnQmk2ZGN1cFpEUVkybStZYW45R1JGZXp2QUJWc0gvamF3?=
 =?utf-8?B?aFBxRVFZdUNKZWQyZ2V6OS9mNHRib1JUN3Uwem9DSU5CamMwVUxGMUk2QTZL?=
 =?utf-8?B?eVBFcXpKR05jK1pnZUJneEZWcFM5aXRwQjhSUlEwdGR2NWJteEVRamhNMlk1?=
 =?utf-8?B?R2pLalJHT0ZJa0Z3aEJ4WlhTY0FFSWsyTzhtRXUzNDQ0ckdrNjl6VURBK0lC?=
 =?utf-8?B?eHQ3RjBVbU9FcXZrTFdJRFBMYWc3SnY1clVjZGVWVWMrS2l1akQxa2pmZmJK?=
 =?utf-8?B?cFVvT08zZWs1RW8zbTBNS3JWSkoxSFYrVGlpdXROOC9ITzNyeEZmUnVXZnEr?=
 =?utf-8?B?VlJ2TmdoaEJYeU1KUUNnQ3lNbktuSkRic3MyU1k3T1gvalgydU5DMHRKd2lT?=
 =?utf-8?B?cEs1cG01azV3RFl6UmlRbmlWT2NZVlZRdnY1bURjUEdxTUxYL3dHRnVSWFl4?=
 =?utf-8?B?aTdEMTVyV2VNQ214bm9VaDJtdTVQQ2ZkK2dZU2IrejVTWUE2VGVjaGFETG1X?=
 =?utf-8?B?MFdINFV2RWJWTHF2eVlLMVdRTGs1VExSVFJPcUJ4M05BRXdGdVFYOVI5aFNS?=
 =?utf-8?B?TTdScDR4MTlFY0pqaTZuZkd4SnZxZVloMjRRejB5a1o4S3EvV2JIa3VSZXVp?=
 =?utf-8?B?UlV1SmEzNXRwckVlME9UaFc0dGNkR01JMGZqQ01FN0M5cTl3TXFGTzROTnl3?=
 =?utf-8?B?bm5hQXVvUWV1eEN2LzVRU1F5M0djbUpSM0VkVVJZdk9PTWI5MTM1c3kwcUlD?=
 =?utf-8?B?Smt0dTJyUDF0alltNG5tbm5zYUk4VDMxRHVmQ3pnYUErK3lHRUhuaVVBb0lI?=
 =?utf-8?B?SEZvM0J5M1g2T1pCZDVrZENaOXZzUmlqMjBNQ0taVEQ2QU9BRW82MEdwK0pB?=
 =?utf-8?B?R0pFLzVCSU9hSnkzSjFTa1lRSTVNSjd1RSt1c2YyVVo4VmsxTC9aRW9scklu?=
 =?utf-8?B?WnRZTWRkWXRIMVYwZ3QzZjd4WTdLZit6QmRxcUo3T2Z2QVQrZFJjZ0hKL1Qz?=
 =?utf-8?B?TVdVWmNpb2lNL1dyVHdRTFk5ZHBGZng5dm1UbkdLSVV5OUMyNlUyUGxKRUY5?=
 =?utf-8?B?RjE2Y2dDdSs3TVJ1VVdueWgveWJ6MG8rSkY3ODQybzFQVVE5VDROa29QVlpP?=
 =?utf-8?B?NXMrQW5HNDVTbXhIWEI0MlhhQUJJTUNTbjVGWE1YbnZqT1g1RmRWWkdtZDMr?=
 =?utf-8?B?bHpnb1AzYVV3SVlJQW5aSlVOT0EzdWFFdGlwd0VURXA5S29VaC9JVlNYaUIv?=
 =?utf-8?B?enpjVU9HZzNMT1lNRDFlQitUUzZOQnJiVHZmbjcyQmpqZzF3Zml2d0hheW10?=
 =?utf-8?B?RW5jQit6aFhFM0l5VHI3RGtTZUNWWjZRei92cUN5K2dFczN3TG1QUnpUdmZM?=
 =?utf-8?B?RXhaWHRQdnNGbDdIVDNoemcvK3FSQm9tQU1pZmVpYW5BaUIvbTdLY1d6MkVQ?=
 =?utf-8?B?S0lvWm5lQnArNmoyVGVYL3JOeW1kRXI4RWdjN0I1WXVvd1hOd0huM1hHMjRN?=
 =?utf-8?B?WVVNOWovYnBOcXgvMTA3Y1N3bXJ2dGg1UTBFVDVKR054RnVURWI4T0pWd21F?=
 =?utf-8?B?M3NUUGk2ZjV2RUJQQkQyVnNZU2JkaTE0OGViNlA4bUZNMGM5eDJrMVRuT1Nw?=
 =?utf-8?B?NUN5bVFhUk03QTJQMmwxM0IrOWFtQmZLUVlaancwZzBXbEZpamtscWpGaUk5?=
 =?utf-8?B?Zm5KeHFWalFLSW1nVjh2SFFxdnhGVVhkM1BXYWw4SWJCQTFFSGFSZStFSE9J?=
 =?utf-8?B?Ukd0ZVlkRkFpVHFCNnpHOUtUQXdGM1dxaGRqd0kyeHlVNTVWdEt2SlM3QkR0?=
 =?utf-8?B?VEk4Wm00RlhQcHlTYkNkd2xidm40UnlCWDZCWG0vbUp2RzBZbDFxWDFORmVE?=
 =?utf-8?B?SDdUNzRPOU1WTjdKYlc5L3lWNGdJZEs1TVgzcjZyRmtlV1JFQWRtVXp5V1h4?=
 =?utf-8?B?OU9icXkwQkpVZS9Cak9VNDF2cXNoUkEvd0YyUTRwOGRuMFhiRHdaSDFTT2Vi?=
 =?utf-8?B?dDNXblJ4MEdZaVhzTTF1VWhOUTZBN2JnQktKUXNKeWpyei9ES3cxTVE2VXRD?=
 =?utf-8?Q?mn2Z3eq4TD/79fg6TE?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88fa798b-97b9-4634-eea4-08deb6790733
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2026 14:06:46.2837
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JGB9x8W4fCJMLpslSV1FKUmJph2CJnYYwWDMhDm5vwzQoQELHBxmtgWnGU757T0F
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PR12MB9610
X-Spamd-Bar: --
Message-ID-Hash: 34VFYX63LFFLATHOPCRXLEQ5QJYFB3YE
X-Message-ID-Hash: 34VFYX63LFFLATHOPCRXLEQ5QJYFB3YE
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Julian Orth <ju.orth@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org, =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 00/12] misc/syncobj: add /dev/syncobj device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/34VFYX63LFFLATHOPCRXLEQ5QJYFB3YE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [4.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,linaro.org,lwn.net,linuxfoundation.org,arndb.de,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,mailbox.org];
	DKIM_TRACE(0.00)[amd.com:-];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:mid,amd.com:email]
X-Rspamd-Queue-Id: 0C31658F50A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNS8yMC8yNiAxNDozMywgWGF2ZXIgSHVnbCB3cm90ZToNCj4gQW0gTWkuLCAyMC4gTWFpIDIw
MjYgdW0gMTA6MDggVWhyIHNjaHJpZWIgQ2hyaXN0aWFuIEvDtm5pZw0KPiA8Y2hyaXN0aWFuLmtv
ZW5pZ0BhbWQuY29tPjoNCj4+IFdlbGwgSSB3b3VsZCBzYXkgdGhlIG90aGVyIHdheSBhcm91bmQg
aXMgYSBwcmV0dHkgY29tbW9uIHVzZSBjYXNlLg0KPj4NCj4+IEluIG90aGVyIHdvcmRzIHRoZSBj
b21wb3NpdG9ycyB1c2VzIHRoZSBpbnRlcm5hbCBHUFUgZm9yIGNvbXBvc2luZyBhbmQgZGlzcGxh
eWluZyB0aGUgcGljdHVyZS4gQW5kIHRoZSBjbGllbnQgdXNlcyB0aGUgZXh0ZXJuYWwgR1BVIGZv
ciBmYXN0IHJlbmRlcmluZy4NCj4gU3VyZSwgYnV0IHRoYXQncyBub3Qgd2hhdCBJJ20gdGFsa2lu
ZyBhYm91dC4NCg0KWWVhaCBzb3JyeSBmb3IgdGhhdCwgSSB3YXNuJ3Qgc3VyZSBpZiBJIG1pc3Vu
ZGVyc3Rvb2QgeW91ciB1c2UgY2FzZSBiZWNhdXNlIGl0J3MgdXN1YWxseSB0aGUgb3RoZXIgd2F5
IGFyb3VuZC4NCg0KPj4+IC0gdGhlIGJ1ZmZlcnMgZnJvbSB0aGUgY2xpZW50IHN0YXkgdmFsaWQN
Cj4+DQo+PiBCdWZmZXJzIGZyb20gdGhlIGhvdCBwbHVnZ2VkIEdQVSBkb24ndCBzdGF5IHZhbGlk
LiBBY2Nlc3NpbmcgQ1BVIG1hcHBpbmdzIGVpdGhlciByZXN1bHQgaW4gYSBTSUdCVVMgb3IgYXJl
IHJlZGlyZWN0ZWQgdG8gYSBkdW1teSBwYWdlLg0KPiBBZ2Fpbiwgbm90IHdoYXQgSSB3cm90ZSBh
Ym91dC4gVGhlIGJ1ZmZlcnMgYXJlIG9uIHRoZSBpbnRlZ3JhdGVkIEdQVS4NCg0KR2VuZXJhbCBy
dWxlIG9mIHRodW1iIGlzIHRoYXQgYXMgbG9uZyBhcyB0aGUgZXhwb3J0ZXIgc3RheXMgYXJvdW5k
IHRoZSBidWZmZXJzIHN0YXkgYXJvdW5kIGFzIHdlbGwuDQoNCj4+PiAtIHRoZSBzeW5jb2JqIHN0
YXlzIHZhbGlkIG9uIHRoZSBjbGllbnQgc2lkZQ0KPj4+IC0gdGhlIHN5bmNvYmogYmVjb21lcyBp
bnZhbGlkIG9uIHRoZSBjb21wb3NpdG9yIHNpZGUNCj4+DQo+PiBOb3BlIHRoYXQncyBub3QgY29y
cmVjdC4gVGhlIHN5bmNvYmogaXRzZWxmIHN0YXlzIHZhbGlkIGV2ZW4gaWYgeW91IGNvbXBsZXRl
bHkgaG90IHBsdWcgdGhlIGRldmljZS4NCj4+DQo+PiBJdCBjYW4ganVzdCBiZSB0aGF0IHRoZSBm
ZW5jZXMgaW5zaWRlIHRoZSBzeW5jb2JqIGFyZSB0ZXJtaW5hdGVkIHdpdGggYW4gZXJyb3IuDQo+
IFdoYXQgYWJvdXQgZXZlbnRmZCBjcmVhdGVkIGZvciBhIHBvaW50IG9uIHRoZSBzeW5jb2JqPw0K
DQpUaGUgZXZlbnRmZCB1bmZvcnR1bmF0ZWx5IGRvZXNuJ3QgaGFzIGVycm9yIGhhbmRsaW5nIGFz
IGZhciBhcyBJIGtub3csIHNvIHdoZW4gYSBmZW5jZSBzaWduYWxzIHdpdGggYW4gZXJyb3IgY29u
ZGl0aW9uIHRoZW4gdGhlIGV2ZW50ZmQgeW91IG9ubHkgc2VlcyB0aGF0IGl0IGlzIHNpZ25hbGVk
Lg0KDQo+IEFub3RoZXIgKGZ1dHVyZSkgcHJvYmxlbSB3aXRoIGhvdHBsdWdzIHdpbGwgYmUgaWYg
dGhlIHN5bmMgZmlsZSBoYXNuJ3QNCj4gbWF0ZXJpYWxpemVkIGZvciB0aGUgdGltZWxpbmUgcG9p
bnQgd2hlbiB0aGUgZGV2aWNlIGlzIGhvdHVucGx1Z2dlZCwNCj4gc2luY2UgdGhlcmUgY2FuJ3Qg
YmUgYW4gZXJyb3Igb24gdGhlIGZlbmNlIGlmIHRoZXJlIGlzbid0IG9uZS4gT3INCj4gY291bGQg
dXNlcnNwYWNlIHNvbWVob3cgc2V0IGFuICdhcnRpZmljaWFsJyBmZW5jZSB3aXRoIGFuIGVycm9y
IGluDQo+IHRoYXQgY2FzZT8NCg0KSW4gZ2VuZXJhbCB0aGUgYW5zd2VyIGlzIHllcywgdXNlcnNw
YWNlIG5lZWRzIHRvIHRha2UgY2FyZSBvZiBpbnNlcnRpbmcgZmVuY2VzIHdoZW4gd2FpdCBiZWZv
cmUgc2lnbmFsIGlzIHVzZWQgYW5kIHRoZSB3b3JrIGNhbiBub3QgYmUgc3VibWl0dGVkIHRvIHRo
ZSBIVyBmb3Igc29tZSByZWFzb24uDQoNCkN1cnJlbnRseSB3ZSBvbmx5IGhhdmUgYW4gSU9DVEwg
dG8gaW5zZXJ0IHRoZSBzaWduYWxlZCBkdW1teSBmZW5jZSBhdCBzb21lIHRpbWVsaW5lIHNlcXVl
bmNlLCBidXQgaXQgc2hvdWxkIGJlIHRyaXZpYWwgYXMgd2VsbCB0byBpbnNlcnQgYSBzaWduYWxl
ZCBmZW5jZSB3aXRoIGFuIGVycm9yIGNvZGUuDQoNCkJ1dCB0aGUgY29tcG9zaXRvciBuZWVkcyB0
byBiZSBhYmxlIHRvIGhhbmRsZSB0aGF0IGNhc2UgYW55d2F5LCBiZWNhdXNlIGl0IGNhbiBiZSB0
aGF0IGEgbWFsaWNpb3VzIG9yIGp1c3QgYnVnZ3kgY2xpZW50IGp1c3QgbmV2ZXIgaW5zZXJ0cyB0
aGUgZmVuY2UuDQoNClNvIHRoYXQgYSBkZXZpY2UgaXMgaG90IHBsdWdnZWQgaXMgbm90IGRpZmZl
cmVudCB0byBqdXN0IGEgY2xpZW50IG5vdCBpbnNlcnRpbmcgdGhlIGZlbmNlIGluIHRoZSBmaXJz
dCBwbGFjZS4NCg0KPj4+ICJpbnZhbGlkIiB0aGVyZSBtZWFucyBlaXRoZXINCj4+PiAtIHRoZSBh
Y3F1aXJlIHBvaW50IG9mIHRoZSBjbGllbnQgaXMgbWFya2VkIGFzIHNpZ25hbGVkLCBiZWZvcmUN
Cj4+PiByZW5kZXJpbmcgb24gdGhlIGNsaWVudCBzaWRlIGlzIGNvbXBsZXRlZA0KPj4+IC0gdGhl
IGFjcXVpcmUgcG9pbnQgb2YgdGhlIGNsaWVudCBpcyBuZXZlciBzaWduYWxlZC4gU2luY2UgdGhl
DQo+Pj4gY29tcG9zaXRvciB3YWl0cyBmb3IgdGhlIGFjcXVpcmUgcG9pbnQsIHRoZSBXYXlsYW5k
IHN1cmZhY2UgaXMgc3R1Y2sNCj4+PiBmb3JldmVyDQo+Pg0KPj4gQm90aCBvZiB0aG9zZSB3b3Vs
ZCBiZSBhICptYXNzaXZlKiB2aW9sYXRpb24gb2YgZG9jdW1lbnRlZCBrZXJuZWwgcnVsZXMgZm9y
IGhvdC1wbHVnZ2luZyB3aGljaCBjb3VsZCBsZWFkIHRvIHJhbmRvbSBkYXRhIGNvcnJ1cHRpb24g
YW5kL29yIGRlYWRsb2Nrcy4NCj4+DQo+PiBJZiB5b3Ugc2VlIGFueSBIVyBkcml2ZXIgc2hvd2lu
ZyBiZWhhdmlvciBsaWtlIHRoYXQgcGxlYXNlIG9wZW4gdXAgYSBidWcgcmVwb3J0IGFuZCBwaW5n
IHRoZSByZWxldmFudCBtYWludGFpbmVycyBpbW1lZGlhdGVseS4NCj4gSWYgdGhlcmUgYXJlIG5v
IGVycm9yIGNvZGVzIHdpdGggc3luY29iaiB5ZXQsIHRoZW4gdG8gdXNlcnNwYWNlLCB0aGUNCj4g
bGF0dGVyIGJlaGF2aW9yIGlzIGV4YWN0bHkgd2hhdCB3ZSBnZXQsIGlzbid0IGl0Pw0KDQpObywg
ZnJvbSB1c2Vyc3BhY2Ugc2lkZSB5b3UganVzdCBzZWUgYSBzaWduYWxlZCBmZW5jZS4gSXQncyBq
dXN0IHRoYXQgeW91IG5lZWQgdG8gZXhwb3J0IHRoZSB0aW1lbGluZSBwb2ludCBvZiB0aGUgc3lu
Y29iaiB0byBhIHN5bmNmaWxlIGFuZCB0aGVuIHlvdSBjYW4gY2FsbCB0aGUgUVVFUlkgSU9DVEwg
b24gdGhlIHN5bmNmaWxlIHRvIHNlZSB0aGUgZXJyb3IgY29kZS4NCg0KPj4gV2hlbiBhIGhvdHBs
dWcgaGFwcGVucyBhbGwgb3BlcmF0aW9ucyBvZiB0aGUgZGV2aWNlIHNob3VsZCByZXR1cm4gYW4g
LUVOT0RFViBlcnJvciwgZXZlbiB3aGVuIGV4cG9zZWQgdG8gb3RoZXIgZGV2aWNlcy9hcHBsaWNh
dGlvbiB0aHJvdWdoIHN5bmNvYmogb3Igc3luY2ZpbGUuDQo+IE9rYXksIHRoYXQgYXQgbGVhc3Qg
Z2l2ZXMgdXMgYSB3YXkgdG8gZmFpbCBpbXBvcnRzIHNvbWV3aGF0DQo+IGdyYWNlZnVsbHkuIE5v
cm1hbGx5LCBmYWlsaW5nIHRvIGltcG9ydCBhIHN5bmNvYmogaXMgYSBmYXRhbCBlcnJvciBpbg0K
PiB0aGUgV2F5bGFuZCBwcm90b2NvbC4NCg0KU28gdGhlIHRhc2sgYXQgaGFuZCB3b3VsZCBiZSB0
byBhdm9pZCBpbXBvcnRpbmcgdGhlIHN5bmNvYmogaW50byBhIGRyaXZlci4gVGhhdCBzaG91bGQg
YmUgcmVsYXRpdmVseSB0cml2aWFsLg0KDQpUaGUgb25seSByZWFsIHByb2JsZW0gSSBzZWUgaXMg
aWYgeW91IHdhbnQgdG8gY3JlYXRlIGEgc3luY29iaiB3aXRob3V0IGhhdmluZyBhbnkgZGV2aWNl
IHdoYXRzb2V2ZXIuDQoNCj4+IE9uZSBwcm9ibGVtIGlzIHRoYXQgb25seSBzeW5jZmlsZSBhbGxv
d3MgZm9yIHF1ZXJ5aW5nIHN1Y2ggZXJyb3IgY29kZXMgYXQgdGhlIG1vbWVudCwgd2UgaGF2ZSBw
YXRjaGVzIHBlbmRpbmcgdG8gYWRkIHRoYXQgdG8gc3luY29iaiBhcyB3ZWxsIGJ1dCB3ZSBsYWNr
IGEgY29tcG9zaXRvciB3aXRoIHN1cHBvcnQgZm9yIHRoYXQgYXMgdXNlcnNwYWNlIGNsaWVudC4N
Cj4gQXMgbG9uZyBhcyB0aGUgZXJyb3IgY2FzZSBjYW4gYmUgZGV0ZWN0ZWQgd2l0aCBhbiBldmVu
dGZkLA0KDQpZZWFoIHRoYXQncyB0aGUgcHJvYmxlbS4gVGhlIGV2ZW50ZmQgb25seSB0ZWxscyB5
b3UgaWYgdGhlIG9wZXJhdGlvbiBpcyBjb21wbGV0ZWQgKG9yIGF0IGxlYXN0IGhhcyBtYXRlcmlh
bGl6ZWQpLg0KDQpUbyBxdWVyeSB0aGUgZXJyb3IgeW91IHdvdWxkIG5lZWQgdG8gYXNrIHRoZSB1
bmRlcmx5aW5nIHN5bmNvYmogb3Igc3luY2ZpbGUgZGlyZWN0bHkuDQoNCj4gaW1wbGVtZW50aW5n
IHRoYXQgaW4gS1dpbiBzaG91bGRuJ3QgYmUgYSBjaGFsbGVuZ2UuDQo+IA0KPj4gV2VsbCB0aGUg
cXVlc3Rpb24gaGVyZSBpcyBpZiB0aGUgZGV2aWNlIHRoZSBjb21wb3NpdG9yIGlzIHVzaW5nIG9y
IHRoZSBjbGllbnQgaXMgdXNpbmcgaXMgZ29uZT8NCj4+DQo+PiBJZiB0aGUgY2xpZW50IGRldmlj
ZSBpcyBob3QgcmVtb3ZlZCB0aGUgY29tcG9zaXRvciBzaG91bGQgYmUgcGVyZmVjdGx5IGNhcGFi
bGUgdG8gaW1wb3J0IHRoZSBzeW5jb2JqLg0KPj4NCj4+IElmIHRoZSBjb21wb3NpdG9yIGRldmlj
ZSBpcyBnb25lIHRoZW4geW91IGRvbid0IGhhdmUgYSBkZXZpY2UgdG8gZGlzcGxheSBhbnl0aGlu
ZyBhbnkgbW9yZSwgc28gZ2VuZXJhdGluZyB0aGUgbmV4dCBmcmFtZSBkb2Vzbid0IHNlZW0gdG8g
bWFrZSBzZW5zZSBlaXRoZXIuDQo+Pg0KPj4gV2hhdCBjb3VsZCBiZSBpcyB0aGF0IHlvdSB3YW50
IHRoZSBjb21wb3NpdG9yIHRvIGJlIGtlcHQgYWxpdmUgZXZlbiB3aGVuIHRoZSBkaXNwbGF5IGRl
dmljZSBpcyBnb25lIHRvIHN3aXRjaCBvdmVyIHRvIHZrbXMgb3Igd2hhdGV2ZXIgc28gdGhhdCBh
IFZOQyBzZXNzaW9uIG9yIG90aGVyIHJlbW90ZSBkZXNrdG9wIHN0aWxsIHdvcmtzLg0KPiBUaGVy
ZSBhcmUgdHdvIEdQVXMgaW4gdGhlIGV4YW1wbGUgSSBnYXZlLiBUaGUgY29tcG9zaXRvciBjYW4g
dXNlIGJvdGgNCj4gZm9yIHJlbmRlcmluZyAoaW4gY29zbWljLWNvbXAncyBjYXNlKSBvciBzd2l0
Y2ggYmV0d2VlbiB0aGVtICh3aGF0IEknbQ0KPiB0cnlpbmcgdG8gZG8gd2l0aCBLV2luKSwgb3Ig
dXNlIG9uZSBkZXZpY2UgZm9yIHJlbmRlcmluZywgYW5kIGFub3RoZXINCj4gZm9yIGltcG9ydGlu
ZyB0aGUgc3luY29iai4NCg0KQWghIEkgdGhpbmsgSSBnb3QgdGhlIHByb2JsZW0gbm93LiBZb3Ug
YmFzaWNhbGx5IHdhbnQgdG8gYXZvaWQgaW1wb3J0aW5nIHRoZSBzeW5jb2JqIGJlY2F1c2Ugd2hl
biB0aGUgd3JvbmcgZGV2aWNlIGdvZXMgYXdheSB5b3UgYXJlIGJ1c3RlZC4NCg0KVGhlIHJlYXNv
biB3ZSBkaWRuJ3QgY29uc2lkZXJlZCBoYXZpbmcgdGhlIElPQ1RMcyBvbiB0aGUgRkQgaXMgYmVj
YXVzZSBpZiB5b3UgZG9uJ3QgaW1wb3J0IHRoZW0gYW5kIGluc3RlYWQga2VlcCB0aGVtIGFyb3Vu
ZCB5b3UgY2FuIHJ1biBvdXQgZmlsZSBkZXNjcmlwdG9ycyBxdWl0ZSBxdWlja2x5Lg0KDQpXaGVu
IHlvdSBoYXZlIGFuIHVzZSBjYXNlIHdoZXJlIHlvdSByZWNlaXZlIGFuIEZEIGZyb20gdGhlIGNs
aWVudCBhbmQgZG8gYSBvbmUgc2hvdCBjb252ZXJzaW9uIHRvIGFuIGV2ZW50ZmQgdGhhdCB3aWxs
IHByb2JhYmx5IHdvcmssIGJ1dCBmb3Iga2VlcGluZyB0aGVtIGluIHRoZSBsb25nIHJ1biB5b3Ug
bmVlZCBzb21lIGtpbmQgb2YgY29udGFpbmVyIGZvciB0aGUgc3luY29ianMsIGRvbid0IHlvdT8N
Cg0KPj4+Pj4+PiAzLiBJdCByZW1vdmVzIHRoZSBuZWVkIHRvIHRyYW5zbGF0ZSBiZXR3ZWVuIHN5
bmNvYmpzIGZkcyBhbmQgaGFuZGxlcy4NCj4+Pj4+Pg0KPj4+Pj4+IFRoYXQncyBhIHByZXR0eSBi
aWcgbm8tZ28gYXMgd2VsbC4gVGhlIGRpZmZlcmVudGlhdGlvbiBiZXR3ZWVuIEZEcyBhbmQgaGFu
ZGxlcyBpcyBjb21wbGV0ZWx5IGludGVudGlvbmFsLg0KPj4+Pj4gQ291bGQgeW91IGV4cGFuZCBv
biB3aHkgaXQncyBuZWVkZWQ/IEZvciBjb21wb3NpdG9ycywgdGhlIGhhbmRsZSBpcw0KPj4+Pj4g
anVzdCBhbiBpbnRlcm1lZGlhcnkgdGhpbmcgd2hlbiB0cmFuc2xhdGluZyBiZXR3ZWVuIGZpbGUg
ZGVzY3JpcHRvcnMuDQo+Pj4+DQo+Pj4+IFdlbGwgd2hhdCB3ZSBjb3VsZCBkbyBpcyB0byBhZGQg
YW4gSU9DVEwgdG8gZGlyZWN0bHkgYXR0YWNoIGFuIHN5bmNvYmogZmlsZSBkZXNjcmlwdG9yIHRv
IGFuIGV2ZW50ZmQuDQo+Pj4gVGhhdCB3b3VsZCBiZSBuaWNlLg0KPj4NCj4+IFRha2UgYSBsb29r
IGF0IGRybV9zeW5jb2JqX2ZpbGVfZm9wcyBhbmQgaG93IGRybV9zeW5jb2JqX2FkZF9ldmVudGZk
KCkgaXMgdXNlZC4gQWRkaW5nIHRoYXQgZnVuY3Rpb25hbGl0eSBzaG91bGRuJ3QgYmUgbW9yZSB0
aGFuIGEgdHlwaW5nIGV4ZXJjaXNlLg0KPiBZZWFoLCB0aGlzIHBhdGNoc2V0IGFscmVhZHkgYWRk
cyB0aGF0IGZ1bmN0aW9uYWxpdHkgKG9uIHRoZSBuZXcgZGV2aWNlKS4NCj4gDQo+PiBEbyBJIHNl
ZSBpdCByaWdodCB0aGF0IHRoaXMgd291bGQgYWxyZWFkeSBzb2x2ZSBtb3N0IHByb2JsZW1zIGlu
IHRoZSBjb21wb3NpdG9yIHNpZGU/DQo+IFNraXBwaW5nIHRoZSBzeW5jb2JqIGhhbmRsZSBzdGVw
IHdvdWxkIG9ubHkgcmVkdWNlIHRoZSBhbW91bnRzIG9mDQo+IGlvY3RscyB0aGUgY29tcG9zaXRv
ciBkb2VzLCBidXQgYWZhaWN0IGl0IHdvdWxkbid0IHNvbHZlIGFueQ0KPiBjb21wb3NpdG9yIHBy
b2JsZW1zLiBBdCBsZWFzdCBub3QgYXMgbG9uZyBhcyBpdCdzIHN0aWxsIHRpZWQgdG8gYSBkcm0N
Cj4gZGV2aWNlLg0KDQpZZWFoLCB5b3UgbmVlZCBzb21ldGhpbmcgbGlrZSBhIHN5bmNvYmogY29u
dGFpbmVyIG9yIGR1bW15IERSTSBkZXZpY2UuDQoNCj4gRm9yIGRldmljZSBob3RwbHVncywgdGhl
IG9ubHkgbmV3IHRoaW5nIHdlIG5lZWQgZm9yIGNvcnJlY3RseSBoYW5kbGluZw0KPiBzeW5jb2Jq
IGlzIGEgd2F5IHRvIHJlY2VpdmUgZXJyb3JzIG9uIHRoZSBldmVudGZkLg0KDQpJIG5lZWQgdG8g
bG9vayBpbnRvIHRoZSBldmVudGZkIGNvZGUsIGNvdWxkIGJlIHRoYXQgdGhpcyBpcyBzb21laG93
IHBvc3NpYmxlIGJ1dCBpdCdzIGNsZWFybHkgbm90IHNvbWV0aGluZyBJIHVzZWQgYmVmb3JlLg0K
DQo+IEEgZGV2aWNlLWluZGVwZW5kZW50IHdheSB0byBjcmVhdGUgYW5kIHVzZSBzeW5jb2JqIHdv
dWxkIHN0aWxsIGJlDQo+IHVzZWZ1bCB0byB1cyB0aG91Z2gsIGJvdGggdG8gc2ltcGxpZnkgdGhl
IGNvbXBvc2l0b3IgYW5kIHRvIGltcHJvdmUNCj4gdGhlIHNvZnR3YXJlIHJlbmRlcmluZyB1c2Ug
Y2FzZXMuDQoNClllYWggbm90IHN1cmUgaG93IHRvIGNsZWFubHkgZG8gdGhhdC4gV2UgY291bGQg
aGF2ZSBhIGR1bW15IC9kZXYvZHJpL3JlbmRlcnN5bmMgb3Igc29tZXRoaW5nIGxpa2UgdGhhdCwg
YnV0IHRoYXQgd291bGQgYmUgcXVpdGUgYSBoYWNrLg0KDQpBdCBsZWFzdCBJIHVuZGVyc3RhbmQg
dGhlIHJlcXVpcmVtZW50IG5vdy4NCg0KVGhhbmtzLA0KQ2hyaXN0aWFuLg0KDQo+IA0KPiAtIFhh
dmVyDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=

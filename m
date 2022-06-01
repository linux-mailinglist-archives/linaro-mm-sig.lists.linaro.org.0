Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 407B853A6B9
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jun 2022 15:55:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 661033EEEC
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jun 2022 13:55:46 +0000 (UTC)
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (mail-bn1nam07on2065.outbound.protection.outlook.com [40.107.212.65])
	by lists.linaro.org (Postfix) with ESMTPS id 2614F3ED51
	for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Jun 2022 13:55:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mEjKeoJWiOy1KZ8iSsLe3wNF/Udtz6kb5P4ZEnEeYt53kmiX9WeiOPFUKYRYUY4xSJBp/C5oZgNgRGNl4LR5Cv4kjoAxXzWZFjDHCWYb0zAFHbRVG11QEvr040vOGoehvEjtjdKJ/3E/msancZ0dtGTlHMxprvrCGP8ejGibVxft+zO81mgVt/malB8zPOhpC7V6QdoaswOe1W89VOitD3YMbzn9JqV0lVOcM+/L6ZVKpAhW4algBuHdZ6lMS2nF/VcIv9EjKFzo3mhORX0Q6S6OBbOpL6h7VLFrm0K49FknhyhQjZR51LI8tvkL4Okfh24JvCLNlSamF9d/xe5JzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dJqP1OvV1n+fff+L/BTJPGUrZxXimeTns5PAInVDUuo=;
 b=deLAbU2gu4GazkAcI9QFxDU3ySnySzo8kX3j7NdFqbAanLn/tNLoOIYmcav4fuqXw8Vf/pCm3/UNAl/OM+lVOKvgC2CH6b47dLGbcVQ8iei8jAxWWc2+ATODw9qRqfIaLdch14Tlro402GuZxvpk4avQYVndXknue6va1W329PhrGaN8tPO5mO4iDdmRhU+zlpjuaW4r9f/7nuOko4DmSAuHqEO9P4OqcUKKdLB1DmKYzUb6wk69vNtr2ZJgkxOrFEE5p1RrrofQXrtWg9MdT/F6O00QsNx23Rwq8cIcyD9udNVjb9BwYtGvVcSlXIasHHT2umZ6wnT90Lmv0BfYPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dJqP1OvV1n+fff+L/BTJPGUrZxXimeTns5PAInVDUuo=;
 b=B/zGJ2UiXDCfO7sXHAbaW62hhluHTqFb0UQU7/3OMR1bCeVMHkTrhaHdwuQswCyJR227Wo0TioFX1MgN3oW+XC8TUjlz/CItaXT/Gfehte9f3qL1w7BS5tnsYKF7klj1stkv5VFrVvJKZZEQ8AqSsrPiopaEsOrfdINsIVQgPwE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by DM6PR12MB4450.namprd12.prod.outlook.com (2603:10b6:5:28e::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.12; Wed, 1 Jun
 2022 13:55:36 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::7146:65ee:8fd3:dd03]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::7146:65ee:8fd3:dd03%4]) with mapi id 15.20.5314.013; Wed, 1 Jun 2022
 13:55:36 +0000
Message-ID: <78efbada-6dd5-ead7-fc10-38b5e1e92fc5@amd.com>
Date: Wed, 1 Jun 2022 15:55:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Kalesh Singh <kaleshsingh@google.com>
References: <20220531212521.1231133-1-kaleshsingh@google.com>
 <20220531212521.1231133-2-kaleshsingh@google.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20220531212521.1231133-2-kaleshsingh@google.com>
X-ClientProxiedBy: AS9PR07CA0045.eurprd07.prod.outlook.com
 (2603:10a6:20b:46b::17) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d7e69550-8df7-490c-4a8e-08da43d66785
X-MS-TrafficTypeDiagnostic: DM6PR12MB4450:EE_
X-Microsoft-Antispam-PRVS: 
	<DM6PR12MB445046A6ED32CEC5F7CC80B283DF9@DM6PR12MB4450.namprd12.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	PcZb7jkDJ3w9q0eU2df2dMizU+u6PqIwLN8iCLbXlKvNWBQx6daFFHtm84My3IdVwD9sLPC8mzsNpZV2AQomPw/CYuRj8lj+SdN3BV9cVqEeNgmu81loCmY1wCaUg3rl04FtdDL4xQKF54TQsh+T/kpl0SOMHkU1/OSKQQJ5wdgfFd8AADuuBBja0IeOJi46hlXgvE/Y8/8KJ2RVjsuxGWIOLpsNeThFc8xtA8TIeoN9IbYqYH9RGrtwThMK36QbgNQRqxD0ak1szEYafhJJ0Lf3edP5NaMrLYVxtsQ2tBtHx5/rwpK6yRrZU757BuOF9+dveRTeAo6FVLUszl3+H12L6y8WtgPRp6xvspY/nJGGvrB2sKpwUtWmve2LRsR3ue37VbRIZXPOJ1DB9udnOVMkK5OaL6+KuERWgGRSLIbFEFnBQ5g1Yz1oSeY4yWWzAXnBDvHRVHIX+UrU2RQu6sQIZBo3h5NNcqwsb6Z2t7IbB4TNs0TuwQUuaL1jKjVLeEpjvGi5pP+15gdlU5FjyD8b/zLxIUfxngr3wgRTQrMeSF+4lb+Jyp6feG59bsS8XcvyFdE657XWfheNhOWnWOrpPH7M3YqsDG13XyxIz3NcU0wJrMhvLpUzR9mEIouEnnymibW+tAP8lXmis5U31rjjYhIi+qltEw57+m/btxFM3iHZY0wl/cPfWEzFEL6Nk5FedOoVBfFl88jE37twTHISC34eL5uOd9MeF2okp1r4/3hSYmvPdehsqt3kq6SpnNfTEb6cOGJxxHAhJqatXg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(6506007)(54906003)(6666004)(6512007)(66476007)(2906002)(36756003)(83380400001)(6486002)(31686004)(31696002)(5660300002)(8676002)(86362001)(4326008)(7416002)(6916009)(316002)(66946007)(66556008)(38100700002)(8936002)(186003)(508600001)(2616005)(66574015)(21314003)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?S0ZaVzB5ZE9GTlBIdWc0blRHcjN0amhXWUhBejJIZkZWUTZueko5RktXZ1R2?=
 =?utf-8?B?SGRlQnpBNm1qcjFINjlJNHp3VTh3TkFuMzJZbEhJaGlZZEJnMURhMFh2ZWVX?=
 =?utf-8?B?MjJXYWhUcU9qcUdTWWg0NENrS0FoMVdBdWRNQTZ4MS9VbEFzYUlzWEZJa0xX?=
 =?utf-8?B?Y0U3eWJzeGxyTVp5OG1rU3hnMXl6YUVFSHI0cTZKbzFBU1Mvd2lSRlZianBk?=
 =?utf-8?B?bHBLL0xscjd3M1RuZk5YZkZja0pKODAvR0Y3QzFObzR6UVF0MnVwRk5Ea0lT?=
 =?utf-8?B?K1dQTUFUay92OTdjcmJNSmVuMGxWSmo0YlVRNWRzQXRCa3FxZ2lWWW9Yc21X?=
 =?utf-8?B?bzFycUJCclQ5Mk92bHc3eGppU3QwY09ibUhHS2xaQlZVWmg1cGt1K3ppUjRo?=
 =?utf-8?B?ek0rWGJ1clkrSjZKT2JBTk5PZnFzTzAydER2WDNHVkZCaHBDOHgvazJPVDhT?=
 =?utf-8?B?MVgwLy93aWMzeW5ETDVnNHM0USs4ZnVaZ3lBeXVlbTZnU0JsWXlxdHlXZWY2?=
 =?utf-8?B?N0tuTlRSZjRpVjY4a0JPU1Y4c0FDbWdMWXRjU3Roam5qQUIyUFlmbUVmSGVy?=
 =?utf-8?B?L05IZ29pYkxYeVlwMGd2enRWNGdKUkl1MU95RUZkN09BZE9PazNqd2h2aDdJ?=
 =?utf-8?B?d2syRzJHdFI0SFNKNG10bFNIVUJibVhBanBhUTdpcW5qRzFqNXF4R05TVXo5?=
 =?utf-8?B?dk01aXA1OCtWR2NPL0Rvb3ljWnNSR1ovMW1rTFlHeEt2NEpqTzlyd0dtWWZW?=
 =?utf-8?B?MWkza3NaUTJycUdNTE1ITjljWkV1SlpDc25NYVhlVDdTTGhtMkZIQS9ITENt?=
 =?utf-8?B?REtVcW42Sy9tc3RzZlF5YThJYlFvVTB6SnNkNHhUelVnb0FrNEF5dytyWFA2?=
 =?utf-8?B?R0VrcGZHWmJDRUlIV1FqYjd5T1llTWtGZHZWZXlRS1pOU2pNVmswWFM0S1k3?=
 =?utf-8?B?MFJtYWpGRVFlbkNjdlJta2hjL2N2dzFmZ2d4Q1NyLzVleGhYdlhsckRUSGxm?=
 =?utf-8?B?TkhkbjFxVzRUTEh6TE1QdWJzLzNyRVRDY1ZYYVdhdlpMa3R3SlhZc21jSllN?=
 =?utf-8?B?L0JnT0NINkxRc1JXTFVTUys2OVlvMm9xaEo2YWgzbzAzUHR0S1ZoN0ZFektt?=
 =?utf-8?B?dHkrcE1JcGZaMXFuWDZTY1FucUYxZ25FeCsrN0hRWlhWOEdwU3dOUkp1eHox?=
 =?utf-8?B?Yzd0eFBGeC84QjExNTY3U2doSU5TcHJLc1FaTnNyN0RoN1BDSm5FbXVPWE1W?=
 =?utf-8?B?TlRVU3luY0kyN2thYWxLcUpFVU51NXpKR2w0Q1lkbFB4ZXVGRjFHMnRlNHRj?=
 =?utf-8?B?c2hEVG1UbjBFMTNodkZBeS9XR2RzMWpYR2l2V0tVRDNxT1IzL1lJZEd4L3RG?=
 =?utf-8?B?MVFiOU1xRTQ5VDl2blRFT29mOXFpbUt3ZnV6bjB4bXVqRldyN01LQUdqZVRl?=
 =?utf-8?B?WS85L003YzJmdFVZbk8wSmdIVC80NjUrazljRXNibGxTcHh5bW1zeVpEZENS?=
 =?utf-8?B?SjZ5ekVub1hoeHQyTVBxRzlsZDE5RncxS2xsb3VxaDFkWTdYSTkxN1dMbFJK?=
 =?utf-8?B?KyttSnhtOW4zd1ZuSmpjS3cxTVVWY1NmS2ZON1JuMGFsZyt0YU0zT1VUOUlB?=
 =?utf-8?B?bkRwOVNpaERmNGxqM0RsSkRYaVJadzl5NGNxL3FJOGJHc3BENkRSR2FxN2FU?=
 =?utf-8?B?SmFSTjlnQWxDWFhoZ1FxeGtCQmh6MnpDM1hRWTFLV1JuSUN5TWJxVyswblI0?=
 =?utf-8?B?Vlg2UC9FRTV5TzVkOXppV3VZSUpzUFRidXJzaVFXS0ZpVjdrMVZiYVRRWFJK?=
 =?utf-8?B?YnA1UXhWK0pTdlJxcFhSb0xkZjRFcFZ0SjcwdFNOTWx4YlJDR3Y1Rmt6Zk03?=
 =?utf-8?B?WnJrZ0RwSVlENkh1eEZWT09RRkJSeXBQQXJUSmphUnlpMVZWNzM1aVp0S2pU?=
 =?utf-8?B?TEZUTXBVM0xFKzNUb1J6Q1BCY3lzZEhYbHZIWkE2UjUrOXpmYmhMZHlLcG0r?=
 =?utf-8?B?ZWRzc0djR2NRT2FrNm13Y1RDMnIrclZWZ0d5NjZCTXFXM3FIS2I5eEV3dU1u?=
 =?utf-8?B?WlJZNGFSejJoV2pjb0tVMmpWZnBvR0pubTlXM05yTm0wek5ZM2lyMkwzSFBv?=
 =?utf-8?B?Y205TEI2UXhNNlI4Q0l1cWZBamdVYklmSm5oQkNXNUV2bTI1ODRZRUxuR3hM?=
 =?utf-8?B?VWI5NUhnRE41dlBZUXpjd2wyQnJwZEtWTzBYMkZ1eXZ3NVVkMi95SFlyWkhS?=
 =?utf-8?B?NGM3MkhsaXdqODREdTlVZ3MzL0pqV2NrZkhXZnlyVVpsTlBDSUw5akVQaXFo?=
 =?utf-8?B?OW4vclJxNUV3b1MxOHdKOEpOZFVBcWpOS0dDYnBnanNQcHo4djBXZHlkSHRh?=
 =?utf-8?Q?ns7XnK2ZxrGuQ0rlxapRnGHH+dwXQUkhStVUAnSWpcvCQ?=
X-MS-Exchange-AntiSpam-MessageData-1: 3KCYxfYe406WtA==
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7e69550-8df7-490c-4a8e-08da43d66785
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2022 13:55:36.8009
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AA/IRNWAcXv6x9hXXRzqxclpNYt3ke66k0EH5Z5VANWrFkCuMyaOU1AAtQd3Qtd9
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4450
Message-ID-Hash: JPJ3F77AG6PFG45M4FCAXM2IWW37IIWG
X-Message-ID-Hash: JPJ3F77AG6PFG45M4FCAXM2IWW37IIWG
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: ilkos@google.com, tjmercier@google.com, surenb@google.com, kernel-team@android.com, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, Johannes Weiner <hannes@cmpxchg.org>, Christoph Anton Mitterer <mail@christoph.anton.mitterer.name>, Paul Gortmaker <paul.gortmaker@windriver.com>, Mike Rapoport <rppt@kernel.org>, Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/2] procfs: Add 'size' to /proc/<pid>/fdinfo/
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JPJ3F77AG6PFG45M4FCAXM2IWW37IIWG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMzEuMDUuMjIgdW0gMjM6MjUgc2NocmllYiBLYWxlc2ggU2luZ2g6DQo+IFRvIGJlIGFibGUg
dG8gYWNjb3VudCB0aGUgYW1vdW50IG9mIG1lbW9yeSBhIHByb2Nlc3MgaXMga2VlcGluZyBwaW5u
ZWQNCj4gYnkgb3BlbiBmaWxlIGRlc2NyaXB0b3JzIGFkZCBhICdzaXplJyBmaWVsZCB0byBmZGlu
Zm8gb3V0cHV0Lg0KPg0KPiBkbWFidWZzIGZkcyBhbHJlYWR5IGV4cG9zZSBhICdzaXplJyBmaWVs
ZCBmb3IgdGhpcyByZWFzb24sIHJlbW92ZSB0aGlzDQo+IGFuZCBtYWtlIGl0IGEgY29tbW9uIGZp
ZWxkIGZvciBhbGwgZmRzLiBUaGlzIGFsbG93cyB0cmFja2luZyBvZg0KPiBvdGhlciB0eXBlcyBv
ZiBtZW1vcnkgKGUuZy4gbWVtZmQgYW5kIGFzaG1lbSBpbiBBbmRyb2lkKS4NCj4NCj4gU2lnbmVk
LW9mZi1ieTogS2FsZXNoIFNpbmdoIDxrYWxlc2hzaW5naEBnb29nbGUuY29tPg0KDQpBdCBsZWFz
dCBmb3IgdGhlIERNQS1idWYgcGFydCBmZWVsIGZyZWUgdG8gYWRkIGFuIFJldmlld2VkLWJ5OiBD
aHJpc3RpYW4gDQpLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4gZm9yIHRoaXMuDQoN
ClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4gLS0tDQo+DQo+IENoYW5nZXMgZnJvbSByZmM6DQo+
ICAgIC0gU3BsaXQgYWRkaW5nICdzaXplJyBhbmQgJ3BhdGgnIGludG8gYSBzZXBhcmF0ZSBwYXRj
aGVzLCBwZXIgQ2hyaXN0aWFuDQo+ICAgIC0gU3BsaXQgZmRpbmZvIHNlcV9wcmludGYgaW50byBz
ZXBhcmF0ZSBsaW5lcywgcGVyIENocmlzdGlhbg0KPiAgICAtIEZpeCBpbmRlbnRhdGlvbiAodXNl
IHRhYnMpIGluIGRvY3VtZW50YWlvbiwgcGVyIFJhbmR5DQo+DQo+ICAgRG9jdW1lbnRhdGlvbi9m
aWxlc3lzdGVtcy9wcm9jLnJzdCB8IDEyICsrKysrKysrKystLQ0KPiAgIGRyaXZlcnMvZG1hLWJ1
Zi9kbWEtYnVmLmMgICAgICAgICAgfCAgMSAtDQo+ICAgZnMvcHJvYy9mZC5jICAgICAgICAgICAg
ICAgICAgICAgICB8ICA5ICsrKysrLS0tLQ0KPiAgIDMgZmlsZXMgY2hhbmdlZCwgMTUgaW5zZXJ0
aW9ucygrKSwgNyBkZWxldGlvbnMoLSkNCj4NCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24v
ZmlsZXN5c3RlbXMvcHJvYy5yc3QgYi9Eb2N1bWVudGF0aW9uL2ZpbGVzeXN0ZW1zL3Byb2MucnN0
DQo+IGluZGV4IDFiYzkxZmI4YzMyMS4uNzc5YzA1NTI4ZTg3IDEwMDY0NA0KPiAtLS0gYS9Eb2N1
bWVudGF0aW9uL2ZpbGVzeXN0ZW1zL3Byb2MucnN0DQo+ICsrKyBiL0RvY3VtZW50YXRpb24vZmls
ZXN5c3RlbXMvcHJvYy5yc3QNCj4gQEAgLTE4ODYsMTMgKzE4ODYsMTQgQEAgaWYgcHJlY2lzZSBy
ZXN1bHRzIGFyZSBuZWVkZWQuDQo+ICAgMy44CS9wcm9jLzxwaWQ+L2ZkaW5mby88ZmQ+IC0gSW5m
b3JtYXRpb24gYWJvdXQgb3BlbmVkIGZpbGUNCj4gICAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gICBUaGlzIGZpbGUgcHJv
dmlkZXMgaW5mb3JtYXRpb24gYXNzb2NpYXRlZCB3aXRoIGFuIG9wZW5lZCBmaWxlLiBUaGUgcmVn
dWxhcg0KPiAtZmlsZXMgaGF2ZSBhdCBsZWFzdCBmb3VyIGZpZWxkcyAtLSAncG9zJywgJ2ZsYWdz
JywgJ21udF9pZCcgYW5kICdpbm8nLg0KPiArZmlsZXMgaGF2ZSBhdCBsZWFzdCBmaXZlIGZpZWxk
cyAtLSAncG9zJywgJ2ZsYWdzJywgJ21udF9pZCcsICdpbm8nLCBhbmQgJ3NpemUnLg0KPiArDQo+
ICAgVGhlICdwb3MnIHJlcHJlc2VudHMgdGhlIGN1cnJlbnQgb2Zmc2V0IG9mIHRoZSBvcGVuZWQg
ZmlsZSBpbiBkZWNpbWFsDQo+ICAgZm9ybSBbc2VlIGxzZWVrKDIpIGZvciBkZXRhaWxzXSwgJ2Zs
YWdzJyBkZW5vdGVzIHRoZSBvY3RhbCBPX3h4eCBtYXNrIHRoZQ0KPiAgIGZpbGUgaGFzIGJlZW4g
Y3JlYXRlZCB3aXRoIFtzZWUgb3BlbigyKSBmb3IgZGV0YWlsc10gYW5kICdtbnRfaWQnIHJlcHJl
c2VudHMNCj4gICBtb3VudCBJRCBvZiB0aGUgZmlsZSBzeXN0ZW0gY29udGFpbmluZyB0aGUgb3Bl
bmVkIGZpbGUgW3NlZSAzLjUNCj4gICAvcHJvYy88cGlkPi9tb3VudGluZm8gZm9yIGRldGFpbHNd
LiAnaW5vJyByZXByZXNlbnRzIHRoZSBpbm9kZSBudW1iZXIgb2YNCj4gLXRoZSBmaWxlLg0KPiAr
dGhlIGZpbGUsIGFuZCAnc2l6ZScgcmVwcmVzZW50cyB0aGUgc2l6ZSBvZiB0aGUgZmlsZSBpbiBi
eXRlcy4NCj4gICANCj4gICBBIHR5cGljYWwgb3V0cHV0IGlzOjoNCj4gICANCj4gQEAgLTE5MDAs
NiArMTkwMSw3IEBAIEEgdHlwaWNhbCBvdXRwdXQgaXM6Og0KPiAgIAlmbGFnczoJMDEwMDAwMg0K
PiAgIAltbnRfaWQ6CTE5DQo+ICAgCWlubzoJNjMxMDcNCj4gKwlzaXplOgkwDQo+ICAgDQo+ICAg
QWxsIGxvY2tzIGFzc29jaWF0ZWQgd2l0aCBhIGZpbGUgZGVzY3JpcHRvciBhcmUgc2hvd24gaW4g
aXRzIGZkaW5mbyB0b286Og0KPiAgIA0KPiBAQCAtMTkxNyw2ICsxOTE5LDcgQEAgRXZlbnRmZCBm
aWxlcw0KPiAgIAlmbGFnczoJMDQwMDINCj4gICAJbW50X2lkOgk5DQo+ICAgCWlubzoJNjMxMDcN
Cj4gKwlzaXplOiAgIDANCj4gICAJZXZlbnRmZC1jb3VudDoJNWENCj4gICANCj4gICB3aGVyZSAn
ZXZlbnRmZC1jb3VudCcgaXMgaGV4IHZhbHVlIG9mIGEgY291bnRlci4NCj4gQEAgLTE5MzAsNiAr
MTkzMyw3IEBAIFNpZ25hbGZkIGZpbGVzDQo+ICAgCWZsYWdzOgkwNDAwMg0KPiAgIAltbnRfaWQ6
CTkNCj4gICAJaW5vOgk2MzEwNw0KPiArCXNpemU6ICAgMA0KPiAgIAlzaWdtYXNrOgkwMDAwMDAw
MDAwMDAwMjAwDQo+ICAgDQo+ICAgd2hlcmUgJ3NpZ21hc2snIGlzIGhleCB2YWx1ZSBvZiB0aGUg
c2lnbmFsIG1hc2sgYXNzb2NpYXRlZA0KPiBAQCAtMTk0NCw2ICsxOTQ4LDcgQEAgRXBvbGwgZmls
ZXMNCj4gICAJZmxhZ3M6CTAyDQo+ICAgCW1udF9pZDoJOQ0KPiAgIAlpbm86CTYzMTA3DQo+ICsJ
c2l6ZTogICAwDQo+ICAgCXRmZDogICAgICAgIDUgZXZlbnRzOiAgICAgICAxZCBkYXRhOiBmZmZm
ZmZmZmZmZmZmZmZmIHBvczowIGlubzo2MWFmIHNkZXY6Nw0KPiAgIA0KPiAgIHdoZXJlICd0ZmQn
IGlzIGEgdGFyZ2V0IGZpbGUgZGVzY3JpcHRvciBudW1iZXIgaW4gZGVjaW1hbCBmb3JtLA0KPiBA
QCAtMTk2Miw2ICsxOTY3LDcgQEAgRm9yIGlub3RpZnkgZmlsZXMgdGhlIGZvcm1hdCBpcyB0aGUg
Zm9sbG93aW5nOjoNCj4gICAJZmxhZ3M6CTAyMDAwMDAwDQo+ICAgCW1udF9pZDoJOQ0KPiAgIAlp
bm86CTYzMTA3DQo+ICsJc2l6ZTogICAwDQo+ICAgCWlub3RpZnkgd2Q6MyBpbm86OWU3ZSBzZGV2
OjgwMDAxMyBtYXNrOjgwMGFmY2UgaWdub3JlZF9tYXNrOjAgZmhhbmRsZS1ieXRlczo4IGZoYW5k
bGUtdHlwZToxIGZfaGFuZGxlOjdlOWUwMDAwNjQwZDFiNmQNCj4gICANCj4gICB3aGVyZSAnd2Qn
IGlzIGEgd2F0Y2ggZGVzY3JpcHRvciBpbiBkZWNpbWFsIGZvcm0sIGkuZS4gYSB0YXJnZXQgZmls
ZQ0KPiBAQCAtMTk4NSw2ICsxOTkxLDcgQEAgRm9yIGZhbm90aWZ5IGZpbGVzIHRoZSBmb3JtYXQg
aXM6Og0KPiAgIAlmbGFnczoJMDINCj4gICAJbW50X2lkOgk5DQo+ICAgCWlubzoJNjMxMDcNCj4g
KwlzaXplOiAgIDANCj4gICAJZmFub3RpZnkgZmxhZ3M6MTAgZXZlbnQtZmxhZ3M6MA0KPiAgIAlm
YW5vdGlmeSBtbnRfaWQ6MTIgbWZsYWdzOjQwIG1hc2s6MzggaWdub3JlZF9tYXNrOjQwMDAwMDAz
DQo+ICAgCWZhbm90aWZ5IGlubzo0Zjk2OSBzZGV2OjgwMDAxMyBtZmxhZ3M6MCBtYXNrOjNiIGln
bm9yZWRfbWFzazo0MDAwMDAwMCBmaGFuZGxlLWJ5dGVzOjggZmhhbmRsZS10eXBlOjEgZl9oYW5k
bGU6NjlmOTA0MDBjMjc1YjViNA0KPiBAQCAtMjAxMCw2ICsyMDE3LDcgQEAgVGltZXJmZCBmaWxl
cw0KPiAgIAlmbGFnczoJMDINCj4gICAJbW50X2lkOgk5DQo+ICAgCWlubzoJNjMxMDcNCj4gKwlz
aXplOiAgIDANCj4gICAJY2xvY2tpZDogMA0KPiAgIAl0aWNrczogMA0KPiAgIAlzZXR0aW1lIGZs
YWdzOiAwMQ0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4gaW5kZXggMzJmNTU2NDA4OTBjLi41ZjJhZTM4Yzk2MGYg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4gKysrIGIvZHJpdmVy
cy9kbWEtYnVmL2RtYS1idWYuYw0KPiBAQCAtMzc4LDcgKzM3OCw2IEBAIHN0YXRpYyB2b2lkIGRt
YV9idWZfc2hvd19mZGluZm8oc3RydWN0IHNlcV9maWxlICptLCBzdHJ1Y3QgZmlsZSAqZmlsZSkN
Cj4gICB7DQo+ICAgCXN0cnVjdCBkbWFfYnVmICpkbWFidWYgPSBmaWxlLT5wcml2YXRlX2RhdGE7
DQo+ICAgDQo+IC0Jc2VxX3ByaW50ZihtLCAic2l6ZTpcdCV6dVxuIiwgZG1hYnVmLT5zaXplKTsN
Cj4gICAJLyogRG9uJ3QgY291bnQgdGhlIHRlbXBvcmFyeSByZWZlcmVuY2UgdGFrZW4gaW5zaWRl
IHByb2NmcyBzZXFfc2hvdyAqLw0KPiAgIAlzZXFfcHJpbnRmKG0sICJjb3VudDpcdCVsZFxuIiwg
ZmlsZV9jb3VudChkbWFidWYtPmZpbGUpIC0gMSk7DQo+ICAgCXNlcV9wcmludGYobSwgImV4cF9u
YW1lOlx0JXNcbiIsIGRtYWJ1Zi0+ZXhwX25hbWUpOw0KPiBkaWZmIC0tZ2l0IGEvZnMvcHJvYy9m
ZC5jIGIvZnMvcHJvYy9mZC5jDQo+IGluZGV4IDkxM2JlZjBkMmEzNi4uNDY0YmMzZjU1NzU5IDEw
MDY0NA0KPiAtLS0gYS9mcy9wcm9jL2ZkLmMNCj4gKysrIGIvZnMvcHJvYy9mZC5jDQo+IEBAIC01
NCwxMCArNTQsMTEgQEAgc3RhdGljIGludCBzZXFfc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZv
aWQgKnYpDQo+ICAgCWlmIChyZXQpDQo+ICAgCQlyZXR1cm4gcmV0Ow0KPiAgIA0KPiAtCXNlcV9w
cmludGYobSwgInBvczpcdCVsbGlcbmZsYWdzOlx0MCVvXG5tbnRfaWQ6XHQlaVxuaW5vOlx0JWx1
XG4iLA0KPiAtCQkgICAobG9uZyBsb25nKWZpbGUtPmZfcG9zLCBmX2ZsYWdzLA0KPiAtCQkgICBy
ZWFsX21vdW50KGZpbGUtPmZfcGF0aC5tbnQpLT5tbnRfaWQsDQo+IC0JCSAgIGZpbGVfaW5vZGUo
ZmlsZSktPmlfaW5vKTsNCj4gKwlzZXFfcHJpbnRmKG0sICJwb3M6XHQlbGxpXG4iLCAobG9uZyBs
b25nKWZpbGUtPmZfcG9zKTsNCj4gKwlzZXFfcHJpbnRmKG0sICJmbGFnczpcdDAlb1xuIiwgZl9m
bGFncyk7DQo+ICsJc2VxX3ByaW50ZihtLCAibW50X2lkOlx0JWlcbiIsIHJlYWxfbW91bnQoZmls
ZS0+Zl9wYXRoLm1udCktPm1udF9pZCk7DQo+ICsJc2VxX3ByaW50ZihtLCAiaW5vOlx0JWx1XG4i
LCBmaWxlX2lub2RlKGZpbGUpLT5pX2lubyk7DQo+ICsJc2VxX3ByaW50ZihtLCAic2l6ZTpcdCVs
bGlcbiIsIChsb25nIGxvbmcpZmlsZV9pbm9kZShmaWxlKS0+aV9zaXplKTsNCj4gICANCj4gICAJ
Lyogc2hvd19mZF9sb2NrcygpIG5ldmVyIGRlZmVyZW5jZXMgZmlsZXMgc28gYSBzdGFsZSB2YWx1
ZSBpcyBzYWZlICovDQo+ICAgCXNob3dfZmRfbG9ja3MobSwgZmlsZSwgZmlsZXMpOw0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK

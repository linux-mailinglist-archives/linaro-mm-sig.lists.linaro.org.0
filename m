Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wk4SBMfKJmp1kgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 08 Jun 2026 15:59:35 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BEBD656DE3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 08 Jun 2026 15:59:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=amd.com header.s=selector1 header.b=ylwqYdsA;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=amd.com (policy=quarantine);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 60206409AC
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  8 Jun 2026 13:59:33 +0000 (UTC)
Received: from BL0PR03CU003.outbound.protection.outlook.com (mail-eastusazon11012058.outbound.protection.outlook.com [52.101.53.58])
	by lists.linaro.org (Postfix) with ESMTPS id 46C8940990
	for <linaro-mm-sig@lists.linaro.org>; Mon,  8 Jun 2026 13:59:23 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ep+UUQAuaqq2VCW4LUTEZ+jlyWORGDnKrROma4RaV4qy7i+cMHky/CeqbqjhCmn43I8GLNe8uqSI7YQGUN0TwTm4UZYxLOiVb28IaGH3VTIduLirc/hUFQ/ehLV70NaJAT0661iA2g3/fjJGa5GIqPL2j+SL6RB+i+SBF1aW9gfjxAznxstelX9Z26uLgTQEObQnFPPbf5MWS42nNnHqzdPCS+2R3ffsojGsq48PJMzj25Ge0BbCPX9FAIlIaUQU3RNXAkxrHEU/UE1ySqotVSpl+P/IMP0d+qQI+hV+qvOdcjrS8ti96Alo/eEPmJVUzB5HZJoK8T83lo/V0xP0Tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f9NUUiuF5j2bb81QIuz36SJ/RBj8+AGOvNYmi59zTw4=;
 b=PimhVdxJfJWGuZBqADoZ5LF+j8AB0QSlfICt5SzoEqD35p7gPP1/O3VJvP6dwsfThg9aN3o1QMZy8PEsTa1tb4/vY0QzJll8w3QnAoyBaDUGeqGgxkeRjpbUy5s5hjkutJ3UYmzoRSnsK+KMaCTcBEM8MSVAsLxKffL/4MtfMlRPb9OwQxcIf2O0eel1u9ya9B/5H5bWqhRFw6AK/dYim5PxB2Ovl31nSa4Of823hQF/1AyS/99sDMcp6eXMJpCavOcl3JsOxhPluh83gNPvJ3M7+xB4TyAdtWwz879N/SkccSZPjd5KnbpDWOCCS6v8JrbaR1dTEJxC0KG7GFjMPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f9NUUiuF5j2bb81QIuz36SJ/RBj8+AGOvNYmi59zTw4=;
 b=ylwqYdsAmJIkEdwueIDzqIm7KF39CcdQoCe5lfrfJqRUvOXBIun2zwXdkZsMazoJ7a2bbqYHSi6+wu23kOnGValkjok7dd0tyha/C2+Ai23zsuSQRqmKR1adf/OUxis7YqERT76Qr4VuXTxOn7kK+KskrYzgM/OglCYX6wIhNVw=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SJ0PR12MB6878.namprd12.prod.outlook.com (2603:10b6:a03:483::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.13; Mon, 8 Jun 2026
 13:59:17 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0092.006; Mon, 8 Jun 2026
 13:59:17 +0000
Message-ID: <a51e97bd-39dc-492f-bd7d-f137423277df@amd.com>
Date: Mon, 8 Jun 2026 15:59:04 +0200
User-Agent: Mozilla Thunderbird
To: Bobby Eshleman <bobbyeshleman@gmail.com>
References: <20260603-tcpdm-large-niovs-v1-0-f37a4ac6726c@meta.com>
 <20260603-tcpdm-large-niovs-v1-2-f37a4ac6726c@meta.com>
 <bdce2488-fe77-4f36-9ed6-dd2c785fa7c1@amd.com>
 <aiMY8CpckM8Jav0g@devvm29614.prn0.facebook.com>
 <0c86f5d3-b5e9-4cac-aa9d-30c5c8ecca66@amd.com>
 <CAKB00G3opAoAYswsq2uz0Q6jgku8u4NthKOzCbSumZ0qK7QxcQ@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <CAKB00G3opAoAYswsq2uz0Q6jgku8u4NthKOzCbSumZ0qK7QxcQ@mail.gmail.com>
X-ClientProxiedBy: BLAPR03CA0145.namprd03.prod.outlook.com
 (2603:10b6:208:32e::30) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SJ0PR12MB6878:EE_
X-MS-Office365-Filtering-Correlation-Id: b38fb79d-df85-40fa-3e40-08dec566214a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|366016|7416014|376014|10063799003|22082099003|18002099003|6133799003|4143699003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: 
	sowkkH5VJNgpxW0cbgb7TBleErXgSgCN+YosuSKXQZi2tW5oYouxuvGqXxqCg+tfv3Md81Nvob6w1CQrlbOIQmUxp8QiQrF9+yET3ehts3DjCLXe4nSur/YAJy6UJMhFWBoZLfVu2UZTAildwfjEhNPNOzNj0UADq4KqImVVzjLV3xHO5XqQovwEQr36nGlHw+TVSpyRGyMAaNUXCRvXGhl2pdZCvd+sm0kHJNlYfnAbbrX53/qVXhLU9mxWj+HNJmM1yfndtAV/eLstiTMYl786U2WuGWLsP5xe2Y4rOhRgRf4Vfuk1kZ5ED+PQBtt3tZq876JhI6lafz5a1wIr40sOBIsF+23w3cjRAwJHpayBSaDNp6DFrXwKk9AB83YLUx+tfUsSZ6ta1Hn8/RiLUA28i6kuIYhfjeXo5NaXAceRZ8BVfOJdCr/T9aoUdPzqzz79Bzcd57PC0G57Df//dACXThWXVHKKlYkLj2TNem43YPTnD6of9ehD6MCOs3gVSL/r1HETjjZwLwXuqK+BqPlPRu2UqrZ7R/3LYXUlbRnqi5aYFCztE0eH/UhX5JxLMlrulrdXf9Ojuxvv/y7VwsOR+D/jdjcYy4a0sRJUQhIYJVuB31aXOpP/3j4DymtGCSPx/ZzbhSgdxW2EDeJirb1b9OsKlaB83KAhn+IcHkQZSgs78Syiqa20FYJJ3Rpa
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(7416014)(376014)(10063799003)(22082099003)(18002099003)(6133799003)(4143699003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MDNLRGZCMThncjlIbHkrQjRldXFoMFpENVRyU1NkdjgzaSt0L3RtMXlMdU5W?=
 =?utf-8?B?SWdsL0NkYk9Hb1VNZWpQenFHdEJpR0ZwUHN0MGg0Tml5Q0dESi9JVkVteW9v?=
 =?utf-8?B?OTFPZ2I5VXkrdHNpQXdiaUQzOTlaOVNZS2FERWw5eDRQUzJLVVp1dy9CaHhJ?=
 =?utf-8?B?UTVFSWRRWWhxYUVWY0dGQndDTVJTaktTb3pyUmFqVTlORGFoaEo4S1lERnF4?=
 =?utf-8?B?L084OCtNeTdqSW43N2gzZXF1VDdUbEtJNUhkY0NCWEFwbENPNitleW9OQUdU?=
 =?utf-8?B?N1o0VmhpWW5BU0RIQ1ZrbktmYkNNWWZhWmwzVFRVRzFjYnhIOHlPdDRQaUE0?=
 =?utf-8?B?aEN1R3EwQlloaDIwQzE0MHdiczhsODFOMmYyVmpSMXNrM0pZdm5oT3crSVlU?=
 =?utf-8?B?U2tWY0RmbkdQYmFRczhPaHVxRmE1UysvSUNPZEZyU3B4YzZpejJON1ppM1RG?=
 =?utf-8?B?TUYyV1pTejFUSlBld0t0aXdWSjcybldPTnBEb3l2QXE0aEdFazdPVDA5dmd5?=
 =?utf-8?B?bXFLcndLOU9maXpTWkFGS216MEhJc3ZSdG90ejhSU2U4WmVSdUs3M21oMzRo?=
 =?utf-8?B?Q1ErZG83WlFadUNQYXIwUmx0Z0RjSTBDZnIwYUdEdncrRzcxdDhaVFFrVlRR?=
 =?utf-8?B?elhJQUc5U09BUTNvcUt3disrSWFTQU54R0liYmxSdGpEM0tKeE1FSWVwR1hH?=
 =?utf-8?B?ai8zUml1YS9rOWoyeExxbUFWREx2ckZHbEdMTmZwZ3NudnZOMlZIeFFwSkhh?=
 =?utf-8?B?OE9FNlE3MStYSHdWblk2dy84Q3FtQlorOFJ0aGVaZitSekNzbkl3VmE0SEdr?=
 =?utf-8?B?L2R4VHhEKzIvYmRyVFFzZnNmUHZkWERtL2ZTcE8rOVcyRGlpQTRya0h5ZUcr?=
 =?utf-8?B?akRFODhud1I2OUF2bGx4ZHgwVFhERTNmeU4vSGMwYU9Da2xtMmpJeEJPWkNG?=
 =?utf-8?B?VmFBZEhjaGRObWJWcVZ4S3IrcVBPbERsT2ZldVR0bFNiS1pRQm8wUlpFbHhj?=
 =?utf-8?B?OHRDbXdETElCQ1I3bjhXaFVmbnhmbHU5dzFBa0N3ckR5dVNYOTNDdmpkcHNh?=
 =?utf-8?B?QUtJditLc284QVBRRjkxU2k2SVcvalh4d2MzZENTdVd4WHQxYnV5ckVMd1BZ?=
 =?utf-8?B?V3RxSFdZT3NhRGVrNno5RkR3NnAzU3FWQTlCVC9TdS9VWEk2eGxjVmRaOXBw?=
 =?utf-8?B?QmJiWkd5ZlhkL2I4bmgvd045Y3JmSkhYUGF1U0ZDT0VibDlKU1IrK2tTVFZo?=
 =?utf-8?B?aVdqZXZhck9wSTNHTlU3Kzd2OUE2RDNlN2xhYXpEWUdESExRK2FpK3RqNHND?=
 =?utf-8?B?Vi9XRHc5MURzdzNoR09xdW1mTDlBWnBja0RUczRVN2JoaDFKUkxqT2gvWkVs?=
 =?utf-8?B?eHVxZEYrL05CbVVicG5reklIVzhlZWE0UDBsOUJhT2dZMHZUOXpOOU0rU2V5?=
 =?utf-8?B?RURWNCtGbWprUkpHSWVIeHhiREpobHlVeTA4UkQxYmEvWk5PaTZ6c25TeXhT?=
 =?utf-8?B?a01YKzlWNG5xR2h0SXBBVkhtVWhYZ3lyQWU1YkU5WmY3T1FLeEVxQ0V4ejNt?=
 =?utf-8?B?QXA3dnJ2c0s3Y3ltRmJhbERGeE1zWkM3Vm5YbFYzRkducmN6OWlub2EvalRO?=
 =?utf-8?B?by81c2dZUEJhaHZOb2Y3WlA4Q1EyeFRhbUdUOWlsdkk1VzVkVG8xS0tObloz?=
 =?utf-8?B?NG1weDlMZytnZHdNaDFqTEU0c3kzMTZmdDVsWGZpMzdlam12Z3llczQzNXAw?=
 =?utf-8?B?a0V3T2NaMWE3WWVWSmZKdkM1TU0wYncyYTJIaFhaUE9nN2lGZXlvWmtGWUt1?=
 =?utf-8?B?NU9iRlgrUytrVWI3NmxRckQvTVJHNGpMTllzZWV3Rmd2ZlJEKzFSY3Q5TVY3?=
 =?utf-8?B?UHhJQXkzakFPZENvU0svSE53OG5nYnhGVE52eTRkU2FYdnVPOVlQbUh4UnBh?=
 =?utf-8?B?ODFxUmw3MGJpYXlGT1l3ZXQ5TjlMK3lxNWZWTEx6ZzY0WUE2VFordnczZHha?=
 =?utf-8?B?dU5qbTVaVGNjUFJOWGpGWldHK0RSL1dEb0VINFY4ZEpSZkxuOTBSQzArQkR4?=
 =?utf-8?B?WkhQZGNOZW54VHBWMXAvb2tybW9kcG51NnpLOWxxL0xYeWw2dXpMamV3TmxB?=
 =?utf-8?B?TUl5K2g1SGRBcnhMNXExWG4vblhWbFBKRHpMTzdXSlh6OHZpOElPalIralRO?=
 =?utf-8?B?WXk3Y05ZZzVOYkYvMEMxMFY2Q3ZidzA1aVN6dlN1UUxkdjVjaUl2dXBDUGpD?=
 =?utf-8?B?bTdHMy92VEh1V2l4MEdvYnAzOThwOE8xN0wwKzJKZVVrNU9kMEMvb2VuUlkr?=
 =?utf-8?Q?PdsqcNFJ0NuxrrF4q5?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b38fb79d-df85-40fa-3e40-08dec566214a
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2026 13:59:17.2139
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LayaBdD/cYOWVZImWkl8CxH4yZCvqOtvYxYU4HMkb9l2Xtpo9PMeB7WUm8lajznT
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB6878
X-Spamd-Bar: -----
Message-ID-Hash: 7GN6SRSI3AC54R5ETVO5MRMAVRIFANUS
X-Message-ID-Hash: 7GN6SRSI3AC54R5ETVO5MRMAVRIFANUS
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, Gerd Hoffmann <kraxel@redhat.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, Shuah Khan <shuah@kernel.org>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, sdf@fomichev.me, razor@blackwall.org, daniel@iogearbox.net, almasrymina@google.com, matttbe@kernel.org, skhawaja@google.com, dw@davidwei.uk, Bobby Eshleman <bobbyeshleman@meta.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next 2/4] udmabuf: emit one sg entry per pinned folio
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7GN6SRSI3AC54R5ETVO5MRMAVRIFANUS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:bobbyeshleman@gmail.com,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:andrew+netdev@lunn.ch,m:kraxel@redhat.com,m:vivek.kasireddy@intel.com,m:sumit.semwal@linaro.org,m:shuah@kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kselftest@vger.kernel.org,m:sdf@fomichev.me,m:razor@blackwall.org,m:daniel@iogearbox.net,m:almasrymina@google.com,m:matttbe@kernel.org,m:skhawaja@google.com,m:dw@davidwei.uk,m:bobbyeshleman@meta.com,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[26];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,davemloft.net,google.com,redhat.com,lunn.ch,intel.com,linaro.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,fomichev.me,blackwall.org,iogearbox.net,davidwei.uk,meta.com];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	DKIM_TRACE(0.00)[amd.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[meta.com:email,amd.com:email,amd.com:mid,amd.com:from_mime,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6BEBD656DE3

T24gNi84LzI2IDE1OjU1LCBCb2JieSBFc2hsZW1hbiB3cm90ZToNCj4gDQo+IE9uIFN1biwgSnVu
IDcsIDIwMjYgYXQgMTE6NDLigK9QTSBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20gPG1haWx0bzpjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+PiB3cm90ZToNCj4gDQo+
ICAgICBPbiA2LzUvMjYgMjA6NDQsIEJvYmJ5IEVzaGxlbWFuIHdyb3RlOg0KPiAgICAgPiBPbiBG
cmksIEp1biAwNSwgMjAyNiBhdCAxMTozMDowN0FNICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdy
b3RlOg0KPiAgICAgPj4gT24gNi80LzI2IDAyOjQyLCBCb2JieSBFc2hsZW1hbiB3cm90ZToNCj4g
ICAgID4+PiBGcm9tOiBCb2JieSBFc2hsZW1hbiA8Ym9iYnllc2hsZW1hbkBtZXRhLmNvbSA8bWFp
bHRvOmJvYmJ5ZXNobGVtYW5AbWV0YS5jb20+Pg0KPiAgICAgPj4+DQo+ICAgICA+Pj4gZ2V0X3Nn
X3RhYmxlKCkgZW1pdHRlZCBvbmUgUEFHRV9TSVpFIHNnIGVudHJ5IHBlciBwYWdlIGV2ZW4gd2hl
biB0aGUNCj4gICAgID4+PiB1bmRlcmx5aW5nIGZvbGlvIHdhcyBsYXJnZXIuDQo+ICAgICA+Pj4N
Cj4gICAgID4+PiBJbnN0ZWFkLCB3YWxrIGZvbGlvc1tdIGFuZCBlbWl0IG9uZSBzZyBlbnRyeSBw
ZXIgZm9saW8uIFdoZW4gZm9saW9zDQo+ICAgICA+Pj4gcmVwcmVzZW50IGxhcmdlIHBhZ2VzIChh
cyBpcyBmb3IgTUZEX0hVR0VUTEIpLCBlYWNoIHNnIGVudHJ5IGlzIGEgbGFyZ2UNCj4gICAgID4+
PiBwYWdlLiBOb3JtYWwgUEFHRV9TSVpFIHNnIHRhYmxlcyBhcmUgdW5jaGFuZ2VkLg0KPiAgICAg
Pj4+DQo+ICAgICA+Pj4gUmVxdWlyZWQgYnkgbmV0L2NvcmUvZGV2bWVtIHRvIHN1cHBvcnQgcngt
YnVmLXNpemUgPiBQQUdFX1NJWkUgd2l0aA0KPiAgICAgPj4+IHVkbWFidWYuDQo+ICAgICA+Pg0K
PiAgICAgPj4gVGhhdCBkb2Vzbid0IGV4cGxhaW4gd2h5IHRoaXMgaXMgcmVxdWlyZWQuDQo+ICAg
ICA+DQo+ICAgICA+IFN1cmUsIGNhbiBkZWZpbml0ZWx5IGFkZC4gRGV2bWVtIGN1cnJlbnRseSBy
ZXF1aXJlcyBkbWFidWYgc2cgZW50cmllcyB0bw0KPiAgICAgPiBiZSBsZW5ndGggYW5kIHNpemUg
YWxpZ25lZCB3aGVuIGl0IGFsbG9jYXRlcyBuaW92cyBmb3IgTklDIHBhZ2UgcG9vbHMuDQo+ICAg
ICA+IFRob3VnaCB1ZG1hYnVmIGlzIG5vdCB2aW9sYXRpbmcgYW55IGRtYWJ1ZiBjb250cmFjdCBi
eSBlbWl0dGluZw0KPiAgICAgPiBQQUdFX1NJWkUgZW50cmllcyBhbmQgdGhlIGFib3ZlIHJlc3Ry
aWN0aW9uIGlzIHByb2JhYmx5IG1vcmUgYQ0KPiAgICAgPiBzaG9ydGZhbGxpbmcgb2YgZGV2bWVt
LCBieSBlbWl0dGluZyBhIHNpbmdsZSBlbnRyeSBwZXIgZm9saW8gdGhpcyBwYXRjaA0KPiAgICAg
PiBhbGxvd3MgdWRtYWJ1ZiB0byBiZSB1c2VkIGJ5IGRldm1lbSBmb3IgbGFyZ2UgcGFnZXMuDQo+
ICAgICA+DQo+ICAgICA+Pg0KPiAgICAgPj4gUGxlYXNlIG5vdGUgdGhhdCBhY2Nlc3NpbmcgdGhl
IHBhZ2VzL2ZvbGlvIG9mIGFuIHNnLXRhYmxlIHJldHVybmVkIGJ5IERNQS1idWYgaXMgaWxsZWdh
bCBhbmQgc3RyaWN0bHkgZm9yYmlkZGVuIQ0KPiAgICAgPj4NCj4gICAgID4+IFJlZ2FyZHMsDQo+
ICAgICA+PiBDaHJpc3RpYW4uDQo+ICAgICA+DQo+ICAgICA+IEl0IHNlZW1zIGJvdGggZGV2bWVt
IGFuZCBpb191cmluZyB6Y3J4IGF0IGxlYXN0IGludHJvc3BlY3QgdGhyb3VnaCB0bw0KPiAgICAg
PiB0aGUgc2ctdGFibGUgdG8gYnVpbGQgTklDIHBhZ2UgcG9vbHMgKG5vdCBhY2Nlc3NpbmcgdGhl
IG1lbW9yeSBpdHNlbGYsDQo+ICAgICA+IGhvd2V2ZXIpLiBJcyB0aGVyZSBhIGJldHRlciB3YXk/
DQo+IA0KPiAgICAgVGhhdCdzIGFuIGFic29sdXRlIE5PLUdPISBXZSBuZWVkIHRvIHN0b3AgdGhh
dCBpbW1lZGlhdGVseS4NCj4gDQo+ICAgICBUb3VjaGluZyB0aGUgdW5kZXJseWluZyBzdHJ1Y3Qg
cGFnZSBvZiBhbiBETUEtYnVmIGV4cG9ydGVkIHNnLXRhYmxlIGlzIHN0cmljdGx5IGZvcmJpZGRl
bi4NCj4gDQo+ICAgICBXZSBldmVuIGhhdmUgY29kZSB0byB3cmFwIHRoZSBzZ190YWJsZSBhbmQg
aGlkZSB0aGUgc3RydWN0IHBhZ2VzIG9uIGRlYnVnIGJ1aWxkcyB0byBjYXRjaCB0aG9zZSBpc3N1
ZXMsIHNlZSBmdW5jdGlvbiBkbWFfYnVmX3dyYXBfc2dfdGFibGUoKS4NCj4gDQo+ICAgICBNeSBs
YXN0IHN0YXR1cyBpcyB0aGF0IHRoZSBOSUMgcGFnZSBwb29scyBhcmUgYnVpbGQgZGlyZWN0bHkg
ZnJvbSB0aGUgRE1BIGFkZHJlc3NlcyBleHBvc2VkIGJ5IHRoZSBzZ190YWJsZS4NCj4gDQo+ICAg
ICBXYXMgdGhlcmUgYW55IGNoYW5nZSBJJ20gbm90IGF3YXJlIG9mPw0KPiANCj4gICAgIFJlZ2Fy
ZHMsDQo+ICAgICBDaHJpc3RpYW4uDQo+IA0KPiANCj4gT2ggbm8gY2hhbmdlLCB5b3VyIG1lbnRh
bCBtb2RlbCBpcyBzdGlsbCBjdXJyZW50Lg0KPiBUaGV5IGp1c3QgZ28gdGhyb3VnaCBlYWNoIHNn
IGFuZCB1c2Ugc2dfZG1hX2FkZHJlc3MoKSBvbiBlYWNoLg0KDQpBaCwgdGhhbmtzISBUaGF0IHdh
cyBhIG5lYXIgaGVhcnQgYXR0YWNrIDpEDQoNClllYWggdGhhdCBpcyBwZXJmZWN0bHkgY29ycmVj
dCwgcXVlc3Rpb24gaXMgZG8geW91IHRoZW4gc3RpbGwgcmVhbGx5IG5lZWQgdGhpcyB1ZG1hYnVm
IGNoYW5nZT8gSSBtZWFuIHRoZSBETUEgQVBJIHVzdWFsbHkgbWVyZ2VzIHRvZ2V0aGVyIGNvbnRp
Z3VvdXMgRE1BIGFkZHJlc3Nlcy4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPiANCj4gQmVz
dCwNCj4gQm9iYnkNCj4gDQo+IA0KPiAgICAgPg0KPiAgICAgPiBCZXN0LA0KPiAgICAgPiBCb2Ji
eQ0KPiAgICAgPg0KPiAgICAgPj4NCj4gICAgID4+PiBTaWduZWQtb2ZmLWJ5OiBCb2JieSBFc2hs
ZW1hbiA8Ym9iYnllc2hsZW1hbkBtZXRhLmNvbSA8bWFpbHRvOmJvYmJ5ZXNobGVtYW5AbWV0YS5j
b20+Pg0KPiAgICAgPj4+IC0tLQ0KPiAgICAgPj4+wqAgZHJpdmVycy9kbWEtYnVmL3VkbWFidWYu
YyB8IDQ3ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tDQo+
ICAgICA+Pj7CoCAxIGZpbGUgY2hhbmdlZCwgNDIgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMo
LSkNCj4gICAgID4+Pg0KPiAgICAgPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvdWRt
YWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYw0KPiAgICAgPj4+IGluZGV4IDk0Yjhl
Y2I4OTJiYi4uZjI4ZGQzNzg4YWRhIDEwMDY0NA0KPiAgICAgPj4+IC0tLSBhL2RyaXZlcnMvZG1h
LWJ1Zi91ZG1hYnVmLmMNCj4gICAgID4+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5j
DQo+ICAgICA+Pj4gQEAgLTE0MSwyNiArMTQxLDYzIEBAIHN0YXRpYyB2b2lkIHZ1bm1hcF91ZG1h
YnVmKHN0cnVjdCBkbWFfYnVmICpidWYsIHN0cnVjdCBpb3N5c19tYXAgKm1hcCkNCj4gICAgID4+
PsKgIMKgIMKgIMKgIMKgdm1fdW5tYXBfcmFtKG1hcC0+dmFkZHIsIHVidWYtPnBhZ2Vjb3VudCk7
DQo+ICAgICA+Pj7CoCB9DQo+ICAgICA+Pj4NCj4gICAgID4+PiArLyogUmV0dXJuIHRoZSBudW1i
ZXIgb2YgY29udGlndW91cyBwYWdlcyBiYWNrZWQgYnkgdGhlIGZvbGlvIGF0IEBpLg0KPiAgICAg
Pj4+ICsgKiBBIHVkbWFidWYgbWF5IG1hcCBvbmx5IHBhcnQgb2YgYSBmb2xpbywgb3IgcmVmZXJl
bmNlIHRoZSBzYW1lIGZvbGlvDQo+ICAgICA+Pj4gKyAqIGluIG11bHRpcGxlIG5vbi1jb250aWd1
b3VzIHJ1bnMsIHNvIGZvbGlvX25yX3BhZ2VzKCkgY2FuJ3QgYmUgdXNlZC4NCj4gICAgID4+PiAr
ICovDQo+ICAgICA+Pj4gK3N0YXRpYyBwZ29mZl90IHVkbWFidWZfZm9saW9fbnJfcGFnZXMoc3Ry
dWN0IHVkbWFidWYgKnVidWYsIHBnb2ZmX3QgaSkNCj4gICAgID4+PiArew0KPiAgICAgPj4+ICvC
oCDCoCDCoCDCoHN0cnVjdCBmb2xpbyAqZiA9IHVidWYtPmZvbGlvc1tpXTsNCj4gICAgID4+PiAr
wqAgwqAgwqAgwqBwZ29mZl90IGo7DQo+ICAgICA+Pj4gKw0KPiAgICAgPj4+ICvCoCDCoCDCoCDC
oGZvciAoaiA9IDE7IGkgKyBqIDwgdWJ1Zi0+cGFnZWNvdW50OyBqKyspIHsNCj4gICAgID4+PiAr
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBpZiAodWJ1Zi0+Zm9saW9zW2kgKyBqXSAhPSBmKQ0KPiAg
ICAgPj4+ICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGJyZWFrOw0KPiAgICAg
Pj4+ICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoC8qIFNhbWUgZm9saW8sIGJ1dCBub3QgYSBzZXF1
ZW50aWFsIG9mZnNldCB3aXRoaW4gaXQuICovDQo+ICAgICA+Pj4gK8KgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgaWYgKHVidWYtPm9mZnNldHNbaSArIGpdICE9IHVidWYtPm9mZnNldHNbaV0gKyBqICog
UEFHRV9TSVpFKQ0KPiAgICAgPj4+ICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oGJyZWFrOw0KPiAgICAgPj4+ICvCoCDCoCDCoCDCoH0NCj4gICAgID4+PiArwqAgwqAgwqAgwqBy
ZXR1cm4gajsNCj4gICAgID4+PiArfQ0KPiAgICAgPj4+ICsNCj4gICAgID4+PiArLyogQ291bnQg
dGhlIGNvbnRpZ3VvdXMgZm9saW8gcnVucyBpbiBAdWJ1Ziwgb25lIHNnIGVudHJ5IHBlciBydW4u
ICovDQo+ICAgICA+Pj4gK3N0YXRpYyB1bnNpZ25lZCBpbnQgdWRtYWJ1Zl9zZ19uZW50cyhzdHJ1
Y3QgdWRtYWJ1ZiAqdWJ1ZikNCj4gICAgID4+PiArew0KPiAgICAgPj4+ICvCoCDCoCDCoCDCoHVu
c2lnbmVkIGludCBuZW50cyA9IDA7DQo+ICAgICA+Pj4gK8KgIMKgIMKgIMKgcGdvZmZfdCBpOw0K
PiAgICAgPj4+ICsNCj4gICAgID4+PiArwqAgwqAgwqAgwqBmb3IgKGkgPSAwOyBpIDwgdWJ1Zi0+
cGFnZWNvdW50OyBpICs9IHVkbWFidWZfZm9saW9fbnJfcGFnZXModWJ1ZiwgaSkpDQo+ICAgICA+
Pj4gK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgbmVudHMrKzsNCj4gICAgID4+PiArwqAgwqAgwqAg
wqByZXR1cm4gbmVudHM7DQo+ICAgICA+Pj4gK30NCj4gICAgID4+PiArDQo+ICAgICA+Pj7CoCBz
dGF0aWMgc3RydWN0IHNnX3RhYmxlICpnZXRfc2dfdGFibGUoc3RydWN0IGRldmljZSAqZGV2LCBz
dHJ1Y3QgZG1hX2J1ZiAqYnVmLA0KPiAgICAgPj4+wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24gZGly
ZWN0aW9uKQ0KPiAgICAgPj4+wqAgew0KPiAgICAgPj4+wqAgwqAgwqAgwqAgwqBzdHJ1Y3QgdWRt
YWJ1ZiAqdWJ1ZiA9IGJ1Zi0+cHJpdjsNCj4gICAgID4+PiAtwqAgwqAgwqAgwqBzdHJ1Y3Qgc2df
dGFibGUgKnNnOw0KPiAgICAgPj4+wqAgwqAgwqAgwqAgwqBzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnNn
bDsNCj4gICAgID4+PiAtwqAgwqAgwqAgwqB1bnNpZ25lZCBpbnQgaSA9IDA7DQo+ICAgICA+Pj4g
K8KgIMKgIMKgIMKgc3RydWN0IHNnX3RhYmxlICpzZzsNCj4gICAgID4+PiArwqAgwqAgwqAgwqBw
Z29mZl90IGksIHJ1bjsNCj4gICAgID4+PiArwqAgwqAgwqAgwqB1bnNpZ25lZCBpbnQgbmVudHM7
DQo+ICAgICA+Pj7CoCDCoCDCoCDCoCDCoGludCByZXQ7DQo+ICAgICA+Pj4NCj4gICAgID4+PiAr
wqAgwqAgwqAgwqBuZW50cyA9IHVkbWFidWZfc2dfbmVudHModWJ1Zik7DQo+ICAgICA+Pj4gKw0K
PiAgICAgPj4+wqAgwqAgwqAgwqAgwqBzZyA9IGt6YWxsb2Nfb2JqKCpzZyk7DQo+ICAgICA+Pj7C
oCDCoCDCoCDCoCDCoGlmICghc2cpDQo+ICAgICA+Pj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oHJldHVybiBFUlJfUFRSKC1FTk9NRU0pOw0KPiAgICAgPj4+DQo+ICAgICA+Pj4gLcKgIMKgIMKg
IMKgcmV0ID0gc2dfYWxsb2NfdGFibGUoc2csIHVidWYtPnBhZ2Vjb3VudCwgR0ZQX0tFUk5FTCk7
DQo+ICAgICA+Pj4gK8KgIMKgIMKgIMKgcmV0ID0gc2dfYWxsb2NfdGFibGUoc2csIG5lbnRzLCBH
RlBfS0VSTkVMKTsNCj4gICAgID4+PsKgIMKgIMKgIMKgIMKgaWYgKHJldCA8IDApDQo+ICAgICA+
Pj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGdvdG8gZXJyX2FsbG9jOw0KPiAgICAgPj4+DQo+
ICAgICA+Pj4gLcKgIMKgIMKgIMKgZm9yX2VhY2hfc2coc2ctPnNnbCwgc2dsLCB1YnVmLT5wYWdl
Y291bnQsIGkpDQo+ICAgICA+Pj4gLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgc2dfc2V0X2ZvbGlv
KHNnbCwgdWJ1Zi0+Zm9saW9zW2ldLCBQQUdFX1NJWkUsDQo+ICAgICA+Pj4gK8KgIMKgIMKgIMKg
c2dsID0gc2ctPnNnbDsNCj4gICAgID4+PiArwqAgwqAgwqAgwqBmb3IgKGkgPSAwOyBpIDwgdWJ1
Zi0+cGFnZWNvdW50OyBpICs9IHJ1bikgew0KPiAgICAgPj4+ICvCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoHJ1biA9IHVkbWFidWZfZm9saW9fbnJfcGFnZXModWJ1ZiwgaSk7DQo+ICAgICA+Pj4gK8Kg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgc2dfc2V0X2ZvbGlvKHNnbCwgdWJ1Zi0+Zm9saW9zW2ldLCBy
dW4gPDwgUEFHRV9TSElGVCwNCj4gICAgID4+PsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIHVidWYtPm9mZnNldHNbaV0pOw0KPiAgICAgPj4+ICvCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoHNnbCA9IHNnX25leHQoc2dsKTsNCj4gICAgID4+PiArwqAgwqAgwqAgwqB9
DQo+ICAgICA+Pj4NCj4gICAgID4+PsKgIMKgIMKgIMKgIMKgcmV0ID0gZG1hX21hcF9zZ3RhYmxl
KGRldiwgc2csIGRpcmVjdGlvbiwgMCk7DQo+ICAgICA+Pj7CoCDCoCDCoCDCoCDCoGlmIChyZXQg
PCAwKQ0KPiAgICAgPj4+DQo+ICAgICA+Pj4gLS0NCj4gICAgID4+PiAyLjUzLjAtTWV0YQ0KPiAg
ICAgPj4+DQo+ICAgICA+Pg0KPiANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==

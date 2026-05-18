Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id XMR2MLgEC2rd/QQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 14:23:20 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB1C56C8CD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 14:23:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 41E2340475
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 12:23:19 +0000 (UTC)
Received: from SN4PR0501CU005.outbound.protection.outlook.com (mail-southcentralusazon11011021.outbound.protection.outlook.com [40.93.194.21])
	by lists.linaro.org (Postfix) with ESMTPS id 776BE40475
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 12:23:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=4YYm0Vt1;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.194.21 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SPEHvn87lT7w6/eE6EMyu9WUN2tG71aIEsKJs7IC5DOBjiAnSSACPwEk0n2wU6J8qnvNYPo3a3qDqyAbuLBMWwWz3rAa0ZFQloFSv6quJa8QSpjpafKA9kd0qxjJzI7AUY9JlSTLlOkCvIrPAhe6TQNzbZbfGZRBfnAn1YS3u749m8K4Qf8saAztu7V+Bswj11tbtj3vtOFWE5/L0EpHWfwBAOFJEh1JMmOJd4/mS5bO24YBq++fIAdawPGOaBZjkBTQFBIObuJCH8MbS0mB6TDIp2GkQperYmFVUyJgrc2anjVVjtGQQ5Hm8wBuwbtaKo01LHCQlWlz7a+vlpb5mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LP/t9B09zoVMiHpQnSHUHFVZc7IbgwlnP18Rg5g5whY=;
 b=Y5jSzcNn7TbL5oBJ3BptBU/45eLLcAHF8VTsETr6DJbSVrYCn9dtHAp8OmGE9DIiL38CkGa7sTJRxG291UebnQtOovhXJ4vJJfZNVUk8tKMlnmR8YhEznkQ5TQqlybodQN5CmjFtERNyUwk5puXK6GfTUZY7cqKpdmP17LBQqBRBg4Grn+qBcG+DL/vqxNyQD5g5B4HbJmLxvRiHV2JzPvRtIcfahVZF5lnca2GWPhDKQHGwRT2UNOFX+YNmcTvEzyFuF9FGD4T/Pkw37gkY4f9v8toE10adAINayDhWBiozns6MWCrxlgrjyrsaHYRxAb//ZQYw4I8BCP7bN5D4Bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LP/t9B09zoVMiHpQnSHUHFVZc7IbgwlnP18Rg5g5whY=;
 b=4YYm0Vt13P8XrqmE0tv1R1S24EB5qluBn5KfzTtIHqnVHXibBJhLv0+bVdH7jDCmCp3nFe1REyKEfjTD8Wp7aHtCla3fSgRFAMuQvIGkLUYg/b+WE/1ap7PVMo8ubj/4l9lMoPpaNNFmVYL/wxMBfSZxGVGO0flcfW6OIPRiCfo=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SA5PPFEC2853BA9.namprd12.prod.outlook.com (2603:10b6:80f:fc04::8e9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.16; Mon, 18 May
 2026 12:23:06 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0025.022; Mon, 18 May 2026
 12:23:05 +0000
Message-ID: <df697a76-c700-4908-ac08-a47ad07e0796@amd.com>
Date: Mon, 18 May 2026 14:22:57 +0200
User-Agent: Mozilla Thunderbird
To: Pavel Begunkov <asml.silence@gmail.com>, Christoph Hellwig <hch@lst.de>
References: <cover.1777475843.git.asml.silence@gmail.com>
 <646ecd6fde8d9e146cb051efb514deb27ce3883e.1777475843.git.asml.silence@gmail.com>
 <20260513081929.GD5477@lst.de>
 <24833f76-2289-4859-86d1-9215b11a1258@gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <24833f76-2289-4859-86d1-9215b11a1258@gmail.com>
X-ClientProxiedBy: FR0P281CA0162.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b3::9) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SA5PPFEC2853BA9:EE_
X-MS-Office365-Filtering-Correlation-Id: 45f1adb1-4b12-40b2-2af5-08deb4d83699
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|7416014|1800799024|376014|366016|22082099003|18002099003|56012099003|11063799003|4143699003;
X-Microsoft-Antispam-Message-Info: 
	c5aJkkXEkZVsBeRewdvK/rsYZ2SSoyyiUq0q5OnByEaKqL+/6STlRDM4HGjW/KkvQuHXpyd1EUOryAeZN+R7zwKErRAir/7zz60rjAQrEMcjsQa3otykv/yQk1epfrlr4RGbGVdtBMoudv0DVKs61q6ZKYomWc42AKZG+dgGTXOuQ6S3He0U2HUArAIcMwGDgedUvK/tx4qaOVRy1t3lZ2gItHUZq04FvUeFscC3d0td6OECU4elEpJmKa8YBN5k8lTIdtYe8oHW31ap0FEOmdGSj0yrTxhpfQakj8i/FtTDT/VPDo+WJetkYswaJzrPd8l5CGkf2NgKS98dt2/wZlNoL3kmDMVJU9AkmVFYwYeE8l+dMPgfGx7ct4JVo+xGVppAJKM3SfMvxljUuYHmpGh8vM3mKbTrwVgCVJrhH0087zxCz303m2TRP5XRnm5iXXaNhxlLo3SX7ZHCqIpPvBBQUxn0HYTPNELyxqw6dYV99M5NQTafjXs64gS7rmx40cLVMmIbpn3Poo+q05jQGCYcFVn9zrL2T7+WiacdcNKMfBRL8TMu7LdEA0W2LKpdKr/xxvmMoaQew0alvOt/YbD2RxKNhlglcOporo6R5OlskZyBpN/FzZQ8++D+vEWpBEy3bzSJDCfQy3UBaOywHU5ly/21jM8l4Jor9DrQ3SO2c9rw9tDocgZ05DCPlNxg
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(1800799024)(376014)(366016)(22082099003)(18002099003)(56012099003)(11063799003)(4143699003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?QTlMMFpXUTNyUVBoblRpSlpnL3U4NXNyOU4xRlpnVDRVeEIyZkJGWC9pdEhB?=
 =?utf-8?B?VDZEWUsyd1BiNlE3NE0wK1N5NmJENFk5QktrUDJuVUlBR2dJd1J3eEtaa2lm?=
 =?utf-8?B?aGxLNFUzTGRyR2tqRXhETWUvUzBsMjNLYWFhaFRJK1dkZkNGdENjSEQxMG94?=
 =?utf-8?B?UldVNWM4SnZta3Zjb0hqNXlMclJWKzUxbHk5bnlOdDBiSzEzQW9uS2VPKzhw?=
 =?utf-8?B?MkQzMTFFY0MrdUc3VDBXU1NYUkN3MUZpVVZSQ0gwVFh2UmUyV3BRdGNTUDFH?=
 =?utf-8?B?dDEwd095c1VHMVN4c0k1bm1BczBURkE3VFhSajdYMWh5dXBFVG1JKzhLZWpr?=
 =?utf-8?B?VHE5STZMVjA4Z21yaGJDMUJtbVhjL25DcHphWmIzRlpJVUYxQVNGQ3MvZGlP?=
 =?utf-8?B?bkVRNWdKdXRkUEdRN09ZZlRNemxGUm00eldiLzJoVCtraksvR1p2bjhMMWZE?=
 =?utf-8?B?SW9nUzJzdzQvb3FvTlpqZ3VDbE9EeitpalJlNmJtMXhkY0UwOWpCVWNOOS81?=
 =?utf-8?B?Y1IvbDRzQnVkZk5XQ1dJNUNWYnJ4Um5FSm1oOS9RSmV6WExNM3l6eHdVUVFG?=
 =?utf-8?B?ZGVucjB4TUJzcm5TdFVURE5KaXdMeFI0eVAyLzhHbkZpZHZHdk90N2EyS0p1?=
 =?utf-8?B?UmEzeGlHUzNzZ3dsOXRFRjNDa25tUUtMeFFjR1laSWxpdFVWbjNoaTNXcWpI?=
 =?utf-8?B?SjM4NjdHZVpoL0k5b2plbnd2dllQOEJIRWhoRE94TlpGcW02MXdSQlE2QVQ0?=
 =?utf-8?B?SnQ4NVJGc0lvcDNIR2FmQ0h5aGpWRFpnZHpwSklscGZoUVZBUGUrQ3VFQnRh?=
 =?utf-8?B?NjhsQnZ3TkhVOGIwVHdKUXFxRU0xT2RZdG9ncUszM0JyMEUwemJDYTl6aHRB?=
 =?utf-8?B?RE85MTRFV1EvQmt5U1NuM0o2RGQvS0c2WXVsNVN2VlBFcWJYQjl5aUdYbk0v?=
 =?utf-8?B?SE5HUlhSN2xMd2M0ZDhzaFc0bFhleDNxNmVHdlBISXM5OGE2RENrbzNNRStN?=
 =?utf-8?B?VWJDNVd2MVZGVEhwTS9VRmcxWklBV0NEYXFjSlVqbHd0eW9sUTZxNUlKczYv?=
 =?utf-8?B?TnAyNnF0VlErYTd2eWJhMWtJOW9hLzFMdjlFSXY3ZUlnNnpTSlc2bEtNUkJG?=
 =?utf-8?B?V2xtMkh0MXhoY05naXlTVFU0aEI5dUhSaEFLbDZSOU55SUNVZXFlZE5OdUZP?=
 =?utf-8?B?c1dxOUt6S0FXelkrbURRTDZ5dDRjdlQ1b1RSSE8yUmtEaUpuTTNJcmw1Mmx0?=
 =?utf-8?B?TXRDYUpJbVEvZnpqMWxlWEtjdVRoVWplTmdKclFTR1haUDJCUld3S1hJTkQ2?=
 =?utf-8?B?M1lsK01VOWQrbitIS0lOVEVPNDQyMlI0VEs4eWJEVyszMlEvYnpqNk4vVXVx?=
 =?utf-8?B?ZkRpV3E3SUVrczJZM2h0WTRxSlVQcmswdk1VL2FSRUx0eVFuOE96VkdDMGRs?=
 =?utf-8?B?c0ZubkxWTmYvK0VpZ3dhZEwvWlQxVUxYdEZvUGtWaEI3MW01ZmNWcy8yUzB2?=
 =?utf-8?B?VW5wc3QzbUpqNzN0N3J6WVRoYS91MGVzTDRaNW9yWDdWUm0xeDljYVFvdkJq?=
 =?utf-8?B?N01tNEdCeVZ4MnJDUkNFcXJKKzJPZDJqekhjVml0MWVEZSs0enl3dW9iVXQz?=
 =?utf-8?B?aUkraGhYVUpJNk1BNVQwUHdrRWNFYUsxVFpJVll4QWxjYytMLzBtK2lIMjVs?=
 =?utf-8?B?NFlhTU53YnlVcjRZYzVEbnlxajFnSTkxTjIvZlp4WEtLeFVieElVRHlpWGp3?=
 =?utf-8?B?OUsrZ0VaaGNQamdGalRsN3VhbXUyMmliSnRlRFFxV1JMN3IvOXBIOXZLeVR0?=
 =?utf-8?B?V3hyMnJUS3JKNEtLV3ZXbnZHR2U2aSt5RUlGL1JvNTdkeHBuWUdabmQxc3R0?=
 =?utf-8?B?YmdUSkxXVlJLMXBxS0NjS0QzYTJxNjdmMXNqMEVRUUdZRzE4QWg3YndZSXFo?=
 =?utf-8?B?RGpJOEJlWVptN1AvWGJ2SG5mS2Jrdk9pMlY2Y3lBZ1VORzdpWS9Xa3hXSjdj?=
 =?utf-8?B?Qjc4R1AvTVE3SHlLL3dDUmRFTm50UDhrVlhuS1IvZkJsOGVVU3VKMWp3V0dh?=
 =?utf-8?B?WStOc0JRanVoQ09NVFJaVFhUZ25wOHJsRTg3eTJ0dVgwOXRaZFh1cHQ1RWpP?=
 =?utf-8?B?SmRWZDdrb1RtK1NNQjYvUW5Ma291SWtQb0pBZjZRWno5eHdwMFMxRTZUNjBj?=
 =?utf-8?B?TVhFV0lzV092NHlsaEZCbDd5Vk5vSmE1Q2Y2TDkwbVAyMWROVlYyc3gwMlFh?=
 =?utf-8?B?alVxMldlZVJMQTRURmpxcW5La0tYd3RCd3R2b1BSU3I1MCtPdVpmR2txalJF?=
 =?utf-8?Q?5rqQZeVVhidv5FY1mz?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45f1adb1-4b12-40b2-2af5-08deb4d83699
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2026 12:23:05.7014
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1WsjQ8f2zBS5HENcJg3BQedENvqiLG177GgFQXBVXSaaV5GGqPIZx8quYSXn+mwO
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA5PPFEC2853BA9
X-Spamd-Bar: ----
Message-ID-Hash: Y2442B6YIVJ7YY5EAYNQKZ5YNF3HCLWE
X-Message-ID-Hash: Y2442B6YIVJ7YY5EAYNQKZ5YNF3HCLWE
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jens Axboe <axboe@kernel.dk>, Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, io-uring@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Anuj Gupta <anuj20.g@samsung.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>, Phil Cayton <phil.cayton@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 04/10] block: introduce dma map backed bio type
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y2442B6YIVJ7YY5EAYNQKZ5YNF3HCLWE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 3FB1C56C8CD
X-Rspamd-Server: lfdr
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
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FREEMAIL_TO(0.00)[gmail.com,lst.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[amd.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.710];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[24];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

T24gNS8xOC8yNiAxMjoyOSwgUGF2ZWwgQmVndW5rb3Ygd3JvdGU6DQo+IE9uIDUvMTMvMjYgMDk6
MTksIENocmlzdG9waCBIZWxsd2lnIHdyb3RlOg0KPj4+ICvCoMKgwqAgaWYgKCFiaW9fZmxhZ2dl
ZChiaW9fc3JjLCBCSU9fRE1BQlVGX01BUCkpIHsNCj4+PiArwqDCoMKgwqDCoMKgwqAgYmlvLT5i
aV9pb192ZWMgPSBiaW9fc3JjLT5iaV9pb192ZWM7DQo+Pj4gK8KgwqDCoCB9IGVsc2Ugew0KPj4+
ICvCoMKgwqDCoMKgwqDCoCBiaW8tPmRtYWJ1Zl9tYXAgPSBiaW9fc3JjLT5kbWFidWZfbWFwOw0K
Pj4+ICvCoMKgwqDCoMKgwqDCoCBiaW9fc2V0X2ZsYWcoYmlvLCBCSU9fRE1BQlVGX01BUCk7DQo+
Pj4gK8KgwqDCoCB9DQo+Pg0KPj4gVGhpcyBpcyBiYWNrd2FyZHMsIHBsZWFzZSBhdm9pZCBwb2lu
dGxlc3MgbmVnYXRpb25zOg0KPiANCj4gSSBjYW4gZmxpcCBpdCwgYnV0IGNvbXBpbGVycyB0ZW5k
IHRvIHByZWZlciB0aGUgdHJ1ZSBicmFuY2guIEUuZy4gdGhpcw0KPiANCj4gaWYgKGNvbmQpIEE7
IGVsc2UgQjsNCj4gQzsNCj4gDQo+IGNhbiBnZXQgY29tcGlsZWQgaW50bzoNCj4gDQo+IGptcGNj
IGNvbmQgQg0KPiBBOiAuLi4NCj4gQzoNCj4gcmV0dXJuOw0KPiBCOiAuLi4NCj4gam1wIEM7DQoN
CldoZW4gdGhhdCBpcyByZWFsbHkgYSBwZXJmb3JtYW5jZSBjcml0aWNhbCBwYXRoIHRoZW4geW91
IGNhbiB1c2UgdGhlIGxpa2VseSgpIGFuZCB1bmxpa2VseSgpIG1hY3JvcyB0byBnaXZlIHRoZSBj
b21waWxlciB0aGUgaGludCB3aGljaCBvbmUgdG8gcHJlZmVyLg0KDQpXaGF0IGNvdWxkIGJlIHVz
ZWZ1bCBpcyB0byBoYXZlIHRoZSB0cnVlIHBhdGggZm9yIHRoZSBtb3JlIGNvbW1vbiBhbmQgdGhl
IGZhbHNlIHBhdGggZm9yIHRoZSBsZXNzIGNvbW1vbiBjYXNlIGZvciBkb2N1bWVudGF0aW9uIHB1
cnBvc2VzLCBidXQgaW4gdGhhdCBjYXNlIEkgd291bGQgZXhwZWN0ZWQgc29tZSBjb2RlIGNvbW1l
bnRzIGFzIHdlbGwuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4gwqANCj4gDQo+Pg0KPj4g
wqDCoMKgwqBpZiAoYmlvX2ZsYWdnZWQoYmlvX3NyYywgQklPX0RNQUJVRl9NQVApKSB7DQo+PiDC
oMKgwqDCoMKgwqDCoCBiaW8tPmRtYWJ1Zl9tYXAgPSBiaW9fc3JjLT5kbWFidWZfbWFwOw0KPj4g
wqDCoMKgwqDCoMKgwqAgYmlvX3NldF9mbGFnKGJpbywgQklPX0RNQUJVRl9NQVApOw0KPj4gwqDC
oMKgwqB9IGVsc2Ugew0KPj4gwqDCoMKgwqDCoMKgwqAgYmlvLT5iaV9pb192ZWMgPSBiaW9fc3Jj
LT5iaV9pb192ZWM7DQo+PiDCoMKgwqDCoH0NCj4+DQo+Pj4gK8KgwqDCoCBpZiAoYmlvX2ZsYWdn
ZWQoYmlvLCBCSU9fRE1BQlVGX01BUCkpIHsNCj4+PiArwqDCoMKgwqDCoMKgwqAgbnNlZ3MgPSAx
Ow0KPj4+ICsNCj4+PiArwqDCoMKgwqDCoMKgwqAgaWYgKChiaW8tPmJpX2l0ZXIuYmlfYnZlY19k
b25lICYgbGltLT5kbWFfYWxpZ25tZW50KSB8fA0KPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IChiaW8tPmJpX2l0ZXIuYmlfc2l6ZSAmIGxlbl9hbGlnbl9tYXNrKSkNCj4+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCByZXR1cm4gLUVJTlZBTDsNCj4+PiArwqDCoMKgwqDCoMKgwqAgaWYgKGJp
by0+YmlfaXRlci5iaV9zaXplID4gbWF4X2J5dGVzKSB7DQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgYnl0ZXMgPSBtYXhfYnl0ZXM7DQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ290
byBzcGxpdDsNCj4+PiArwqDCoMKgwqDCoMKgwqAgfQ0KPj4NCj4+IFBsZWFzZSBhZGQgYSBjb21t
ZW50IGV4cGxhaW5pbmcgd2h5IG5zZWdzIGlzIGFsd2F5cyAxIGhlcmUuDQo+IA0KPiANCj4gDQo+
Pg0KPj4+IEBAIC00MjQsNyArNDI0LDggQEAgc3RhdGljIGlubGluZSBzdHJ1Y3QgYmlvICpfX2Jp
b19zcGxpdF90b19saW1pdHMoc3RydWN0IGJpbyAqYmlvLA0KPj4+IMKgwqDCoMKgwqAgc3dpdGNo
IChiaW9fb3AoYmlvKSkgew0KPj4+IMKgwqDCoMKgwqAgY2FzZSBSRVFfT1BfUkVBRDoNCj4+PiDC
oMKgwqDCoMKgIGNhc2UgUkVRX09QX1dSSVRFOg0KPj4+IC3CoMKgwqDCoMKgwqDCoCBpZiAoYmlv
X21heV9uZWVkX3NwbGl0KGJpbywgbGltKSkNCj4+PiArwqDCoMKgwqDCoMKgwqAgaWYgKGJpb19t
YXlfbmVlZF9zcGxpdChiaW8sIGxpbSkgfHwNCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBi
aW9fZmxhZ2dlZChiaW8sIEJJT19ETUFCVUZfTUFQKSkNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCByZXR1cm4gYmlvX3NwbGl0X3J3KGJpbywgbGltLCBucl9zZWdzKTsNCj4+DQo+PiBU
aGUgQklPX0RNQUJVRl9NQVAgY2hlY2sgc2hvdWxkIGdvIGludG8gYmlvX21heV9uZWVkX3NwbGl0
Lg0KPiANCj4gT2sNCj4+PiArc3RhdGljIGlubGluZSB2b2lkIGJpb19hZHZhbmNlX2l0ZXJfZG1h
YnVmX21hcChzdHJ1Y3QgYnZlY19pdGVyICppdGVyLA0KPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHVuc2lnbmVkIGludCBieXRlcykNCj4+
PiArew0KPj4+ICvCoMKgwqAgaXRlci0+YmlfYnZlY19kb25lICs9IGJ5dGVzOw0KPj4+ICvCoMKg
wqAgaXRlci0+Ymlfc2l6ZSAtPSBieXRlczsNCj4+PiArfQ0KPj4+ICsNCj4+PiDCoCBzdGF0aWMg
aW5saW5lIHZvaWQgYmlvX2FkdmFuY2VfaXRlcihjb25zdCBzdHJ1Y3QgYmlvICpiaW8sDQo+Pj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBidmVjX2l0
ZXIgKml0ZXIsIHVuc2lnbmVkIGludCBieXRlcykNCj4+PiDCoCB7DQo+Pj4gwqDCoMKgwqDCoCBp
dGVyLT5iaV9zZWN0b3IgKz0gYnl0ZXMgPj4gOTsNCj4+PiDCoCAtwqDCoMKgIGlmIChiaW9fbm9f
YWR2YW5jZV9pdGVyKGJpbykpDQo+Pj4gK8KgwqDCoCBpZiAoYmlvX25vX2FkdmFuY2VfaXRlcihi
aW8pKSB7DQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGl0ZXItPmJpX3NpemUgLT0gYnl0ZXM7DQo+
Pj4gLcKgwqDCoCBlbHNlDQo+Pj4gK8KgwqDCoCB9IGVsc2UgaWYgKGJpb19mbGFnZ2VkKGJpbywg
QklPX0RNQUJVRl9NQVApKSB7DQo+Pj4gK8KgwqDCoMKgwqDCoMKgIGJpb19hZHZhbmNlX2l0ZXJf
ZG1hYnVmX21hcChpdGVyLCBieXRlcyk7DQo+Pg0KPj4gVGhpcyBpcyBhIGJpdCBvZiBhIG1lc3Mu
wqAgWW91J3JlIHVzaW5nIGJpX2J2ZWNfZG9uZSBmb3Igc29tZXRoaW5nIHRoYXQNCj4+IGlzIG5v
dCBidmVjX2RvbmUsIHdoaWNoIG1ha2VzIHRoZSBuYW1pbmcgdmVyeSBjb25mdXNpbmcuwqAgVGhh
dCBpcyBldmVuDQo+PiBtb3JlIGNvbmZ1c2luZyB0aGFuIHRoZSBleGlzdGluZyB1c2FnZSwgd2hp
Y2ggaXNuJ3QgZ3JlYXQuwqAgQWxzbyB3ZQ0KPj4gYWRkIHlldCBhbm90aGVyIGNvbmRpdGlvbmFs
IHRvIGhlYXZpbHkgaW5saW5lZCBjb2RlLsKgIEknZCBzdWdnZXN0DQo+PiB0aGUgZm9sbG93aW5n
Og0KPj4NCj4+IMKgIC0gYWRkIGEgcHJlcCBwYXRjaCB0byByZW5hbWUgYmlfYnZlY19kb25lIHRv
IGJpX29mZnNldCwgYXMgZXZlbiBmb3INCj4+IMKgwqDCoCB0aGUgZXhpc3RpbmcgdXNhZ2UgaXQg
aXMgdGhlIG9mZnNldCBpbnRvIHRoZSBjdXJyZW50IGJpb192ZWMgYXMNCj4+IMKgwqDCoCBtdWNo
IGFzIGl0IGlzIHRoZSBjb3VudCBvZiBieWVzIGRvbmUsIGFzIHRob3NlIG11c3QgYmUgdGhlIHNh
bWUNCj4+IMKgwqDCoCBhbmQgaXQgaXMgdXNlZCBib3RoIHdheXMNCj4+IMKgIC0gYWRkIGEgcHJl
cCBwYXRjaCB0byBhbHNvIGluY3JlYXNlIGJpX29mZnNldCBmb3IgYmlvX25vX2FkdmFuY2VfaXRl
ci4NCj4+IMKgwqDCoCBJdCBpcyBub3QgYWN0dWFsbHkgdXNlIHRoZXJlLCBidXQgaW5jcmVtZW50
aW5nIGl0IGlzIGhhcm1sZXNzIGFuZA0KPj4gwqDCoMKgIHRoaXMgd2lsbCBhdm9pZCBhIG5ldyBz
cGVjaWFsIGNhc2UNCj4+IMKgIC0gcGxlYXNlIGFsc28gZG9jdW1ldCB0aGlzIG5ldyB1c2FnZSBp
biB0aGUgY29tbWV0IGluIHN0cnVjdCBidmVjX2l0ZXIuDQo+PiDCoCAtIHRoZW4ganVzdCBhZGQg
dGhlIGRtYSBidWYgbWFwcGluZyB0byB0aGUgYmlvX25vX2FkdmFuY2VfaXRlciBjb25kaXRpb24N
Cj4gDQo+IEknbGwgdGFrZSBhIGxvb2sNCj4gDQo+PiDCoCAtIGZpZ3VyZSBvdXQgd2hhdCB0byBk
byBhYm91dCBkbV9iaW9fcmV3aW5kX2l0ZXIsIHdoaWNoIHBva2VzIGludG8gdGhlc2UNCj4+IMKg
wqDCoCB0aGluZ3MgdGhhdCByZWFsbHkgc2hvdWxkIGJlIGJsb2NrIGxheWVyIGludGVybmFsDQo+
IA0KPiBOZWVkIHRvIGNoZWNrIHdoYXQgdGhhdCBpcywgYnV0IGRvZXNuJ3QgaW1wbGVtZW50IHRo
ZSBpbnRlcmZhY2UgYW5kDQo+IGlzIG5vdCBzdXBwb3NlZCB0byBldmVyIHNlZSB0aGUgZG1hYnVm
IGl0ZXJhdG9yLg0KPiANCj4+PiDCoCB9DQo+Pj4gQEAgLTM5MSw3ICs0MDMsNyBAQCBzdGF0aWMg
aW5saW5lIHZvaWQgYmlvX3dvdWxkYmxvY2tfZXJyb3Ioc3RydWN0IGJpbyAqYmlvKQ0KPj4+IMKg
wqAgKi8NCj4+PiDCoCBzdGF0aWMgaW5saW5lIGludCBiaW9faW92X3ZlY3NfdG9fYWxsb2Moc3Ry
dWN0IGlvdl9pdGVyICppdGVyLCBpbnQgbWF4X3NlZ3MpDQo+Pj4gwqAgew0KPj4+IC3CoMKgwqAg
aWYgKGlvdl9pdGVyX2lzX2J2ZWMoaXRlcikpDQo+Pj4gK8KgwqDCoCBpZiAoaW92X2l0ZXJfaXNf
YnZlYyhpdGVyKSB8fCBpb3ZfaXRlcl9pc19kbWFidWZfbWFwKGl0ZXIpKQ0KPj4+IMKgwqDCoMKg
wqDCoMKgwqDCoCByZXR1cm4gMDsNCj4+PiDCoMKgwqDCoMKgIHJldHVybiBpb3ZfaXRlcl9ucGFn
ZXMoaXRlciwgbWF4X3NlZ3MpOw0KPj4+IMKgIH0NCj4+DQo+PiBQbGVhc2UgdXBkYXRlIHRoZSBj
b21tZW50IGZvciB0aGlzIGhlbHBlci4NCj4+DQo+Pj4gQEAgLTMyMiw2ICszMjcsNyBAQCBlbnVt
IHsNCj4+PiDCoMKgwqDCoMKgIEJJT19SRU1BUFBFRCwNCj4+PiDCoMKgwqDCoMKgIEJJT19aT05F
X1dSSVRFX1BMVUdHSU5HLCAvKiBiaW8gaGFuZGxlZCB0aHJvdWdoIHpvbmUgd3JpdGUgcGx1Z2dp
bmcgKi8NCj4+PiDCoMKgwqDCoMKgIEJJT19FTVVMQVRFU19aT05FX0FQUEVORCwgLyogYmlvIGVt
dWxhdGVzIGEgem9uZSBhcHBlbmQgb3BlcmF0aW9uICovDQo+Pj4gK8KgwqDCoCBCSU9fRE1BQlVG
X01BUCwgLyogVXNpbmcgcHJlbW1hcGVkIGRtYSBidWZmZXJzICovDQo+Pg0KPj4gU2hvdWxkbid0
IHRoaXMgYmUgYSBSRVFfIGZsYWcgYXMgd2Ugc2hvdWxkIG5ldmVyIG1peCBhbmQgbWF0Y2ggYmlv
cyB3aXRoDQo+PiBhbmQgd2l0aG91dCB0aGlzIGZsYWcgaW4gYSBzaW5nbGUgcmVxdWVzdD8NCj4g
DQo+IERvIHlvdSBtZWFuIGFkZGluZyBib3RoIGFuZCBwcm9wYWdhdGluZyBpdCBmcm9tIGJpbyB0
byByZXE/IHN1Ym1pdF9iaW8oKQ0KPiB0YWtlcyBhIGJpbywgc28gd2Ugc3RpbGwgbmVlZCB0byBz
ZXQgaXQgdGhlcmUgYmVmb3JlIGl0IHJlYWNoZXMgYmxrLW1xLg0KPiBBbmQgdGhlcmUgbWlnaHQg
YmUgYmlvLWJhc2VkIGRyaXZlcnMgdXNpbmcgaXQgaW4gdGhlIGZ1dHVyZS4NCj4gDQoNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=

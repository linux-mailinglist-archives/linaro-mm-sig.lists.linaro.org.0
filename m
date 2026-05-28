Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YOAwG+uqF2qhMQgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 May 2026 04:39:39 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 095EF5EBEA1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 May 2026 04:39:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 57B95404D0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 May 2026 02:39:37 +0000 (UTC)
Received: from CY7PR03CU001.outbound.protection.outlook.com (mail-westcentralusazon11010007.outbound.protection.outlook.com [40.93.198.7])
	by lists.linaro.org (Postfix) with ESMTPS id 6C3D23F743
	for <linaro-mm-sig@lists.linaro.org>; Thu, 28 May 2026 02:39:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b="FCDU/+jR";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of jhubbard@nvidia.com designates 40.93.198.7 as permitted sender) smtp.mailfrom=jhubbard@nvidia.com;
	dmarc=pass (policy=reject) header.from=nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SoSEkRdGKkISVOaPWpk7eWZVUJCj600zL3fpT32YgfvUQpCQMBhchzAbjvJJYzDKk60qxfm2YAbHyPmopn7tOyxuIYQUdN6skPmemf0/AFO2kk2jHojHepnRonYEgt8ZwdrCNAYUlir1ADyEyKjRzMFDhirw5ymxtsm9PTNLfdH6cNJpodl1Xhacy1D0cC4bQu0itwnxW89siXtOPbO+1d9qS+KDJmkqgIdgUGdXdokwJ2S0m4tXv3V7iPwdJ84tHrH360TQ0i0G10UHCWQFuX/GfiR+UUtMgmgXtGD6MACMkV4A0RX4JMRn2rNHGBD9EMPQf096abBqwuSU7qlDuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3zZ7QN4LvEiY7d1KtAhhWeRCVqXUdNkouUqFw3fOWEk=;
 b=KpREyW5HKDjXlX94hG1pYR3ubHloQIvSSHqfoHARzKGmvF5M2jBeiH0kSxI1hhT4NwVfsf+YK+ZmcGWcYy0XA2XDv0R+R4HeNMFW1JdWEB3Tcn2UtiX/kbsdCmCVOM+40TtULKruIqeayqjv8+yVRUwkDTf3TqHiMErUWTUy/S7VyM/79gEz0UAF7gL84o/bxDDTVHD+Cls/Go93iZOTNKFYm3m+7yYHlkcb/m5hEf7ryyh41o/yuRiV8aBavZLGOjIj51CD1PeSBjf7pAkoSY2330tkVqNu1ceAgp+9guJnyYHRXxTHtSmcbywBYVkwwTs8vcrwZAEDOYxdOvnBKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3zZ7QN4LvEiY7d1KtAhhWeRCVqXUdNkouUqFw3fOWEk=;
 b=FCDU/+jRMt1dTcRnjEgflKbrHWd12s4oVDhVD9fMu8sbiH/dS77Qj5N24kJUBy2Axs5O88aG83ri9nkuuK14vsViWCDskLyGdBgpmedx+of0X7nI/ZUzvUdKurUBhNfKi87VZtjQlILDhZNoJi+i0d3BSSp06AtPqlbVoyxA7YEQnF8HCR/ldnwCbz3Uoh/uskn9YJzmZaL9wbCiAUTo3s1h/qnIfOhcUBZy2gZq39NENVtSoAxvUEt2Kt5kzlWcrAAjpo3y+Asc4nDYDkSH4fr8H89fn1xa6ELNb20xIvyGJtixvHkV1a1w43O5LFl4gPPhB1MEF9SPDnpHl123ng==
Received: from DM3PR12MB9416.namprd12.prod.outlook.com (2603:10b6:0:4b::8) by
 CH3PR12MB7738.namprd12.prod.outlook.com (2603:10b6:610:14e::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.71.12; Thu, 28 May 2026 02:39:20 +0000
Received: from DM3PR12MB9416.namprd12.prod.outlook.com
 ([fe80::8cdd:504c:7d2a:59c8]) by DM3PR12MB9416.namprd12.prod.outlook.com
 ([fe80::8cdd:504c:7d2a:59c8%5]) with mapi id 15.21.0071.011; Thu, 28 May 2026
 02:39:19 +0000
Message-ID: <97aa8ce9-e965-4f2a-8719-c5e586688878@nvidia.com>
Date: Wed, 27 May 2026 19:39:17 -0700
User-Agent: Mozilla Thunderbird
To: Christoph Hellwig <hch@infradead.org>
References: <20260523011117.121390-1-jhubbard@nvidia.com>
 <ahPkQgCg_52sxkYH@infradead.org>
Content-Language: en-US
From: John Hubbard <jhubbard@nvidia.com>
In-Reply-To: <ahPkQgCg_52sxkYH@infradead.org>
X-ClientProxiedBy: BY3PR05CA0017.namprd05.prod.outlook.com
 (2603:10b6:a03:254::22) To DM3PR12MB9416.namprd12.prod.outlook.com
 (2603:10b6:0:4b::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM3PR12MB9416:EE_|CH3PR12MB7738:EE_
X-MS-Office365-Filtering-Correlation-Id: 6abfe015-98c7-42b3-7bea-08debc625145
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|366016|376014|7416014|4143699003|11063799006|56012099006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: 
	npcWVHKtfigByppJzDs7lb7rQtIUgZBTcfWky1FPO5XJ2W8KmLDexD7Y1UWJ2mjsqlQrlZcF9QVvnivcSuNjd/l2OUrai38X77tT36yg/LA/aeruYq7EOnbQknMLp+QAaAkqo+xua/E5Z0S1mGHQWKYPSPR9kPJJLYddZVLvmlOV1vkvZfpfwiJ35PTl93VEcyxJvUORip2q2aSTR1GItzDQ7IfAcpAIk3lkVZ2+Cbkdc1b3AcxpcBF0CD6e6NhKBti2FzRmrdoumpHuzL96/5gvjwmcQ7+8rvGsFo3WTDVRG8pVyR0pe+i9Ucpp3m9fwFGxOV34J/aX+KVVol9qbrLGxk9ii6MO3bIhen6qIZwXiQoBBVCcTyvp3s5J1kphAwji2mgZ3OUB3CV1jO07Ybw5aM2OLuuNX303fxb1HZo404Bin3kJtYeehPFiqEQ04qK+kZCj8ikjzQM/Jt23+3jLZGCJ97E/b7uerDIuejGh6jL4pb/2H9tZ2TcGiGUFCCHlVCVlyvxWyJGgVVQD4faqeaoF3P5zxy0hWyJVM5vaUfMGy1sr5bKIThwpFA58ZyQ8YEvGR/hthvD8qXZ7oHjIiB3bEVwFcS2e2CDLFhaPu3K3GZE7Oa7w5taR+FUTdcxeCBTbBrDGbURXDTBF/p0HVP06egapuoEEtwMVuVLVTzEbN2rtJY1n3HlBRdGg
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM3PR12MB9416.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7416014)(4143699003)(11063799006)(56012099006)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?c3lSK05QaXhodk1wdnhkdUgwZVZCSFJrak5aSXNla0xpYTZHQUlJV2c0Rml6?=
 =?utf-8?B?cU9DMXFSZHViMDVNTXBVN01jNi9LZ0pndHBBZmFMelZFVllFdjFPYWNQUUxh?=
 =?utf-8?B?MmZESVA0ZklyV0VMNzFRa2EyYUMwdTRSelBPR29FTGFGemJaWVFCSXB0cm1W?=
 =?utf-8?B?Y2kvd3N3dFpxV2xDUVFPYUlFTGhhMkhpMFZTK1N6bU0zVHdsYkNhMkR1WHR6?=
 =?utf-8?B?OXNVSXRKZzJOd3h2YmVhNTVDUWRmQzRqb2x3dS96WXpjYXJqUDRERzJzZktN?=
 =?utf-8?B?Nk9tTWljSmVIaUtBQlJmMnROZndUSW1YOW5QcncrYi9FNStHWXJMRzg2ZlVZ?=
 =?utf-8?B?NHdXNjV3cHJwY3lqZnovbFdaMWVpc1BOZVVhcFhsWjlYczJlWVJyRjZSSUNs?=
 =?utf-8?B?Z0IxSk84bXJkd1FXOTZPZ0lRMEJLMHVNUEw1dnIvR2dvOEtTTGNiWmJiUDdm?=
 =?utf-8?B?ME5lZlNJTlNhQ3JSZXBtbm5RVU90ejNERCtEU2tOalgyZG9xUGFoUVgvRUkx?=
 =?utf-8?B?Q3NzV0p0RjgrRkh6WEN6M2VMTTZUbSt0ZVN1WUYyOWh6bjVFL1h3dzdMbDdD?=
 =?utf-8?B?R3d0eWYvM1M5SEV6eGc2bVRmUnFJS2ZUUFNubkVFaE4rVE1YSVVMNnVPM21F?=
 =?utf-8?B?d1lsZm9ySXYyUTZOL2xMTnlmaWRMODFRNXVQejJNcVdxRzZmSkI0ZmZPZml1?=
 =?utf-8?B?TnkyV2NKdHBDcXJsTkhxVzNuUXkrbElqNXY2c09NcjF2aFdVQitTbWFpMmxs?=
 =?utf-8?B?ak1MaG01aFVoR1huejlyU2ROeTgvVm10bS9KeC93dEx3Ulh0V2g0Z3o4OU1S?=
 =?utf-8?B?SHd5YThTcGFsdEp3YmRDNXVtSjFKRW1oeVloeTZZQ3pWeWJwZmE1bkU4cThj?=
 =?utf-8?B?L1QyNThERW5ZQlZMTzJqV3NaV083K3ZzdDRFLzVFejU0bUhHZkNoamlpWUFl?=
 =?utf-8?B?ODZzRTJSS09ZTXFIVkRWOGwrZk1UTDBkbXNTNERzaXhKVFk3NkttUEl3bzlE?=
 =?utf-8?B?UDdKMzZ4SkM3WExYbnhHNHNsMzFxUWJXV1BtQTl0RTc1OEdGTjlpNklRWll6?=
 =?utf-8?B?T085QXIzY0kzeWFuc2pSN3BBaDdHd2I2c3ZsS1hNOVpiVklUREZQU1phYTE5?=
 =?utf-8?B?cjk3YjZCUW45dEpmaGR1c29UYWRtbmtOWEsxZ0JwZzRFT05jMDBQaThHdFRC?=
 =?utf-8?B?c3dmdmo4ZkpQN29TeGNodDhxSzB2aGVka2lvaDNEazk5NDExYkRKZ1RkR1VY?=
 =?utf-8?B?VEV2OGxmdzhqREZ5VU9QYzNHQXRVZXBva09jWE1YelhReVUrcW53UGNzcEgv?=
 =?utf-8?B?WEdYWXVoMmV5eVBZSE5KTldVbjVVUU9HSmduOC9vbUNRdDh1TmJWRG0wSUs4?=
 =?utf-8?B?eHEvVU9uNHNXbTEvQUpxUm41d2N1TG16Q1c1SUFLTFpNMksvL01uQkxURzVL?=
 =?utf-8?B?VG5KanpKOUFHb0wxTDRwM01IeEsyR3JmejFHT1RHTkJPZzFiRGxnVFpLQkZV?=
 =?utf-8?B?eU5oazhJUlFNM3Y0bSs0cTkwaTlxU0E1aDlydEdYNUJHM2U3RHlnemM0K2Fs?=
 =?utf-8?B?bkYvSEM2MVFNNWtPQ1Z5R29TWHlycVcwdFZJenUyMUd4azN4TFpkSnhrcHVD?=
 =?utf-8?B?WXdra1VoTmwrZUZza0hGREFCdUw0OGd2clNpUzllMGtBWERkR1BlUzd0d3B6?=
 =?utf-8?B?NndrT2k4UlZYbnRMSGY0aEFxT3VPQ2tyb1NBd0twL0haUm1KZ2dQbUJ2SzMx?=
 =?utf-8?B?U04rditLaUdDNVE5Q0tNZ1BYb0pjdko4c1p1SWpCR09Hd1Q3M0NyZi9MS2Rk?=
 =?utf-8?B?VERtWnhnR3JPNEVsZUpPTGVtQ1VxeG9vVmo2ZXlDV1ViTDRreU14eTAzd2Nn?=
 =?utf-8?B?MVBqdGRsbDQ0bEo4Z1F4Ukwzc3lNSVo0OHA5R05zY1pVVCtqZUZpbGN4aW1i?=
 =?utf-8?B?dXVrdjllWTBNN2s4Zk1MeE1aS2NnVWxWSmFsWElQZmNEZEJKeWZCb2p1RFcz?=
 =?utf-8?B?bWZ0VHlydjM3MEtvbFdvOXNYb3dIb2NxT2lpdU9CdFdCK1UyYmFPRDlHaFVS?=
 =?utf-8?B?d2xYLzJlZ0lYUWZYQUhKbTZ6aFprQjBrRVNXdHpHOVV2YUVYK1c4WVVGdXRs?=
 =?utf-8?B?OURFQm82cC9USlgzaWkyejhxYnZUYUhVMFgydTlDaEZIRnRiUENDOHYvQWFY?=
 =?utf-8?B?djFOQmNDV0RxNUxZWUw1Q0h2TDVpMWgxVis0UEUveGRmOW1tdTNRMGdqK04r?=
 =?utf-8?B?TE04NEdFaGFteFphV1E3aCtFUytsMldPdkRkWEJLNXZTZ0FFelVNbXF6Nm1W?=
 =?utf-8?B?QmdJN1dCZ0huK3VSaUd5aEkzdkxucjlUWnNtd3NGVFhmSzgrbzlxUT09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6abfe015-98c7-42b3-7bea-08debc625145
X-MS-Exchange-CrossTenant-AuthSource: DM3PR12MB9416.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2026 02:39:19.2015
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K4mzfpKzGcBm+Dw6jNXRFvcuGjKRlFb2Z3iVnhq+akGXKvFbrqxQ0FwebTkmvLaiKkvzVm2fYBvGFmAm2Iv61g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB7738
X-Spamd-Bar: ----
Message-ID-Hash: SSKF44QEOVNUFYKL32OQLW5STR4VXBKZ
X-Message-ID-Hash: SSKF44QEOVNUFYKL32OQLW5STR4VXBKZ
X-MailFrom: jhubbard@nvidia.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Christian Brauner <brauner@kernel.org>, Jens Axboe <axboe@kernel.dk>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, LKML <linux-kernel@vger.kernel.org>, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf: set SB_I_NOEXEC and SB_I_NODEV on the pseudo filesystem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SSKF44QEOVNUFYKL32OQLW5STR4VXBKZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[nvidia.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[Nvidia.com:s=selector2];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	NEURAL_HAM(-0.00)[-0.993];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:mid,linaro.org:email];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[10];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jhubbard@nvidia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:-]
X-Rspamd-Queue-Id: 095EF5EBEA1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 5/24/26 10:55 PM, Christoph Hellwig wrote:
> On Fri, May 22, 2026 at 06:11:17PM -0700, John Hubbard wrote:
>> The dma-buf pseudo filesystem dispenses S_ANON_INODE inodes via
>> alloc_anon_inode() but never sets SB_I_NOEXEC on its superblock.
>> Since commit 1e7ab6f67824 ("anon_inode: rework assertions") in 6.17,
>> path_noexec() warns on exactly that combination, so an mmap() on any
>> dma-buf fd trips the warning:
> 
> Just as last time this came up, we really should set this higher up.
> There isn't really a reason why pseudofses should not set SB_I_NOEXEC
> by default.
> 

Ha, I see now that there is some history to this.

After looking at the email history and the code, it does seem like
the time is right to do that. I'm testing out a tiny series to set
these flags in init_pseudo(), and then to *not* redundantly set them
elsewhere, I'll post it shortly.

thanks,
-- 
John Hubbard
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

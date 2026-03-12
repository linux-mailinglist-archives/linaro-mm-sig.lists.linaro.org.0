Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cGrPMnBf5mkwvgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:16:32 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D3F2430E2D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:16:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 76C864050A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:16:31 +0000 (UTC)
Received: from YT6PR01CU002.outbound.protection.outlook.com (mail-canadacentralazon11022111.outbound.protection.outlook.com [40.107.193.111])
	by lists.linaro.org (Postfix) with ESMTPS id 926AC3F700
	for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Mar 2026 15:12:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=efficios.com header.s=selector1 header.b=EEjqtu3m;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of mathieu.desnoyers@efficios.com designates 40.107.193.111 as permitted sender) smtp.mailfrom=mathieu.desnoyers@efficios.com;
	dmarc=pass (policy=none) header.from=efficios.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LE0j6b/XlkqTG3UaFNtuIfldwOrBDEgS3vF/VJcu60LW8Fdo7IglnfZZKZ3UZy4siIKpK637RDhVePq01pfs6wqD7B3BRsNvTs3WSnbHT7nU2pvXI67O8mY69oDf+4bJlZT4voHaSoBsHonM1aFKY0WOHbSk/4XucjlzCfmwwK/3Sraeor0gI3B2CKRXIAzjSTvdseIgUz2Dia5ghBL4wtF28pYx+JCisAEQPBTAgKQs0zXZ/Tf9xYx7L+yhOWFW8QF3zCC0s/J7Aqr+X6YkvVbG4jTCGIfkDfeOvJVHj/IUtLofHvUtyFT4rrCMc032EaFfHwuVdlpXnH90uDZoGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nj8argWr4IskjNTGftv6XszdapFwrTl0xocj+akkcx8=;
 b=VpDU4DiUrDRoAoZTeE2/VUy7DqmYcznCgNnlmJybfBFoj2Zc0pN60E9lmYItwo0zRAQSCFbByp78r9WHygz61JZGOGhoT0MUQKBSmTyL4SSGHzng/jy+TPQSaWFNoQXqGhoggv7x/Zq6AUEDxmjr1++sq2YQWUe1GSEs5Riic6g6UC2Q+Efm5IKkniVa2FbLkgb/7GPzn5pyPDwse4lGdznwiSo4Uks8R994VgoCmEB6eJIzXgeMaI9+wbJxq3m3tmpa4PiUs6NIwAFu6AE1BQyaZgqDTs5WNWjL8rJJTe0ywalW0i2KlLDX/rtKqEfvm380EHWLKUbJhZhend7+0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=efficios.com; dmarc=pass action=none header.from=efficios.com;
 dkim=pass header.d=efficios.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=efficios.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Nj8argWr4IskjNTGftv6XszdapFwrTl0xocj+akkcx8=;
 b=EEjqtu3m32bZZNeYz/Ni/jn6l8HwpWiMBvzmpp7x0ZwrjK5A+3Rz6popPvTBe0nfvgWqE5CE0NQ9mtt8oFKqUEfTSLNYXRwAjwjHBpkkyVsLqnGDLo2bHTg4X/Y+K63eaMr54Yea83ipPWcnI6L9D0+tPaNObs1OMAiHjiOMGfMP8Na7nlt83laxVIxQq7qYYEhknwObBfIgnJ3g1VQZ0iGkJh6m2Q0wbamqUGkdJBHMwPtuIrnMY2iZifElYewky6cmDRtJgnf5SVGOpzU7a00RJp13F+rro4qIr8OQtCac4/K2XsaHSJFdkiQ4uwA+6JTVfKgcpL+pkZljlwjoDg==
Received: from YT2PR01MB9175.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:be::5)
 by YT3PR01MB10299.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:90::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.16; Thu, 12 Mar
 2026 15:12:50 +0000
Received: from YT2PR01MB9175.CANPRD01.PROD.OUTLOOK.COM
 ([fe80::6004:a862:d45d:90c1]) by YT2PR01MB9175.CANPRD01.PROD.OUTLOOK.COM
 ([fe80::6004:a862:d45d:90c1%3]) with mapi id 15.20.9700.015; Thu, 12 Mar 2026
 15:12:46 +0000
Message-ID: <1e3c2830-765e-4271-89f7-0b6784b37597@efficios.com>
Date: Thu, 12 Mar 2026 11:12:41 -0400
User-Agent: Mozilla Thunderbird
To: "Vineeth Pillai (Google)" <vineeth@bitbyteword.org>,
 Steven Rostedt <rostedt@goodmis.org>, Peter Zijlstra <peterz@infradead.org>,
 Dmitry Ilvokhin <d@ilvokhin.com>
References: <20260312150523.2054552-1-vineeth@bitbyteword.org>
From: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Content-Language: en-US
In-Reply-To: <20260312150523.2054552-1-vineeth@bitbyteword.org>
X-ClientProxiedBy: YQZPR01CA0182.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:8b::24) To YT2PR01MB9175.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:be::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: YT2PR01MB9175:EE_|YT3PR01MB10299:EE_
X-MS-Office365-Filtering-Correlation-Id: 4297b093-1e48-489f-e898-08de8049d0c7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|376014|7416014|1800799024|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 
	5kQMFGQNndT0kf70A5gsZUpmCWqs49Hfw7ehDi9le4rZ505JRhw7ub4zBvwYRvsNZ/o45yBwYOpKUBk9fS6dDxmGD02UpIxHZujK0R3KpRBuHcmjQjdvGIoBT9oPrGHrx2PF8SQ15hCYmDMMRfot3XxyQeOyTFQDpfP84yToZaV7xZ97FsJDcfR0LClkCryl3O+dE+e39WIXC+zDhj7/07icyUQOPv3fmuoELvrJn6Rmhr75Xk0/HzI5rY9awHNUB3OblKczO9dbgcgaHUT1Wesf/RARUw592JBLVjFIQCDeK/95NQd5M3+EXz5j+Xzm5Ca0BOYtTxGCmYTpKlQBhyFM/DilxSb/tsHLcENRDPX84AlU3vlewQ1B53s7ucDns8JONVubrpIgAOt8aWHmiGr8MA6qv8ZvM+TNVjMWH8Eq7D9hGmrfVeG/008Ns5fR+qyAvQigD0jv5LjDTUje8/kD9BgnRwJYyV2Jcj6P8NqjgOC5V2KShlNHbmF4EAtJLjazA/q38RrgaoSaayiRLrdmtTpFxXRhgOfBv8V9NBZ9YTiQplRFVxZdO722U+ZxnG/jdFdoJ3Bf+WRYw41J8RVPRUqKcCw+IjnYvsU6SQ54nbpGggZW7mnt/+SDngXZQAcrJFz3ApWCFQiJXIBmguCiC7NQeTdNyjcrd0ByTNGud16Fg8bvpoqZ8FK6OKNa
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:YT2PR01MB9175.CANPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(1800799024)(56012099003)(18002099003)(22082099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cnUzSGFGQlhPaFc1Z0liamQ1N2Fpc1puWGNXeWpzdS9xR2x4ajFjVDlJMmVk?=
 =?utf-8?B?R2pHQUxpVnpNREpuU2tUenphcTdwSGhWUW1Ea2VRbUlrUHZqd2h2bXB2TVBa?=
 =?utf-8?B?MlgzSnJGTjYvWDcrOU9QdWJnWm5PdzNrdGdzVHVFNEI4Y2tEZ1c4OVREc1dK?=
 =?utf-8?B?WllNUitqQkNtUkpZTGhuSVEwRm9pT3hXdEdKem5UKzQxa2laeUFTWkk4dWNS?=
 =?utf-8?B?VzFobHRYVnpFUGhYOEVBLzh3YWFoRUl2NDE0Q0hMV29TT0JOWTVFYnpaTmZE?=
 =?utf-8?B?dGRvVWdZcUwyY2lwNGt4YVZnRlQ3bmtHam8zMStUTkx6c295VWZNaXM5c2tR?=
 =?utf-8?B?UGJQN3RNNGRKVnhleUgvdW5FLy9yMmNrbDZZaXZTT3Q2dm1mRitXc2JRYW96?=
 =?utf-8?B?V2x1dEtyK1BpaEtGd25ldTc2NEFPWHVqeWVnQXJyWlVOb0ZZYVdXMzNwc1VV?=
 =?utf-8?B?cmhYUjdVOHh3YWhzRG1rMW1VRTh4Z3I4dHcvR0kwWUh1RWJHVEVLTzFXZ2Ix?=
 =?utf-8?B?MTBzU01FRkVlak5wQk83WGRJWS85ejVWaWRIUVRuUTFHWCtvdXNmc1ZHc2NN?=
 =?utf-8?B?WWhlRE4xUTFZMktWa015UWoweE5RekVJOWFuWkVPLzhGNmZTMkZyZkpJSEh0?=
 =?utf-8?B?UmtiWllIZVdzd3lSZE1VdWtUak9hRjRLR09wOHNqdndiUlZyNTZkbXBJSnRX?=
 =?utf-8?B?YkkybzRwc2FNcERGNjNSeXV6VENzVmY0RlcrZ1FPVTA5NkV5OFhOVTlyWXpp?=
 =?utf-8?B?dG5BZ3RWejdkaVJJZG5CaDdDZVJ3UFovUFE2bU0wNkxUbkhsZER0dFdqakUr?=
 =?utf-8?B?ZmZRbWFkY2E0bmxpM3daL3pzc1hZRjljaVErZTNJYnk5ZmJ3M3lSUm1nRkFp?=
 =?utf-8?B?QXRTNWRyZldJbitmL3EzNzlCRmFSRkZZbTNjeHdjWFczdmVHcWkrL0M0cmZM?=
 =?utf-8?B?K1FYeGZVbHNjTWdOcUtHVnRDSEpKK1FmMEpHQ1dWOUp2QUU0bS9xVk0zMXhP?=
 =?utf-8?B?K1cwQzNyN0s5T2pjcnZ3TVQwWTdMS2l6bzNHajYrbit3a1c4OHFNK1dESnpp?=
 =?utf-8?B?a0wyZDgzSWgxZStnMlhVRU84N0paNGx5QU1tcisxQzZlNXkxNWNRMTlHTkwz?=
 =?utf-8?B?YTd2S2FZSTF4U0Y3ZExUNHdCc2VZN2ZtL3JJVE1Dc1pSOTBhbkpPQ0RkbzNX?=
 =?utf-8?B?WUNYbmpKZldNd1RkTHRHSjlWNTIxVStGdnY3M2hNZHBCdFl2QUhIeGg0aHor?=
 =?utf-8?B?L201U3h1RXNOcldwNXhjYjJNVHhzcHliVktlN1Q5K3REWnAvU25KdlNWQldl?=
 =?utf-8?B?MHJoQzUyV0NQR3NKTzIwQm45ZTl3N3NTZHlDTkZ1bTZXMUhnZEQ3QzVra01m?=
 =?utf-8?B?MXZCNWVlQ0lkRUhUcE94L21zeWpRSlVUd09NdjRUL05ZK0Y5Qk85ZmM3SUZw?=
 =?utf-8?B?RGNFalpYcUpsVVZFRW1NUEtQOUpkSktCZFdOQ1ZDNmZPY005OE43bVBjREN3?=
 =?utf-8?B?dUNnZlJPb05KTDhHdWNKeGIvZXdrQVhGRDg0NndTT1hpbWY2NXhabDBnVnEr?=
 =?utf-8?B?bk0vSFNxdnJIRVNUVHhkdnVXVDNkYW5PZ3JDakNiU2RqazVIb3d0aVpTdGoy?=
 =?utf-8?B?ZUowUVM4Mk45MDJZYWZKbm1DVS9LWnN5UEYrQk9oVE5UVzJxNGhkQ3BkbnJK?=
 =?utf-8?B?dkl2UzlSWHc5am5MMXR0VlNiSDkvYXFXTGVUNFRIdGpYMWl2SGhrdC9lcDJD?=
 =?utf-8?B?WStFQjJHK3VHTitZOVN5eW9La2FGU2s3ODBBQzVPek11SzNMRkRwbm1FZWNN?=
 =?utf-8?B?SWxhUUZQck84ckt5aWdaMXQvTmRDQ3diMEN0NXhKdmd1SmJ4eUthTk0rQ2tr?=
 =?utf-8?B?cWpqeHFTSjVjWThDNUtkLzBZRU5rVERGWDJ4a3IxMitmMTJuY3ppUUxkZXJz?=
 =?utf-8?B?ckE1U28wY2dTd1lNajhRYkx5S0h6TXd0RWQvbWhkQk1WT3dybWd2WkRhbCs5?=
 =?utf-8?B?WTB2bWJ5YytMQWlVaXA2MmhzVnF3QlJzSUxQQXJLUTh3MTdsWHc3V3E3ejJK?=
 =?utf-8?B?YXpqSDFOeFRvS1VkVVh0RGFIQjZ6M3laU1ZEQVVTMDlKcFpBcWxVaVJ6RDZK?=
 =?utf-8?B?NGRqU3Q4OWJua1N2WjVWZnBxdVVlTllzMnlUMjQ1eVErUWtqcU00Q0x6UUM2?=
 =?utf-8?B?WERUM1JHQnVVeklJTmYxOTNSVG5uRHZ2YU9KbHpFOWp0eEtOalJjZUdzMmZZ?=
 =?utf-8?B?d2ZzS05JM2ZzSDZocFlyMTc4N1lXc3NZZTNPYjJ6TzFKZEozRXV6S2EvVE1x?=
 =?utf-8?B?TVBRc2Jnd0U3YVdROE1GSnB1MjFLdms2UzlsbFV6bitXUmVoUmcvV2VodWRH?=
 =?utf-8?Q?iiGXhwuhmwDu58Lo=3D?=
X-OriginatorOrg: efficios.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4297b093-1e48-489f-e898-08de8049d0c7
X-MS-Exchange-CrossTenant-AuthSource: YT2PR01MB9175.CANPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2026 15:12:45.8608
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4f278736-4ab6-415c-957e-1f55336bd31e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2k9rS5kk9/fiMIPTdG3OWGYlodtiZTRGXp/7mV52e2o0TtaUWxB/ks/sHiJVyQHF3VxZWPF+2hYkF1WUhD3xam1jbrEdqicVbSTEDpwqYmU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: YT3PR01MB10299
X-Spamd-Bar: ----
X-MailFrom: mathieu.desnoyers@efficios.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FXFK56W5ZKT5LRUP3BVA7KOFC4Z3Z5KD
X-Message-ID-Hash: FXFK56W5ZKT5LRUP3BVA7KOFC4Z3Z5KD
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:15:59 +0000
CC: Masami Hiramatsu <mhiramat@kernel.org>, Ingo Molnar <mingo@redhat.com>, Jens Axboe <axboe@kernel.dk>, io-uring@vger.kernel.org, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>, Xin Long <lucien.xin@gmail.com>, Jon Maloy <jmaloy@redhat.com>, Aaron Conole <aconole@redhat.com>, Eelco Chaudron <echaudro@redhat.com>, Ilya Maximets <i.maximets@ovn.org>, netdev@vger.kernel.org, bpf@vger.kernel.org, linux-sctp@vger.kernel.org, tipc-discussion@lists.sourceforge.net, dev@openvswitch.org, Oded Gabbay <ogabbay@kernel.org>, Koby Elbaz <koby.elbaz@intel.com>, dri-devel@lists.freedesktop.org, "Rafael J. Wysocki" <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, "Gautham R. Shenoy" <gautham.shenoy@amd.com>, Huang Rui <ray.huang@amd.com>, Mario Limonciello <mario.l
 imonciello@amd.com>, Len Brown <lenb@kernel.org>, Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>, linux-pm@vger.kernel.org, MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, linaro-mm-sig@lists.linaro.org, Eddie James <eajames@linux.ibm.com>, Andrew Jeffery <andrew@codeconstruct.com.au>, linux-fsi@lists.ozlabs.org, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>, Danilo Krummrich <dakr@kernel.org>, Matthew Brost <matthew.brost@intel.com>, Philipp Stanner <phasta@kernel.org>, Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, amd-gfx@lists.freedesktop.org, Jiri Kosina <jikos@kernel.org>, Benjamin Tissoires <bentiss@kernel.org>, linux-input@vger.kernel.org, Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-i2c@vger.kernel
 .org, Mark Brown <broonie@kernel.org>, Michael Hennerich <michael.hennerich@analog.com>, =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, linux-spi@vger.kernel.org, "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>, "Martin K. Petersen" <martin.petersen@oracle.com>, linux-scsi@vger.kernel.org, Chris Mason <clm@fb.com>, David Sterba <dsterba@suse.com>, linux-btrfs@vger.kernel.org, linux-trace-kernel@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 00/15] tracepoint: Avoid double static_branch evaluation at guarded call sites
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FXFK56W5ZKT5LRUP3BVA7KOFC4Z3Z5KD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DATE_IN_PAST(1.00)[938];
	R_DKIM_REJECT(1.00)[efficios.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[efficios.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	GREYLIST(0.00)[pass,meta];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.705];
	RCPT_COUNT_GT_50(0.00)[71];
	FROM_NEQ_ENVFROM(0.00)[mathieu.desnoyers@efficios.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[kernel.org,redhat.com,kernel.dk,vger.kernel.org,davemloft.net,google.com,iogearbox.net,gmail.com,ovn.org,lists.sourceforge.net,openvswitch.org,intel.com,lists.freedesktop.org,linaro.org,amd.com,linux.intel.com,samsung.com,lists.linaro.org,linux.ibm.com,codeconstruct.com.au,lists.ozlabs.org,ffwll.ch,sang-engineering.com,vger.kernel,analog.com,HansenPartnership.com,oracle.com,fb.com,suse.com];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,renesas];
	DKIM_TRACE(0.00)[efficios.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[efficios.com:mid,efficios.com:url,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 5D3F2430E2D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 2026-03-12 11:04, Vineeth Pillai (Google) wrote:
> When a caller already guards a tracepoint with an explicit enabled check:
> 
>    if (trace_foo_enabled() && cond)
>        trace_foo(args);
> 
> trace_foo() internally re-evaluates the static_branch_unlikely() key.
> Since static branches are patched binary instructions the compiler cannot
> fold the two evaluations, so every such site pays the cost twice.
> 
> This series introduces trace_invoke_##name() as a companion to
> trace_##name().  It calls __do_trace_##name() directly, bypassing the
> redundant static-branch re-check, while preserving all other correctness
> properties of the normal path (RCU-watching assertion, might_fault() for
> syscall tracepoints).  The internal __do_trace_##name() symbol is not
> leaked to call sites; trace_invoke_##name() is the only new public API.
> 
>    if (trace_foo_enabled() && cond)
>        trace_invoke_foo(args);   /* calls __do_trace_foo() directly */

FYI, we have a similar concept in LTTng-UST for userspace
instrumentation already:

if (lttng_ust_tracepoint_enabled(provider, name))
         lttng_ust_do_tracepoint(provider, name, ...);

Perhaps it can provide some ideas about API naming.

Thanks,

Mathieu

-- 
Mathieu Desnoyers
EfficiOS Inc.
https://www.efficios.com
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

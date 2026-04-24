Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WKdAKQsp62m1JQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2026 10:25:47 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0925D45B6D3
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2026 10:25:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 02EAE405CB
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2026 08:25:46 +0000 (UTC)
Received: from SN4PR0501CU005.outbound.protection.outlook.com (mail-southcentralusazon11011061.outbound.protection.outlook.com [40.93.194.61])
	by lists.linaro.org (Postfix) with ESMTPS id 0B0F83F836
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Apr 2026 08:25:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=QmMRsExh;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.194.61 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Bc1GOQCXZAopQr/+UgpzNRYrtItbkjKxPCYUM4nK5leWOVpIlrlyfSbuJDVqi0b6qK5NVHIj6lFyRnoLZL+5jf6a9iWOrbv5VwxXtoA8m4jT0PCM77rK7Uku4SezP6mO4E6TlsggR/4SLAUCnW1EZfx4v8Jzs9LuuwbiznRDtdS6qqponNDKeI0axzIXgP9f8EM1v1zxh017kjISFZ0vrfT9+sw1fFNIcoqb5n8aRfwEMh2hS6nOWgR6erDmI/zdDI9A7d1+QhW2hdyqjM26c0ph5bHgIGNFv9UWv6F3hudanXtuwkjK+u+WOqBCA7Im6RQeK2tr1KH9KLEHpfWTXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w7TNyY/lYHLLSCa5Ra/CX9BuJtD5IZVLv3ibec1Z4oo=;
 b=RYmr1PzXCZ/sHTb1twmxAy8LENHv2Bg2134Bt5KSqBsvGAES2Bgk7Cj/EvfLuMZ4wWN06XnYvQUuUxJXogVFr4o7F7t8WMuvIV2Tac2vuStkTa35N30iPKvdzVwVs2YqYPVw7UjQrcB58rPJe7vDwlch89rOiVNuXA/ywQMtq7wESlgaTZi1burbuQZWsTOgbMTzCS0vUebwDW/69tXFZE3cyNIO2QMF3iL1X3wvMiSF0ErS3EDdk0KTk1ycsr4uxAHau3HXDJ7k4N+2PMJHrkaZ1LSF0d6uaWct5PHPexAn0E1amGMmm6DwI/9ItbLp4TYriByxv2TLWKc/kt810Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w7TNyY/lYHLLSCa5Ra/CX9BuJtD5IZVLv3ibec1Z4oo=;
 b=QmMRsExhZegauuWhfb8qhzDkMhXx0ikof/OhhB5DdriGRN5mNLckI/1rT9Oydeh7vo5hFyaEvTxFnOmhiiVFvmPuW+4ghr091FWMpDZXGBaaQlWuRV6GKDYtB3uVIwVMpYpxcUBCtCaRWui0V0PZwRKD71/yVK5W5ickuKFJ0Jo=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SJ0PR12MB7459.namprd12.prod.outlook.com (2603:10b6:a03:48d::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.22; Fri, 24 Apr
 2026 08:25:37 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9846.021; Fri, 24 Apr 2026
 08:25:36 +0000
Message-ID: <a2241936-579f-4fa6-a9ec-49325d44413f@amd.com>
Date: Fri, 24 Apr 2026 10:25:25 +0200
User-Agent: Mozilla Thunderbird
To: Mukesh Kumar Chaurasiya <mkchauras@gmail.com>
References: <20260424054742.45832-1-mkchauras@gmail.com>
 <20260424054742.45832-3-mkchauras@gmail.com>
 <b4dcb464-7784-47e2-a973-6d731ab9ccf8@amd.com>
 <aeskOeb9uBiPptEJ@li-1a3e774c-28e4-11b2-a85c-acc9f2883e29.ibm.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <aeskOeb9uBiPptEJ@li-1a3e774c-28e4-11b2-a85c-acc9f2883e29.ibm.com>
X-ClientProxiedBy: FR5P281CA0029.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f1::13) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SJ0PR12MB7459:EE_
X-MS-Office365-Filtering-Correlation-Id: 0897a3f6-e7d8-4fc9-2c28-08dea1db0fc1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|7416014|366016|1800799024|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 
	3btoKxuCOOd4rkrWEedArkPUExY4PnDOWOub5MLCAcYxm/1ZoPDPiNZ8NnCmDfoZSk2LMVUclZW5IdFnPkjcU3F03Jugobzlyizo4CM1eg+H77A9+9H0AvtI6qZWQyex622v7IVHK9+ztosGk22BkpkFsOYIWnsjmdA6s8x5Qp0WY6rHcYXiYMtOAl/CYmh1d4f3UBlfbHUyTpx6H19Pzgs32NUU4Qnhb6LF6a63QEHAJG+a2XWUa8NykwNvn4oG+hAibeY4PrKH9fJ0oqwqkdUnG9nNrQe/05PyC4djvqh4F3TmO5yLmUjMH2PPv4neHslRJX6ddDrq+18BS7rGhzTMvfRqgcJJM/xlhUWJqqnknivB/oNw1eYH3o52Npq7AXR6vMXj6mzdCHK6JDzINE0D7rTtdZhdymtl5eibT0xIBoIOsi6IfKsizrk+B8ODYFoOrvabNXN7jmqw0y+3ltxyhxu3t4ztYiDsO45goqE+r7+7oPqfzify83+GdozGuVKBr/dSgS+GWtXbymVq39lUPDX0mmSbsoNTYULGGd997VMU0doqZnDGeid2oepKHIvwIOd82t9whIPRdxtuzC4RCcm0d9TS/NLhXnsCsonTTnOvekgW2D+eKJ2Yx4Uj1DFrtfu33r/8ootNHslgyK/ceUsoQHDqNXggNXpr0JS5cYqsc+4rryWgPGrUmEqdnOUuJ044iKRLZFHkxrxAFZMssBBhukNjGZEeq+EIoac=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(1800799024)(56012099003)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?LzlTMU1yS0F1N0hxdHpsYlhrbldzZ3YzdW5wQ3dUUWt1dDdIL3FLV21lZnVa?=
 =?utf-8?B?NGpvclhHNzE3dXlZUittOGNhLzVCOTZIWTBYaWVrZ3NoV2ExeWFQVlIraXc1?=
 =?utf-8?B?UUI3Z0s0WDZ6WVlzU3doc05RWk5TWTdHejViUlRjcEFnSFpZRFAyZzA1MWdk?=
 =?utf-8?B?ZmxCUStkZDlmRDdYZWRBV2JCYkhXd2hBQTFKaFdSd0YzbzBlNUoreUdYYTR5?=
 =?utf-8?B?dW1QOHgzTWI2SkhtN0lzNDMwMEdjKytDK0dqeDBqTGlLOUZUdmp1WGRjcUVj?=
 =?utf-8?B?SnBSbW41MENTcEkvN2lhNnZhNy93NkR2LzRDQzNuTzNSc2VNM0JXUUY2T1BS?=
 =?utf-8?B?c0V2VzU1WWhoNUp2bDFkeExTZ0ZUVFNJTzZHY2ZKNDFyOG5CTWIyK3hYWG05?=
 =?utf-8?B?K1VFU3doRHJqL0lpZkZ3dFZOc0pnUDhiOWw0QUxIakpiVFRBRzd0UTdkMXJv?=
 =?utf-8?B?ZVdDK2ViejVTT2paQ3VEQkRuWHdjcTVpRGRhSXVwSmFhUElob3lRQ2lEcGd3?=
 =?utf-8?B?TjVSeUVnUVdDeWh2M0txeCtTb2c4Ly94T1Q4emFBWm1MdHNyUEpNVzhvZkpO?=
 =?utf-8?B?cVluT0RmS2tVaDIxMGlFdytORVl5bEJ5VFBCeHQ4dXluUkNhWnlLYjExb21s?=
 =?utf-8?B?Nnhsc0R0alp6Vm4yNzZFQnhZcHZlVVBSRnR6djAvS3pQeWU2RDJqK21LUk13?=
 =?utf-8?B?aC9IK0FCMlpFUzdRTFR5ZjJwL3ZuNlhVcnkzVDlwRnhIUWlFajk0dk5GUmhk?=
 =?utf-8?B?YnVRZHU1RXBzdUl2STVtSE02VDBtRnlwcHlhYW5PdWZXQUt2WDc5NXJwWnJ4?=
 =?utf-8?B?RzQ2MHF0NTJDM3R0K25ubkhpWlEvNVB0NGkvMXM1cytMWnA1Ukhna0E4Y1hB?=
 =?utf-8?B?L25CRUR3OGR2L002d0QrcHRUM0lMN1RYdXpGb0dLaGxvUWI1elloR0sveEk3?=
 =?utf-8?B?cW9ubG9WT3EzUHYrOGNvVElRdVFWbUszeXVFVkdxV0ZGcEcwUVJSRmdIbFNy?=
 =?utf-8?B?ek1GY0pTaEdUQkpLR0Y4TndZWGtFYWVrQm9aVmgwWGh0bExpalBxSjlMaHU5?=
 =?utf-8?B?dGxQbXdoZlhleklVVlMyS3RHdFNSTTBjMjZybWlUeW1CU0JGVTQrSlpiNnk5?=
 =?utf-8?B?Y1Q0TWRrc3JEL05RcHdwS1ZHMFFlOUk1U21xRGYwMnl4SVkxNmVaY3QxL3pR?=
 =?utf-8?B?ZTU2OEp1Y3dIYW9MSURZbFRBNzBwRlp2Q3EyWGtSa1Job2FHenBkRXlxM0Fa?=
 =?utf-8?B?b3c0UzFMamw5RzNFMjlETjhLTGpKTk5hMEhsSUk2dVJWU1oyaytQNGxqZHU4?=
 =?utf-8?B?VGdBeHlVMXVOTmdXeU56TVo2SjdNK1ZjVklNQU8xVGtjYUdWZTlFMFBTV0tT?=
 =?utf-8?B?dGk2RjNTdi8xZ0pwRTRsZzFpMTFQQWNWWHdsVmdQbGtnRUxET0FMY25lRW9K?=
 =?utf-8?B?dUtiNnhqVUcvTjQ5YmJiNFkzNzJ5Um1VYlJKY3dSaHE2UDdHeC9BUzZkS2kv?=
 =?utf-8?B?MFkzaDlzemcwdGNoaWNFTHNINTFHMTYrM01hdWp2SHU0WnZqL3Vxc016ZE5x?=
 =?utf-8?B?N25FM2Q3cEJBM3ExdjI1NFQxY05uY0NFTDdPSVoxT3Rka0xoZjVtdFFMNGxa?=
 =?utf-8?B?bnJQdFBVVnQySDlNTVR6VzM0YVJYZkMzUVJjenVGRzZNd2dYeTZHaEpOZk1p?=
 =?utf-8?B?OGs0TnlRRDdwOXNhMGxuZCthR1JRNE1HcDRTNW1CT3JOQTkxR0VUd2xxNjFv?=
 =?utf-8?B?SnNtbW1Ea0hLSG9uTTlaS3IvZ0dxd1dHK0xOY3JIR1ZqYms3Ulk1aW9sbC94?=
 =?utf-8?B?SVh0SWU2STRJeER2SzhSYTJoblVDSThGQ2pjaWJpcDZRUDVHS3RLd1QrQUJt?=
 =?utf-8?B?c3BwNVVMTjFCR1JRVmczMm1McWVQOElsQzZPZnVLdmlYbGFDZ2N5NHJLMHdR?=
 =?utf-8?B?V3o3OTlVTHdXbDlKZ3ZiNkR5cFNVU3lCaCthWnVGSHFjeG1VL2ZPbWgyRC9j?=
 =?utf-8?B?TzZrc1lKaDdvN05nUXVNSWF4aVlGWTlGMEZwNE0yN0VNNTFXVWdnT255RmI3?=
 =?utf-8?B?MDlvdlBoQWJydlNndURLdGN3R1hDTTc3YXBBZW1VTGNKYWgyQy94VHhuK3N5?=
 =?utf-8?B?cmFQd0tDQ28ra3ZLRVhWMmhtWHBTWXc5bUMrZFVibGRFWU8wNVVmckUrOGU1?=
 =?utf-8?B?Z013anJ6TDVtUkw4QytWa2ZMdTQ2NjZHazBZMFcyWkZ2N29QNkE1NVlmcEdV?=
 =?utf-8?B?SnkraTlFY0tjdTRFaXhJcURTemw3Y2Rna2FCNHZVS2plWVJBUmdHMXUzTXpY?=
 =?utf-8?Q?KxQ2DDDAo9Gj0GwFGX?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0897a3f6-e7d8-4fc9-2c28-08dea1db0fc1
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2026 08:25:36.8324
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qS8p/DPDAG2SXgomuWILqM6RZp0xmKRQ1NUKbj+v/xwsFCTE/e94p2rDZWJtQoLy
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB7459
X-Spamd-Bar: -----
Message-ID-Hash: AOWFYGPGKS36P62OPJB4BTPOUP3CHMOF
X-Message-ID-Hash: AOWFYGPGKS36P62OPJB4BTPOUP3CHMOF
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: maddy@linux.ibm.com, mpe@ellerman.id.au, npiggin@gmail.com, chleroy@kernel.org, peterz@infradead.org, jpoimboe@kernel.org, jbaron@akamai.com, aliceryhl@google.com, rostedt@goodmis.org, ardb@kernel.org, sumit.semwal@linaro.org, ojeda@kernel.org, boqun@kernel.org, gary@garyguo.net, bjorn3_gh@protonmail.com, lossin@kernel.org, a.hindborg@kernel.org, tmgross@umich.edu, dakr@kernel.org, nathan@kernel.org, nick.desaulniers+lkml@gmail.com, morbo@google.com, justinstitt@google.com, tamird@kernel.org, arnd@arndb.de, nsc@kernel.org, simona.vetter@ffwll.ch, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rust-for-linux@vger.kernel.org, llvm@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V13 2/7] dma-resv: Fix undefined symbol when CONFIG_DMA_SHARED_BUFFER is disabled
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AOWFYGPGKS36P62OPJB4BTPOUP3CHMOF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 0925D45B6D3
X-Rspamd-Action: no action
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
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	RCPT_COUNT_TWELVE(0.00)[35];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linux.ibm.com,ellerman.id.au,gmail.com,kernel.org,infradead.org,akamai.com,google.com,goodmis.org,linaro.org,garyguo.net,protonmail.com,umich.edu,arndb.de,ffwll.ch,lists.ozlabs.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	DKIM_TRACE(0.00)[amd.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.398];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,lkml];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	REDIRECTOR_URL(0.00)[aka.ms];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[aka.ms:url,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]

T24gNC8yNC8yNiAxMDowNiwgTXVrZXNoIEt1bWFyIENoYXVyYXNpeWEgd3JvdGU6DQo+IFtTaWUg
ZXJoYWx0ZW4gbmljaHQgaMOkdWZpZyBFLU1haWxzIHZvbiBta2NoYXVyYXNAZ21haWwuY29tLiBX
ZWl0ZXJlIEluZm9ybWF0aW9uZW4sIHdhcnVtIGRpZXMgd2ljaHRpZyBpc3QsIGZpbmRlbiBTaWUg
dW50ZXIgaHR0cHM6Ly9ha2EubXMvTGVhcm5BYm91dFNlbmRlcklkZW50aWZpY2F0aW9uIF0NCj4g
DQo+IE9uIEZyaSwgQXByIDI0LCAyMDI2IGF0IDA5OjU2OjE2QU0gKzAyMDAsIENocmlzdGlhbiBL
w7ZuaWcgd3JvdGU6DQo+PiBPbiA0LzI0LzI2IDA3OjQ3LCBNdWtlc2ggS3VtYXIgQ2hhdXJhc2l5
YSAoSUJNKSB3cm90ZToNCj4+PiBXaGVuIGJ1aWxkaW5nIHdpdGggTExWTT0xIGZvciBhcmNoaXRl
Y3R1cmVzIGxpa2UgcG93ZXJwYyB3aGVyZQ0KPj4+IENPTkZJR19ETUFfU0hBUkVEX0JVRkZFUiBp
cyBub3QgZW5hYmxlZCwgdGhlIGJ1aWxkIGZhaWxzIHdpdGg6DQo+Pj4NCj4+PiAgIGxkLmxsZDog
ZXJyb3I6IHVuZGVmaW5lZCBzeW1ib2w6IGRtYV9yZXN2X3Jlc2V0X21heF9mZW5jZXMNCj4+PiAg
ID4+PiByZWZlcmVuY2VkIGJ5IGhlbHBlcnMuYw0KPj4+ICAgPj4+ICAgICAgICAgICAgICAgcnVz
dC9oZWxwZXJzL2hlbHBlcnMubzoocnVzdF9oZWxwZXJfZG1hX3Jlc3ZfdW5sb2NrKQ0KPj4+DQo+
Pj4gVGhlIGlzc3VlIG9jY3VycyBiZWNhdXNlOg0KPj4+IDEuIENPTkZJR19ERUJVR19NVVRFWEVT
PXkgaXMgZW5hYmxlZA0KPj4+IDIuIENPTkZJR19ETUFfU0hBUkVEX0JVRkZFUiBpcyBub3QgZW5h
YmxlZA0KPj4+IDMuIGRtYV9yZXN2X3Jlc2V0X21heF9mZW5jZXMoKSBpcyBkZWNsYXJlZCBpbiB0
aGUgaGVhZGVyIHdoZW4NCj4+PiAgICBDT05GSUdfREVCVUdfTVVURVhFUyBpcyBzZXQNCj4+PiA0
LiBCdXQgdGhlIGZ1bmN0aW9uIGlzIG9ubHkgY29tcGlsZWQgaW4gZHJpdmVycy9kbWEtYnVmL2Rt
YS1yZXN2LmMsDQo+Pj4gICAgd2hpY2ggaXMgb25seSBidWlsdCB3aGVuIENPTkZJR19ETUFfU0hB
UkVEX0JVRkZFUiBpcyBlbmFibGVkDQo+Pj4gNS4gUnVzdCBoZWxwZXJzIGNhbGwgZG1hX3Jlc3Zf
dW5sb2NrKCkgd2hpY2ggY2FsbHMNCj4+PiAgICBkbWFfcmVzdl9yZXNldF9tYXhfZmVuY2VzKCks
IGNhdXNpbmcgYW4gdW5kZWZpbmVkIHN5bWJvbA0KPj4+DQo+Pj4gRml4IHRoaXMgYnkgbWFraW5n
IHRoZSBmdW5jdGlvbiBkZWNsYXJhdGlvbiBjb25kaXRpb25hbCBvbiBib3RoDQo+Pj4gQ09ORklH
X0RFQlVHX01VVEVYRVMgYW5kIENPTkZJR19ETUFfU0hBUkVEX0JVRkZFUi4gV2hlbiBlaXRoZXIg
aXMNCj4+PiBkaXNhYmxlZCwgdXNlIGEgc3RhdGljIGlubGluZSBzdHViIGluc3RlYWQuDQo+Pg0K
Pj4gV2VsbCB3ZSBhcmUgY2xlYXJseSBtaXNzaW5nIHNvbWV0aGluZyBoZXJlLCBidXQgb2YgaGFu
ZCB0aGF0IGRvZXNuJ3QgbG9va3MgbGlrZSB0aGUgcmlnaHQgZml4Lg0KPj4NCj4+IFdoZW4gQ09O
RklHX0RNQV9TSEFSRURfQlVGRkVSIGlzbid0IGVuYWJsZWQgdGhlbiB0aGUgd2hvbGUgZG1hLXJl
c3YuaCBoZWFkZXIgY2FuJ3QgYmUgdXNlZCBhdCBhbGwuDQo+Pg0KPj4gU28geW91IGFsc28gY2Fu
J3QgY2FsbCBkbWFfcmVzdl91bmxvY2soKSBmcm9tIHRoZSBSdXN0IGhlbHBlcnMuIFdoaWNoIG1l
YW5zIHRoYXQgd2UgbmVlZCB0byBtYWtlIHRoZSBSdXN0IGhlbHBlcnMgc29tZWhvdyBkZXBlbmQg
b24gQ09ORklHX0RNQV9TSEFSRURfQlVGRkVSLg0KPj4NCj4+IEFsdGVybmF0aXZlIHdvdWxkIGJl
IHRvIHByb3ZpZGUgZHVtbWllcyBmb3IgdGhlIGZ1bmN0aW9ucyBpbiBkbWEtcmVzdi5oIHdoZW4g
Q09ORklHX0RNQV9TSEFSRURfQlVGRkVSIGlzbid0IHNldCwgYnV0IHRoYXQgbG9va3MgYSBiaXQg
bGlrZSBpdCBqdXN0IGhpZGVzIHRoZSBpc3N1ZS4NCj4+DQo+PiBSZWdhcmRzLA0KPj4gQ2hyaXN0
aWFuLg0KPj4NCj4gV2hhdCBhYm91dCBzb21ldGhpbmcgbGlrZSB0aGlzOg0KPiANCj4gZGlmZiAt
LWdpdCBhL3J1c3QvaGVscGVycy9kbWEtcmVzdi5jIGIvcnVzdC9oZWxwZXJzL2RtYS1yZXN2LmMN
Cj4gaW5kZXggNzE5MTRkODI0MWUyLi41M2MxMTlmMWIxNDQgMTAwNjQ0DQo+IC0tLSBhL3J1c3Qv
aGVscGVycy9kbWEtcmVzdi5jDQo+ICsrKyBiL3J1c3QvaGVscGVycy9kbWEtcmVzdi5jDQo+IEBA
IC0yLDYgKzIsNyBAQA0KPiANCj4gICNpbmNsdWRlIDxsaW51eC9kbWEtcmVzdi5oPg0KPiANCj4g
KyNpZmRlZiBDT05GSUdfRE1BX1NIQVJFRF9CVUZGRVINCj4gIF9fcnVzdF9oZWxwZXINCj4gIGlu
dCBydXN0X2hlbHBlcl9kbWFfcmVzdl9sb2NrKHN0cnVjdCBkbWFfcmVzdiAqb2JqLCBzdHJ1Y3Qg
d3dfYWNxdWlyZV9jdHggKmN0eCkNCj4gIHsNCj4gQEAgLTEyLDMgKzEzLDQgQEAgX19ydXN0X2hl
bHBlciB2b2lkIHJ1c3RfaGVscGVyX2RtYV9yZXN2X3VubG9jayhzdHJ1Y3QgZG1hX3Jlc3YgKm9i
aikNCj4gIHsNCj4gICAgICAgICBkbWFfcmVzdl91bmxvY2sob2JqKTsNCj4gIH0NCj4gKyNlbmRp
Zg0KPiANCj4gVGhpcyBzZWVtcyB0byBmaXggdGhlIGlzc3VlIGFuZCBtYWtlcyBzZW5zZSwgd2hv
ZXZlciB3YW50cyB0byB1c2UgdGhlDQo+IGRtYSBzaGFyZWQgYnVmZmVyIHdpbGwgYW55d2F5IGVu
YWJsZSB0aGUgY29uZmlnDQoNClllYWggdGhhdCBkaXJlY3Rpb25zIG1ha2VzIHNlbnNlLg0KDQpJ
IHdvdWxkIG1heWJlIGdvIGEgc3RlcCBmdXJ0aGVyIGFuZCBkb24ndCBldmVuIGNvbXBpbGUgcnVz
dC9oZWxwZXJzL2RtYS1yZXN2LmMgd2hlbiBDT05GSUdfRE1BX1NIQVJFRF9CVUZGRVIgaXNuJ3Qg
c2V0Lg0KDQpCdXQgaWYgdGhhdCBpcyBub3QgcG9zc2libGUgZm9yIHNvbWUgcmVhc29uIHRoZW4g
dGhpcyBzb2x1dGlvbiBpcyBwZXJmZWN0bHkgZmluZSB3aXRoIG1lIGFzIHdlbGwuDQoNClRoZSBn
ZW5lcmFsIGdvYWwgaXMgdG8gbWFrZSB0aGUgZXJyb3IgbWVzc2FnZXMgd2hlbiB5b3UgaGF2ZW4n
dCBzZXQgQ09ORklHX0RNQV9TSEFSRURfQlVGRkVSIGFuZCBzdGlsbCB0cnkgdG8gdXNlIHRoZSBE
TUEtYnVmIGZ1bmN0aW9ucyBlYXN5IHRvIHVuZGVyc3RhbmQgYW5kIG5vdCBzb21ldGhpbmcgY3J5
cHRpYy4NCg0KVGhhbmtzLA0KQ2hyaXN0aWFuLg0KDQo+IA0KPiBSZWdhcmRzLA0KPiBNdWtlc2gN
Cj4+Pg0KPj4+IEZpeGVzOiAwYzZiNTIyYWJjMmEgKCJkbWEtYnVmOiBjbGVhbnVwIGRtYS1yZXN2
IHNoYXJlZCBmZW5jZSBkZWJ1Z2dpbmcgYSBiaXQgdjIiKQ0KPj4+IFNpZ25lZC1vZmYtYnk6IE11
a2VzaCBLdW1hciBDaGF1cmFzaXlhIChJQk0pIDxta2NoYXVyYXNAZ21haWwuY29tPg0KPj4+IC0t
LQ0KPj4+ICBpbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmggfCAyICstDQo+Pj4gIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPj4+DQo+Pj4gZGlmZiAtLWdpdCBh
L2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaCBiL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaA0KPj4+
IGluZGV4IGM1YWI2ZmQ5ZWJlOC4uMjNjOGRiMGI1MjE0IDEwMDY0NA0KPj4+IC0tLSBhL2luY2x1
ZGUvbGludXgvZG1hLXJlc3YuaA0KPj4+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaA0K
Pj4+IEBAIC0zMTEsNyArMzExLDcgQEAgc3RhdGljIGlubGluZSBib29sIGRtYV9yZXN2X2l0ZXJf
aXNfcmVzdGFydGVkKHN0cnVjdCBkbWFfcmVzdl9pdGVyICpjdXJzb3IpDQo+Pj4gICNkZWZpbmUg
ZG1hX3Jlc3ZfaGVsZChvYmopIGxvY2tkZXBfaXNfaGVsZCgmKG9iaiktPmxvY2suYmFzZSkNCj4+
PiAgI2RlZmluZSBkbWFfcmVzdl9hc3NlcnRfaGVsZChvYmopIGxvY2tkZXBfYXNzZXJ0X2hlbGQo
JihvYmopLT5sb2NrLmJhc2UpDQo+Pj4NCj4+PiAtI2lmZGVmIENPTkZJR19ERUJVR19NVVRFWEVT
DQo+Pj4gKyNpZiBJU19FTkFCTEVEKENPTkZJR19ERUJVR19NVVRFWEVTKSAmJiBJU19FTkFCTEVE
KENPTkZJR19ETUFfU0hBUkVEX0JVRkZFUikNCj4+PiAgdm9pZCBkbWFfcmVzdl9yZXNldF9tYXhf
ZmVuY2VzKHN0cnVjdCBkbWFfcmVzdiAqb2JqKTsNCj4+PiAgI2Vsc2UNCj4+PiAgc3RhdGljIGlu
bGluZSB2b2lkIGRtYV9yZXN2X3Jlc2V0X21heF9mZW5jZXMoc3RydWN0IGRtYV9yZXN2ICpvYmop
IHt9DQo+Pj4gLS0NCj4+PiAyLjUzLjANCj4+Pg0KPj4NCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gNjBIRMJC2r4/QQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 14:41:55 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 016AB56CE2A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 14:41:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5431F406F4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 12:41:53 +0000 (UTC)
Received: from CH5PR02CU005.outbound.protection.outlook.com (mail-northcentralusazon11012000.outbound.protection.outlook.com [40.107.200.0])
	by lists.linaro.org (Postfix) with ESMTPS id 7C2FC406B1
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 12:41:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=3fTYU7+w;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.200.0 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TTxIXDxN+MJYm7v7sgkcCLtrEAp+DKo1B1MwwTxnsjluO/JwR6806skKpiVSMK/EbbNMBS1rwmVgQK4hr/5gArvVU717XUnKVFEZDKNqkfFlx8dTXLoaCuZgIkgxu2klMiAYprU5XqcVGT8MXAxHkO+vygWLrOLJ7PgP71qzrP3Dfm3qgz3P9K+nFbd37EJjU8hrXcjBFf4OPDRnEjRzwUE21FRxJIHRFsTFLZO0S3LtXOG/Yzc4OW0SzPq409Jg8K1/yaAFre6jXLdPloLggENIZs6EDlXDMnS/6cVfU3JTJ7h6+fwnUwSJVaogARZzwXk2lG43i982LWaQqddUig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q/Z/E2hFjFFAbzsL9ceWcozmjH4Mqz0lGgryK33A4zI=;
 b=PcjnrXf5mVESC6ajMWCdssjISSDR8E4rukNTcqYauGpi+La/Td6ReVHaCkxEmZY2oALMebAOozPRcwVc6q5wtR9S/c2tkT7MvjA/Z1mdeBlyA64B9kR1AjQ0i8NQxAyNVqBB3F8ZanZXcbx6eyhZswUjQ1UqIUL1RmQyDAeOh3ryDCFEZSsrBS74bag3T7Yd+MWnI7z9HigsdPMQQSd2JLhnVOoqgwIB9sy+QJnFmz0UhSLaU6vXWNTuQQO50Qzs8bEOHxr180yqDVwlf6Ajqjkx0ejPLaX8LH5eChvzmRTMGnuK+QAdsY+KsYtX36ptw4IQA2NT90NBGi3KGOKNiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q/Z/E2hFjFFAbzsL9ceWcozmjH4Mqz0lGgryK33A4zI=;
 b=3fTYU7+wUcwRoua9ZOK2ckVwRv6Fq/eKT26JA5rKjTBibXxsZmHsRFjWzmtTwFAwAnHU3ydTYGMc/UW0fFdSORp8qJ8xfeepCOqNFy2JnnWXuvDYNmyxr9S8jNxYaO80z+ARaoPwMillGuv2tOn0NhX+7RVDbYu/skHcoaRkmYg=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CY8PR12MB8193.namprd12.prod.outlook.com (2603:10b6:930:71::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.22; Mon, 18 May
 2026 12:41:38 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0025.022; Mon, 18 May 2026
 12:41:38 +0000
Message-ID: <69dcbcc1-da58-4d34-bfb0-5c8d33b75d59@amd.com>
Date: Mon, 18 May 2026 14:41:31 +0200
User-Agent: Mozilla Thunderbird
To: Julian Orth <ju.orth@gmail.com>
References: <20260516-jorth-syncobj-v1-0-88ede9d98a81@gmail.com>
 <c6c91de9-a34b-4b50-a3c1-d42bf7631f8e@amd.com>
 <CAHijbEUzWZC4GAMU6YGV42gOYkrQaMZZPiwS4Erb4H1J-fh_8Q@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <CAHijbEUzWZC4GAMU6YGV42gOYkrQaMZZPiwS4Erb4H1J-fh_8Q@mail.gmail.com>
X-ClientProxiedBy: BL1PR13CA0379.namprd13.prod.outlook.com
 (2603:10b6:208:2c0::24) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CY8PR12MB8193:EE_
X-MS-Office365-Filtering-Correlation-Id: 6f45624a-3473-4923-5efc-08deb4dace05
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|1800799024|376014|7416014|56012099003|22082099003|18002099003|3023799003|11063799003|4143699003;
X-Microsoft-Antispam-Message-Info: 
	wdEsQJ24qQ6Xc+YMHcsMhJ5WOpolYX9OUcxBvOT0O3N8OcoyQ53gY8W/Jpeub1ebrAFkn5+45FjGhpYdahkNTN74mJwv1vjQvfuAVxQ31VnntSfnQfxOBuOGhu9lamGlpgm5ha19NbcmCVMS13vzeBgW/52o9NeeVDiVatU5tmrQz3tTBeXmcz2kob0GNaETAaYi4LHXIKn/IovNt9RuJftEYgL6stFW8LSSeizDV2v4zj/o46Y1/68DBugNx8HfCc06XZ5IyZ5UH3ypr3s2sHEkc0fPGLvPopMv0X2QFgo9j84IgrjGjisMbMRMxTvN1fLW7nyk56j0Xvt1HK6tgS+SNqmVMvBYJtf49RrU+aN3g46xpCzVk7f+yTq4zXDoE46SNv311QbDftU2t6BpKf0jUU2WqnFqrD7kwCPROnSjof5Cr06/Gq0nBceYtj4ZL7GFwenqPT4T/eyrPErBKKgym8/rudz+RMq5VGyntqtlDfqJyJtgpNaLi7DKUZ3uPaux4hrV/SI91W6xSofjV9bsGHNZRd4sapJLFka4uPsF4cuUWWopUntuw15hbaHkIYz2cVKFQ5OU1tWkBDrxC9TnXWq7AvUpe8Bx4R1/PxT4VUTU+TT7Km3Vw9E6ZCNz9YUBBu1nW48urjs6eS7EndyUeUhu4oMh1ywgnfIsLxkklVQzlkpEoOHw3hZiIYpm
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7416014)(56012099003)(22082099003)(18002099003)(3023799003)(11063799003)(4143699003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?U1ZGNkZ1UGlGdThOaGdwaU5EcWhueHpZMjZyN09lV052aCtNUHpvNVYwcnZt?=
 =?utf-8?B?Zis0SjN1dU00enJySHk2dW9nYWljTktlOHdST2NJWk1xcGZ2V20yUlVBdnVS?=
 =?utf-8?B?M25haHRUNTE1eUJnWTJ4aXhlWUpnOCt6RCtaMEVDSzFqZXdWcDRSaTMvUVRa?=
 =?utf-8?B?Sm52cUljcDBhZEJNL3NUbmZ4cTdrajc0VWNEVHVCeTYvTnV6TWsyZSsyb0Nv?=
 =?utf-8?B?Qlo4L1oxVzVkYXdZWmgwMk5YdGV6Rzl2eVF5bHJMOURvZkxhTGV5UjBjRTJo?=
 =?utf-8?B?VHQxMWNVc3NyWjhvZFc1ZE41MWgyMFFUSnVsWVh1WmI0VjZkcytGTHNMUktR?=
 =?utf-8?B?eVFWT2F4bXAwSHBWK0g0Q21ITjFJZVI5NUh2VEFaVjlNQTFNNy8xbCtKQ0x6?=
 =?utf-8?B?SituRjJvN2p4YStLUEw1Y2VmTHVabDBjT05CV3NBKzN6ZmkvU3NSczZ4aUZE?=
 =?utf-8?B?akNQVUxQQlF6SENKM2lTWTlSMTFDVXFmdTBpSW9LbUJyZ29pZXdnZ1pNenIr?=
 =?utf-8?B?ZFg0K0tVQ0ErUDJXVmtmMzBRQUlGRzMwMWVJY3FKUDl4c1RVUzM0eVBPeHp5?=
 =?utf-8?B?U1U5RmFZSnhmV2xuUTFac0dTWlBhT0pKbFhndkpQMGM4aGlxU3g3a0xqV2My?=
 =?utf-8?B?VWU0Ym9zdWNXNEZsRmJUMzIwYlB5cjZwZWZBWWUzVTFON29xQjNpZi85QlFQ?=
 =?utf-8?B?WmFtUUdnVlJMYzJtVGpyWC9VV1lndlhWdjZ4Mmd3SEwvWnA0SUdqK25ZUldO?=
 =?utf-8?B?NWVscUJ4Y1RrcHdRWXRsTlBjTUFIVE1ONC9xN2prNkNzbzEwbmhLbmhmNHM1?=
 =?utf-8?B?SUNTeGE4THZuSUk3NlkzV0MwTzFyc1IycHJNRzAxZHFUTTF6OHJlVDJyNTMz?=
 =?utf-8?B?MVJSaTRjZUhLejg1QVIyWlhYbGVvMUZLMmZrd3I1ekpPWnBJVTdnU2srOVpC?=
 =?utf-8?B?Zm9pQk8rOHdiT09YcnZyNUhtdkpyLzBLMkxURGE0RUdvdGROVVJTNXV2dUpk?=
 =?utf-8?B?L1hnVjRiTWhTc2FQSjFGZzZkcTJQYWNGdmtJYzBpb2M4SnJEOXVsZU9uZ1Q5?=
 =?utf-8?B?YTZSWDVlQm9lYkRhYUJ6a3REMnNCUzRoQVBLN0xCbU9UM0l0N29lQkhJMXVX?=
 =?utf-8?B?VkJMV3FYMmVFOHFEYWY3RVBaZnJMK0dyQW1CWmNoTjY5UU1lbGJkaC9KSlBr?=
 =?utf-8?B?QWIwYUpMYjVmMk1rYXJjcUxsanB3bFJuQ1ZYRGZWREZrM2FBd25oL0dYT3NJ?=
 =?utf-8?B?cFRUQVdtaE0vcm1DUGJYdkV6Z3dwblZhcS8yUzlRek1SbDllSnJRUWRNbmU1?=
 =?utf-8?B?Kzd2YjByTkFHWDhkMDJwLzhoSitnRVROM1g3RmZoTFowdU01WWN6VTRWdlRE?=
 =?utf-8?B?UnlnQmZRRUxtNENzaEZ4WC9SYitSL1h0c0tVVGwyZndiekFDOG9FZFBUN1BJ?=
 =?utf-8?B?YmFic1c4eURsWHRROVdObFlTSFExMERLZ2FtQVltK2VCdklRdHVEOEJWeUh0?=
 =?utf-8?B?VHM1QWUwNCtRODNsU2R0SUs0aUpudC8wV1hZUktuMUVFRGRQOTRpcWkwOTdv?=
 =?utf-8?B?N2lrM3BoZHAxU3hSSldESlp3WHROQ1loMEkzRkpPOXErdC9RMUVUOVg1cnQz?=
 =?utf-8?B?cFNnOHVNV3QvTnRPV2htYyt1VHM4ZFE5ZEdNS25wRGtVMk1IbzAxZERSOVhC?=
 =?utf-8?B?Rzg2K2g2UXZBWHJtejVqVDJ0d3FBVjZzNDhPeDZidSt2cDBnM3ZkcGJHRkVv?=
 =?utf-8?B?ZlI5dHMzT0s4NXpUQmZveDVBVEx4VFdsclhaVE54WmhBUnFFTUxvOEJzNEFJ?=
 =?utf-8?B?c21iSm5BMk5MemFYdzczQ1ZzVEpyZ1ZoOVpYZnlZODZpWWlkOHgrTGxvdUsw?=
 =?utf-8?B?UDlSL3BmWUt5QVBTTEVSSW9qV2ZuektxNHNDRE1HbkJoWWFZVHdYU2ZsRllE?=
 =?utf-8?B?S1JyQWpjbkl6YXMzdE5SeFlEQU9UUzFadlRPbWVYZzJZWTE1R3RDVDlhdlpQ?=
 =?utf-8?B?SktndHc0dE1FbE9jci9tRks3dmltdWFiTGk2TFR6anlQVXhLQjdRVUZYbzNT?=
 =?utf-8?B?UnRYYzNua0JuSTJrNEdlNW52djllN28yZnlmMGlJM1R2YldYTklTa0pkSFEr?=
 =?utf-8?B?TzM3alhLeHcxT3JVblk3TUcvRTkvZG5zeGVCYUlGN3FmazUxZkJCM3RCVDRQ?=
 =?utf-8?B?dmVGNTdIN2NIYi9XbTkrSTJzdXN1TUZVUzNMS2tGV2YwMnkxdFRyaFVCZ2ZP?=
 =?utf-8?B?bkY5ZWhqNGVNRnA0a2dOcS81NFN3UUkvaVFHZ0ROTlp2L0k0TjBveHM3bHov?=
 =?utf-8?Q?7cO3qlggzgpuZUSnRA?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f45624a-3473-4923-5efc-08deb4dace05
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2026 12:41:38.6721
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LRL49hsLdY1w0S4PO+fSQ0SbN+4/+/VOAXuPIUx6PTTny9VIHur4zCxwZrM/XC2/
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB8193
X-Spamd-Bar: --
Message-ID-Hash: FPSRHA2VHNLZZUVOU6MPFFMLBUSDGRUD
X-Message-ID-Hash: FPSRHA2VHNLZZUVOU6MPFFMLBUSDGRUD
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org, =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 00/12] misc/syncobj: add /dev/syncobj device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FPSRHA2VHNLZZUVOU6MPFFMLBUSDGRUD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 016AB56CE2A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,lwn.net,linuxfoundation.org,arndb.de,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,mailbox.org];
	DKIM_TRACE(0.00)[amd.com:-];
	NEURAL_HAM(-0.00)[-0.819];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

T24gNS8xOC8yNiAxNDowMiwgSnVsaWFuIE9ydGggd3JvdGU6DQo+IE9uIE1vbiwgTWF5IDE4LCAy
MDI2IGF0IDE6NTjigK9QTSBDaHJpc3RpYW4gS8O2bmlnDQo+IDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+IHdyb3RlOg0KPj4NCj4+IE9uIDUvMTYvMjYgMTM6MDYsIEp1bGlhbiBPcnRoIHdyb3Rl
Og0KPj4+IFRoaXMgc2VyaWVzIGFkZHMgYSBuZXcgZGV2aWNlIC9kZXYvc3luY29iaiB0aGF0IGNh
biBiZSB1c2VkIHRvIGNyZWF0ZQ0KPj4+IGFuZCBtYW5pcHVsYXRlIERSTSBzeW5jb2Jqcy4gUHJl
dmlvdXNseSwgdGhlc2Ugb3BlcmF0aW9ucyByZXF1aXJlZCB0aGUNCj4+PiB1c2Ugb2YgYSBEUk0g
ZGV2aWNlIGFuZCB0aGUgZGV2aWNlIG5lZWRlZCB0byBzdXBwb3J0IHRoZSBEUklWRVJfU1lOQ09C
Sg0KPj4+IGFuZCBEUklWRVJfU1lOQ09CSl9USU1FTElORSBmZWF0dXJlcy4NCj4+Pg0KPj4+IFRo
ZXJlIGFyZSBzZXZlcmFsIGlzc3VlcyB3aXRoIHRoZSBleGlzdGluZyBBUEk6DQo+Pj4NCj4+PiAt
IFN5bmNvYmpzIGFyZSB0aGUgb25seSBleHBsaWNpdCBzeW5jIG1lY2hhbmlzbSBhdmFpbGFibGUg
b24gd2F5bGFuZC4NCj4+PiAgIE1vc3QgY29tcG9zaXRvcnMgZG8gbm90IHVzZSBHUFUgd2FpdHMu
IEluc3RlYWQsIHRoZXkgdXNlIHRoZQ0KPj4+ICAgRFJNX0lPQ1RMX1NZTkNPQkpfRVZFTlRGRCBp
b2N0bCB0byBwZXJmb3JtIGEgQ1BVIHdhaXQuIEJlaW5nIHRpZWQgdG8NCj4+PiAgIERSTSBkZXZp
Y2VzIG1lYW5zIHRoYXQgY29tcG9zaXRvcnMgY2Fubm90IGNvbnNpc3RlbnRseSBvZmZlciB0aGlz
DQo+Pj4gICBmZWF0dXJlIGV2ZW4gdGhvdWdoIG5vIGRldmljZS1zcGVjaWZpYyBsb2dpYyBpcyBp
bnZvbHZlZC4NCj4+DQo+PiBXZWxsIHRoZSBkcm1fc3luY29iaiBpcyBhIGNvbnRhaW5lciBmb3Ig
ZGV2aWNlIHNwZWNpZmljIGRtYSBmZW5jZXMuDQo+IA0KPiBOb3QgbmVjZXNzYXJpbHkuIFRoZSBE
Uk1fSU9DVExfU1lOQ09CSl9USU1FTElORV9TSUdOQUwgaW9jdGwgYXR0YWNoZXMNCj4gc29tZSBr
aW5kIG9mIGR1bW15IGZlbmNlIHRoYXQgaXMgYWxyZWFkeSBzaWduYWxlZC4gSSBkb24ndCBiZWxp
ZXZlDQo+IHRoaXMgaXMgZGV2aWNlIHNwZWNpZmljLiBUaGF0IGlzIGFsc28gdGhlIHBhdGggdGhh
dCBsbHZtcGlwZSB3b3VsZA0KPiB1c2UuDQoNClllYWggSSBmZWFyZWQgdGhhdC4NCg0KVGhpcyBp
cyB0aGUgd2FpdCBiZWZvcmUgc2lnbmFsIHBhdGggYW5kIGlmIEknbSBub3QgY29tcGxldGVseSBt
aXN0YWtlbiB0aGF0IG9uZSBpcyBub3Qgc3VwcG9ydGVkIGJ5IGEgbG90IG9mIGNvbXBvc2l0b3Jz
Lg0KDQpUaGUgbGFzdCB0aW1lIEkgbG9va2VkIGZvciBHUFUgc3VwcG9ydCB0aGUgY29tcG9zaXRv
ciBuZWVkcyB0byBzcGF3biBhIHNlcGFyYXRlIHRocmVhZCBmb3IgZWFjaCBjbGllbnQgdG8gc3Vw
cG9ydCB0aGlzIGFwcHJvYWNoLg0KDQpJdCBjb3VsZCBiZSB0aGF0IHdlIGhhdmUgZXZlbnRmZCBp
bnRlZ3JhdGlvbiBmb3IgdGhhdCBhcyB3ZWxsIG5vdywgYnV0IGluIHRoYXQgY2FzZSB5b3UgY291
bGQgZ2l2ZSB0aGUgY29tcG9zaXRvciBhbiBldmVudGZkIGluc3RlYWQgb2YgYSBkcm1fc3luY29i
aiBmZCBpbiB0aGUgZmlyc3QgcGxhY2UuDQoNClNvIGFzIGZhciBhcyBJIGNhbiBzZWUgdXNpbmcg
ZHJtX3N5bmNvYmogZm9yIHNvZnR3YXJlIHJlbmRlcmluZyByZWFsbHkgZG9lc24ndCBtYWtlIHNl
bnNlLCBldmVudGZkIGlzIGEgbXVjaCBiZXR0ZXIgZml0IGZvciB0aGF0IHVzZSBjYXNlLg0KDQpS
ZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+IA0KPj4NCj4+IFdoYXQgY291bGQgYmUgcG9zc2libGUg
aW5zdGVhZCBpcyB0byBwYXNzIGFuIGV2ZW50ZmQgaW50byBXYXlsYW5kLCBidXQgdGhhdCBpcyBz
b21ldGhpbmcgdXNlcnNwYWNlIG5lZWRzIHRvIGRlY2lkZS4NCj4+DQo+Pj4gLSBsbHZtcGlwZSBj
dXJyZW50bHkgY2Fubm90IG9mZmVyIHN5bmNvYmogaW50ZXJvcCBiZWNhdXNlIGl0IGRvZXMgbm90
DQo+Pj4gICBoYXZlIGFjY2VzcyB0byBhIERSTSBkZXZpY2UuIFRoaXMgbWVhbnMgdGhhdCBhcHBs
aWNhdGlvbnMgdXNpbmcNCj4+PiAgIGxsdm1waXBlIGNhbm5vdCBwcmVzZW50IGltYWdlcyBiZWZv
cmUgdGhleSBoYXZlIGZpbmlzaGVkIHJlbmRlcmluZywNCj4+PiAgIGRlc3BpdGUgbGx2bXBpcGUg
dXNpbmcgdGhyZWFkZWQgcmVuZGVyaW5nLg0KPj4NCj4+IFllYWgsIGJ1dCB0aGF0IGlzIGNvbXBs
ZXRlbHkgaW50ZW50aW9uYWwuIFlvdSAqQ0FOJ1QqIHVzZSBhIGRtYV9mZW5jZSBhcyBjb21wbGV0
aW9uIGV2ZW50IGZvciBsbHZtcGlwZSByZW5kZXJpbmcuIFNlZSB0aGUga2VybmVsIGRvY3VtZW50
YXRpb24gb24gdGhhdC4NCj4+DQo+PiBXaGF0IGNvdWxkIGJlIHBvc3NpYmxlIGlzIHRvIHVzZSB0
aGUgZHJtX3N5bmNvYmpzIGZ1bmN0aW9uYWxpdHkgdG8gd2FpdCBiZWZvcmUgc2lnbmFsLCBidXQg
dGhhdCBoYXMgZGlmZmVyZW50IHNlbWFudGljcy4NCj4+DQo+PiBSZWdhcmRzLA0KPj4gQ2hyaXN0
aWFuLg0KPj4NCj4+PiAtIENsaWVudHMgdGhhdCBkbyBub3QgdXNlIHRoZSBWdWxrYW4gV1NJIG5l
ZWQgdG8gbWFudWFsbHkgcHJvYmUgL2Rldi9kcmkNCj4+PiAgIGZvciBkZXZpY2VzIHRoYXQgc3Vw
cG9ydCB0aGUgc3luY29iaiBpb2N0bHMgaW4gb3JkZXIgdG8gdXNlIHRoZQ0KPj4+ICAgd2F5bGFu
ZCBzeW5jb2JqIHByb3RvY29sLg0KPj4+IC0gU2ltaWxhcmx5LCBjbGllbnRzIHRoYXQgd2FudCB0
byB1c2Ugc2NyZWVuIGNhcHR1cmUgaGF2ZSBubyBlcXVpdmFsZW50DQo+Pj4gICB0byB0aGUgV1NJ
IGFuZCBhcmUgdGhlcmVmb3JlIGZvcmNlZCBpbnRvIHRoYXQgcGF0aC4NCj4+PiAtIEhhdmluZyB0
byBrZWVwIGEgRFJNIGRldmljZSBvcGVuIGhhcyBwb3RlbnRpYWxseSBuZWdhdGl2ZSBpbnRlcmFj
dGlvbnMNCj4+PiAgIHdpdGggR1BVIGhvdHBsdWcuDQo+Pj4gLSBIYXZpbmcgdG8gdHJhbnNsYXRl
IGJldHdlZW4gc3luY29iaiBGRHMgYW5kIGhhbmRsZXMgaXMgdHJvdWJsZXNvbWUgaW4NCj4+PiAg
IHRoZSBjb21wb3NpdG9yIHVzZWNhc2Ugc2luY2Ugc3luY29ianMgY29tZSBhbmQgZ28gZnJlcXVl
bnRseSBhbmQgbmVlZA0KPj4+ICAgdG8gYmUgY2xlYW5lZCB1cCB3aGVuIGNsaWVudHMgZGlzY29u
bmVjdC4NCj4+Pg0KPj4+IC9kZXYvc3luY29iaiBzb2x2ZXMgdGhlc2UgaXNzdWVzIGJ5IHByb3Zp
ZGluZyBhbGwgc3luY29iaiBpb2N0bHMgdW5kZXIgYQ0KPj4+IGNvbnNpc3RlbnQgcGF0aCB0aGF0
IGlzIG5vdCB0aWVkIHRvIGFueSBEUk0gZGV2aWNlLiBJdCBhbHNvIG9wZXJhdGVzDQo+Pj4gZGly
ZWN0bHkgb24gZmlsZSBkZXNjcmlwdG9ycyBpbnN0ZWFkIG9mIHN5bmNvYmogaGFuZGxlcy4NCj4+
Pg0KPj4+IFRoZSBzZXJpZXMgc3RhcnRzIHdpdGggYSBudW1iZXIgb2Ygc21hbGwgcmVmYWN0b3Jp
bmdzIGluIGRybV9zeW5jb2JqLmMNCj4+PiB0byBtYWtlIGl0cyBmdW5jdGlvbmFsaXR5IGF2YWls
YWJsZSBvdXRzaWRlIG9mIHRoZSBmaWxlIGFuZCB3aXRob3V0IHRoZQ0KPj4+IG5lZWQgZm9yIGRy
bV9maWxlL2hhbmRsZSBwYWlycy4NCj4+Pg0KPj4+IFRoZSBsYXN0IGNvbW1pdCBhZGRzIHRoZSAv
ZGV2L3N5bmNvYmogbW9kdWxlLiBJJ3ZlIGFkZGVkIGl0IGFzIGEgbWlzYw0KPj4+IGRldmljZSBi
dXQgbWF5YmUgdGhpcyBzaG91bGQgaW5zdGVhZCBsaXZlIHNvbWV3aGVyZSB1bmRlciBncHUvZHJt
Lg0KPj4+DQo+Pj4gQW4gYXBwbGljYXRpb24gdXNpbmcgdGhlIG5ldyBpbnRlcmZhY2UgY2FuIGJl
IGZvdW5kIGF0IFsxXS4NCj4+Pg0KPj4+IFsxXTogaHR0cHM6Ly9naXRodWIuY29tL21haGtvaC9q
YXkvcHVsbC85NDcNCj4+Pg0KPj4+IC0tLQ0KPj4+IEp1bGlhbiBPcnRoICgxMik6DQo+Pj4gICAg
ICAgZHJtL3N5bmNvYmo6IGFkZCBkcm1fc3luY29ial9mcm9tX2ZkDQo+Pj4gICAgICAgZHJtL3N5
bmNvYmo6IGFkZCBkcm1fc3luY29ial9mZW5jZV9sb29rdXANCj4+PiAgICAgICBkcm0vc3luY29i
ajogbWFrZSBkcm1fc3luY29ial9hcnJheV93YWl0X3RpbWVvdXQgcHVibGljDQo+Pj4gICAgICAg
ZHJtL3N5bmNvYmo6IGFkZCBkcm1fc3luY29ial9yZWdpc3Rlcl9ldmVudGZkDQo+Pj4gICAgICAg
ZHJtL3N5bmNvYmo6IGhhdmUgdHJhbnNmZXIgZnVuY3Rpb25zIGFjY2VwdCBkcm1fc3luY29iaiBk
aXJlY3RseQ0KPj4+ICAgICAgIGRybS9zeW5jb2JqOiBhZGQgZHJtX3N5bmNvYmpfdHJhbnNmZXIN
Cj4+PiAgICAgICBkcm0vc3luY29iajogYWRkIGRybV9zeW5jb2JqX3RpbWVsaW5lX3NpZ25hbA0K
Pj4+ICAgICAgIGRybS9zeW5jb2JqOiBhZGQgZHJtX3N5bmNvYmpfcXVlcnkNCj4+PiAgICAgICBk
cm0vc3luY29iajogZml4IHJlc291cmNlIGxlYWsgaW4gZHJtX3N5bmNvYmpfaW1wb3J0X3N5bmNf
ZmlsZV9mZW5jZQ0KPj4+ICAgICAgIGRybS9zeW5jb2JqOiBhZGQgZHJtX3N5bmNvYmpfaW1wb3J0
X3N5bmNfZmlsZQ0KPj4+ICAgICAgIGRybS9zeW5jb2JqOiBhZGQgZHJtX3N5bmNvYmpfZXhwb3J0
X3N5bmNfZmlsZQ0KPj4+ICAgICAgIG1pc2Mvc3luY29iajogYWRkIG5ldyBkZXZpY2UNCj4+Pg0K
Pj4+ICBEb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvaW9jdGwvaW9jdGwtbnVtYmVyLnJzdCB8
ICAgMSArDQo+Pj4gIGRyaXZlcnMvZ3B1L2RybS9kcm1fc3luY29iai5jICAgICAgICAgICAgICAg
ICAgICAgIHwgMzc0ICsrKysrKysrKysrKysrLS0tLS0NCj4+PiAgZHJpdmVycy9taXNjL0tjb25m
aWcgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMTAgKw0KPj4+ICBkcml2ZXJzL21p
c2MvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMSArDQo+Pj4gIGRy
aXZlcnMvbWlzYy9zeW5jb2JqLmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgNDA0ICsr
KysrKysrKysrKysrKysrKysrKw0KPj4+ICBpbmNsdWRlL2RybS9kcm1fc3luY29iai5oICAgICAg
ICAgICAgICAgICAgICAgICAgICB8ICAyMSArKw0KPj4+ICBpbmNsdWRlL3VhcGkvbGludXgvc3lu
Y29iai5oICAgICAgICAgICAgICAgICAgICAgICB8ICA3NSArKysrDQo+Pj4gIDcgZmlsZXMgY2hh
bmdlZCwgNzk1IGluc2VydGlvbnMoKyksIDkxIGRlbGV0aW9ucygtKQ0KPj4+IC0tLQ0KPj4+IGJh
c2UtY29tbWl0OiA2OTE2ZDU3MDNkZGY5YTM4ZjFmNmMyY2M3OTMzODFhMjRlZTkxNGM2DQo+Pj4g
Y2hhbmdlLWlkOiAyMDI2MDUxNi1qb3J0aC1zeW5jb2JqLWQ0ZDM3NGM4YzYxYg0KPj4+DQo+Pj4g
QmVzdCByZWdhcmRzLA0KPj4+IC0tDQo+Pj4gSnVsaWFuIE9ydGggPGp1Lm9ydGhAZ21haWwuY29t
Pg0KPj4+DQo+Pg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK

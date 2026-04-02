Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KLNXLKCfzmlZpAYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 02 Apr 2026 18:56:00 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E35238C3E7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 02 Apr 2026 18:56:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 906AE4030E
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  2 Apr 2026 16:46:36 +0000 (UTC)
Received: from SN4PR0501CU005.outbound.protection.outlook.com (mail-southcentralusazon11011041.outbound.protection.outlook.com [40.93.194.41])
	by lists.linaro.org (Postfix) with ESMTPS id 804F5402EF
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Apr 2026 16:46:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=yNEp1dg9;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.194.41 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G/blLPM/brIawKymmyJrYTJ26juC/WgSIh7mG1/bUZywnZ4JOB+I5Q3PFSaPMBPPYQE4MzyELTuEtb0V0puzzXBcxMBCjIevh25tpEIp+uT7E7qWxjCUkmkt5e+00nPKPb/6MRYvXwrdsWwAlUtuMIvlkLrbzkfktouuvE1gszrfnyfg+fWfEN1hpryyEZKm2+MtT3lxZzKLvBvM1Og9ZaKDCkLXWBfb5mpNi3ENOvjZiwhT9YqlbvhUS/3YZl2urugMRjcZA8tDI8GpNlDXnWyk2WrqsoDxXO5TtLCOJ6Sf5Tk7yHyL7I1Uxkn90Yj5YpkKc4pGwLWUsw+PadWAIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Uw+BV0JDkpZ42U81FKUHF3dOWAEz0NyTCVAYhf9+HXw=;
 b=L4UTBqkMwepLVWlfvdew4dAT/TLFVPkynm22gkoP90DlpA6IP8wVf7jG3ydqkCikqRdDkA8v5k2907D9WNzXnW/wCMJb8Ns/VObJNL8voq4OdaqEJgmiU7zby/vErDY8c6yhLrgHgJG8rXRlX1DyHNegHuMn2CI25ppMPvTOQIaR7H7C8GAtDuYXQ0RnYLeA43y/kT5rdcSgmhqOBQv0ng6fgelI0h+h2XUNzN0LNgZdluLpioEPznrzJt0G2+zDrzMvOQwuS3EHSj2sIek5PAkQpDsRZ+KOMt/ALZtgSXJxzPqL19LTM7EKKlxTR5H43ZUDa8mQjytKklDVa6K06g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Uw+BV0JDkpZ42U81FKUHF3dOWAEz0NyTCVAYhf9+HXw=;
 b=yNEp1dg9k4HlLCq52AfsV0K0zbWd4DOvGf5zHGQbRE+z1UaieVPsLpqju/yZrApt/QBdF1EKJHGb+2W/yMwtU8kvUsK8dPxbB80ajjT2SsRPOrz/8SdCctCoGCVMtpaEy0hkn4HmH0x0XwjdcoxHOo9gZK5ZEr3k8w+KT/c3dMY=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CY8PR12MB7171.namprd12.prod.outlook.com (2603:10b6:930:5c::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.20; Thu, 2 Apr
 2026 16:46:31 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9769.016; Thu, 2 Apr 2026
 16:46:31 +0000
Message-ID: <f55ffabd-5f6e-4c53-b2b2-ffea4eccd60e@amd.com>
Date: Thu, 2 Apr 2026 18:46:24 +0200
User-Agent: Mozilla Thunderbird
To: =?UTF-8?B?QmVuY2UgQ3PDs2vDoXM=?= <bence.csokas@arm.com>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>,
 Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
 =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>,
 Benno Lossin <benno.lossin@proton.me>,
 Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>,
 Trevor Gross <tmgross@umich.edu>, Sumit Semwal <sumit.semwal@linaro.org>
References: <20250318-drm-gem-shmem-v1-0-64b96511a84f@collabora.com>
 <20250318-drm-gem-shmem-v1-1-64b96511a84f@collabora.com>
 <c8dbb9e2-f1a1-469e-a0af-ba3a5e3a651c@arm.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <c8dbb9e2-f1a1-469e-a0af-ba3a5e3a651c@arm.com>
X-ClientProxiedBy: FR4P281CA0132.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b9::10) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CY8PR12MB7171:EE_
X-MS-Office365-Filtering-Correlation-Id: 84a321f1-8893-4e3a-65bb-08de90d7649e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|1800799024|376014|7416014|921020|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: 
	dgSE/9slcA8JWHhBPN2cSm+KpMzkO6iUWId2nRoAvQFpS2RTNAFFRo597XpwlXZHvOG9izC4Mh3OlOczxvinD9BALzevisIXRw/3v0ykVvdZDyHlwK81SP5phZlqdoTz45i7StpFz+H/eno0lEXpoZVxUPAiZaWC6WUCy+0n5qAMm/1U0eDseIGvouY4r/rXTr2wjxTXz7A55gIzZ/xoePjkD7XhotZxzmjRb0T9/KDU2hr7jQvA11Uj2zmWndYSbHi1968yG5rLp5spZuVaSSA8ceUiOPGZEzyqjIPUppwUb4i3qfHhVLMmBrfg+HIRmP3lBifXUlfGHL/H5pUTGWCuXrne8mFZ8scP6hPpoD6M/bxspBU0igaFlIFLt1wkdegb7jFf7Ffsf29ODDQ3vgS1Ncvcxg6WW4vQMb8chlra+rOgAYplux6y5my2ghU10SC63IGV2fRgl/ePFZHdyiUWmbuhZsL5djQq8YvqL6dqfIeTMe1wP3ZqgowiviMGAYAHngogCOs3nwCFf/aRNP+WJxxjqi6+bb9hCCceUE3dr//dFbJa5g5BT7Y+bZIF/4BJY2xYkz4FXxqNUD+UA9BBnx23xyD8NYpbh/p3w6+8ZMyfWdMYKR8G4dVnTlOOj8grn152wYgBkYLDfu0Gtsfpp073C7XASTRcr2HnLDxW7b3Ijw0aQi1qedi/F38lEs0X3c6T38Y40k5bk0QUIFY8wBrk6r0YClFhZFNoQNwQklLJ9aH7BNfpFKhcqSOTXSGASKyWhHfbEn/yQndEbLZF4bGB0EIGWabFYBNuIIE=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7416014)(921020)(56012099003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NjdHOGNaUTdGVWRmZCtsWk85bFFERVR1UzQyem1TRW5ZMlVURHhFTDY3T0tV?=
 =?utf-8?B?blZSdytqWUowUXd4S3NTTkFQc1ZmRXpMcm1IbzNzOE5OSG1qTHEvZ3YzcEtQ?=
 =?utf-8?B?SHNSb2Q4M1FmaTgzSk9Sai9NVUpUQXZNMlI0NWljTTdFbGFRQlM1MURxeXEv?=
 =?utf-8?B?MHVkOEdzV2NGc092YjRORzRrdmFUZUVwUDZabFpNak51NE1oWjJHU0dmdzVk?=
 =?utf-8?B?bWVoVDNDTm9mSmlwQmhWWjZTV1lhdXlaaEk4clVySk1zY2VJbDZWenE0S2I0?=
 =?utf-8?B?aVhBNzdsNFFZN3ZoQk9qeHMrVVJLTlZLR1pQNzRtbTZJZFRmTmVvcjU3aGU5?=
 =?utf-8?B?Z0tTVVFtL0crTlFrSXpjd1JyT2ZHMmdyamVUakZJazdTNWJLNTN1WTJYZHNK?=
 =?utf-8?B?RGR6WWhiSHlleE1tNXR1QktoNmhXRnl0LzBqNXVSTUxHSE5tdUFVN2JQRWY1?=
 =?utf-8?B?ZmwvcVgzekN4cGE4b2JnRC9idGxnUEFzYlo4YTAyakErN1IwVjRZdGp5ZDVL?=
 =?utf-8?B?UHBtL1FQajA2aE5hUTByZjJ2dXdaMTdNRmJ4NFpxVm51SmYvbVNFWFFWNnVs?=
 =?utf-8?B?QW56dnltdXJvZkdUTFhxLytOeksyUzhSYmFsV3hjUzdURlE4ZGhIRkxZaUJD?=
 =?utf-8?B?UEdsT2hHWnIyL0ZZcTFkYmhWRG5ZYUZYMjhpRjhnRWRqS0hveDBxZHZsdE1k?=
 =?utf-8?B?SG03R0RUM1N5VXBYRCtvazZkbWQvdnhzRDhGY2o4UVVZWEMyL2VoRkt1cGRM?=
 =?utf-8?B?aFV6bFEyWmp4bTZQR1Zub0hUY1JXZkR2N24ycmdCYTZHVDRvbUJKMlpJSEx2?=
 =?utf-8?B?T1U1KzJxTEJxay9nazVxVS9vRmx3SW52cFpkRnRUSWg4bXNoWVZINWlZQWcv?=
 =?utf-8?B?OEovT01xeGpNYXRFSDVOU1VwNE80bm9EMXR1b0xtM2Q4QW5yUHk1R000SDVn?=
 =?utf-8?B?Q25PNGZNM3pFQklubmYvTnhGTVo4SGhySUVkS2ZqazBmU2ZRTlhNdDlWVlJq?=
 =?utf-8?B?d2pUNVJBaDMxTEtWcUVralVaRzFpcDFxTXhhTTVkcVVjYnlHSXlXamdQcE1h?=
 =?utf-8?B?L25xTndCVTJDQStKTVdTajRTdjZxUTF6ekZnWjFJb0lPdEdERzRMcVFTT1V3?=
 =?utf-8?B?K2dkNEFBT2xVcHg2cmUrdXMrZ0ZIQ05UTnBmbDdjV2RaYXJpWWlDOUdKbmMv?=
 =?utf-8?B?dFFrb3ZnTmZQQTJRQVhMM0tsbDl2eVdQd0ptOWpMQk04c3hJVk9hK0dtWkhL?=
 =?utf-8?B?Q21HVjh1elArUWRZU2V3Y1FKQ1NBdmNGVUtoTWZaL2dYa0ExbytmOFpGQk9r?=
 =?utf-8?B?L3I0TXpOMk5lSElQQWVteXA2VzJUQkZETDcwVEFacERlWitqcEZObFBpQ1Ur?=
 =?utf-8?B?NTBhRStCaFZYSWltYVl3QnNSSHp5ZXNueVNUSy9TY3l6RjgrRkhRaW1SYitt?=
 =?utf-8?B?YjR3ZmFEQnJUelRSbWZjTmV6UnFXcldaUHFHMlh4Nk1DSUdIWVFMWVlUUW9s?=
 =?utf-8?B?MGlidEZBcTRibkxXWHJ5WmpLSlExM2pKeDVwOER0TGhOZGpYanRsS1RxaGpw?=
 =?utf-8?B?SldOeFJNVTdSQTNhN25VcmlHWCswUUJSTzhkRUJNUWhRQVg1N3VqR3d3RnNz?=
 =?utf-8?B?Y1pRQXljQW9nNTRrajljUHQ0ckcwMXdIZURQRFBDRVhyOTEwZkdPck1oQjRT?=
 =?utf-8?B?V1huQStUOEJiUWlrQzdOMWpRNVlURmNRVjF4RGU4bTJWMld0VVl6S0NuWkVt?=
 =?utf-8?B?endRYTNnWmxmcTBhbmZqMCt4YldxTU1mc0pkU0JGR1FrUTc4a1hDZiszZWxD?=
 =?utf-8?B?MlNtWFRqMkg3Z2ZzQkxlOEVmT0pQdTZ3MVFoSUpFdmo3Q0NvZmgzaTlmUjd6?=
 =?utf-8?B?M3o3Q1VnZUF6WWJNRS9lQ0pxZnd5bUE2Nm5yY2dzUWhTT3JGcDVhdXJtLzBm?=
 =?utf-8?B?UFc3Z3F5UEVJNEJkcFQvbk5kSkY2ZWFObU9hQnRPRFJPazFTTkkwRUNvWjFw?=
 =?utf-8?B?ZWRkNlFleld6NHE4MnpPcExHVGhLb3E5WDQxSTg0Mm1xcy9qMUhWRWVSMU92?=
 =?utf-8?B?b29nODFtSDJIbzR3MXh0bUZEdzJEK2pLVTJOa1lPNXN0YlZ3VUxHZkNRTlZV?=
 =?utf-8?B?c2ZtUHduL2tzRHY5UVBNLzltVGgzWm83WUo0Vm5rYXZRbjF1MUVqWERUclVK?=
 =?utf-8?B?TVRpc2c2NkdHMjNGSFQxZDRJdHpxYVRNZjdXcnhXa1JmcmZEQktPcDlQK29Q?=
 =?utf-8?B?a1lZNWl1L2d3Z2V5L1hZcVU4azBZTlpNcUU1NG5WNlI3L0JudDhDSk9ueGJq?=
 =?utf-8?Q?ai6h9UE9d3y4z2k5Yf?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 84a321f1-8893-4e3a-65bb-08de90d7649e
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2026 16:46:31.5235
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uozu1pnEa8dcR9cxctJnOS9r913UtJU8qnJDEybD00KqZ/nL5jKI1HPCQ6I8uO2/
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB7171
X-Spamd-Bar: ----
Message-ID-Hash: HBGQC2MBVMTWZE2MY4XXBDJMYOI7VQM7
X-Message-ID-Hash: HBGQC2MBVMTWZE2MY4XXBDJMYOI7VQM7
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Danilo Krummrich <dakr@kernel.org>, Asahi Lina <lina@asahilina.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/7] drm/shmem-helper: Add lockdep asserts to vmap/vunmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HBGQC2MBVMTWZE2MY4XXBDJMYOI7VQM7/>
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
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[arm.com,collabora.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,protonmail.com,proton.me,google.com,umich.edu,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,body];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[amd.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.636];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	REDIRECTOR_URL(0.00)[aka.ms];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[asahilina.net:email,arm.com:email,aka.ms:url,amd.com:email,amd.com:mid]
X-Rspamd-Queue-Id: 1E35238C3E7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNC8yLzI2IDE4OjEzLCBCZW5jZSBDc8Oza8OhcyB3cm90ZToNCj4gW1NpZSBlcmhhbHRlbiBu
aWNodCBow6R1ZmlnIEUtTWFpbHMgdm9uIGJlbmNlLmNzb2thc0Bhcm0uY29tLiBXZWl0ZXJlIElu
Zm9ybWF0aW9uZW4sIHdhcnVtIGRpZXMgd2ljaHRpZyBpc3QsIGZpbmRlbiBTaWUgdW50ZXIgaHR0
cHM6Ly9ha2EubXMvTGVhcm5BYm91dFNlbmRlcklkZW50aWZpY2F0aW9uIF0NCj4gDQo+IEhpLA0K
PiANCj4gSSBqdXN0IGNhbWUgYWNyb3NzIHRoaXMgY29tbWl0IHdoaWxlIHJlc2VhcmNoaW5nIHNv
bWV0aGluZyBlbHNlLg0KPiBPcmlnaW5hbCBwYXRjaCBoYWQgdG9vIGZldyBjb250ZXh0IGxpbmVz
LCBzbyBJIGhlcmUncyB0aGUgZGlmZiB3aXRoIGAtVTEwYC4NCj4gDQo+IE9uIDMvMTgvMjUgMjA6
MjIsIERhbmllbCBBbG1laWRhIHdyb3RlOg0KPj4gRnJvbTogQXNhaGkgTGluYSA8bGluYUBhc2Fo
aWxpbmEubmV0Pg0KPj4NCj4+IFNpbmNlIGNvbW1pdCAyMWFhMjdkZGM1ODIgKCJkcm0vc2htZW0t
aGVscGVyOiBTd2l0Y2ggdG8gcmVzZXJ2YXRpb24NCj4+IGxvY2siKSwgdGhlIGRybV9nZW1fc2ht
ZW1fdm1hcCBhbmQgZHJtX2dlbV9zaG1lbV92dW5tYXAgZnVuY3Rpb25zDQo+PiByZXF1aXJlIHRo
YXQgdGhlIGNhbGxlciBob2xkcyB0aGUgRE1BIHJlc2VydmF0aW9uIGxvY2sgZm9yIHRoZSBvYmpl
Y3QuDQo+PiBBZGQgbG9ja2RlcCBhc3NlcnRpb25zIHRvIGhlbHAgdmFsaWRhdGUgdGhpcy4NCj4g
DQo+IFRoZXJlIHdlcmUgYWxyZWFkeSBsb2NrZGVwIGFzc2VydGlvbnMuLi4NCg0KR29vZCBwb2lu
dCwgSSBjb21wbGV0ZWx5IG1pc3NlZCB0aGF0Lg0KDQo+IA0KPj4gU2lnbmVkLW9mZi1ieTogQXNh
aGkgTGluYSA8bGluYUBhc2FoaWxpbmEubmV0Pg0KPj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIEFs
bWVpZGEgPGRhbmllbC5hbG1laWRhQGNvbGxhYm9yYS5jb20+DQo+PiBSZXZpZXdlZC1ieTogQ2hy
aXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4gU2lnbmVkLW9mZi1i
eTogTHl1ZGUgUGF1bCA8bHl1ZGVAcmVkaGF0LmNvbT4NCj4+IExpbms6IGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL3IvMjAyNTAzMTgtZHJtLWdlbS1zaG1lbS12MS0xLTY0Yjk2NTExYTg0ZkBjb2xs
YWJvcmEuY29tDQo+PiAtLS0NCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hl
bHBlci5jIHwgNCArKysrDQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspDQo+
Pg0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hlbHBlci5j
IGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fc2htZW1faGVscGVyLmMNCj4+IGluZGV4IGFhNDMy
NjVmNGY0Zi4uMGI0MWYwMzQ2YmFkIDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2Ry
bV9nZW1fc2htZW1faGVscGVyLmMNCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3No
bWVtX2hlbHBlci5jDQo+PiBAQCAtMzQxLDIwICszNDEsMjIgQEAgRVhQT1JUX1NZTUJPTF9HUEwo
ZHJtX2dlbV9zaG1lbV91bnBpbik7DQo+PiDCoMKgICoNCj4+IMKgwqAgKiBSZXR1cm5zOg0KPj4g
wqDCoCAqIDAgb24gc3VjY2VzcyBvciBhIG5lZ2F0aXZlIGVycm9yIGNvZGUgb24gZmFpbHVyZS4N
Cj4+IMKgwqAgKi8NCj4+IMKgIGludCBkcm1fZ2VtX3NobWVtX3ZtYXBfbG9ja2VkKHN0cnVjdCBk
cm1fZ2VtX3NobWVtX29iamVjdCAqc2htZW0sDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGlvc3lzX21hcCAqbWFwKQ0KPj4g
wqAgew0KPj4gwqDCoMKgwqDCoCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiA9ICZzaG1lbS0+
YmFzZTsNCj4+IMKgwqDCoMKgwqAgaW50IHJldCA9IDA7DQo+Pg0KPj4gK8KgwqDCoMKgIGRtYV9y
ZXN2X2Fzc2VydF9oZWxkKG9iai0+cmVzdik7DQo+PiArDQo+PiDCoMKgwqDCoMKgIGlmIChkcm1f
Z2VtX2lzX2ltcG9ydGVkKG9iaikpIHsNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJl
dCA9IGRtYV9idWZfdm1hcChvYmotPmRtYV9idWYsIG1hcCk7DQo+PiDCoMKgwqDCoMKgIH0gZWxz
ZSB7DQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwZ3Byb3RfdCBwcm90ID0gUEFHRV9L
RVJORUw7DQo+Pg0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZG1hX3Jlc3ZfYXNzZXJ0
X2hlbGQoc2htZW0tPmJhc2UucmVzdik7DQo+IA0KPiAuLi4gcmlnaHQgaGVyZSwgYW5kDQo+IA0K
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKHJlZmNvdW50X2luY19ub3RfemVybygm
c2htZW0tPnZtYXBfdXNlX2NvdW50KSkgew0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGlvc3lzX21hcF9zZXRfdmFkZHIobWFwLCBzaG1lbS0+dmFkZHIpOw0K
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAwOw0K
Pj4gQEAgLTQwMSwyMCArNDAzLDIyIEBAIEVYUE9SVF9TWU1CT0xfR1BMKGRybV9nZW1fc2htZW1f
dm1hcF9sb2NrZWQpOw0KPj4gwqDCoCAqIGRyb3BzIHRvIHplcm8uDQo+PiDCoMKgICoNCj4+IMKg
wqAgKiBUaGlzIGZ1bmN0aW9uIGhpZGVzIHRoZSBkaWZmZXJlbmNlcyBiZXR3ZWVuIGRtYS1idWYg
aW1wb3J0ZWQgYW5kIG5hdGl2ZWx5DQo+PiDCoMKgICogYWxsb2NhdGVkIG9iamVjdHMuDQo+PiDC
oMKgICovDQo+PiDCoCB2b2lkIGRybV9nZW1fc2htZW1fdnVubWFwX2xvY2tlZChzdHJ1Y3QgZHJt
X2dlbV9zaG1lbV9vYmplY3QgKnNobWVtLA0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBpb3N5c19tYXAgKm1hcCkN
Cj4+IMKgIHsNCj4+IMKgwqDCoMKgwqAgc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmogPSAmc2ht
ZW0tPmJhc2U7DQo+Pg0KPj4gK8KgwqDCoMKgIGRtYV9yZXN2X2Fzc2VydF9oZWxkKG9iai0+cmVz
dik7DQo+PiArDQo+PiDCoMKgwqDCoMKgIGlmIChkcm1fZ2VtX2lzX2ltcG9ydGVkKG9iaikpIHsN
Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRtYV9idWZfdnVubWFwKG9iai0+ZG1hX2J1
ZiwgbWFwKTsNCj4+IMKgwqDCoMKgwqAgfSBlbHNlIHsNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGRtYV9yZXN2X2Fzc2VydF9oZWxkKHNobWVtLT5iYXNlLnJlc3YpOw0KPiANCj4gLi4u
aGVyZS4NCj4gDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAocmVmY291bnRfZGVj
X2FuZF90ZXN0KCZzaG1lbS0+dm1hcF91c2VfY291bnQpKSB7DQo+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdnVubWFwKHNobWVtLT52YWRkcik7DQo+PiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc2htZW0tPnZhZGRyID0gTlVM
TDsNCj4+DQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZHJt
X2dlbV9zaG1lbV91bnBpbl9sb2NrZWQoc2htZW0pOw0KPiANCj4gT3Igd2VyZSB0aG9zZSBpbnN1
ZmZpY2llbnQgZm9yIHNvbWUgcmVhc29uPyBJZiBzbywgc2hvdWxkIHdlIGtlZXAgYm90aA0KPiBv
ZiB0aGVtLCBvciBzaG91bGQgdGhlIG9sZGVyIG9uZXMgaGF2ZSBiZWVuIHJlbW92ZWQ/DQoNClRo
ZSBkbWFfYnVmX3ZtYXAoKS9kbWFfYnVmX3Z1bm1hcCgpIGZ1bmN0aW9ucyByZXF1aXJlIHRoZSBj
YWxsZXIgdG8gYmUgaG9sZGluZyB0aGUgcmVzZXJ2YXRpb24gbG9jayBhcyB3ZWxsLg0KDQpTbyBp
dCBraW5kIG9mIG1ha2VzIHNlbnNlIHRvIG1vdmUgdGhlIGFzc2VydGlvbnMgdG8gdGhlIGJlZ2lu
bmluZyBvZiB0aGUgZnVuY3Rpb25zLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+IA0KPiBC
ZW5jZQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxp
c3RzLmxpbmFyby5vcmcK

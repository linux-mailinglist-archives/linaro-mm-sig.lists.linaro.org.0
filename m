Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id riTbC19dDWpuwgUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 09:06:07 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8271B588A34
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 09:06:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4DFB64095D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 07:06:05 +0000 (UTC)
Received: from DM1PR04CU001.outbound.protection.outlook.com (mail-centralusazon11010059.outbound.protection.outlook.com [52.101.61.59])
	by lists.linaro.org (Postfix) with ESMTPS id 9D2BE3F77C
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 07:05:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=Jrf6VkZc;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.61.59 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k7ZQzDGKqCbqtAT3ALpKj0kch3jHKyVghb6v2PEnMZEMG4cYqEJjOQDR1edEr3NmPk9ie9XayzLW4zeEfqj/+BC7Tc3XgwyltKseqeCuXivhpLfydUoKXD4f1wQm/h+jsd5LSiz81x/RcILGsBDFxtK1RYb3jEsNokPBnFuVMKvdRasKYl0N4daEOzcRfmXaR8TvwOR3qfskRISgfaSPGAb0GHZV1cT0Xevbkcy18QLZe/oQ2MNppxfDgFZo0G+KOkWJ/eha6VGVhsMDFLtU0vzUK4J3Jm4S/2sPVHbXBS2+pPsBDuWIjzNnKoulaiZvisuLp34Ju3FfKAbrhZGEdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KF74rf0vudxEU7djBAMlucGnT96Vba+Q8vZdd5leGdg=;
 b=kNbTIC3lKQo/kiN+GYuuLWsRGoLe08/4etz2EyIGXr3CsuetsNmdrIg0uZB9zjY+n2YqFIJG0FlLXXc/Zk4pWRmJ38bqZd0MfRENb0L4xquX9tT9K1gWJSE2CPI91tMqeGZvMaf8hWz5ByQ8FU8/z6D8os4ghnPZozWCTAryk9msL1dfnAz3Qk5hzlQCjYe0XQU0fcvulkxasEh5Kng0V/QO1T6mtSQzJwLu0GFe42B3IQIO4CBpQeqCS0LT+iMg0rS6D5BCLrGEe3WfiBRdAsJFC4mC+gL6+LjRd+H7o5F8n5IIc6wKfKeud05uHa3lWTrHjf9RpeGfF3gWXClqLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KF74rf0vudxEU7djBAMlucGnT96Vba+Q8vZdd5leGdg=;
 b=Jrf6VkZczTye+v6a5OoLIxK1UmpDvge+4wiHcqZuDWSzwdL6vt8p4s/nAgBtSgeSLW7ZbxSQjtxaLPC0Knc/Iv+wtOfww3Bs8Q5JdHtgeFdlD9xl6D15H8AuFav9PE8kTld0SgdBqn0A01x8bYxluXSTG/WMDhP2FLCfBPjq0fY=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MW4PR12MB5603.namprd12.prod.outlook.com (2603:10b6:303:16a::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.14; Wed, 20 May
 2026 07:05:13 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0025.022; Wed, 20 May 2026
 07:05:12 +0000
Message-ID: <a0f2cfd5-d4df-4e50-a52b-d5befbc2e481@amd.com>
Date: Wed, 20 May 2026 09:05:03 +0200
User-Agent: Mozilla Thunderbird
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 Deepanshu Kartikey <kartikey406@gmail.com>, airlied@redhat.com,
 kraxel@redhat.com, gurchetansingh@chromium.org, olvaffe@gmail.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 simona@ffwll.ch, sumit.semwal@linaro.org
References: <20260519082247.34470-1-kartikey406@gmail.com>
 <2e23513c-9d59-4891-acfe-9f1fbcbce778@amd.com>
 <f6bcef23-5510-4aad-bf6a-4e1ecfc8d474@collabora.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <f6bcef23-5510-4aad-bf6a-4e1ecfc8d474@collabora.com>
X-ClientProxiedBy: FR2P281CA0135.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9e::19) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MW4PR12MB5603:EE_
X-MS-Office365-Filtering-Correlation-Id: bf816e99-9a5c-4c4b-a78b-08deb63e22a8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|7416014|1800799024|376014|366016|921020|22082099003|18002099003|56012099003|11063799006|3023799007|4143699003;
X-Microsoft-Antispam-Message-Info: 
	tIcb0Gu1V3bF5FjmDurbYpcg/LJELZjVWGH29JPOR7iOJ33584sODuaXTSrYl2U+2yN+WYHV+pJSzs4vVtI1cNqc6Tgql0t/BtO3NHGVCwGWwsRA2iuKlUqQr+pG5IsnUi7hERv9xzXmnijRGGPNrZZr4jiOE+0HQMjIpiIF203v2MRHdvgpGBgxbYT3ygGQSbR5eHGBvAgYOld3s/CrMzCzryCNhLQ5GglzuT6BGIVSW1keXCWeced4RPqkq2RyINi+16bHBiEFTWtf9/SidgDpIaLljsxS3lCCsbnfQisuRrfBMm5kwCC3TwplII/wVryw3kYWl7tdLMeaz6XItzESsYcaJu1QFdcAlQJeg9k/789DKUq1XmNCi9MEetQd8oxeRMbzCvhkpEOkzrjm8j7/BBy4/oiSjcnlLQ2W8zbb6Phw7NmROEsCEnnMWESt+r3IxtN3YKInc5vnIxUbjkyQQOIOrvEmLHRdqS/COFGPjBDuOhnj26jKAUYuYeIazHj85gTwH6XgfdlorzaoIIdrJpBP/B6WZzPMAOz6WR8CQLgyKEIilU4H/Y9/OUjoTSrQJdJtXCJyVyzY8NLQKQFySslrNS197oMjjzUSfb+1LBcNUXq+mbXrS8WwTWYLzU1MmJFDevKCezmJa9D2IfZxZlAJGvFKLGzGOZ73LlZBp445XKI9fJjmPfDiWyOhfbpDC7ODPZgw4zh40FULfBLr7LsBtmgT8jh4MfXZMWA=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(1800799024)(376014)(366016)(921020)(22082099003)(18002099003)(56012099003)(11063799006)(3023799007)(4143699003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MHlQbHNUcEZiajNubTJsT1NGeUhpdVdFMHhCSEVLbG02YzAzVmN6TlJ3SG5V?=
 =?utf-8?B?MVIvdXVpL2NCNXpsNTVpUFA4aHptYUZRQVlCRTdXQUowblkzZktNZ1RsQWxM?=
 =?utf-8?B?bjNZckpqOXRBUjkrWFBrRW1OTGRhalBpbUMxZUlaTG9ibHM3T21iVnFXK0xj?=
 =?utf-8?B?LzJMMEVnZ09UdFpGdkNYRms1MU10M0s1MVJUU1kzaGU4QWJYVWpIdVB3WmdR?=
 =?utf-8?B?eERHaHFDd21XYi9sTFB1YTJEQnovcG1LMEVURzIwMGp4UjFaRjZLNFhqeG1Z?=
 =?utf-8?B?eDVQSDdOV29XdDRXRENaaDkwVGJST1RrVWRXZ0l1ZGUwaWpnNTVMa2MzVlF3?=
 =?utf-8?B?TnlGdDdWamVieFFLRVgwSTAyNk5oV3ZLL0plUHY5eFUzeFRhd0RCUHBvZkM0?=
 =?utf-8?B?dk5vUlAzQ0lteDZnS0JkaVJqVHlhZHdBSVVEdFhyV040OEVaYW9qakJ2VW9j?=
 =?utf-8?B?T2dwSjQ0ZGZyNEV2cWhMZFhqbXpJM0w2STZ6Zm8wTTh6TEdOb2U2dU42MFNz?=
 =?utf-8?B?T1BKdEFhS3BWZitxZ0ppKy9IY1BJT1lPbXBFYktPZnJOTWdmN25SdnJ4dk9H?=
 =?utf-8?B?bkNSKzdyZFdVaTlBY2h5REVna3ZPd2gra0VjeG1SY0dURG1Vem5JSjZnb0dH?=
 =?utf-8?B?NUswa0pvQVA3YkpXdDJ0Nm1KanAweTByZFJ3OUZLVitBQzNFai91RGk0L0Zl?=
 =?utf-8?B?UHBpSUxrRitlQ2FnVTY0ZUpPVkUrNWR5bXY3UXRNMHVUMUN3aS9IaWppTTcx?=
 =?utf-8?B?aUttYjdVWUNiOVlBUmpjYlNrUHh4MVNoOW44czRoKy9KK0NYMDlKd0ZLSkZN?=
 =?utf-8?B?ZDBNQ0NXNUpNdWV6bFhpcjFKVnNwb2o4QmlIQzZmOFVHYkJSaElGMnZnL3dW?=
 =?utf-8?B?a1ZyeWk1dmQ2THhjbXNnemxzMm9hMUpMVFZ0Qy9xa1BpbWRlN000dk03cnVj?=
 =?utf-8?B?SWZ0ajlIaHBkQ1A2QzlGQVdJTFdsU0dlWEl3TkdwMU1NOG53VzBob29CWGc1?=
 =?utf-8?B?QUtncitsNHMzK3Q3OWFJb0dJb2l5M2djNjZLYTIyTHZOZWN6bUVHYkNUeFFv?=
 =?utf-8?B?SlpSQjFMSVg0QnRCQWkvaTZuNHV1NExqSXBKODRrOGwrME5zL3Z0bVl2em9h?=
 =?utf-8?B?aHh2bi9GcHV4QWtQTnBCNWtycWxFQnJrUFczUGpnUWFNMjF5aEZ0bkpXbm56?=
 =?utf-8?B?aE15ZURjb1hQaWd0c2Z4clRUektOOERjZFRZSmk0OWpTMjRrSGNYUmlpZEtr?=
 =?utf-8?B?QlNtVGIrNjlTMk5nVmdTdHlHZkRSTksrOU1MSG4zRm5rNm1JdENnZGlZQVIy?=
 =?utf-8?B?RTl5Z2JQdElraVJ5anFPNXFjMGpUSlpxQmhNY09EN3hZR3BJUlpmM1lsR3pv?=
 =?utf-8?B?bHoycW8wQ0o0TFJCS1grL2syOUdZazdBQmRTdXl2RFFxc1lvSmZKeFgwNm54?=
 =?utf-8?B?VVplL3B6T2Q4Qm1jd0p6R0ttZ2F0blhXMm9Gc3BGWGFyUytIMGRGeG80UmQx?=
 =?utf-8?B?cVo2S0JNbjhGeWl0OTJCSDB4WGhVOW95WjMxWnMwMFNzU1A3VnF4QzBaU2Er?=
 =?utf-8?B?akd5b1llRzAzZTZPTlhIN0wvNUpheHAxYnpHQ0JHQzVVZHFnNXFaRitiUEVq?=
 =?utf-8?B?NVpSd2dFVDRnVzVaSWMwOUVCNkFkZUpoclN0T3ZEWDJEU2pQbmU4dllDUmpN?=
 =?utf-8?B?QjBnR1RseHpIZVR0OEMxNVV2YmJNaU1obndtcW9INDU1VExZMDdyVGVnSmM2?=
 =?utf-8?B?dFphZ2pEYk1XLzA2MDVNbjQ0ME1zU1VEZGJaajNKOGdadlpDVkNhK3ovWURN?=
 =?utf-8?B?amZja0E4aElaSFNzWFdqWHBJWXEwbXFvVytqY3oxMXBuZ0padGlqOUdSZ3JB?=
 =?utf-8?B?blJnYjBjV3pSVkl3Wk51andCY3pZWlE1Nk0wbkNlUzF3SWZURTlYTDQ3dHBl?=
 =?utf-8?B?OTFMOS9CR1F5Nis0eXZZaUU1WWtDRXZKY0JFQlRwSG03a01KWHRkVHZ5MGlY?=
 =?utf-8?B?R3JySjZRU0FYeGlMc2xTNC8vVitsY3dwcFZ5Z25naWhyejhHTzhTUW5rd1pE?=
 =?utf-8?B?YXZFSVk2LzVTQXV3MmRhZFVXT01mMlYxYzZMTWRhUkdWRWZLY0Jqd2VpbnVF?=
 =?utf-8?B?NldCbFNxNlZXQTA3YTVTUFpabkp2c0JrQkxjWDdlUStFVUVIRlFyVm54YUJv?=
 =?utf-8?B?SFpGUEFHZHRjVnJWak1VVHp5Rlh2S05GSE9sanhOdGdqZDVKY3RnY3FxVFdr?=
 =?utf-8?B?ZWpLbGZiTlVMOXc2bDAzSElFQjBpUC9ZL21CaHVJNXE4L3ZtSWROdVpUOGk1?=
 =?utf-8?Q?0Lj1PQ+skOgi6EaxPg?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf816e99-9a5c-4c4b-a78b-08deb63e22a8
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2026 07:05:12.0750
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: elxi1F7PVDjnXxgNip9eysKtODo3NvSXdlsXWi9KonSXanMKHFxLX7NQH8Fs4u89
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB5603
X-Spamd-Bar: --
Message-ID-Hash: FRR553MANAZVCYF2FVONERXVOAEWOMKT
X-Message-ID-Hash: FRR553MANAZVCYF2FVONERXVOAEWOMKT
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, virtualization@lists.linux.dev, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, syzbot+72bd3dd3a5d5f39a0271@syzkaller.appspotmail.com, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4] drm/virtio: use uninterruptible resv lock for plane updates
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FRR553MANAZVCYF2FVONERXVOAEWOMKT/>
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
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[collabora.com,gmail.com,redhat.com,chromium.org,linux.intel.com,kernel.org,suse.de,ffwll.ch,linaro.org];
	MIME_TRACE(0.00)[0:+];
	GREYLIST(0.00)[pass,meta];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,72bd3dd3a5d5f39a0271];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Queue-Id: 8271B588A34
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNS8yMC8yNiAwODo1MCwgRG1pdHJ5IE9zaXBlbmtvIHdyb3RlOg0KPiBPbiA1LzE5LzI2IDEx
OjI3LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4gT24gNS8xOS8yNiAxMDoyMiwgRGVlcGFu
c2h1IEthcnRpa2V5IHdyb3RlOg0KPj4+IHZpcnRpb19ncHVfY3Vyc29yX3BsYW5lX3VwZGF0ZSgp
IGFuZCB2aXJ0aW9fZ3B1X3Jlc291cmNlX2ZsdXNoKCkgbG9jaw0KPj4+IHRoZSBmcmFtZWJ1ZmZl
ciBCTydzIGRtYV9yZXN2IHZpYSB2aXJ0aW9fZ3B1X2FycmF5X2xvY2tfcmVzdigpIGFuZA0KPj4+
IGlnbm9yZSBpdHMgcmV0dXJuIHZhbHVlLiBUaGUgZnVuY3Rpb24gY2FuIGZhaWwgd2l0aCAtRUlO
VFIgZnJvbQ0KPj4+IGRtYV9yZXN2X2xvY2tfaW50ZXJydXB0aWJsZSgpIChzaWduYWwgZHVyaW5n
IGxvY2sgd2FpdCkgb3Igd2l0aA0KPj4+IC1FTk9NRU0gZnJvbSBkbWFfcmVzdl9yZXNlcnZlX2Zl
bmNlcygpIChmZW5jZSBzbG90IGFsbG9jYXRpb24pLA0KPj4+IGxlYXZpbmcgdGhlIHJlc3YgbG9j
ayBub3QgaGVsZC4gVGhlIHF1ZXVlIHBhdGggdGhlbiB3YWxrcyB0aGUgb2JqZWN0DQo+Pj4gYXJy
YXkgYW5kIGNhbGxzIGRtYV9yZXN2X2FkZF9mZW5jZSgpLCB3aGljaCByZXF1aXJlcyB0aGUgbG9j
ayBoZWxkOw0KPj4+IHdpdGggbG9ja2RlcCBlbmFibGVkIHRoaXMgdHJpcHMgZG1hX3Jlc3ZfYXNz
ZXJ0X2hlbGQoKToNCj4+Pg0KPj4+ICAgV0FSTklORzogZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2
LmM6Mjk2IGF0IGRtYV9yZXN2X2FkZF9mZW5jZSsweDcxZS8weDg0MA0KPj4+ICAgQ2FsbCBUcmFj
ZToNCj4+PiAgICB2aXJ0aW9fZ3B1X2FycmF5X2FkZF9mZW5jZQ0KPj4+ICAgIHZpcnRpb19ncHVf
cXVldWVfY3RybF9zZ3MNCj4+PiAgICB2aXJ0aW9fZ3B1X3F1ZXVlX2ZlbmNlZF9jdHJsX2J1ZmZl
cg0KPj4+ICAgIHZpcnRpb19ncHVfY3Vyc29yX3BsYW5lX3VwZGF0ZQ0KPj4+ICAgIGRybV9hdG9t
aWNfaGVscGVyX2NvbW1pdF9wbGFuZXMNCj4+PiAgICBkcm1fYXRvbWljX2hlbHBlcl9jb21taXRf
dGFpbA0KPj4+ICAgIGNvbW1pdF90YWlsDQo+Pj4gICAgZHJtX2F0b21pY19oZWxwZXJfY29tbWl0
DQo+Pj4gICAgZHJtX2F0b21pY19jb21taXQNCj4+PiAgICBkcm1fYXRvbWljX2hlbHBlcl91cGRh
dGVfcGxhbmUNCj4+PiAgICBfX3NldHBsYW5lX2F0b21pYw0KPj4+ICAgIGRybV9tb2RlX2N1cnNv
cl91bml2ZXJzYWwNCj4+PiAgICBkcm1fbW9kZV9jdXJzb3JfY29tbW9uDQo+Pj4gICAgZHJtX21v
ZGVfY3Vyc29yX2lvY3RsDQo+Pj4gICAgZHJtX2lvY3RsDQo+Pj4gICAgX194NjRfc3lzX2lvY3Rs
DQo+Pj4NCj4+PiBCZXlvbmQgdGhlIFdBUk4sIG11dGF0aW5nIHRoZSBkbWFfcmVzdiBmZW5jZSBs
aXN0IHdpdGhvdXQgdGhlIGxvY2sNCj4+PiByYWNlcyB3aXRoIGNvbmN1cnJlbnQgcmVhZGVycy93
cml0ZXJzIGFuZCBjYW4gY29ycnVwdCB0aGUgbGlzdC4NCj4+DQo+PiBXZWxsIHdoeSBhcmUgeW91
IHRyeWluZyB0byBhZGQgYSBmZW5jZSBvbiBhbiBhdG9taWMgbW9kZSBzZXQgaW4gdGhlIGZpcnN0
IHBsYWNlPw0KPj4NCj4+IFRoYXQgaXMgdXN1YWxseSBhbiBpbGxlZ2FsIG9wZXJhdGlvbiBoZXJl
Lg0KPiBUaGF0IGlzIHByZS1leGlzdGluZyBpbiB0aGUgZHJpdmVyLiBJdCBwZXJmb3JtcyBkcmF3
IG9wZXJhdGlvbiBhbmQgaW4NCj4gc29tZSBjYXNlcyB3YWl0cyBmb3IgdGhlIGNvbXBsZXRpb24g
ZHVyaW5nIGF0b21pYy4gV2hldGhlciBhbGwgdGhhdA0KPiBzeW5jaW5nIGlzIGNvcnJlY3QgaXMg
aGFyZCB0byBzYXkgaW1tZWRpYXRlbHkgYXMgc29tZSBvZiBpdCBtYXkgYmUNCj4gaGlzdG9yaWNh
bCBlZGdlIGNhc2VzLg0KDQpJJ20gbm90IG5vdCBzbyBkZWVwbHkgaW4gdGhlIGF0b21pYyBtb2Rl
IHNldHRpbmcgc3R1ZmYgYnV0IGl0IHN0cm9uZ2x5IHNvdW5kcyBsaWtlIHRoYXQgdGhpcyBpcyBz
ZXJpb3VzbHkgYnJva2VuLg0KDQpUaGUgYmFja2dyb3VuZCBpcyB0aGF0IHRoZSBhdG9taWMgbW9k
ZSBzZXQgZnJhbWV3b3JrIGFsbG93cyBhbiBvdXRwdXQgZG1hX2ZlbmNlIHdoaWNoIGlzIHNpZ25h
bGVkIHdoZW4gdGhlIGNvbW1pdCBpcyBmaW5pc2hlZC4NCg0KU28gd2hlbiB5b3UgYWxsb2NhdGUg
YSBmZW5jZSBzbG90IGFuZCBhZGQgYSBuZXcgZmVuY2UgdG8gZmluaXNoIHRoZSBhdG9taWMgY29t
bWl0IGl0IGlzIHRyaXZpYWxseSBwb3NzaWJsZSB0aGF0IHRoaXMgY3ljbGVzIGJhY2sgYW5kIHdh
aXRzIGZvciB0aGUgYXRvbWljIGNvbW1pdCB0byBmaW5pc2guIEluIG90aGVyIHdvcmRzIHlvdSBo
YXZlIGEgZGVhZGxvY2suDQoNCllvdSBwcm9iYWJseSBuZWVkIHNwZWNpYWxseSBjcmFmdGVkIHVz
ZXJzcGFjZSB3aXRoIHRoZSByaWdodCB0aW1pbmcgdG8gdHJpZ2dlciB0aGF0LCBidXQgc3VjaCBp
c3N1ZXMgYXJlIHVzdWFsbHkgYSByYXRoZXIgYmlnIG5vLW5vIGFuZCBuZWVkIHRvIGJlIGZpeGVk
IGluIHRoZSBsb25nIHRlcm0uDQoNClRyeSB0byBhZGQgZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGlu
ZygpIGFuZCBkbWFfZmVuY2VfZW5kX3NpZ25hbGluZygpIGFubm90YXRpb24gYW5kIGVuYWJsZSBs
b2NrZGVwLCB0aGUgdG9vbCBzaG91bGQgYmUgYWJsZSB0byBwb2ludCBvdXQgaWYgYW5kIHdoYXQg
ZXhhY3RseSBnb2VzIHdyb25nLg0KDQpUaGUgdXN1YWwgZml4IGlzIHRvIHByZXBhcmUgZXZlcnl0
aGluZyBiZWZvcmUgY29tbWl0X3RhaWwgaXMgY2FsbGVkIChhbGxvYyBtZW1vcnksIGNyZWF0ZSwg
cmVzZXJ2ZSBzbG90LCBhZGQgZG1hX2ZlbmNlIGV0Yy4uLi4pIGFuZCB0aGVuIGp1c3Qgc2VuZCBv
dXQgdGhlIHByZXBhcmVkIGNvbW1hbmRzIGxhdGVyIG9uLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFu
Lg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5s
aW5hcm8ub3JnCg==

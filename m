Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EJDNDwxqDGo8hQUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 15:47:56 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C0C57FF6F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 15:47:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AB90840705
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 13:47:54 +0000 (UTC)
Received: from BL0PR03CU003.outbound.protection.outlook.com (mail-eastusazon11012031.outbound.protection.outlook.com [52.101.53.31])
	by lists.linaro.org (Postfix) with ESMTPS id 3D773401E2
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 13:47:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=OpZCYGfo;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.53.31 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CsmEMV5jC+YUbSc6yosV9YA7+ap3tt0ezMcCD4P6MsseDYlugbk9ZlNNxEpKRO4sHevSbFaxeX6bLZ6i75GqOb9zCmP3ozZBo6+s+xwS7i48TWv7IC0A38klxIYWLqudmjQ+9cO1cte0iF9lzdDlLkZzxHxMIvhZoczl5tKB7qT+0d+LpUGVAxDA6NZZun7mXnJl6WuUwPz3IOxrrij1oQiM/NQV7YLgmU4ZgnrMqUpIuVpYblYFBkWkqNrvgG5kULmoJjCWf506fmLDhLQYI8NxOpzTqwGbdbkcONlfP+qlq4orEuB6OB54U/qURcJMIK8Qo7tJQ6jszvpia5RGGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5OX5jHQ8vDq7t+AhNCSae+kQct/tCLpdC7Zt7uyzpdo=;
 b=aW2H+a2/AbT7h7fHSL9xruf3uibEqNnXq/Frn+/YQs5yPnzOvYqn37KBny8fplwFzGycQkxktwecD03GkwkOlhz1AbUdoWH1U4N6scUEObJZ2Fu2K8q1f246EtGXpJU7Sw2lEFiCw9XZyUp/ClF+xbdV+H4Zxg3Uf5VO7HNVaJRCmDGXLEypFoJX2UBUutFmkMD8RqSqMurVQXr+LFH7blsq2PnuoMwIaAkjqm0wkWMN0pDSepZKn9H7JUXUZcIFZbsCYXuZ42rWssf/AvyMW05QJDN5Su+ulmJVtbsApRjTKul5VCxtr96sZu/JpQ8GxCl51lPQJ6l6KZ0AqWV+jA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5OX5jHQ8vDq7t+AhNCSae+kQct/tCLpdC7Zt7uyzpdo=;
 b=OpZCYGfoNyMwivP3x5hnxDIZA+jVQfrc4iDuIrMZV3pc15f+ssIuYSmArTJl7H4+jb6OXAB16wJF1uqTIrTYb5plSiwqNKtPBaWcyq8u184ESOk0o5B1NBIgwc3U7DY3PGaF4UTb/f+OaOJbW9c2xpIyiB898Co1kedjIzPxjvg=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SA3PR12MB9160.namprd12.prod.outlook.com (2603:10b6:806:399::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.14; Tue, 19 May
 2026 13:47:44 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0025.022; Tue, 19 May 2026
 13:47:44 +0000
Message-ID: <98f2705e-fc43-481e-b8e5-68c7d462ca90@amd.com>
Date: Tue, 19 May 2026 15:47:36 +0200
User-Agent: Mozilla Thunderbird
To: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>,
 amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
References: <20260429143743.50743-1-mikhail.v.gavrilov@gmail.com>
 <CABXGCsM_YJ+UY86yFJF-jBcbQXRoc0qnSw0saaGWnaSYWG0mmQ@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <CABXGCsM_YJ+UY86yFJF-jBcbQXRoc0qnSw0saaGWnaSYWG0mmQ@mail.gmail.com>
X-ClientProxiedBy: IA4P221CA0007.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:208:559::17) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SA3PR12MB9160:EE_
X-MS-Office365-Filtering-Correlation-Id: 6cfe0c7c-290f-4a85-e7d9-08deb5ad33e9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|366016|376014|7416014|11063799006|56012099003|4143699003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: 
	5AMK9MqV5bWHsK+arR2yCBA8pnXASwKbclDlJu/DhNl05xF04m32Tq7mebkrwuUrUPtAjABJjOrKX1wNSdYM8Y4od6WwYDyaKFzEzV6eOH2C2vfjb2vAg5k5brqT0FfOO0TzkMGXJBFHFjmJcEvjA7TrZQ7kwHEiIkVPdBgmZDwJNPkhixmkfUo3gWrTF7BkCMLv4eraObXeSIRgpFQwoRQXYoxSj10KiQKe4p3tJ9sSM+99VU4RcY9M5L1ZPjJLZCnY02S+mP6gF4Fx0Tr3lIIy2dXH8eOZa6U1VhwCFMDdd3vS3kij7kBJ4zF2ueYg17QWCrbkpo4oSOTzQEK6ljJZT6PPyr0V8JQquDtAnjUcKNfehSOaJftGf0X18dDJiMCIKNgdJPjQMHUFi0+QqYZDHSHmm5rPKWn0zPwK7Kn3RLP/h2dz0np1Rk1mXxqH9WWMl9Mkni1zHiW3J+KbResBsaEe7ScXb76xJoY88we55otu8cnLBl3L82WhRyIYdA9wScwpefbNikgBqx4K8rzylf17KSNujmQkoU6yGE5dTxJcZohgD7pP0SRs3jsgEfLNa4Niazr2eDrWOzI9ZtRGGnRk/aL+FRjUvuCW9EFWb8OPnDdhvNcaWQkbqgoxdSTxrgSGn021OKv3r1q0cgaXKtIC4gWm6nA5asCywGeegpCYo6dpOy2vZznfSBb7
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7416014)(11063799006)(56012099003)(4143699003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VUFNTHNCbXJPRysyREE0QzdBVXduRzdKMCtIYWN3MlJtTnBjYkVoQm1qWEta?=
 =?utf-8?B?elNQUGxDYkNFMXFoMXRzeDlCUXVhUXJhNFhSWkxUUFN1Wk5oNkg0M0lYYWNK?=
 =?utf-8?B?UzFqRXgrd0FIVXFoQWtKY0h5cGkrZnFoTnNUQlV5UlB6NCtCcFUzSUdXSCtC?=
 =?utf-8?B?UnFEdDlmaURWNmpFTTdBSVhwdmtKS1NsSjI5dmhlenh3cmVsM3JtSEEwMkZF?=
 =?utf-8?B?RnZ5KzBpNm1pcmhmSEZyNlFqTHNpUFExdVVVY2Y5Mm4yTDZ5M3BsenZEWmI4?=
 =?utf-8?B?bmgxNUV5Qys4NncvdmxlZUF3aHBCUUJoaDVILzBPNnVzUlA2M2hsai9TYS9B?=
 =?utf-8?B?cmd0TGlKdDM3bzJSb0ZoT2VTSXlHeWF1SWFtdXd4Nkd6VnNOT1E1RS9BNWUv?=
 =?utf-8?B?SW0zcks5ZVFSUnA4a2NzSUIzZ2N0ZjNYN0xWc0N6bW1EYWNiYUVSdzFYRmdO?=
 =?utf-8?B?Sk5zVkxFYldya0FkUmIzRmdpSnQ2Mld3VnRIV3pFUmRFZU1zelpsRFczcXJ1?=
 =?utf-8?B?NS9nL3pWSEtBK0dqVWpVenZPeTlhaW1aWEdjclFZWUtFUE9IaU9aNHNDRHFH?=
 =?utf-8?B?MFlFb0d0ckdsVEhFSFFLS3JOWGhwTElHOGNkZlZodUNBUThiejliK0doUVZX?=
 =?utf-8?B?dVhOVWx0Q1RMQndNbDhjbk5DcmVHQUtUYTZiYm5WUmNSVG01VVQ3ekZZS0Nw?=
 =?utf-8?B?d1Y4TnJMTTlzaXlzdjN3YlZQeW40SDNabkFXbzM4RG1sR3c4WlkrM21pd0ps?=
 =?utf-8?B?dTlYRzUzLzJVTzRreWdRT2d3bW9YTkFENmlZVHJpTFpaYURiV0dNaGRGajQ2?=
 =?utf-8?B?eFpzMmFCS3AwbWJ0QVd4cGlTNS92KzlSTGF4WW5ZQmtZOTFpeUFtc2VvbG1X?=
 =?utf-8?B?cVpERlpuQTc1NHRDZXVBSlZMdTBhYmZwN3A3MDNZTUV2R1IxYnpkNVFTZ0s1?=
 =?utf-8?B?YWtob3g0dzVXOGdZRHdIQjRTTmdRNWVrREZ6YWZWczlrd2hxNUF3c25seFZh?=
 =?utf-8?B?QjJlUnVQbERlbHhRQm5weS8wbWtDanlra1FGeTRKRXNJdU81NStUTXpBbkZQ?=
 =?utf-8?B?Mk9VdW1EOEVtRXQxd3hqUHdHK0JISHNOWjNkQlp0c1NUNysyVEFqR3JHRU5C?=
 =?utf-8?B?NWYyMi8yNUVsckdacmptTFhCSTdSRFRLanFvZ2YxeWFOd0xEVFY4aU8vSllz?=
 =?utf-8?B?Z3dlVittdUZES29vZnB0YTk3Z1ZnbUcweXAybGlDQUkvdkQ1a2JmbTRLK0R1?=
 =?utf-8?B?NFZjMmYvQldTNWUvYlRESldwdTBVQjd4cUhIWURKcTNGZ3hzbjlnWVZwZEdR?=
 =?utf-8?B?anVmZDE2Q3U2aUFKYjljMzhwM3RwZTRBRklBQmxpWlc2NG9DRzQ0WUVQejFR?=
 =?utf-8?B?WHNTbEFwSWd5aXVqRmliei9UbEViczZLaWpYOFg2Q1J0dVdIa2Rlcm9UL2dx?=
 =?utf-8?B?WWJ6S1Ric1BPdWZCNWttWDVtcGtuaVkySmw5NXBaUFZXYWhDWW5Ua0ozZ2Nq?=
 =?utf-8?B?SS9UZzNNd2I4c0VCL2dRVnBQTWRpcmRoRWZjcTNLWEI4Zkg0ZWdFSHpEbGNB?=
 =?utf-8?B?Zkxya1BLYW41V3FBbWMrTjBjWEd2bSs4MEdsb0hMV0FIUUFEbkxpZi96NVl6?=
 =?utf-8?B?dFlhRGlybmNVUEduZ2dPTkttVW1WZ204bUF0dUJBb3JscFZSM3Z5RGltSUxo?=
 =?utf-8?B?czlQY25UaVZrY1Q3TjZmcUdBaDRSLzBtMitLZENCTWVQMkVkaHFFN2FJK0R2?=
 =?utf-8?B?VytHVzl5bFlDY0ZaUkxvTEZhNUpJT2JSUzhwOWorNVlNNWJBZCsrb0R6TnFK?=
 =?utf-8?B?L2l1RUJ5VmRiWXZCNDBmdHhkVXFmeXB4SWRUOVpzQUZBNG9iaVNtdUVSTzFz?=
 =?utf-8?B?RVN6RFdRZFVTYTI3cW1BM2l1dmI0RG1CMnlWSStNcmJzSVVEdEF3Vzl1VHZq?=
 =?utf-8?B?eC9RUUVHNEZmOE5hUmZHZzk2aG1WN0syZzNnZWxPaEZJaWd1ZS9CM2tGWXVt?=
 =?utf-8?B?MVRWSEUvSFZITk95aUhRSlduSFpuZ3I2Y08waTVrVEJoWGF0eHlDeklWVHNX?=
 =?utf-8?B?THEzTkxEUlVLbk9tQ3AyRzRrQTJqVTNjL1ZhREhhWndIYU1YZHhFYVdaRjlE?=
 =?utf-8?B?TEQ5emZPK1A4dXpXYm0wSHhhMGRtQnBvYTdtdEQyT3h6dGxpVHA2UC9LVFY1?=
 =?utf-8?B?ZzlSa1pmRGl0K0ZJb0pVWTRxaGZyQ29Dc0NSM1ZrTkxUb2oyVWdNWGN4Nk5a?=
 =?utf-8?B?Zmo5MnRXcVJrOVMrZDhtREp2SVkzWWh4MzljcTBDR3BtTVUxaVRqWi9NanRO?=
 =?utf-8?Q?lGvdVUKnOQDrkWuH3i?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6cfe0c7c-290f-4a85-e7d9-08deb5ad33e9
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2026 13:47:44.0550
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jTnzY3SiDoYvRAHMel9fu/rkM/ujuN1qCGne99omWsngTGU1yit9K5Pc7qVidn8o
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR12MB9160
X-Spamd-Bar: --
Message-ID-Hash: 6MYP32GWZ6AR25QDAJBEHP6RFJN3ELJP
X-Message-ID-Hash: 6MYP32GWZ6AR25QDAJBEHP6RFJN3ELJP
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: stable@vger.kernel.org, Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/amdgpu: fix recursive ww_mutex acquire in amdgpu_devcoredump_format
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6MYP32GWZ6AR25QDAJBEHP6RFJN3ELJP/>
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
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,lists.freedesktop.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,amd.com,gmail.com,ffwll.ch,linaro.org,lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DKIM_TRACE(0.00)[amd.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: A6C0C57FF6F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNS8xOS8yNiAxNTowNSwgTWlraGFpbCBHYXZyaWxvdiB3cm90ZToNCj4gT24gV2VkLCBBcHIg
MjksIDIwMjYgYXQgNzozN+KAr1BNIE1pa2hhaWwgR2F2cmlsb3YNCj4gPG1pa2hhaWwudi5nYXZy
aWxvdkBnbWFpbC5jb20+IHdyb3RlOg0KPj4NCj4+IFdoZW4gZHVtcGluZyBJQiBjb250ZW50cyBm
cm9tIGEgaHVuZyBqb2IsIGFtZGdwdV9kZXZjb3JlZHVtcF9mb3JtYXQoKQ0KPj4gYWNxdWlyZXMg
dGhlIFZNIHJvb3QgUEQncyByZXNlcnZhdGlvbiBsb2NrIHZpYSBhbWRncHVfdm1fbG9ja19ieV9w
YXNpZCgpDQo+PiBhbmQgdGhlbiwgZm9yIGVhY2ggSUIgcmVmZXJlbmNlZCBieSB0aGUgam9iLCBj
YWxscyBhbWRncHVfYm9fcmVzZXJ2ZSgpDQo+PiBvbiB0aGUgQk8gdGhhdCBiYWNrcyB0aGUgSUIu
ICBCb3RoIHJlc2VydmF0aW9ucyBhcmUgdGFrZW4gb24NCj4+IHJlc2VydmF0aW9uX3d3X2NsYXNz
X211dGV4IG9iamVjdHMgYnV0IG5laXRoZXIgdXNlcyBhIHd3X2FjcXVpcmVfY3R4LA0KPj4gd2hp
Y2ggdHJpcHMgbG9ja2RlcDoNCj4+DQo+PiAgIFdBUk5JTkc6IHBvc3NpYmxlIHJlY3Vyc2l2ZSBs
b2NraW5nIGRldGVjdGVkDQo+PiAgIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tDQo+PiAgIGt3b3JrZXIvdTEyODowIGlzIHRyeWluZyB0byBhY3F1aXJlIGxvY2s6
DQo+PiAgIGZmZmY4ODgzOGIxNmUxZjAgKHJlc2VydmF0aW9uX3d3X2NsYXNzX211dGV4KXsrLisu
fS17NDo0fSwNCj4+ICAgICBhdDogYW1kZ3B1X2RldmNvcmVkdW1wX2Zvcm1hdCsweDE1OTQvMHgy
M2YwIFthbWRncHVdDQo+Pg0KPj4gICBidXQgdGFzayBpcyBhbHJlYWR5IGhvbGRpbmcgbG9jazoN
Cj4+ICAgZmZmZjg4ODJmODI2ODFmMCAocmVzZXJ2YXRpb25fd3dfY2xhc3NfbXV0ZXgpeysuKy59
LXs0OjR9LA0KPj4gICAgIGF0OiBhbWRncHVfZGV2Y29yZWR1bXBfZm9ybWF0KzB4MTU5NC8weDIz
ZjAgW2FtZGdwdV0NCj4+DQo+PiAgICBQb3NzaWJsZSB1bnNhZmUgbG9ja2luZyBzY2VuYXJpbzoN
Cj4+ICAgICAgICAgIENQVTANCj4+ICAgICAgICAgIC0tLS0NCj4+ICAgICBsb2NrKHJlc2VydmF0
aW9uX3d3X2NsYXNzX211dGV4KTsNCj4+ICAgICBsb2NrKHJlc2VydmF0aW9uX3d3X2NsYXNzX211
dGV4KTsNCj4+DQo+PiAgICAqKiogREVBRExPQ0sgKioqDQo+PiAgICBNYXkgYmUgZHVlIHRvIG1p
c3NpbmcgbG9jayBuZXN0aW5nIG5vdGF0aW9uDQo+Pg0KPj4gICBXb3JrcXVldWU6IGV2ZW50c191
bmJvdW5kIGFtZGdwdV9kZXZjb3JlZHVtcF9kZWZlcnJlZF93b3JrIFthbWRncHVdDQo+PiAgIENh
bGwgVHJhY2U6DQo+PiAgICBfX3d3X211dGV4X2xvY2suY29uc3Rwcm9wLjANCj4+ICAgIHd3X211
dGV4X2xvY2sNCj4+ICAgIGFtZGdwdV9ib19yZXNlcnZlDQo+PiAgICBhbWRncHVfZGV2Y29yZWR1
bXBfZm9ybWF0KzB4MTU5NCBbYW1kZ3B1XQ0KPj4gICAgYW1kZ3B1X2RldmNvcmVkdW1wX2RlZmVy
cmVkX3dvcmsrMHhlYSBbYW1kZ3B1XQ0KPj4gICAgcHJvY2Vzc19vbmVfd29yaw0KPj4gICAgd29y
a2VyX3RocmVhZA0KPj4gICAga3RocmVhZA0KPj4NCj4gDQo+IEZyaWVuZGx5IHBpbmcuIFBpZXJy
ZS1FcmljLCBDaHJpc3RpYW4sIEFsZXgg4oCUIGFueSB0aG91Z2h0cyBvbiB0aGlzIGZpeD8NCj4g
DQo+IEhhcHB5IHRvIHNwaW4gYSB2MiB3aXRoIGFueSByZXZpZXcgZmVlZGJhY2suIE9uZSB0aGlu
ZyBJJ20gYXdhcmUgb2Y6DQo+IHRoZSBgQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcgIyA3LjFg
IHRhZyBpcyBwcm9iYWJseSB1bm5lY2Vzc2FyeQ0KPiBzaW5jZSB0aGUgcmVncmVzc2lvbiBvbmx5
IGxhbmRlZCBpbiA3LjEtcmMxIGFuZCB0aGUgZml4IHdpbGwgcmVhY2ggNy4xDQo+IGZpbmFsIG5h
dHVyYWxseSB2aWEgZHJtLWZpeGVzOyBJIGNhbiBkcm9wIGl0IGluIHYyIGlmIHByZWZlcnJlZC4N
Cj4gDQoNCkdvb2QgY2F0Y2gsIGJ1dCB0aGUgZml4IGlzIGNvbXBsZXRlIG92ZXJraWxsLg0KDQpZ
b3UgY2FuIGxvY2sgbXVsdGlwbGUgQk9zIGF0IHRoZSBzYW1lIHRpbWUsIHNvbWV0aGluZyBsaWtl
IHRoYXQgaGVyZSBzaG91bGQgZG8gaXQ6DQoNCiAgICAgICAgZHJtX2V4ZWNfaW5pdCgmZXhlYywg
RFJNX0VYRUNfSUdOT1JFX0RVUExJQ0FURVMsIDIpOw0KICAgICAgICBkcm1fZXhlY191bnRpbF9h
bGxfbG9ja2VkKCZleGVjKSB7DQogICAgICAgICAgICAgICAgcmV0ID0gYW1kZ3B1X3ZtX2xvY2tf
cGQodm0sICZleGVjLCAxKTsNCiAgICAgICAgICAgICAgICBkcm1fZXhlY19yZXRyeV9vbl9jb250
ZW50aW9uKCZleGVjKTsNCiAgICAgICAgICAgICAgICBpZiAodW5saWtlbHkocmV0KSkNCiAgICAg
ICAgICAgICAgICAgICAgICAgIGdvdG8gZmFpbF9sb2NrOw0KDQogICAgICAgICAgICAgICAgbWFw
cGluZyA9IGFtZGdwdV92bV9ib19sb29rdXBfbWFwcGluZyh2bSwgaWJfYWRkciA+PiBQQUdFX1NI
SUZUKTsNCiAgICAgICAgICAgICAgICBpZiAoIXdwdHJfbWFwcGluZykgew0KICAgICAgICAgICAg
ICAgICAgICAgICAgcmV0ID0gLUVJTlZBTDsNCiAgICAgICAgICAgICAgICAgICAgICAgIGdvdG8g
ZmFpbF9sb2NrOyANCiAgICAgICAgICAgICAgICB9DQoNCiAgICAgICAgICAgICAgICBvYmogPSBt
YXBwaW5nLT5ib192YS0+YmFzZS5ibzsNCiAgICAgICAgICAgICAgICByZXQgPSBkcm1fZXhlY19s
b2NrX29iaigmZXhlYywgJm9iai0+dGJvLmJhc2UpOw0KICAgICAgICAgICAgICAgIGRybV9leGVj
X3JldHJ5X29uX2NvbnRlbnRpb24oJmV4ZWMpOw0KICAgICAgICAgICAgICAgIGlmICh1bmxpa2Vs
eShyZXQpKQ0KICAgICAgICAgICAgICAgICAgICAgICAgZ290byBmYWlsX2xvY2s7DQogICAgICAg
IH0NCg0KQFBpZXJyZS1FcmljIGNhbiB5b3UgdGFrZSBhIGxvb2sgYXQgdGhhdCBhcyB3ZWxsPw0K
DQpUaGFua3MgaW4gYWR2YW5jZSwNCkNocmlzdGlhbi4NCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

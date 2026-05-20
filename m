Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iN4PJVeUDWoMzwUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 13:00:39 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B3DCA58C07C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 13:00:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 761FF3F7F4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 11:00:37 +0000 (UTC)
Received: from CH4PR04CU002.outbound.protection.outlook.com (mail-northcentralusazon11013033.outbound.protection.outlook.com [40.107.201.33])
	by lists.linaro.org (Postfix) with ESMTPS id 7DF7D3F7F4
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 11:00:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="o6txoL/I";
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.201.33 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l4THSbgkMpYmJA1DvPx3LICOD1aqdcH4kdp7UyXcaHoZONJ+nXgmIoNVYa6WZ6sg8O8jqmge2TYJjVKqjBT60IAc/bb1K8UVzpMN2T7Lgcz6tPOq460TJV0GBR7UT1Wz/HkJk/HFx4m9LFu3PZWMegW5jp0wFEgsVSWAYU2EXePWmDH/GoHDLuMNbL8mh/C5glLu5MM7av7rkn76cFMVWGx++Zm+ll4lIHZU6vYjw1Nx5tkDsxJy8sE3i/ci+8YWuNM71lFcSZhMXu8NNnE1QmjX7i2pPI1NwHqJ/b2lt0IZwu9i2yOn+iydB/5B3Nvwr5jo0raVpftRgCB2ZU0mOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cfTfZjFO8mbhEiCu+l1R9CuG+d1AtNZs3+W5W4/KP6U=;
 b=jcAnLRS8pybm0mxahSzIF1eQnRwel155A+tHUoBrKzVljlEtrh/Jaq9b9jC0cBkP4cSc/5ZAiXBB00hB+xQrP1W9+l96X/FAMstpO5uhoc+LTJSKVAencQGKGIhs+Ym8Afx96qjrnzKTS0cCBqjwAP+YgvqIY5Xd5ybj7Otwbwt37IZ2ldWIRLlk0Zgye3dy9MZmNbCA0qng0mdnIgibZVWxe94bv/tt9t50H/THOSWfLXkNjJsBjdFQkN6E+btug9oMH1tzAp7ZMulPb/htmo7yWLAq7m9wIZTnjzCjQxigKM5IsbsMwwdMRv+WdwI9BXoUskzMI7dX1XSyWIkR2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cfTfZjFO8mbhEiCu+l1R9CuG+d1AtNZs3+W5W4/KP6U=;
 b=o6txoL/IJds3fbV0BvHLD2lyfpQl4nrDqdns5DveHhayUywHwM4cAMwBmYhOUBWfyBMRX6l4FPfz2ZPNNMDP7M3FAS3/qXqdNX2Kx28C0GoZ6Urzh2ASvuy/yeFlyRmnEoHwdkg2cOFkb6Bs/7GevUf096/r7Hz0BFdfARYA9K4=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DS0PR12MB8441.namprd12.prod.outlook.com (2603:10b6:8:123::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.22; Wed, 20 May
 2026 11:00:18 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0025.022; Wed, 20 May 2026
 11:00:18 +0000
Message-ID: <1832e5a8-db85-4b66-a5f0-08043c4aed54@amd.com>
Date: Wed, 20 May 2026 13:00:10 +0200
User-Agent: Mozilla Thunderbird
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 Deepanshu Kartikey <kartikey406@gmail.com>, airlied@redhat.com,
 kraxel@redhat.com, gurchetansingh@chromium.org, olvaffe@gmail.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 simona@ffwll.ch, sumit.semwal@linaro.org
References: <20260519082247.34470-1-kartikey406@gmail.com>
 <2e23513c-9d59-4891-acfe-9f1fbcbce778@amd.com>
 <f6bcef23-5510-4aad-bf6a-4e1ecfc8d474@collabora.com>
 <a0f2cfd5-d4df-4e50-a52b-d5befbc2e481@amd.com>
 <f37bdc63-3575-49e5-aa5b-7b93428b293d@collabora.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <f37bdc63-3575-49e5-aa5b-7b93428b293d@collabora.com>
X-ClientProxiedBy: MN2PR06CA0025.namprd06.prod.outlook.com
 (2603:10b6:208:23d::30) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DS0PR12MB8441:EE_
X-MS-Office365-Filtering-Correlation-Id: 22d59778-09b0-43bf-011b-08deb65efaa7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|7416014|376014|366016|1800799024|18002099003|11063799006|921020|4143699003|22082099003|56012099003|3023799007;
X-Microsoft-Antispam-Message-Info: 
	DYVAcUBO/AOfVREIe31HM3srn1blo7KOP4k0bIiuzW3m2vFQCiTqqGPMS87xJkmZURPReydk89CTyTGX2ZFCmHRGOfWmS9B7TLCyV/ezg3FdDIj6ZtUS01IrQZhgM4jjRxu3w2dfbLi0m/pylDDKlaSVKXFdKXycWxf7NIg6tYengY21mPvA/1xHbENUfVibKfEY4yn4439yjidnEg/Z42teS20LQDt4ouOerPEd+YOAKyHnK8wHLpGxdUDsg7JIbUAu5UXxilkLWLreVATgPiGYfUkj6D0RBDPdBqfuTsGRq8h6evMPdFAkIihUJwzC5q4RvNqFCncdtLsL6i9JflynG3noMhESv2i6YDmu4ubKF3mJSXHTk7xjgkYiE8ajgpeHI5cpCODPQTu93SU1rA3i0hhynJPT6SVIFnRQId1hfGGXReNhlZS+NTTkHCbgU3CpLWU2hfcWjDIm1FxSxjqFsqQ0g+vet+u2V9gZYaJfSzogm03OCnZd6Guyuv/8lJJA+4vMizAGbMWWtvb9jAF48GxJb9hZuxjiySBbxXYOyLAsoAi0EusekRPMGBcQaY+VieOhclQmjuRtA53/R6pCUt/oYW4bsR7u3KKZB9RKB5Qky94sBrpROxAuu0cca0IWtBIPA2f/RnKp0zX6pUrK8gU0vvoNdX6y6YD/QwjSFQaHj9HDJ6eRPumshxJgUomle9QTCxYc42rdeGT9xNaqm7442UxLDO6Z7q/KzV0=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(366016)(1800799024)(18002099003)(11063799006)(921020)(4143699003)(22082099003)(56012099003)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MEFtK3FkMmRpMm0vRWpiTm1GTWpFVEFXeXlLSnMrYXZPV3hTSkc5dGhYc2F4?=
 =?utf-8?B?c0NiOFVoNTJuQnJnVU9xd1FaeERGRHQzeDBoSHNNbGE4TFZaKzY3bkpmbkx4?=
 =?utf-8?B?R3ozMEJucU9PdkQySTdPQWM1WlVvcG9obGN5dzJnU1c1MitDZjNkcVVkeStO?=
 =?utf-8?B?UWxnV2JId2tCUlF0ZzFMdUx2RHFtN2t3cHBYdmduUnFSSng1YzhRY1dtMkNT?=
 =?utf-8?B?bFBScVlCaUhINEh1bkFmME0wNHRERnQxQW8yTFBKR2o1Rkg2ajc0Qjd2ei9q?=
 =?utf-8?B?Ym8xV29OTTlTU3ZPVzVPbVJYcWZPb1g1eCtOZ1lOUDM0QXozU2ZoNVpEZmtX?=
 =?utf-8?B?VWdBd3dDSFN3eXYrbDZVYzlMUmFCbXo1bHpvZzJvNU5kMFVzMW5nYUg3UEFj?=
 =?utf-8?B?Z081MDZxSU1OY2p5VkllaFozYkNDM2YxY2VNTm9lMVJYbVJHbHVTQWF3ZWVI?=
 =?utf-8?B?MnFqMGNTMVllUVJFZ0lxa2t6b0ZiWmZlTkJPQ0k2ZHgxUnUyOW96ZThmNHNz?=
 =?utf-8?B?US9KcEl0VzU2dzZBaGd1anAvL2pnYTFJMHZXT01FeXBOR2VnWi9jOENaTWZj?=
 =?utf-8?B?Z3pFd2s5SVhPbDRWWFF6emFiYTQ4QU9mRkRHdXhCTzZRdDFVNE1BSnRJM0FC?=
 =?utf-8?B?bkxjMFF1Mk05b0lvSWxkeWJvd2lwbDc3Z2x0Q3o0NHZhUXhLTDdBelFJcCta?=
 =?utf-8?B?K2p5dWdPbFB3YXNsSmlwTzNwaWhkei9ScFBQdkVaV3U1TTZReHNRZ2NTcnJD?=
 =?utf-8?B?Zm5nZTBkUEJ1M3ZzckhwUEhoL3llUmNnRnNEN1hwdC9hVkt6WEFyb0Nha0Fu?=
 =?utf-8?B?ZU12TjNvY016V1M4NVZPRXNOS3dEWEc5R2VkV0Y4Rzc4dnA5NzVsakg1MzVy?=
 =?utf-8?B?K09XemhWRDNCKzRSbUJNRE83K2RwVisybVgzM0d3OExnTXJCS3QxMGlWZmxn?=
 =?utf-8?B?Z1ZwMU9sODU1NVBMZDN6am1ERkNjWUEyY1Nxek0zVy84aEFmc29EaG9iY1Ba?=
 =?utf-8?B?ZFpaOWh5MzNGV1lUblpzOTJiNzNEZnd2dFgyR291OUJuSjdrU2N0c0c5bTFV?=
 =?utf-8?B?Y3FXc2Zyc2xuWFUvMTdyeUN2MzZBL3oyQnIwZkpWM0NVbGxhaU5hdHlYWEs4?=
 =?utf-8?B?eGtoWlRtK0oyUHUxK29XNXZzMmdCSU00RFlPdlZjRmVtaG43Yk52Q1ZNR1NZ?=
 =?utf-8?B?QnAzQmE1eFBCTkYvUnNvVDlnQTZmZVlSTEc1cm5uL3FBSCtSeUl2UDZNM2M2?=
 =?utf-8?B?dm02WElrR0FmMVhZOS91OVpjRm9PUEhIZ3l5eHd5TmxiKzRwUUVoMEdIL0hw?=
 =?utf-8?B?S1FJVk5MeXdNOG1IRkhTS1JZaVRnWnVXSXBGam13Z3ZDT1FEQ2h5Y2hlTThJ?=
 =?utf-8?B?c2UyZUpxZnV4ZXBSc0RSM3pBdVB4SWNza1JsYmxLTDZxNyt6aW1qUU1QSEJv?=
 =?utf-8?B?dVl1V2J3a3crblVtMW4yY1ZIeU9Jd25lZVdCS2pnRFJwV1hNcThzdWxVR0JP?=
 =?utf-8?B?dUM0NWVrOXZ1SHFTZ2E3TFpBZVAxUWhpN2xTSHk4TUxiZm5CZmF1Q1RiV1F1?=
 =?utf-8?B?NEZnb1dNKzFjZFdBY3JhT3ZWOXFOVFVWY3U0MWh5d3RMa1BHRGkwaGFpT2NY?=
 =?utf-8?B?V1dVcDh4SEdNbGVqNjR6dnk0RHFzclN0Zy9QL3M4SU4zVDk1V0YxZk1tc0pZ?=
 =?utf-8?B?YmE3bXdzMlN5RUVUTlNVdStaRVdqcnZodzUyZk1FR1BGQTg4aEFvaGR6MUJh?=
 =?utf-8?B?d0Y5Y05kb2kySXhiMnFkNDg4QkFnemUwTUxGMlZSVGI0d29ZZjA0QmxtOCtM?=
 =?utf-8?B?RkJHMk05enAwSW1UejF6QXErNEYrb2RObTZYUXMxYW5wMk0yaER0emwyL1pj?=
 =?utf-8?B?MEpPYjFvQ0ZZNElxbzBOR21GWWI0U0JHQXpXTDBnYTIxQUtUNi9jd3R3cDdM?=
 =?utf-8?B?bll4UDFRTm9CakV3MW10Ty9haUNxSVRCaHRvYTdVMDA5bXlBSFhxOG4xb3Aw?=
 =?utf-8?B?RklQUklsTnRVMmVkbmUxbTZLbk1ZQUM5RWx1RFQxSXZDOWVPS3B4dlpST3JK?=
 =?utf-8?B?b1VMaUoxQ05FaGpsT3VSNHlBaHZQb3BDZEJmMWMrZnRFYk9kTkxWMkRaTm4x?=
 =?utf-8?B?TWhUT09MWVVKbk1abDNkNlBSclFSRFdZYytOV1Q0c3kvMTJockNlcVVvVkVs?=
 =?utf-8?B?cHFkZndLNmpyeWEvVFU3N1BzczlpMUtHSDcvd3lnRFc5a2xiVDV2S3hndXJP?=
 =?utf-8?B?Y2tJaEo5QkNyamI3YW5aMWN0cmI3djBWTkw5ellkV25SMUdBeDFGYUJlQzZi?=
 =?utf-8?Q?fy3ybZw0NHjxYc+5CZ?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22d59778-09b0-43bf-011b-08deb65efaa7
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2026 11:00:18.2804
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8lrN/A3XyxzTpivp4xHUXTiAxoPEz5MElyS9qr/POnEAfoErPDe2Yf5lSiWzDq6n
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB8441
X-Spamd-Bar: --
Message-ID-Hash: E2MJQAJ34YPTZYISBTY3CBX3QEBDYDKQ
X-Message-ID-Hash: E2MJQAJ34YPTZYISBTY3CBX3QEBDYDKQ
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, virtualization@lists.linux.dev, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, syzbot+72bd3dd3a5d5f39a0271@syzkaller.appspotmail.com, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4] drm/virtio: use uninterruptible resv lock for plane updates
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/E2MJQAJ34YPTZYISBTY3CBX3QEBDYDKQ/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:mid]
X-Rspamd-Queue-Id: B3DCA58C07C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNS8yMC8yNiAxMDoxMiwgRG1pdHJ5IE9zaXBlbmtvIHdyb3RlOg0KPiBPbiA1LzIwLzI2IDEw
OjA1LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4gT24gNS8yMC8yNiAwODo1MCwgRG1pdHJ5
IE9zaXBlbmtvIHdyb3RlOg0KPj4+IE9uIDUvMTkvMjYgMTE6MjcsIENocmlzdGlhbiBLw7ZuaWcg
d3JvdGU6DQo+Pj4+IE9uIDUvMTkvMjYgMTA6MjIsIERlZXBhbnNodSBLYXJ0aWtleSB3cm90ZToN
Cj4+Pj4+IHZpcnRpb19ncHVfY3Vyc29yX3BsYW5lX3VwZGF0ZSgpIGFuZCB2aXJ0aW9fZ3B1X3Jl
c291cmNlX2ZsdXNoKCkgbG9jaw0KPj4+Pj4gdGhlIGZyYW1lYnVmZmVyIEJPJ3MgZG1hX3Jlc3Yg
dmlhIHZpcnRpb19ncHVfYXJyYXlfbG9ja19yZXN2KCkgYW5kDQo+Pj4+PiBpZ25vcmUgaXRzIHJl
dHVybiB2YWx1ZS4gVGhlIGZ1bmN0aW9uIGNhbiBmYWlsIHdpdGggLUVJTlRSIGZyb20NCj4+Pj4+
IGRtYV9yZXN2X2xvY2tfaW50ZXJydXB0aWJsZSgpIChzaWduYWwgZHVyaW5nIGxvY2sgd2FpdCkg
b3Igd2l0aA0KPj4+Pj4gLUVOT01FTSBmcm9tIGRtYV9yZXN2X3Jlc2VydmVfZmVuY2VzKCkgKGZl
bmNlIHNsb3QgYWxsb2NhdGlvbiksDQo+Pj4+PiBsZWF2aW5nIHRoZSByZXN2IGxvY2sgbm90IGhl
bGQuIFRoZSBxdWV1ZSBwYXRoIHRoZW4gd2Fsa3MgdGhlIG9iamVjdA0KPj4+Pj4gYXJyYXkgYW5k
IGNhbGxzIGRtYV9yZXN2X2FkZF9mZW5jZSgpLCB3aGljaCByZXF1aXJlcyB0aGUgbG9jayBoZWxk
Ow0KPj4+Pj4gd2l0aCBsb2NrZGVwIGVuYWJsZWQgdGhpcyB0cmlwcyBkbWFfcmVzdl9hc3NlcnRf
aGVsZCgpOg0KPj4+Pj4NCj4+Pj4+ICAgV0FSTklORzogZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2
LmM6Mjk2IGF0IGRtYV9yZXN2X2FkZF9mZW5jZSsweDcxZS8weDg0MA0KPj4+Pj4gICBDYWxsIFRy
YWNlOg0KPj4+Pj4gICAgdmlydGlvX2dwdV9hcnJheV9hZGRfZmVuY2UNCj4+Pj4+ICAgIHZpcnRp
b19ncHVfcXVldWVfY3RybF9zZ3MNCj4+Pj4+ICAgIHZpcnRpb19ncHVfcXVldWVfZmVuY2VkX2N0
cmxfYnVmZmVyDQo+Pj4+PiAgICB2aXJ0aW9fZ3B1X2N1cnNvcl9wbGFuZV91cGRhdGUNCj4+Pj4+
ICAgIGRybV9hdG9taWNfaGVscGVyX2NvbW1pdF9wbGFuZXMNCj4+Pj4+ICAgIGRybV9hdG9taWNf
aGVscGVyX2NvbW1pdF90YWlsDQo+Pj4+PiAgICBjb21taXRfdGFpbA0KPj4+Pj4gICAgZHJtX2F0
b21pY19oZWxwZXJfY29tbWl0DQo+Pj4+PiAgICBkcm1fYXRvbWljX2NvbW1pdA0KPj4+Pj4gICAg
ZHJtX2F0b21pY19oZWxwZXJfdXBkYXRlX3BsYW5lDQo+Pj4+PiAgICBfX3NldHBsYW5lX2F0b21p
Yw0KPj4+Pj4gICAgZHJtX21vZGVfY3Vyc29yX3VuaXZlcnNhbA0KPj4+Pj4gICAgZHJtX21vZGVf
Y3Vyc29yX2NvbW1vbg0KPj4+Pj4gICAgZHJtX21vZGVfY3Vyc29yX2lvY3RsDQo+Pj4+PiAgICBk
cm1faW9jdGwNCj4+Pj4+ICAgIF9feDY0X3N5c19pb2N0bA0KPj4+Pj4NCj4+Pj4+IEJleW9uZCB0
aGUgV0FSTiwgbXV0YXRpbmcgdGhlIGRtYV9yZXN2IGZlbmNlIGxpc3Qgd2l0aG91dCB0aGUgbG9j
aw0KPj4+Pj4gcmFjZXMgd2l0aCBjb25jdXJyZW50IHJlYWRlcnMvd3JpdGVycyBhbmQgY2FuIGNv
cnJ1cHQgdGhlIGxpc3QuDQo+Pj4+DQo+Pj4+IFdlbGwgd2h5IGFyZSB5b3UgdHJ5aW5nIHRvIGFk
ZCBhIGZlbmNlIG9uIGFuIGF0b21pYyBtb2RlIHNldCBpbiB0aGUgZmlyc3QgcGxhY2U/DQo+Pj4+
DQo+Pj4+IFRoYXQgaXMgdXN1YWxseSBhbiBpbGxlZ2FsIG9wZXJhdGlvbiBoZXJlLg0KPj4+IFRo
YXQgaXMgcHJlLWV4aXN0aW5nIGluIHRoZSBkcml2ZXIuIEl0IHBlcmZvcm1zIGRyYXcgb3BlcmF0
aW9uIGFuZCBpbg0KPj4+IHNvbWUgY2FzZXMgd2FpdHMgZm9yIHRoZSBjb21wbGV0aW9uIGR1cmlu
ZyBhdG9taWMuIFdoZXRoZXIgYWxsIHRoYXQNCj4+PiBzeW5jaW5nIGlzIGNvcnJlY3QgaXMgaGFy
ZCB0byBzYXkgaW1tZWRpYXRlbHkgYXMgc29tZSBvZiBpdCBtYXkgYmUNCj4+PiBoaXN0b3JpY2Fs
IGVkZ2UgY2FzZXMuDQo+Pg0KPj4gSSdtIG5vdCBub3Qgc28gZGVlcGx5IGluIHRoZSBhdG9taWMg
bW9kZSBzZXR0aW5nIHN0dWZmIGJ1dCBpdCBzdHJvbmdseSBzb3VuZHMgbGlrZSB0aGF0IHRoaXMg
aXMgc2VyaW91c2x5IGJyb2tlbi4NCj4+DQo+PiBUaGUgYmFja2dyb3VuZCBpcyB0aGF0IHRoZSBh
dG9taWMgbW9kZSBzZXQgZnJhbWV3b3JrIGFsbG93cyBhbiBvdXRwdXQgZG1hX2ZlbmNlIHdoaWNo
IGlzIHNpZ25hbGVkIHdoZW4gdGhlIGNvbW1pdCBpcyBmaW5pc2hlZC4NCj4+DQo+PiBTbyB3aGVu
IHlvdSBhbGxvY2F0ZSBhIGZlbmNlIHNsb3QgYW5kIGFkZCBhIG5ldyBmZW5jZSB0byBmaW5pc2gg
dGhlIGF0b21pYyBjb21taXQgaXQgaXMgdHJpdmlhbGx5IHBvc3NpYmxlIHRoYXQgdGhpcyBjeWNs
ZXMgYmFjayBhbmQgd2FpdHMgZm9yIHRoZSBhdG9taWMgY29tbWl0IHRvIGZpbmlzaC4gSW4gb3Ro
ZXIgd29yZHMgeW91IGhhdmUgYSBkZWFkbG9jay4NCj4+DQo+PiBZb3UgcHJvYmFibHkgbmVlZCBz
cGVjaWFsbHkgY3JhZnRlZCB1c2Vyc3BhY2Ugd2l0aCB0aGUgcmlnaHQgdGltaW5nIHRvIHRyaWdn
ZXIgdGhhdCwgYnV0IHN1Y2ggaXNzdWVzIGFyZSB1c3VhbGx5IGEgcmF0aGVyIGJpZyBuby1ubyBh
bmQgbmVlZCB0byBiZSBmaXhlZCBpbiB0aGUgbG9uZyB0ZXJtLg0KPj4NCj4+IFRyeSB0byBhZGQg
ZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGluZygpIGFuZCBkbWFfZmVuY2VfZW5kX3NpZ25hbGluZygp
IGFubm90YXRpb24gYW5kIGVuYWJsZSBsb2NrZGVwLCB0aGUgdG9vbCBzaG91bGQgYmUgYWJsZSB0
byBwb2ludCBvdXQgaWYgYW5kIHdoYXQgZXhhY3RseSBnb2VzIHdyb25nLg0KPj4NCj4+IFRoZSB1
c3VhbCBmaXggaXMgdG8gcHJlcGFyZSBldmVyeXRoaW5nIGJlZm9yZSBjb21taXRfdGFpbCBpcyBj
YWxsZWQgKGFsbG9jIG1lbW9yeSwgY3JlYXRlLCByZXNlcnZlIHNsb3QsIGFkZCBkbWFfZmVuY2Ug
ZXRjLi4uLikgYW5kIHRoZW4ganVzdCBzZW5kIG91dCB0aGUgcHJlcGFyZWQgY29tbWFuZHMgbGF0
ZXIgb24uDQo+IA0KPiBXZSB0cmllZCB3aXRoIG1vdmluZyByZXN2IGFsbG9jIHRvIHByZXBhcmVf
ZmIoKSBpbiBhIHByZXZpb3VzIHBhdGNoDQo+IHZlcnNpb24sIGl0IHJlc3VsdGVkIGluIGEgbm9u
LXRyaXZpYWwgZGVhZGxvY2tzLiBUaGUgZ29hbCBvZiB0aGlzIHBhdGNoDQo+IGlzIHRvIGZpeCBp
bW1lZGlhdGUgcHJvYmxlbSB3aXRoIGEgbWluaW1hbCBjb2RlIGNoYW5nZS4NCg0KWWVhaCwgdG90
YWxseSBmaW5lIHdpdGggbWUgdG8gZ2V0IHRoYXQgZml4ZWQgZmlyc3QuDQoNCj4gV2hhdCB5b3Un
cmUgc2F5aW5nIGlzIGNvcnJlY3QsIGJ1dCBpdCBtYXkgcmVxdWlyZSBhIHJhdGhlciBiaWcNCj4g
cmVmYWN0b3Jpbmcgb2YgdGhlIGNvZGUuIEluIGdlbmVyYWwsIGV2ZXJ5dGhpbmcgd29ya3Mgb2th
eSB0b2RheSwgc28gbm90DQo+IHJlYWxseSBhbiB1cmdlbnQgcHJvYmxlbS4NCg0KSXQncyBqdXN0
IGEgcG90ZW50aWFsIGlzc3VlIGFuZCB3aGVuIHRoZSBBSSBib3RzIGtlZXAgZXZvbHZpbmcgbGlr
ZSB0aGV5IGFscmVhZHkgZG8gdGhleSB3aWxsIHNvb25lciBvciBsYXRlciBzdGFydCB0byBwb2lu
dCB0aGF0IG91dCBhcyB3ZWxsLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==

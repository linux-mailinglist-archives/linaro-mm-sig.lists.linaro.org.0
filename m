Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cM5HOCQrC2oNEQUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 17:07:16 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D97C56F958
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 17:07:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 54EC2406B1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 15:07:15 +0000 (UTC)
Received: from BN8PR05CU002.outbound.protection.outlook.com (mail-eastus2azon11011065.outbound.protection.outlook.com [52.101.57.65])
	by lists.linaro.org (Postfix) with ESMTPS id BDC8E3FDB2
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 15:07:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="LO3L/M5y";
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.57.65 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l7wLLvV1Nk+d8AGiwb1lXu4o38lIcs2oYEHx6jXnpflz2iVwZ7IAag4YWN43ND5nSjkMtbHn8lr1QBZAxGVo4kqDKR1E1MA3exPAPUUZri5pbYBmU+GbrZ7ob6+8Qqe/LGPjvvEarNggsT75Ga/Tg6NquClwWuX8LV9eWYfY1kY5iuBV5nx0MfbToO1DQzYaxqAy7uP4FwaQC0hymE+X3SENhMqwHzMWFUPUUKRY2doGIadJgkTEoZ18JlpOlC93S5E32kmQwoxDlEqtdgAabIi6p4NuQ4Njg1PXm1qGfw3bYQGsDGZF4jcmNkUNxYa+0BsgjcPbt8LHCcNhLwrMTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sBAKV68rML2SzmDcrxEnmVCuZ2HbOmy+OYcYF9i09Hc=;
 b=FjPcbB9fXcPj2GxkpjxLaR0mB4sDoTF0lV9BpYUeiOFFJIA+qNuIN6CDE9UfalG64gTWbbIPLih6hD/zygKkhhP0tWxTBooUdOQC/h3Bph/bVzu1/GOKjdC2XVEqXNR0uJD2m6uOR7KCJfV8cJ+zzBdQTY9ohVtGGlK7p4Z7FCQCf6K6+MNPj2qTXUtV34pWhaFadCpjuYWCV56Qi02hVHPWIM4immwwUtJFDrYaHcX2B+JpDDTrhIZoqcaWgkKKRV8raHKvyne43FDAnDQxuXxYHjrDSbDT29m0C5avcpDzfb8N06uCt4/jX8x7U9xTCDAU8FLS/0aCyj3txQotFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sBAKV68rML2SzmDcrxEnmVCuZ2HbOmy+OYcYF9i09Hc=;
 b=LO3L/M5y7o9KBE+wk9qwDirKgnwdXD1caWyvSYUdKqp+oUzSu05WmEj1awoKxgpnDvTBCTcrFGPxRGibPE/oB7L8FutUa+imknNyMvGn6haQ53Uc0MsRc4HzIygDVNnsvYj5XfgGBTETGRqTKJXKDgtS7R0pRXy0ozoo6eloMbg=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SN7PR12MB8059.namprd12.prod.outlook.com (2603:10b6:806:32b::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.22; Mon, 18 May
 2026 15:06:59 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0025.022; Mon, 18 May 2026
 15:06:59 +0000
Message-ID: <15efb253-2171-4436-bf97-0b0d0408e7e2@amd.com>
Date: Mon, 18 May 2026 17:06:52 +0200
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>,
 Julian Orth <ju.orth@gmail.com>
References: <20260516-jorth-syncobj-v1-0-88ede9d98a81@gmail.com>
 <c6c91de9-a34b-4b50-a3c1-d42bf7631f8e@amd.com>
 <CAHijbEUzWZC4GAMU6YGV42gOYkrQaMZZPiwS4Erb4H1J-fh_8Q@mail.gmail.com>
 <69dcbcc1-da58-4d34-bfb0-5c8d33b75d59@amd.com>
 <1162f62e-9c65-446b-9788-bb289a202e6e@mailbox.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <1162f62e-9c65-446b-9788-bb289a202e6e@mailbox.org>
X-ClientProxiedBy: MN2PR06CA0018.namprd06.prod.outlook.com
 (2603:10b6:208:23d::23) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SN7PR12MB8059:EE_
X-MS-Office365-Filtering-Correlation-Id: fd318ded-88c6-442f-3fad-08deb4ef1bad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|376014|7416014|1800799024|18002099003|11063799003|4143699003|56012099003|22082099003|3023799003;
X-Microsoft-Antispam-Message-Info: 
	deFyHXmC38/j1yuK0aViM4+abTpaeAv10g4yS2ccKfi4qIeNj/EQmQbiOxP/2EfBK6WpnF23s+06ErrUGSKWoBu9HqTEyJRESFkkONlY/jSlkMvYqSlVyV5fRROHaYojBoYpd1QCjM9QNuUrFUW7Dn6CTUr2wn14NtbSNZN01yNascduTnFZAXuPez6uwqiFA9DswN2c03MX9dCh6HKKim3zt2SCNAPduijwE3XjNjr2Q5Es+Q0iCw9ufnlmVu47JxHigU64Q6AFqdBuNJ8gUTWy9kzeQBm2td+R89H5LuC/XEUk95LEBAQhn7d0utdbvGrhJmVuq8rhrvGRRP6wPDXBPCKmcB6eiNmi+sUSAmzueudnWA0Q5ePc5mYy59V/o/sQ2wbZQ8S2GnXiHNdFUhHEpDH3ZF3MEHr/8TP3C+E7P0z6Tf86Fxn0bZE28s1gfiWO43mhx+NmifNYk957GuKvJIcHi26NHFVhEpw8NLHV7tYRCwfa/wPn9mIRZpXMRUDVzeHCAt/BS6uAOzAO/zXw0WdnA8lWt/AWIyZNoiE/ifs7uceVIOueGUqa/H5cxKy2sBdd7I1L0eVoKHtjG7UMk2zlGNTNvFOpvJV9GGM3i2pxftHDntEnNDLaoWYaw9qIIEgz+z6FA/jvQ1jLzXEN/onvckdrOu0gs8JwZhlfnr/lNOstENBMlWfa919u
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(1800799024)(18002099003)(11063799003)(4143699003)(56012099003)(22082099003)(3023799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RkpsaUNISExTWU5lNjA4OVJiWDNpbVloWXRmOVRGSVVUMFB4N3R2ZVRpY3M3?=
 =?utf-8?B?YkhIa0Z5OWJlelJrMllHRGxnSlBSMlc4QWJOeXpTd0F4Wm9xZkNVU3dKbmNM?=
 =?utf-8?B?TGNwMURacjZ4LzlBOFVEbERKQmY5cW1DOUttOWp1Z1Y3SWUwZkZNbW5scDBn?=
 =?utf-8?B?UThNeGcxSWd6VXNpYThHZ1A2SlJyMlRmR1ZqWFlMTmc0SjNNS2RvK0QyenBh?=
 =?utf-8?B?bFVEVnorZ0lTSDFiWFV2bkI2WW0wMUNiRVh4dEdOaVA1QmRhaUtsS3lvbzV0?=
 =?utf-8?B?VHF2Q2wyNGgzMzNoOWF5czlTOFUySEpIdVpnM3dYNzBIWjVrT054Qm5OSVlu?=
 =?utf-8?B?M1plNWc4Q3dldEZ6MEY2bHM2V1hQWk5vZit5SUt1S2U1ZzMyVm94ZHpIYnl0?=
 =?utf-8?B?dTYvN0JCL2dxMXRmV3ZWOXFmVXh2Y01LMzM2WjQ5OU52OXJpbHlXV2hFU1R1?=
 =?utf-8?B?akVKR1VPQXQ1YXN5WlFrTmUyQ0JVRkdDWTI5cVJxdW8rSFQvVGRZOHlQR1Qr?=
 =?utf-8?B?UUVCSTZXYmNkRUM5ZTJkc1VSa1dETEpLeXdZTWwzQTEweUpIcjVMbmhoWmZy?=
 =?utf-8?B?cHdMZ1AzaHRYNUx0L0Q1VlFsRm00V1JRQXdhbHIycDNWR3kvOCtJSzRHK2pI?=
 =?utf-8?B?RWovUjlOMFdqUFFJY09scjA4YXB6OXZVczJ6bkpvQ0FseTJyTTV0emI0UllB?=
 =?utf-8?B?b1dvV25mbEJlOTAxeXNITGFCL0w4MEN5Y3JKQlNiaGN2WW1VRUpNeDQvWVE5?=
 =?utf-8?B?eVFHdEZTd0dLaGRsY3FaMjQvdzFZditkd0ROSXh5cmZNTDlYZU5hQnJrUk1k?=
 =?utf-8?B?UnVXckloS3YyQ0NBM0R1Y3QyNjJEem85SmdGaGt3Nklmd3p6a1FUZEFYMEgz?=
 =?utf-8?B?THZhSEVPSmllSWFNTHNJbXBYSE5SY3RmS3FUcG9YcGdJTGNiU3MwcmRMRzZU?=
 =?utf-8?B?NHR1SWhHOGRVcEpqMFdaSEU3RjdGaTBqRnpkN1FwMHNEWDJyWTRqK0NRYWxl?=
 =?utf-8?B?V3JRT0dUNllVRzNFK2xPTGV6bVROQS82RnJ1bEtENEhrdUs4UWFjaVRRTEVC?=
 =?utf-8?B?NGl4ZDFsZk13SVhRb0g5K2FDaVBOV2ROOU9CRExDdGU2V0poRU90cmhPcFgv?=
 =?utf-8?B?TytWVDAzMm53UUFEQUYvZ0ovODJrMHl1YXg0ZjR2akZQZU1XTUlzRGRZcXNC?=
 =?utf-8?B?NGM0NitjakJZNEp0N2NKZ2ZVTHEyMU04MnpMS3NGUnJGMnpGQXdXekVCM2lK?=
 =?utf-8?B?K0RCUm5KcGdrc1NMTTdVUFZOMEZMaHY2SjNKd1RDQ1U3Y3RZSjQ2R2FMcjhk?=
 =?utf-8?B?Mno1UER5eUhZL3lYT2M5cDN3dFlIN0s3Uy84RXdGQ1N0OGdYa1RsZDNCcjZ4?=
 =?utf-8?B?ejZ4MzFWbmtqRm5WUFROcWlGc01QWFJwVVkwS1hTMHpCbkdkOENuUDgvVmsx?=
 =?utf-8?B?aFduNGg3ZFlJY0NuV0dpTlREVWVZUGdVcWpsSEVHRnJyMVNMU0Y2UjFWdFFK?=
 =?utf-8?B?Ny9NSGJkaWtBY2VXZEZXcGhLMnJJNUxjM0FwUEFTeHVvRkhyb05ZVVFHcGVC?=
 =?utf-8?B?Qnd3UFpVVVVDcFRydEkwajVpbFdSRlZiNGloSUlJMlRkUHNacVN3U2s4L1Ry?=
 =?utf-8?B?Zko3SFJTOU13UitVS3UrbDVVWXhmZk4zYS91UmxEb0dtRlZ5RDlsdkh3UlRW?=
 =?utf-8?B?ajkxRzJieUd5Q3pIS3pUM2FRSy9KaC83SmVxSjBGTTVWaFI1b3FLdTBVN2Fo?=
 =?utf-8?B?R1M5dk5FRUt5Q0JSeElYcTd3em8xMXlFc290ajV1bitqUXNQUVJBWE5GdTZy?=
 =?utf-8?B?VXVNZW9MY2JyYlB6dHZxNGRZRW1nSVN2Z3gyRno0aWdMTmgrZlNwbTBVY1ZY?=
 =?utf-8?B?YzdjUE9MMEg0K21QVHBKZFBVV3NrZnpnazVtcWVpSlB0eEZ4UnBudmNtcGU4?=
 =?utf-8?B?U0ZPYm53cU9JOE9TUnRkT1p3ekI2N1MxejZOaExnbnJkQjQwUWFTYloxS0JV?=
 =?utf-8?B?VzloUHorSVVNNmVJeFdtYzREM2h2L000MGMyOThpNy9kY1BOZlFWbWtMZmFX?=
 =?utf-8?B?bmdnVi9KMHhPU2t6L0NDWTIyY2Vod3pERGNBdmIxcXZjRHJnN2lNa0sydnBB?=
 =?utf-8?B?Q2pVQlR0TXV1T0l4WGhlc0VySDB6VFNKZ3NremZibDl6TnBpRWxIOVRjSytG?=
 =?utf-8?B?UU12YzRtTWhNVDlWMVgyZU82ZWZKOHErRFU2eVNzcURMSWMrWm9acDB5Syt3?=
 =?utf-8?B?TlVqMUtLKzNoeXNybmh6YUx4YmJIaDVDRll3NkxTeGhTUitoQkp0RmROcHR3?=
 =?utf-8?Q?/HEFmbS5jYNPkPEqGV?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd318ded-88c6-442f-3fad-08deb4ef1bad
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2026 15:06:58.9961
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oiRuQoDUwaEfV1oy5CCosYqHD0aJin7XzUSclP5RGd7fz7j+zadbS1naF01K4rjC
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB8059
X-Spamd-Bar: --
Message-ID-Hash: V7IQXQ2DVQEMHSK5ZD6FKU3SVBM2X3NK
X-Message-ID-Hash: V7IQXQ2DVQEMHSK5ZD6FKU3SVBM2X3NK
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 00/12] misc/syncobj: add /dev/syncobj device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/V7IQXQ2DVQEMHSK5ZD6FKU3SVBM2X3NK/>
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
	FREEMAIL_TO(0.00)[mailbox.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,lwn.net,linuxfoundation.org,arndb.de,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DKIM_TRACE(0.00)[amd.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:mid,amd.com:email,linaro.org:email]
X-Rspamd-Queue-Id: 6D97C56F958
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNS8xOC8yNiAxNjo1OSwgTWljaGVsIETDpG56ZXIgd3JvdGU6DQo+IE9uIDUvMTgvMjYgMTQ6
NDEsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+PiBPbiA1LzE4LzI2IDE0OjAyLCBKdWxpYW4g
T3J0aCB3cm90ZToNCj4+PiBPbiBNb24sIE1heSAxOCwgMjAyNiBhdCAxOjU44oCvUE0gQ2hyaXN0
aWFuIEvDtm5pZw0KPj4+IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPj4+PiBP
biA1LzE2LzI2IDEzOjA2LCBKdWxpYW4gT3J0aCB3cm90ZToNCj4+Pj4+IFRoaXMgc2VyaWVzIGFk
ZHMgYSBuZXcgZGV2aWNlIC9kZXYvc3luY29iaiB0aGF0IGNhbiBiZSB1c2VkIHRvIGNyZWF0ZQ0K
Pj4+Pj4gYW5kIG1hbmlwdWxhdGUgRFJNIHN5bmNvYmpzLiBQcmV2aW91c2x5LCB0aGVzZSBvcGVy
YXRpb25zIHJlcXVpcmVkIHRoZQ0KPj4+Pj4gdXNlIG9mIGEgRFJNIGRldmljZSBhbmQgdGhlIGRl
dmljZSBuZWVkZWQgdG8gc3VwcG9ydCB0aGUgRFJJVkVSX1NZTkNPQkoNCj4+Pj4+IGFuZCBEUklW
RVJfU1lOQ09CSl9USU1FTElORSBmZWF0dXJlcy4NCj4+Pj4+DQo+Pj4+PiBUaGVyZSBhcmUgc2V2
ZXJhbCBpc3N1ZXMgd2l0aCB0aGUgZXhpc3RpbmcgQVBJOg0KPj4+Pj4NCj4+Pj4+IC0gU3luY29i
anMgYXJlIHRoZSBvbmx5IGV4cGxpY2l0IHN5bmMgbWVjaGFuaXNtIGF2YWlsYWJsZSBvbiB3YXls
YW5kLg0KPj4+Pj4gICBNb3N0IGNvbXBvc2l0b3JzIGRvIG5vdCB1c2UgR1BVIHdhaXRzLiBJbnN0
ZWFkLCB0aGV5IHVzZSB0aGUNCj4+Pj4+ICAgRFJNX0lPQ1RMX1NZTkNPQkpfRVZFTlRGRCBpb2N0
bCB0byBwZXJmb3JtIGEgQ1BVIHdhaXQuIEJlaW5nIHRpZWQgdG8NCj4+Pj4+ICAgRFJNIGRldmlj
ZXMgbWVhbnMgdGhhdCBjb21wb3NpdG9ycyBjYW5ub3QgY29uc2lzdGVudGx5IG9mZmVyIHRoaXMN
Cj4+Pj4+ICAgZmVhdHVyZSBldmVuIHRob3VnaCBubyBkZXZpY2Utc3BlY2lmaWMgbG9naWMgaXMg
aW52b2x2ZWQuDQo+Pj4+DQo+Pj4+IFdlbGwgdGhlIGRybV9zeW5jb2JqIGlzIGEgY29udGFpbmVy
IGZvciBkZXZpY2Ugc3BlY2lmaWMgZG1hIGZlbmNlcy4NCj4+Pg0KPj4+IE5vdCBuZWNlc3Nhcmls
eS4gVGhlIERSTV9JT0NUTF9TWU5DT0JKX1RJTUVMSU5FX1NJR05BTCBpb2N0bCBhdHRhY2hlcw0K
Pj4+IHNvbWUga2luZCBvZiBkdW1teSBmZW5jZSB0aGF0IGlzIGFscmVhZHkgc2lnbmFsZWQuIEkg
ZG9uJ3QgYmVsaWV2ZQ0KPj4+IHRoaXMgaXMgZGV2aWNlIHNwZWNpZmljLiBUaGF0IGlzIGFsc28g
dGhlIHBhdGggdGhhdCBsbHZtcGlwZSB3b3VsZA0KPj4+IHVzZS4NCj4+DQo+PiBZZWFoIEkgZmVh
cmVkIHRoYXQuDQo+Pg0KPj4gVGhpcyBpcyB0aGUgd2FpdCBiZWZvcmUgc2lnbmFsIHBhdGggYW5k
IGlmIEknbSBub3QgY29tcGxldGVseSBtaXN0YWtlbiB0aGF0IG9uZSBpcyBub3Qgc3VwcG9ydGVk
IGJ5IGEgbG90IG9mIGNvbXBvc2l0b3JzLg0KPiANCj4gV2hlcmUgZGlkIHlvdSBnZXQgdGhhdCBp
bXByZXNzaW9uIGZyb20/DQoNCktlcm5lbCBzcGFjZSBzZWVtcyB0byBub3QgaGFuZGxlIHRoYXQg
c3VwcG9ydCB2ZXJ5IHdlbGwuIFdlIGFkZGVkIHRoZSBmbGFnIGF0IHNvbWUgcG9pbnQgZm9yIGRy
aXZlcnMsIGJ1dCBvbmx5IGEgZnJhY3Rpb24gYWN0dWFsbHkgaW1wbGVtZW50ZWQgaXQuDQoNCkkg
d2Fzbid0IGF3YXJlIHRoYXQgdGhlIGdlbmVyYWwgZXZlbnRmZCBpbXBsZW1lbnRhdGlvbiBjYW4g
aGFuZGxlIGl0LCBidXQgeWVhaCB3aGVuIGNvbXBvc2l0b3JzIHVzZSB0aGF0IG9uZSB0aGVuIHRo
YXQgYWN0dWFsbHkgbWFrZXMgc2Vuc2UuDQoNCj4gSXQncyBhcmd1YWJseSB0aGUgbWFpbiBwb2lu
dCBvZiB0aGUgc3luY29iaiBXYXlsYW5kIHByb3RvY29sIGV4dGVuc2lvbiwgd2hpY2ggaXMgc3Vw
cG9ydGVkIGJ5IGFsbCBtYWpvciBjb21wb3NpdG9ycyAoZXhjZXB0IFdlc3Rvbiwgd2hlcmUgaXQn
cyBzdGlsbCBhIHBlbmRpbmcgTVIpLg0KPiANCj4gDQo+PiBTbyBhcyBmYXIgYXMgSSBjYW4gc2Vl
IHVzaW5nIGRybV9zeW5jb2JqIGZvciBzb2Z0d2FyZSByZW5kZXJpbmcgcmVhbGx5IGRvZXNuJ3Qg
bWFrZSBzZW5zZSwgZXZlbnRmZCBpcyBhIG11Y2ggYmV0dGVyIGZpdCBmb3IgdGhhdCB1c2UgY2Fz
ZS4NCj4gDQo+IEkgYWdyZWUgd2l0aCBKdWxpYW4ncyByZWJ1dHRhbCB0byB0aGF0Lg0KDQpUaGF0
IGV2ZW50ZmQgaXMgbWlzc2luZyB0aGUgdGltZWxpbmUgZnVuY3Rpb25hbGl0eSBpcyBhIHByZXR0
eSBnb29kIGFyZ3VtZW50LCBidXQgSSdtIHN0aWxsIG5vdCBzdXJlIGlmIHRoYXQganVzdGlmaWVz
IHRoZSBleHRyYSBrZXJuZWwgY29tcGxleGl0eS4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=

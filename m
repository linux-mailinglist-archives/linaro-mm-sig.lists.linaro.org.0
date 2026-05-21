Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OIzDMQD9DmrrDwYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 14:39:28 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE315A4F2F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 14:39:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A14DD40976
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 12:39:26 +0000 (UTC)
Received: from PH7PR06CU001.outbound.protection.outlook.com (mail-westus3azon11010029.outbound.protection.outlook.com [52.101.201.29])
	by lists.linaro.org (Postfix) with ESMTPS id D5E3E3F985
	for <linaro-mm-sig@lists.linaro.org>; Thu, 21 May 2026 12:39:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=SQskeNd7;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.201.29 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L6t5vPrYXpJF/lM74EyuvK8p5cSb64qMDb7rM1h+yOPA8OqE7nXOTmT9TajfZA1d4SrU7U3t1BlUePMmUfWfKqMJIzxOG+Ju0fwusVeFUTXO/xcBLhwubPL+s/GCATHoTcbe/8D0u27J+z2aKmnFuQI37MJEmHgPxA33bpghTWQ2/AqVh1TotDmRMBjMPsPPNwoByQF/vnbWREgsIFUh72G4wtkkZuNy5w3dR0O5Sfi+iHLKCwG+GZjvbPpRpshXnV2OSjwDIyJ1d5uwx0akyWmo9trRYJ5kAGZfA71wdrkK6oVeUT+xPpkAVa02WzYBCdN38MR10L/W84+9GZ0wOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qB7DG/Qoe6AxYIXu8MQKx/ll6syNJYZzRyJc7mjTS50=;
 b=PS3HYZXYJJZ3rw58oKN4Noew1bcWmQqVRHdnivUFtS8ZGs6frN6bGGRvr09ydmkZFvdJ5e6sGsoG062amivMH58e2pxOUSftPh9Dat0R48S9XBQwV51TrbNxjCiJ87PDl/Ga82c+hzxt/dFXW/XXFcGGEP3Vq7SndnfPk03cnsagh1Dy+TtcFdHJuAbHDH8qbXDbs3FC0+qvPDvCUUmAzmQ4br5tAXJKlAsQdHWjqxQ3nrpJqIBKe/+IOM/VVOxrW1WTNutI9nzlJDOG8vR3LjraCIpuNLWCJkR75bnkKDjZA8rDA2JnX9v3lMPU/feE/JAOT2h+fOLLMvtDm2jDpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qB7DG/Qoe6AxYIXu8MQKx/ll6syNJYZzRyJc7mjTS50=;
 b=SQskeNd7kr1W7bRvvVlK1uvrNZF4qTsqXlxwagPsmY8cE5gAAbdNBEsOHoqcadtRfFfKvbObl5TPfq3WSJL1Avqeia4Et08dp4Eq3+YRydpiTFZKNoyPrcijnBlhvpyOy42826+E75ZMwe6mHqRb2F+c4q6LOJ/Te0SUpuhgv+k=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SA5PPF916D632A9.namprd12.prod.outlook.com (2603:10b6:80f:fc04::8d6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Thu, 21 May
 2026 12:39:14 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0025.022; Thu, 21 May 2026
 12:39:13 +0000
Message-ID: <24b58d4c-7fa8-4bd4-a799-701f69cfbc06@amd.com>
Date: Thu, 21 May 2026 14:39:07 +0200
User-Agent: Mozilla Thunderbird
To: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>,
 amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
References: <20260520151741.50575-1-mikhail.v.gavrilov@gmail.com>
 <20260521104335.28978-1-mikhail.v.gavrilov@gmail.com>
 <20260521104335.28978-2-mikhail.v.gavrilov@gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260521104335.28978-2-mikhail.v.gavrilov@gmail.com>
X-ClientProxiedBy: FR2P281CA0029.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:14::16) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SA5PPF916D632A9:EE_
X-MS-Office365-Filtering-Correlation-Id: cc5ffeda-48d1-46b0-3c94-08deb735f6e6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|1800799024|376014|22082099003|56012099003|18002099003|4143699003|11063799006|3023799007|6133799003;
X-Microsoft-Antispam-Message-Info: 
	9G9gh9T4Cq47uC9APOgbqbMcND6VgSWsntlU999vAIUDtn5oRHRGRmlYGByyeh3ghcB04P/PY2BUDo5GtgxqhTTKS8mPujGiPV9bSwimT9tjNNYvceziSUk9NmNZWsxFKllm+bmFA8vbek0enCMAKbf6FyU5dSJPkIvsELlKqgr8Vb3S/QWWd3XHxHI9sfERCmfV1hd++PFg17WTgM/y6fJcmmZr2hEzekf33QhgefrZ4ZnAhEVOTN72hUhW6BAfJ+S/6LnJlGDIm8e38u+H6zisRXtIXFkQSGKxslvZ0jg6z4gUNp24+UlaeS8dJfoRi51Jyxavlc7egZiRL77SKHQPhHh/dYaS19sheRkHf1pXKzpBcfHQ5+DDPm9XFpkAOHimt3+ON+DL32eQ8K5AZrxOR5TcmZHnSnePxVXfjeq7KvDO/0kzkca71+goKCXv68OG8dB8teFT39/IU8W4q9Tnyi5c2NC8HEmtVmFUi5cAKHkhm+CG8Y9C+o1aMWR2p/Py/mDqgr+PFhlaeddLPcL5ahYRQlkuh9PSMLhb5+TehZsvPDD9c2p74bwnaatpfpOjDsZf7PiBlIw9ZP5IqhnWGJC2c1DPXCVPCPuWo7FhrsI2VgtWXfntKNCQRVIktrF5gV0wFed5BkPZQ2dDOoHc05O9wp1GeLXUX5hhtAej7wCj1xSVs84nC/65btMU
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(22082099003)(56012099003)(18002099003)(4143699003)(11063799006)(3023799007)(6133799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SVhOQ1BlK252andmYW1qN1dySVFqcE5DRXdpekxqMFA1T2ZSU1UxTlZHeUFs?=
 =?utf-8?B?N3ZrbUVlVHpNalF6ZzVjUzFnWWZjNzdBUFZJbm52WERDR1JOdW1MaVFaRnVv?=
 =?utf-8?B?N011dkxRNFZFMWRvckcxTG9UN21TbEJsVmR4VzErUDhzdGVMSW16Yk9ZcDZm?=
 =?utf-8?B?WmhPR0E5ZEZpRmlMZnhKOU9EY2kyM1FteUdOL0FDcUI5NTFxSlNFU296eUVL?=
 =?utf-8?B?OWtPcWlXdkpsWGlacmFweUZoZ040M2t2TXczUmZ0eXlWVmZsZHMvRk9rdG53?=
 =?utf-8?B?NUhwOXhOTm8zWndHdUY2dlhCWHhmcDk2ZDlIbVU5b1BlVDJEWldkdlJOL1cz?=
 =?utf-8?B?bmdrQ2doUyt1QVorMjZhMm9FUUFLbmNYZjBrbk9PMHFDQWRFOVB3cFVmQVE2?=
 =?utf-8?B?bzZCZnhZMFJ4R2g3T2hBT0JjdzRtclpLWUJYd3R4ZWhPcEhiTGVhRkhrNzNG?=
 =?utf-8?B?dHFCditjK0VZWkhPaHMxWmsvN2lsVk5qZXRlRFdSTExEcVY3K0F0MThSVTZm?=
 =?utf-8?B?UGxWNUFGbGkveC9RYUNROU01VU5LNS8zc00xek5sQmV5OSszR2QxNEl2L2c0?=
 =?utf-8?B?ZGdIaHltODh5U1hVa3JzQmRuVUcvdWkyLzVjWmw2MFVnV2c5UjlDc203cTNr?=
 =?utf-8?B?NDVkSHlsYUMzck1iSTBiRDkzQTgvL09vV3ZFd1pDZmx1YXRudVBCRjAzSGlH?=
 =?utf-8?B?YzVSTWpEcnF0dlVrVWJlc25tdGVxMnpyVTJyWUhCeDFjN2t3Wm5tamVRWUpY?=
 =?utf-8?B?VTltMlZHRWhtMTVNNmhvWnVDeHVUMGZpeTBXdlMwcDh4ZWZLdHNicnk4Zmoz?=
 =?utf-8?B?akVkU2NZTklvUHpVTTdJbm5IbEpPV20rOVJFV0dSSGJvbkdPTUZJeW1yaDNV?=
 =?utf-8?B?KzlINmgwa0tjYThVa1VvazZLK1NPYzdndGVYU0dOWHdrUmJjZmxjaEhVK0ho?=
 =?utf-8?B?NDZxMFBYMzZKUFE4WStEekRodTVReTdxMnlKOHhSR0Y2SVNncDdmbCtLQjJI?=
 =?utf-8?B?UG9DZlZVRlZ1N0Fic0l0ckFvTjNoSkJPMUEwNzlVdWxCOGRhSWZpN3lVWmho?=
 =?utf-8?B?R0F1Sllydkd1T0FlWWNiL1BGcDNCRVY5VDdpd0xCUEZYeGorRlNXbGxxY3NW?=
 =?utf-8?B?VmhzNHg3OWRoeHZHOEk5Z0haeGlhSkdSbkJrMlc4UzRPSHFjN3hOSmh2eWN4?=
 =?utf-8?B?L1ZNRks2VXNaOXhmQ0FBT0NmVDlJVjhFSE1BdWs0UUluOFhCS0lVc2VhT0F1?=
 =?utf-8?B?WnlVb3pwaTRDZSt6cXJpOEZVVEgrZVhiMnV2a21wMFJFT3o1UUhBNTJrckVs?=
 =?utf-8?B?ak03T2tYRGFpaEVzaGlZYW4rNEp5VFBXUnMxZG1IZUVDeExvdHlEOVdOUW90?=
 =?utf-8?B?YWxLTk9IMFQrQ3ZJUUdoYkVhZzlnZVgvUmlZTGc5cE9BZ1M0MEZnWnFVbXpT?=
 =?utf-8?B?VDJmTytYdW14aUhoZ012NXZhcTBSSjU0SURQdytUL3Q1Y1I0bWJOd1ZSTFRj?=
 =?utf-8?B?ZllwU3ZNRTBOZ2twYjNLZFhUOGpoK2NaME80R0JKWVFCVSt1cldrSXB6MER6?=
 =?utf-8?B?d2ZvbnJlZUN5dUJMV05IR3pId3pJRGNJdjlaN2l1Qnl5Z3NZdmRQTFphb1Vk?=
 =?utf-8?B?Si81Y3cvQnBCV1RDTmMwbGxvZkpiUGJBd2hRYjZHV2Y0N05aVUN3RkhpSC91?=
 =?utf-8?B?dmVzQXRIMDE5TVNGalZ3S3F3NG9icHVSQmgxLzc0Y3dsT2VMM0tLd3VHVGZR?=
 =?utf-8?B?SVFWVlo0Unl5eUwrN0pNRnlCMFJPbzRYZW45ZmFkaEtqNU1ZTjNXbnNGbnl5?=
 =?utf-8?B?QmpkZ1NHZWNZVGsrMVFhWU9yeVcza0g1ZDZyVlN2azJTQW4xYWY5Ly9id3Ny?=
 =?utf-8?B?K05mdGZDVTI4TFJvNnYvOEZnYVEyZS9la1NCNjZtdG9kVWluT2FJUXNvelhN?=
 =?utf-8?B?cnlreVRBNDkxa0tVR1pGOUUvT3AwU0gxM09rZTlHRUlzM2ZjajZjaGF5SDM0?=
 =?utf-8?B?clE0THlXdmxUM0lHc1cvVTRkWEFyYVNFaXVKMkRmaFNEcmNIaWhFdlFmWkJV?=
 =?utf-8?B?bEZmUEVoOTNqemZxYXhmY0ZqUVFrUkJZNXduOXkybDRNRUIwMVNKN1BoOGxR?=
 =?utf-8?B?T2U1ZzVWZ0FpNmV1NXp1d3hPWWJYOGpQOW5pbEl3RS9WM2I4bmdTamU4bXFm?=
 =?utf-8?B?d094NlltenZ1L2hvT1hnYWsrQjlSdEQ5WmdBZFJzM0h2MmJoc0djUEFDWTUz?=
 =?utf-8?B?VWpMUk84NkhhaHo4NGc3NndMSkxJREhnRkZNU2JJY1RwYm5QVERhOVlyNER3?=
 =?utf-8?Q?wMTycSXD5dJui3XH6T?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc5ffeda-48d1-46b0-3c94-08deb735f6e6
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2026 12:39:13.8207
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G8y2f64Sk/eaXA8zxfuLIo1cvfU2D1Vkz1BeEa4yyxD76zrdU+udMQZN4t1OrPNS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA5PPF916D632A9
X-Spamd-Bar: -----
Message-ID-Hash: YEVUUFKEJWHXY2CEUZ2KROFDLE67H2BW
X-Message-ID-Hash: YEVUUFKEJWHXY2CEUZ2KROFDLE67H2BW
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 1/2] drm/amdgpu: convert amdgpu_vm_lock_by_pasid() to drm_exec
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YEVUUFKEJWHXY2CEUZ2KROFDLE67H2BW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [4.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,lists.freedesktop.org,vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:mid,amd.com:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: 4BE315A4F2F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNS8yMS8yNiAxMjo0MywgTWlraGFpbCBHYXZyaWxvdiB3cm90ZToNCj4gYW1kZ3B1X3ZtX2xv
Y2tfYnlfcGFzaWQoKSBsb29rcyB1cCBhIFZNIGJ5IFBBU0lEIGFuZCByZXNlcnZlcyBpdHMgcm9v
dA0KPiBQRCB3aXRoIGEgYmFyZSBhbWRncHVfYm9fcmVzZXJ2ZSgpLCByZXR1cm5pbmcgdGhlIHN0
aWxsLXJlc2VydmVkIHJvb3QgdG8NCj4gdGhlIGNhbGxlci4gQSBjYWxsZXIgdGhhdCB0aGVuIG5l
ZWRzIHRvIHJlc2VydmUgZnVydGhlciBCT3MgKGZvciBleGFtcGxlDQo+IHRoZSBkZXZjb3JlZHVt
cCBJQiBkdW1wKSBlbmRzIHVwIG5lc3RpbmcgcmVzZXJ2YXRpb25fd3dfY2xhc3NfbXV0ZXgNCj4g
YWNxdWlyZXMgd2l0aG91dCBhIHd3X2FjcXVpcmVfY3R4LCB3aGljaCBsb2NrZGVwIGZsYWdzIGFz
IHJlY3Vyc2l2ZQ0KPiBsb2NraW5nLg0KPiANCj4gQ29udmVydCB0aGUgaGVscGVyIHRvIHRha2Ug
YSBkcm1fZXhlYyBjb250ZXh0IGFuZCBsb2NrIHRoZSByb290IFBEIHdpdGgNCj4gZHJtX2V4ZWNf
bG9ja19vYmooKS4gQ2FsbGVycyBub3cgcnVuIGl0IGluc2lkZSBhDQo+IGRybV9leGVjX3VudGls
X2FsbF9sb2NrZWQoKSBsb29wIGFuZCBjYW4gbG9jayBhZGRpdGlvbmFsIEJPcyBpbiB0aGUgc2Ft
ZQ0KPiB3dyB0aWNrZXQsIHNvIHRoZXJlIGlzIG5vIG5lc3RlZCB3d19tdXRleCBhY3F1aXJlLg0K
PiANCj4gVGhlIGRybV9leGVjIGNvbnRleHQgaG9sZHMgaXRzIG93biByZWZlcmVuY2Ugb24gdGhl
IGxvY2tlZCByb290IEJPLCBzbw0KPiB0aGUgaGVscGVyIG5vIGxvbmdlciBoYW5kcyBhIHJvb3Qg
cmVmZXJlbmNlIGJhY2sgdG8gdGhlIGNhbGxlcjogdGhlDQo+IHJvb3Qgb3V0cHV0IHBhcmFtZXRl
ciBpcyBkcm9wcGVkLCBhbmQgdGhlIHRyYW5zaWVudCByZWZlcmVuY2UgdGFrZW4NCj4gYWNyb3Nz
IHRoZSBQQVNJRCBsb29rdXAgaXMgcmVsZWFzZWQgYmVmb3JlIHJldHVybmluZy4NCj4gDQo+IFRo
ZSBvbmx5IGV4aXN0aW5nIGNhbGxlciwgYW1kZ3B1X3ZtX2hhbmRsZV9mYXVsdCgpLCBpcyB1cGRh
dGVkDQo+IGFjY29yZGluZ2x5LiBJdHMgaXNfY29tcHV0ZV9jb250ZXh0IHBhdGgsIHdoaWNoIHBy
ZXZpb3VzbHkgZHJvcHBlZCB0aGUNCj4gcm9vdCByZXNlcnZhdGlvbiBhcm91bmQgc3ZtX3Jhbmdl
X3Jlc3RvcmVfcGFnZXMoKSBhbmQgcmUtdG9vayBpdCwgbm93DQo+IGZpbmFsaXNlcyB0aGUgZHJt
X2V4ZWMgY29udGV4dCBhbmQgcmUtaW5pdGlhbGlzZXMgYSBmcmVzaCBvbmU7IGJlaGF2aW91cg0K
PiBpcyBvdGhlcndpc2UgdW5jaGFuZ2VkLg0KPiANCj4gTm8gZnVuY3Rpb25hbCBjaGFuZ2UgaW50
ZW5kZWQgZm9yIHRoZSBwYWdlLWZhdWx0IHBhdGguDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBNaWto
YWlsIEdhdnJpbG92IDxtaWtoYWlsLnYuZ2F2cmlsb3ZAZ21haWwuY29tPg0KPiAtLS0NCj4gIGRy
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV92bS5jIHwgOTEgKysrKysrKysrKysrKysr
Ky0tLS0tLS0tLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV92bS5oIHwg
IDIgKy0NCj4gIDIgZmlsZXMgY2hhbmdlZCwgNTggaW5zZXJ0aW9ucygrKSwgMzUgZGVsZXRpb25z
KC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1
X3ZtLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdm0uYw0KPiBpbmRleCA5
YmE5ZGUxNmEyN2EuLjU5MTk4MDkwNzIxMSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X3ZtLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvYW1kZ3B1X3ZtLmMNCj4gQEAgLTI5NTAsNDcgKzI5NTAsNTYgQEAgaW50IGFtZGdwdV92bV9p
b2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLCBzdHJ1Y3QgZHJtX2ZpbGUg
KmZpbHApDQo+ICB9DQo+ICANCj4gIC8qKg0KPiAtICogYW1kZ3B1X3ZtX2xvY2tfYnlfcGFzaWQg
LSByZXR1cm4gYW4gYW1kZ3B1X3ZtIGFuZCBpdHMgcm9vdCBibyBmcm9tIGEgcGFzaWQsIGlmIHBv
c3NpYmxlLg0KPiArICogYW1kZ3B1X3ZtX2xvY2tfYnlfcGFzaWQgLSBsb29rIHVwIGEgVk0gYnkg
UEFTSUQgYW5kIGxvY2sgaXRzIHJvb3QgUEQNCj4gICAqIEBhZGV2OiBhbWRncHUgZGV2aWNlIHBv
aW50ZXINCj4gLSAqIEByb290OiByb290IEJPIG9mIHRoZSBWTQ0KPiAgICogQHBhc2lkOiBQQVNJ
RCBvZiB0aGUgVk0NCj4gLSAqIFRoZSBjYWxsZXIgbmVlZHMgdG8gdW5yZXNlcnZlIGFuZCB1bnJl
ZiB0aGUgcm9vdCBibyBvbiBzdWNjZXNzLg0KPiArICogQGV4ZWM6IGRybV9leGVjIGNvbnRleHQg
dG8gbG9jayB0aGUgcm9vdCBQRCBpbg0KPiArICoNCj4gKyAqIE11c3QgYmUgY2FsbGVkIGZyb20g
d2l0aGluIGEgZHJtX2V4ZWNfdW50aWxfYWxsX2xvY2tlZCgpIGxvb3A7IHRoZSBjYWxsZXINCj4g
KyAqIHJ1bnMgZHJtX2V4ZWNfcmV0cnlfb25fY29udGVudGlvbigpIGFmdGVyd2FyZHMuIFRoZSBk
cm1fZXhlYyBjb250ZXh0IGhvbGRzDQo+ICsgKiBhIHJlZmVyZW5jZSBvbiB0aGUgcm9vdCBCTyB1
bnRpbCBpdCBpcyBmaW5hbGlzZWQuDQo+ICsgKg0KPiArICogUmV0dXJuOiB0aGUgVk0gb24gc3Vj
Y2Vzcywgb3IgTlVMTCBpZiB0aGUgUEFTSUQgaGFzIG5vIFZNLCB0aGUgVk0gaXMgYmVpbmcNCj4g
KyAqIHRvcm4gZG93biwgb3IgbG9ja2luZyB0aGUgcm9vdCBQRCBmYWlsZWQuDQo+ICAgKi8NCj4g
IHN0cnVjdCBhbWRncHVfdm0gKmFtZGdwdV92bV9sb2NrX2J5X3Bhc2lkKHN0cnVjdCBhbWRncHVf
ZGV2aWNlICphZGV2LA0KPiAtCQkJCQkgIHN0cnVjdCBhbWRncHVfYm8gKipyb290LCB1MzIgcGFz
aWQpDQo+ICsJCQkJCSAgdTMyIHBhc2lkLCBzdHJ1Y3QgZHJtX2V4ZWMgKmV4ZWMpDQo+ICB7DQo+
ICAJdW5zaWduZWQgbG9uZyBpcnFmbGFnczsNCj4gKwlzdHJ1Y3QgYW1kZ3B1X2JvICpyb290Ow0K
PiAgCXN0cnVjdCBhbWRncHVfdm0gKnZtOw0KPiAgCWludCByOw0KPiAgDQo+ICAJeGFfbG9ja19p
cnFzYXZlKCZhZGV2LT52bV9tYW5hZ2VyLnBhc2lkcywgaXJxZmxhZ3MpOw0KPiAgCXZtID0geGFf
bG9hZCgmYWRldi0+dm1fbWFuYWdlci5wYXNpZHMsIHBhc2lkKTsNCj4gLQkqcm9vdCA9IHZtID8g
YW1kZ3B1X2JvX3JlZih2bS0+cm9vdC5ibykgOiBOVUxMOw0KPiArCXJvb3QgPSB2bSA/IGFtZGdw
dV9ib19yZWYodm0tPnJvb3QuYm8pIDogTlVMTDsNCj4gIAl4YV91bmxvY2tfaXJxcmVzdG9yZSgm
YWRldi0+dm1fbWFuYWdlci5wYXNpZHMsIGlycWZsYWdzKTsNCj4gIA0KPiAtCWlmICghKnJvb3Qp
DQo+ICsJaWYgKCFyb290KQ0KPiAgCQlyZXR1cm4gTlVMTDsNCj4gIA0KPiAtCXIgPSBhbWRncHVf
Ym9fcmVzZXJ2ZSgqcm9vdCwgdHJ1ZSk7DQo+IC0JaWYgKHIpDQo+IC0JCWdvdG8gZXJyb3JfdW5y
ZWY7DQo+ICsJciA9IGRybV9leGVjX2xvY2tfb2JqKGV4ZWMsICZyb290LT50Ym8uYmFzZSk7DQo+
ICsJaWYgKHIpIHsNCj4gKwkJYW1kZ3B1X2JvX3VucmVmKCZyb290KTsNCj4gKwkJcmV0dXJuIE5V
TEw7DQo+ICsJfQ0KPiAgDQo+ICAJLyogRG91YmxlIGNoZWNrIHRoYXQgdGhlIFZNIHN0aWxsIGV4
aXN0cyAqLw0KPiAgCXhhX2xvY2tfaXJxc2F2ZSgmYWRldi0+dm1fbWFuYWdlci5wYXNpZHMsIGly
cWZsYWdzKTsNCj4gIAl2bSA9IHhhX2xvYWQoJmFkZXYtPnZtX21hbmFnZXIucGFzaWRzLCBwYXNp
ZCk7DQo+IC0JaWYgKHZtICYmIHZtLT5yb290LmJvICE9ICpyb290KQ0KPiArCWlmICh2bSAmJiB2
bS0+cm9vdC5ibyAhPSByb290KQ0KPiAgCQl2bSA9IE5VTEw7DQo+ICAJeGFfdW5sb2NrX2lycXJl
c3RvcmUoJmFkZXYtPnZtX21hbmFnZXIucGFzaWRzLCBpcnFmbGFncyk7DQo+IC0JaWYgKCF2bSkN
Cj4gLQkJZ290byBlcnJvcl91bmxvY2s7DQo+ICsJaWYgKCF2bSkgew0KPiArCQlkcm1fZXhlY191
bmxvY2tfb2JqKGV4ZWMsICZyb290LT50Ym8uYmFzZSk7DQo+ICsJCWFtZGdwdV9ib191bnJlZigm
cm9vdCk7DQo+ICsJCXJldHVybiBOVUxMOw0KPiArCX0NCj4gIA0KPiAtCXJldHVybiB2bTsNCj4g
LWVycm9yX3VubG9jazoNCj4gLQlhbWRncHVfYm9fdW5yZXNlcnZlKCpyb290KTsNCj4gKwkvKiBU
aGUgZHJtX2V4ZWMgY29udGV4dCBob2xkcyBpdHMgb3duIHJlZmVyZW5jZSBvbiB0aGUgcm9vdCBC
Ty4gKi8NCj4gKwlhbWRncHVfYm9fdW5yZWYoJnJvb3QpOw0KPiAgDQo+IC1lcnJvcl91bnJlZjoN
Cj4gLQlhbWRncHVfYm9fdW5yZWYocm9vdCk7DQo+IC0JcmV0dXJuIE5VTEw7DQo+ICsJcmV0dXJu
IHZtOw0KPiAgfQ0KPiAgDQo+ICAvKioNCj4gQEAgLTMwMTIsMzMgKzMwMjEsNDkgQEAgYm9vbCBh
bWRncHVfdm1faGFuZGxlX2ZhdWx0KHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LCB1MzIgcGFz
aWQsDQo+ICAJCQkgICAgdWludDY0X3QgdHMsIGJvb2wgd3JpdGVfZmF1bHQpDQo+ICB7DQo+ICAJ
Ym9vbCBpc19jb21wdXRlX2NvbnRleHQgPSBmYWxzZTsNCj4gLQlzdHJ1Y3QgYW1kZ3B1X2JvICpy
b290Ow0KPiArCXN0cnVjdCBkcm1fZXhlYyBleGVjOw0KPiAgCXVpbnQ2NF90IHZhbHVlLCBmbGFn
czsNCj4gIAlzdHJ1Y3QgYW1kZ3B1X3ZtICp2bTsNCj4gIAlpbnQgcjsNCj4gIA0KPiAtCXZtID0g
YW1kZ3B1X3ZtX2xvY2tfYnlfcGFzaWQoYWRldiwgJnJvb3QsIHBhc2lkKTsNCj4gLQlpZiAoIXZt
KQ0KPiArCWRybV9leGVjX2luaXQoJmV4ZWMsIDAsIDApOw0KDQpNYWtlIHRoZSBsYXN0IHBhcmFt
ZXRlciAxIGhlcmUgc2luY2Ugd2UgYXJlIGV4cGVjdGluZyB0byBsb2NrIDEgb2JqZWN0Lg0KDQpO
b3QgYSBtdXN0IGhhdmUsIGl0IHdpbGwgd29yayB3aXRob3V0IGJ1dCBpdCBpcyBqdXN0IGEgbGl0
dGxlIGJpdCBtb3JlIG9wdGltYWwuDQoNCkFwYXJ0IGZyb20gdGhhdCBSZXZpZXdlZC1ieTogQ2hy
aXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPi4NCg0KVGhhbmtzLA0KQ2hy
aXN0aWFuLg0KDQo+ICsJZHJtX2V4ZWNfdW50aWxfYWxsX2xvY2tlZCgmZXhlYykgew0KPiArCQl2
bSA9IGFtZGdwdV92bV9sb2NrX2J5X3Bhc2lkKGFkZXYsIHBhc2lkLCAmZXhlYyk7DQo+ICsJCWRy
bV9leGVjX3JldHJ5X29uX2NvbnRlbnRpb24oJmV4ZWMpOw0KPiArCQlpZiAoIXZtKQ0KPiArCQkJ
YnJlYWs7DQo+ICsJfQ0KPiArCWlmICghdm0pIHsNCj4gKwkJZHJtX2V4ZWNfZmluaSgmZXhlYyk7
DQo+ICAJCXJldHVybiBmYWxzZTsNCj4gKwl9DQo+ICANCj4gIAlpc19jb21wdXRlX2NvbnRleHQg
PSB2bS0+aXNfY29tcHV0ZV9jb250ZXh0Ow0KPiAgDQo+ICAJaWYgKGlzX2NvbXB1dGVfY29udGV4
dCkgew0KPiAtCQkvKiBVbnJlc2VydmUgcm9vdCBzaW5jZSBzdm1fcmFuZ2VfcmVzdG9yZV9wYWdl
cyBtaWdodCB0cnkgdG8gcmVzZXJ2ZSBpdC4gKi8NCj4gLQkJLyogVE9ETzogcmV3b3JrIHN2bV9y
YW5nZV9yZXN0b3JlX3BhZ2VzIHNvIHRoYXQgdGhpcyBpc24ndCBuZWNlc3NhcnkuICovDQo+IC0J
CWFtZGdwdV9ib191bnJlc2VydmUocm9vdCk7DQo+ICsJCS8qIFJlbGVhc2UgdGhlIHJvb3QgUEQg
bG9jayBzaW5jZSBzdm1fcmFuZ2VfcmVzdG9yZV9wYWdlcw0KPiArCQkgKiBtaWdodCB0cnkgdG8g
dGFrZSBpdC4NCj4gKwkJICogVE9ETzogcmV3b3JrIHN2bV9yYW5nZV9yZXN0b3JlX3BhZ2VzIHNv
IHRoYXQgdGhpcyBpc24ndA0KPiArCQkgKiBuZWNlc3NhcnkuDQo+ICsJCSAqLw0KPiArCQlkcm1f
ZXhlY19maW5pKCZleGVjKTsNCj4gIA0KPiAgCQlpZiAoIXN2bV9yYW5nZV9yZXN0b3JlX3BhZ2Vz
KGFkZXYsIHBhc2lkLCB2bWlkLA0KPiAtCQkJCQkgICAgIG5vZGVfaWQsIGFkZHIgPj4gUEFHRV9T
SElGVCwgdHMsIHdyaXRlX2ZhdWx0KSkgew0KPiAtCQkJYW1kZ3B1X2JvX3VucmVmKCZyb290KTsN
Cj4gKwkJCQkJICAgICBub2RlX2lkLCBhZGRyID4+IFBBR0VfU0hJRlQsIHRzLCB3cml0ZV9mYXVs
dCkpDQo+ICAJCQlyZXR1cm4gdHJ1ZTsNCj4gLQkJfQ0KPiAtCQlhbWRncHVfYm9fdW5yZWYoJnJv
b3QpOw0KPiAgDQo+ICAJCS8qIFJlLWFjcXVpcmUgdGhlIFZNIGxvY2ssIGNvdWxkIGJlIHRoYXQg
dGhlIFZNIHdhcyBmcmVlZCBpbiBiZXR3ZWVuLiAqLw0KPiAtCQl2bSA9IGFtZGdwdV92bV9sb2Nr
X2J5X3Bhc2lkKGFkZXYsICZyb290LCBwYXNpZCk7DQo+IC0JCWlmICghdm0pDQo+ICsJCWRybV9l
eGVjX2luaXQoJmV4ZWMsIDAsIDApOw0KPiArCQlkcm1fZXhlY191bnRpbF9hbGxfbG9ja2VkKCZl
eGVjKSB7DQo+ICsJCQl2bSA9IGFtZGdwdV92bV9sb2NrX2J5X3Bhc2lkKGFkZXYsIHBhc2lkLCAm
ZXhlYyk7DQo+ICsJCQlkcm1fZXhlY19yZXRyeV9vbl9jb250ZW50aW9uKCZleGVjKTsNCj4gKwkJ
CWlmICghdm0pDQo+ICsJCQkJYnJlYWs7DQo+ICsJCX0NCj4gKwkJaWYgKCF2bSkgew0KPiArCQkJ
ZHJtX2V4ZWNfZmluaSgmZXhlYyk7DQo+ICAJCQlyZXR1cm4gZmFsc2U7DQo+ICsJCX0NCj4gIAl9
DQo+ICANCj4gIAlhZGRyIC89IEFNREdQVV9HUFVfUEFHRV9TSVpFOw0KPiBAQCAtMzA2Miw3ICsz
MDg3LDcgQEAgYm9vbCBhbWRncHVfdm1faGFuZGxlX2ZhdWx0KHN0cnVjdCBhbWRncHVfZGV2aWNl
ICphZGV2LCB1MzIgcGFzaWQsDQo+ICAJCXZhbHVlID0gMDsNCj4gIAl9DQo+ICANCj4gLQlyID0g
ZG1hX3Jlc3ZfcmVzZXJ2ZV9mZW5jZXMocm9vdC0+dGJvLmJhc2UucmVzdiwgMSk7DQo+ICsJciA9
IGRtYV9yZXN2X3Jlc2VydmVfZmVuY2VzKHZtLT5yb290LmJvLT50Ym8uYmFzZS5yZXN2LCAxKTsN
Cj4gIAlpZiAocikgew0KPiAgCQlwcl9kZWJ1ZygiZmFpbGVkICVkIHRvIHJlc2VydmUgZmVuY2Ug
c2xvdFxuIiwgcik7DQo+ICAJCWdvdG8gZXJyb3JfdW5sb2NrOw0KPiBAQCAtMzA3NiwxMiArMzEw
MSwxMCBAQCBib29sIGFtZGdwdV92bV9oYW5kbGVfZmF1bHQoc3RydWN0IGFtZGdwdV9kZXZpY2Ug
KmFkZXYsIHUzMiBwYXNpZCwNCj4gIAlyID0gYW1kZ3B1X3ZtX3VwZGF0ZV9wZGVzKGFkZXYsIHZt
LCB0cnVlKTsNCj4gIA0KPiAgZXJyb3JfdW5sb2NrOg0KPiAtCWFtZGdwdV9ib191bnJlc2VydmUo
cm9vdCk7DQo+ICsJZHJtX2V4ZWNfZmluaSgmZXhlYyk7DQo+ICAJaWYgKHIgPCAwKQ0KPiAgCQlk
ZXZfZXJyKGFkZXYtPmRldiwgIkNhbid0IGhhbmRsZSBwYWdlIGZhdWx0ICglZClcbiIsIHIpOw0K
PiAgDQo+IC0JYW1kZ3B1X2JvX3VucmVmKCZyb290KTsNCj4gLQ0KPiAgCXJldHVybiBmYWxzZTsN
Cj4gIH0NCj4gIA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1k
Z3B1X3ZtLmggYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdm0uaA0KPiBpbmRl
eCBkMDgzZDdhYWI3NWMuLjBjNmUzZTAzNjhjNyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3ZtLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X3ZtLmgNCj4gQEAgLTU5Myw3ICs1OTMsNyBAQCBib29sIGFtZGdwdV92bV9o
YW5kbGVfZmF1bHQoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsIHUzMiBwYXNpZCwNCj4gIAkJ
CSAgICBib29sIHdyaXRlX2ZhdWx0KTsNCj4gIA0KPiAgc3RydWN0IGFtZGdwdV92bSAqYW1kZ3B1
X3ZtX2xvY2tfYnlfcGFzaWQoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsDQo+IC0JCQkJCSAg
c3RydWN0IGFtZGdwdV9ibyAqKnJvb3QsIHUzMiBwYXNpZCk7DQo+ICsJCQkJCSAgdTMyIHBhc2lk
LCBzdHJ1Y3QgZHJtX2V4ZWMgKmV4ZWMpOw0KPiAgDQo+ICB2b2lkIGFtZGdwdV92bV9zZXRfdGFz
a19pbmZvKHN0cnVjdCBhbWRncHVfdm0gKnZtKTsNCj4gIA0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

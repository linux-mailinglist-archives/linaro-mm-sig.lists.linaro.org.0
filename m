Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ObQtA/UlPWqyxwgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 14:58:29 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F1166C5D3D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 14:58:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=amd.com header.s=selector1 header.b=ICJpzssW;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=amd.com (policy=quarantine);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7635340A3E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 12:58:27 +0000 (UTC)
Received: from PH0PR06CU001.outbound.protection.outlook.com (mail-westus3azon11011030.outbound.protection.outlook.com [40.107.208.30])
	by lists.linaro.org (Postfix) with ESMTPS id D3AEE3F99D
	for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Jun 2026 12:58:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HK9kJSSSpGG7TDCZjl6iNC3/W4NdvKHQSXSt3IarXTU0mI7T0Np4zt1iVmleK7WaJ8o4dww8CpyXhpnKpYudq884F/4yEiGV6atT0zjdOFQzMNd9nDv3knKiygSKF+mEyaedsOJ+Go6NuWQjqvAu+PoZkvfeY8hS5cTaxcF3bilMKSiHc0WGc94par7s6FMiC4jwftMH/KlVH4IOSP5N3a5IM1MuQoozeMOk1VyKgSm4cDQZ17zbGpbSal53dOs+gKWVEaUE6Gk4qpNAwbwuzSF58+ripbDziuBruTK5cIjmvcREYCiGLlhfz1znhaBFX2UVdiOt6gRug1qbPwk0yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uizVK4a1ukLloz8ocen0sOjHT0IbSw3jVdTC2OBwOLw=;
 b=i7jrI8IP1+2CuSLS+HhIJ7U6enGeWpT+plnWBEfeQT/7wSOU6421m7W0ouRgABCl6BPBfBwTJJtXzw9sr44/pQJK3M6crqrm2UECoC/GEx/MNFLLVaeG4SPlfkwu0+siovukgUxVF4Iaa+0ZSScagErRexZnH78TOOMDlbUZfC600IA0CB34Itn4Qv3DQ16qfQLJM9qwHcE4R8wQR3tmton3izw+LlnCg3lPcEkQ1WtW6IuLqhTM2ibPb++9lW4/1Oeoukg8oUERelNU3PvhSTiIjF7sUq/bieKNIA/iUnWNLU2iWgYzcXUItFVscdYaqbMlFUw2TVe/SxduupZceg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uizVK4a1ukLloz8ocen0sOjHT0IbSw3jVdTC2OBwOLw=;
 b=ICJpzssWZadU6IynMfQeZ1Nwc5KQEpfBmN5E3BGu21gOci83tYsW8EZ3a0h4vriJdkqQH6qTGPxVFcm6SmtrMO3UcIZiE7AKZ6OZ7x/Lp/PjOYe4nptHdOnwfzAjoVZCSRnDwZwuV6/i96xubsco316+QR0PCAfLk3SdVkecFMk=
Received: from SJ0PR12MB5673.namprd12.prod.outlook.com (2603:10b6:a03:42b::13)
 by BL4PR12MB9477.namprd12.prod.outlook.com (2603:10b6:208:58d::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.17; Thu, 25 Jun
 2026 12:58:13 +0000
Received: from SJ0PR12MB5673.namprd12.prod.outlook.com
 ([fe80::c3e5:48f8:beb6:ea68]) by SJ0PR12MB5673.namprd12.prod.outlook.com
 ([fe80::c3e5:48f8:beb6:ea68%5]) with mapi id 15.21.0159.007; Thu, 25 Jun 2026
 12:58:13 +0000
Message-ID: <91df07da-3938-4890-b120-e827873683b0@amd.com>
Date: Thu, 25 Jun 2026 14:58:08 +0200
User-Agent: Mozilla Thunderbird
To: Yousef Alhouseen <alhouseenyousef@gmail.com>,
 Gerd Hoffmann <kraxel@redhat.com>,
 Vivek Kasireddy <vivek.kasireddy@intel.com>,
 Sumit Semwal <sumit.semwal@linaro.org>
References: <20260625085735.4488-1-alhouseenyousef@gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260625085735.4488-1-alhouseenyousef@gmail.com>
X-ClientProxiedBy: FR4P281CA0351.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f4::14) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR12MB5673:EE_|BL4PR12MB9477:EE_
X-MS-Office365-Filtering-Correlation-Id: c1e62f9c-21ba-4aba-2595-08ded2b96a5f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|1800799024|23010399003|376014|18002099003|22082099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: 
	xH+cuD/zLa7jGHPcrulcgSHsaO9oe0AzM9C8Mkk66koyXKxbtvNlGiylopMNPwwdOdzpd6AG68dduwO+yN7wCV0x1H2g64EKHmR7rpyFqmSX/PJU0+xDoUanCYpTZert711ubcEd/Gt0jgXBvWAgN0i8YYvJkE+ptlDV9oEFTfhkFl+X7j2xVfWtFmnnqh1epTeLVHbPde4V4cXUAijqNK2phrXWRu+DkD8gruQ29oV9c9yKac0g0NjSWhHZqHiAUZueVkTtcGQmg+fGw0KthZ/0qh08up11uuPvCb2WXSP82IUyxsdVugHoY+1s71MudwmpePUY4IgesPbDxNNPylRtCxjQL2p/xOZtdZeGSrgtrOTWYQA3ibadjf8g2t1poFzq8cbatkPhwJ+YdTC8XgxUjyOselBloWQomU9Upz2UuRJ1t7zn+hfRv+vvlnkLOKU1IDkx85S7vMyV9nHlR8PRUddqj1fONmOCnOAmbeWKdBphX4NY2EwRbjcXXltArnfgMCyaI74Df3Ry7IS7BPc+HGJN71zq0ZmVsLXYJtGhkwnOfY4w4u0HZANn9/1kYWO1tZVtS70q46425rXbnceRDiJoWnGDqxQN2WktQs/js7YFJH4SFI6LEe1DHXxMKy7BtRfq621jbPbG2bQFb8Xit8YCVzuswNzMGqEYhbo=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR12MB5673.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(23010399003)(376014)(18002099003)(22082099003)(56012099006)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?elUrV1Q4aER5cFpwVWUydTZ2OGFLODFoc0NUU1BUWEFPWnBTOVFZSzBvWWt4?=
 =?utf-8?B?UlNNTm5Fc2tjTmx0ZEViMDY5blc4NDl5OUFOeXZkL0htODlHMTFhOUI4MnJ6?=
 =?utf-8?B?K253ZzlhRFRuTDlheHNJQVRjL2JtQ3FZWkhaUDFGZlFCb0dSSWxWS0xrV015?=
 =?utf-8?B?dUJkdTJ1R1dmZ0xKaUdBNWl0bk5kNXVpYS9XOUI2WTBEUVB4Q2RtbC85ZEpa?=
 =?utf-8?B?d0hIUitOREhEd3NrK2swaHZsNEp1ZFJuWGRJUmlOY0xxdU53aSs1SGZNeXlQ?=
 =?utf-8?B?ZVozUzlCcDVaRVd3L1YrcDFDUVZSdHVqbHdESjhBOGx2QzRZTnZSQkxRYjRB?=
 =?utf-8?B?K3BtNDc5SXphb3AzOEZ2T1F1OElORGt2QVhJempheUlrYzBjOWF5ZmFCZzMw?=
 =?utf-8?B?SWpza2tiL1dYc2JzNE5paTZmK2ZvM3NNcTE0OEV0ZC9kWmZiTk9ObHk2V0lj?=
 =?utf-8?B?TmpmQm1WY3RmNXB0ZUx5c0JJd0Y5b0srVVRCQ2ZxeG8xU1pWVFVTeTgzbjhh?=
 =?utf-8?B?VTd5cVFmOU5EaFdRNFBYb2lRM2ptYWExVDFOcTZaclRJVlk0UTJNMlh2Yzdy?=
 =?utf-8?B?VTRGZnl1NzlIOTZQS0sybWtGdXptdlkrcmtHQ1ZYUkh3dlQ0bmE5N0hYcThj?=
 =?utf-8?B?V2VwdkkzTUc4TGJrWHVPTEFBKzdOanVPTmpuS0crNUFTWjh3dENqdU5CUmMv?=
 =?utf-8?B?Z1hNbnQvR0tPZDU0RGFPUWROak5xUmtLem4rOTJ2aXBKdGRxQnhiYXVadlRM?=
 =?utf-8?B?S1BleDlGUXB4UlB4MVNIdUg4cnpCN24rY0dpZVpVY2lNR0VpdVJENVpwR0Vw?=
 =?utf-8?B?aGNHN01rT0dMT0k0NjhtRmt5aG1VQzJQdWFNSmwzQUxFZXNBT1JjS1k5bDBP?=
 =?utf-8?B?R2NadWJiQ0t5Q0hDdHp4ZjhtTVVGR21VUHpoOVVYT0NOYkF4Qmo3U29QS0lu?=
 =?utf-8?B?cVFyZER1WkwxOGQzdk43UC9mVWx4Z3U5dVNuRXQycGtvVDBQSm4xb0lFQ3Yz?=
 =?utf-8?B?c1RkSkI3ZmZWZjJITHFSUkdsWUZJTzZJMzlyWXFjWElJYTJ1UnQ5KzQ1TDFx?=
 =?utf-8?B?RkRFbndDa0htTkFkVWJuU2NnWFpncG9wcVVuNlptSGl3OWFhWTRCVVhpNFg1?=
 =?utf-8?B?elBVVlRZRmhaZkdWc1ZlYm1Ja0RCRHUzUEdLdzc5QmhHRFpydnp4VXZ6b2Vl?=
 =?utf-8?B?aytkTHFjRGk1WnJtaGpQWXRid1BqUkVDM0Z6aXBYOHZOWUMyU2I2N1Fua3JX?=
 =?utf-8?B?eEl0WlFBblFqZFl1UFp4L0RXVkVFZTJaU2ZidFBaMTBCN2t4akY4V2NTQXMz?=
 =?utf-8?B?OFBuZzM0OXlnVzV1Q0QvN2ZMUHV4ZGwvZnNFSElBbytQbzNodkpPMk5oQjdu?=
 =?utf-8?B?SmgraVVHV0hTOTl4ajk3a29UZnFzRDF5elExZVJWV2JYaVBkUGxGV3BMZDk2?=
 =?utf-8?B?UVl5Yy9PTHl3NVdZajJkNXJ2YWFkaWY4V0c4a2UvZ29DR1ZKYlZoTWNZR2lJ?=
 =?utf-8?B?NkNwNGcya3JwckxWUFNZWENVSFdCS0tRU0FlT2xMQ09pbU1hbzhXR0taNkhu?=
 =?utf-8?B?d05BZENXWEJaOWY4TktwVlR4bFVFcUhuQUVxc0tLQ1RZcURZMitRZGFYVzVq?=
 =?utf-8?B?TFRJbUI3dU5XNjBTbzZIL0JKekhPK295Q25wVGJlYytHb3RQOW1rNHg3eVl6?=
 =?utf-8?B?aGQ2M0lqbk1QbHY2YjVZanpXTnl5L2xQeHhmV2ZTMXdHa3pMbnltczkwM1dR?=
 =?utf-8?B?VXdac0QxWDByQkp3YllXcUpzTk40QmdpaXkrNlN5d2E5aHNnanRydTZ2TWZC?=
 =?utf-8?B?ZUMzZ3R0eUxKMnJZeitRYkc0OEJleHZpU2xXN05aK1FOOC8rL3RZeFpwQVJ3?=
 =?utf-8?B?bEVOazM3bEsyZHh0WmdFUXUxUXpVVHBFNCtZTHJIL3JRN2tMVkRYVHBjYVdC?=
 =?utf-8?B?SXY0M1dtcWtxSU5ITnloMHRJTys5ekwyMlRTNEtWYXMzcC9OVENJbGFpOWJx?=
 =?utf-8?B?dE1JMnhzZWlxUXdON3ZaME50ZVNTT1RWc3lMSnBoUWVuVjVOS1NDMlgrbzBj?=
 =?utf-8?B?ZFdZL3dRdnMxOUVEcHZ5cWRxdVRXenp5bUNwMHVJcGlkZDhjV29BVGJrOG1a?=
 =?utf-8?B?REREUTR3RVIrL01nM0UrWjUxY1Z0d2pMQ2Q1VWc5Vmw1NzNlRmlDZE81VjZS?=
 =?utf-8?B?elowWjd4UWRpSG92N0JMQ2UxeUpLcVU2TkVTWmFON28yeERNcTBBd3NxMTRw?=
 =?utf-8?B?RXl2RGRpaXEzMEFNY3VlZ3FhOUxoRWlLY29PZU1tZFdNV09WVHZRN1p0Uk1Y?=
 =?utf-8?Q?6oh8jGibsa8tr6onXu?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1e62f9c-21ba-4aba-2595-08ded2b96a5f
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2026 12:58:13.2231
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Du2t1hq7L+W/fbqqRK232Dy4Hy26wKmTm8Q6xTEjVyQXX7/TbXm70cQO8nOcTiQN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL4PR12MB9477
X-Spamd-Bar: -----
Message-ID-Hash: 3PFG6ULSASLPQ7VHZAGO5VOG7OEULMUV
X-Message-ID-Hash: 3PFG6ULSASLPQ7VHZAGO5VOG7OEULMUV
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: udmabuf: make list limit unsigned
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3PFG6ULSASLPQ7VHZAGO5VOG7OEULMUV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,redhat.com,intel.com,linaro.org];
	FORGED_SENDER(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:alhouseenyousef@gmail.com,m:kraxel@redhat.com,m:vivek.kasireddy@intel.com,m:sumit.semwal@linaro.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[amd.com:-];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,amd.com:mid,amd.com:from_mime,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7F1166C5D3D

T24gNi8yNS8yNiAxMDo1NywgWW91c2VmIEFsaG91c2VlbiB3cm90ZToNCj4gVURNQUJVRl9DUkVB
VEVfTElTVCB1c2VzIGxpc3RfbGltaXQgb25seSBhcyBhbiB1cHBlciBib3VuZCBmb3IgdGhlDQo+
IHVuc2lnbmVkIGVudHJ5IGNvdW50IHN1cHBsaWVkIGJ5IHVzZXJzcGFjZS4gTmVnYXRpdmUgdmFs
dWVzIGhhdmUgbm8NCj4gdXNlZnVsIG1lYW5pbmcgYW5kIGNvbXBsaWNhdGUgdGhlIGJvdW5kcyBj
aGVjay4NCj4gDQo+IE1ha2UgdGhlIG1vZHVsZSBwYXJhbWV0ZXIgdW5zaWduZWQgYW5kIGtlZXAg
dGhlIGNoZWNrZWQgYXJyYXkgY29weSBzbw0KPiBsYXJnZSBjb3VudHMgY2Fubm90IHdyYXAgdGhl
IGFsbG9jYXRpb24gc2l6ZSBiZWZvcmUgdWRtYWJ1Zl9jcmVhdGUoKQ0KPiB3YWxrcyB0aGUgY29w
aWVkIGxpc3QuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBZb3VzZWYgQWxob3VzZWVuIDxhbGhvdXNl
ZW55b3VzZWZAZ21haWwuY29tPg0KDQpMb29rcyBnb29kIHRvIG1lLCBidXQgc29tZWJvZHkgbW9y
ZSBmYW1pbGlhciB3aXRoIHVkbWFidWYgc2hvdWxkIHByb2JhYmx5IHRha2UgYW5vdGhlciBsb29r
Lg0KDQpBY2tlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
Pg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9kbWEtYnVmL3Vk
bWFidWYuYyB8IDggKysrLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyks
IDUgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL3VkbWFi
dWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMNCj4gaW5kZXggYjQwNzhlYzg0Li42MjAx
MTNkZjMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMNCj4gKysrIGIv
ZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYw0KPiBAQCAtMTYsOCArMTYsOCBAQA0KPiAgI2luY2x1
ZGUgPGxpbnV4L3ZtYWxsb2MuaD4NCj4gICNpbmNsdWRlIDxsaW51eC9pb3N5cy1tYXAuaD4NCj4g
IA0KPiAtc3RhdGljIGludCBsaXN0X2xpbWl0ID0gMTAyNDsNCj4gLW1vZHVsZV9wYXJhbShsaXN0
X2xpbWl0LCBpbnQsIDA2NDQpOw0KPiArc3RhdGljIHVpbnQgbGlzdF9saW1pdCA9IDEwMjQ7DQo+
ICttb2R1bGVfcGFyYW0obGlzdF9saW1pdCwgdWludCwgMDY0NCk7DQo+ICBNT0RVTEVfUEFSTV9E
RVNDKGxpc3RfbGltaXQsICJ1ZG1hYnVmX2NyZWF0ZV9saXN0LT5jb3VudCBsaW1pdC4gRGVmYXVs
dCBpcyAxMDI0LiIpOw0KPiAgDQo+ICBzdGF0aWMgaW50IHNpemVfbGltaXRfbWIgPSA2NDsNCj4g
QEAgLTQ2OSwxMiArNDY5LDEwIEBAIHN0YXRpYyBsb25nIHVkbWFidWZfaW9jdGxfY3JlYXRlX2xp
c3Qoc3RydWN0IGZpbGUgKmZpbHAsIHVuc2lnbmVkIGxvbmcgYXJnKQ0KPiAgCXN0cnVjdCB1ZG1h
YnVmX2NyZWF0ZV9saXN0IGhlYWQ7DQo+ICAJc3RydWN0IHVkbWFidWZfY3JlYXRlX2l0ZW0gKmxp
c3Q7DQo+ICAJaW50IHJldCA9IC1FSU5WQUw7DQo+IC0JaW50IGxpbWl0Ow0KPiAgDQo+ICAJaWYg
KGNvcHlfZnJvbV91c2VyKCZoZWFkLCAodm9pZCBfX3VzZXIgKilhcmcsIHNpemVvZihoZWFkKSkp
DQo+ICAJCXJldHVybiAtRUZBVUxUOw0KPiAtCWxpbWl0ID0gUkVBRF9PTkNFKGxpc3RfbGltaXQp
Ow0KPiAtCWlmICghaGVhZC5jb3VudCB8fCBsaW1pdCA8PSAwIHx8IGhlYWQuY291bnQgPiBsaW1p
dCkNCj4gKwlpZiAoIWhlYWQuY291bnQgfHwgaGVhZC5jb3VudCA+IFJFQURfT05DRShsaXN0X2xp
bWl0KSkNCj4gIAkJcmV0dXJuIC1FSU5WQUw7DQo+ICAJbGlzdCA9IG1lbWR1cF9hcnJheV91c2Vy
KCh2b2lkIF9fdXNlciAqKShhcmcgKyBzaXplb2YoaGVhZCkpLA0KPiAgCQkJCSBoZWFkLmNvdW50
LCBzaXplb2YoKmxpc3QpKTsNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1t
LXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NEjTB8ToM2pUIAYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2026 14:47:00 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 950646A026A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2026 14:46:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=amd.com header.s=selector1 header.b=FvesYwI4;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=amd.com (policy=quarantine);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 522EF40ABD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2026 12:46:58 +0000 (UTC)
Received: from MW6PR02CU001.outbound.protection.outlook.com (mail-westus2azon11012032.outbound.protection.outlook.com [52.101.48.32])
	by lists.linaro.org (Postfix) with ESMTPS id 06D903F7B1
	for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2026 12:46:48 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M5m6+OSBwjbpBFAW0IHxqgPcYxpd+n+t+SoixLUJx4+5WtiKsdg/WO4JYf+QanZwvFjFugzwvbPOMpkvSuFaVJCLdTmlvDlNYYcdxlsGk2+M5I67iBwSRHvio6owOufxGvOvtgiPxiVdQ5/e1LSQaPOJccJJOV3wXPfJVJAtq1Fc52yPVvuGFLWNoM8PtK+3waH7H7+dWaiCHkgnVAfdfCYL9sDd0yths24x0cmBh3bpbk12IAp8hQL6rRMvJljf7Wvhq1A99ihgO9yN7MiI3Uff8IUzbp1hqM2H8QkD2iMco/vOnSXCmgkF2uXqQ9BoeZMwLyGvM46hwYxY4ZFhFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+tAAA+icOayjJlB4yrsGjnCl1G2ulGPZBFiDhQ0XGwI=;
 b=H5LXovOWiGRkS1yGBPnAudDb+EeSE1872IE03Xm4lokxVIJTQiV5YL7tADHCNiS0SgnDSx/Fgc44nSoNMd0FDt2ovEK8q3nkU0sgD9/1+GrvpPjYbearDYLUCFi+/aj8kVi0hA/DZCJaPgmXfuZhSH/byQopSa0DLndNQuKCOS9RQEPf+06CgJdJS38bURxmOGWc39tREonWKHR4WMjTcgUe4CnPN/U1alAs2Cb7eA06Isxro9cJJgVkBvLCW4ly3QbH8/TGd9g7xSUXRx9FFehKfKdItsZYx/fg6e5xhLX6otelgiG12wUmzT++G01yijtGxe9dXc2V+/bZOfT9PA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+tAAA+icOayjJlB4yrsGjnCl1G2ulGPZBFiDhQ0XGwI=;
 b=FvesYwI4MTIzNfeiksexsUNYB6cmYE1u5VphBL7bcAYidmpR6NPKQWmeOjSjDBQB/izmH0JAr2TF6HewZe+GI62HAY+7crMpoInO4WtrDp282S2jzs2h4DCWhikRH6uKLYjLVXmcY5L8L/Bk4dOZxULwG83piiESPQ4vNYj+5Hc=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MW4PR12MB7483.namprd12.prod.outlook.com (2603:10b6:303:212::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.16; Thu, 18 Jun
 2026 12:46:45 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0113.015; Thu, 18 Jun 2026
 12:46:45 +0000
Message-ID: <099959fa-3a41-4166-8c10-4e5c2b9fdf19@amd.com>
Date: Thu, 18 Jun 2026 14:46:34 +0200
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
References: <20260618-linux-drm_crtc_fix-v1-1-801f29c9853d@linaro.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260618-linux-drm_crtc_fix-v1-1-801f29c9853d@linaro.org>
X-ClientProxiedBy: FR4P281CA0009.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:c8::11) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MW4PR12MB7483:EE_
X-MS-Office365-Filtering-Correlation-Id: 5627fb8f-1e99-429e-ac54-08decd37a6f9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|7416014|376014|366016|23010399003|1800799024|56012099006|11063799006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: 
	PbbQjyc7OUy2TpvM3ZHnW9YkazbvSTdXgl1c4BuV1jzmT8I8z+MCpY0ecP+0S4cxyOeoUikdpGCXGcuaVx1sUrZfFi0Ay15/ibdSD+//LiNaG5QA4QD5hOHGd7Tg0tRjDNooRzZlFk+rvs0R/MhIYlxc4qLumyBEdWjuBkSTzhBrQ3bhKJ34jHN1Hpgdq+AGHDiBTDfpUS6PsHLknonjyLILnBxBHLW8xYYUNprJxEe6ZFRDPlnohfWAkxmcMxGT1oQ4Ii/Q0e9j2xMJU0KiZn4Ev2i4BHReBIavvCYkwnHUz3pQC1tHeGJ4CkZWMIM7+7WhNb1n98K4utUOzZ7Xlda4BEddvxoe1xBBvOh1ofRaVo58AjneAA5oefQ4rxjjp3b6yY50hhmFaVor7A72qWfFYlqZb8gbU1e4H8XycP/vio3j3J9NL2JeB7XRhqErz5/EWgLSR7UMOtFRU43n2yEMf57ASBiZeirORjv3rdaZG1sMpsqxsPLAxgWOq6vGq1nq3P7SdduLoZ96IjUdoJ2/uKczW1HSVw7Lbecu+Ry6jLm1dmyW6M+U6CXYDiWHKlk0U8WL/ahI85chRls6jkZTeDp/EznzT/51fZB9PDBtUESo/cL2sI8I+nqmCHe7elqLzCUTKirUkt6xH7PpP/JgJcX6Ixjk7lZg508JEAvk73jjxbqtGKvKY4+yDRZI
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(366016)(23010399003)(1800799024)(56012099006)(11063799006)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VWZWd2wrdGNMM2FtSVdRa3lzeU81dkRFZjc3d3E4UGdWY1RZMHp4RDBTZUxF?=
 =?utf-8?B?aTZRcjQ2VHdNZUNCWUwralkvN1ZKTkRXalZ2YnIvR1hQTVN2bmsxeXdHb1pH?=
 =?utf-8?B?cGVqemt3Z1paUXJxYkl2WU9ySkxtNExvY2k4cEFPaFJuV0E1bHlmOGIweUxD?=
 =?utf-8?B?cUczdDVSZUZtS2M2UDJaL0s4OFl6RVJIT1MvWVFHUXhwVXBieVRwQUtJTi9H?=
 =?utf-8?B?MUZMK1Y2Sjg1VnNmcFQrZ1ovMnIwT0xTam1xaitLSjYzK0JPcWhabmV2b1Av?=
 =?utf-8?B?aE52elZnb1N1UU5DVUk0ZGprVVd4bCswa1g4bGl5MFJ0T3BOUU1DUzlWVStK?=
 =?utf-8?B?MWNNM0xXMFUyUElZTEkwVTludVhYTThkMGhUNVp0WkZvalgzb1J0Q3YvQStu?=
 =?utf-8?B?S2V0YWlBdzRLbWhyallaVm0rZ0FNYlNTOFdWcFJNS2hveDNvV0JxWFhCeUhu?=
 =?utf-8?B?cWlmRlVNekVseTdqR0RKN0t0STY0Smphc1dyRC9QOGZTMldqRjBaODhuYUM2?=
 =?utf-8?B?emNObkdOTDZPY3AvbWdaL0F2bFZ2d0l3ckZodG16dHN0UDNTb0pmNUlROTFH?=
 =?utf-8?B?MmY2TWlNWEtuK2NLQ25OVjJ1YzZ2TXErd1MwT0NrZkMzMGVIanRpb3czZGtS?=
 =?utf-8?B?SW9MQ0Z6dStzUVVmMDNjK0d3VjJkZlVXc0dsSFZjbHBINlFmSzRTTTZhS0s3?=
 =?utf-8?B?RnZDV2MwQTRlbjd6NmV1NjJVUWg1clRkWWR2SUkyWElQaUVmNWRTUzRBb2dG?=
 =?utf-8?B?N1l2eDFnZitmUWlxQ2N0TGdEQkVMVUUrRFdIbmV2VkwxSFFzczgwWFk3SUV1?=
 =?utf-8?B?NnpHQkJ0YTJhS1pmYklBcHhkSXJaM2x0QlIrNThwYWNHeVFEUXhKc2hHMTF4?=
 =?utf-8?B?S1NRalBDdXYxZlkzdXVHQnhKSlJ0Ynpvb3luY21yZGhqMDBCZ29vTHZuMUt6?=
 =?utf-8?B?SFRQTjN0M280WjFEYkt3OTZYUHRRUTd0UlVGcGFaZjhmWi9nZUZQaDB4eER5?=
 =?utf-8?B?K080VWcrTE5GM083bm9VeTNLUWJiZy9Sa0tkQ3lGQ24zWlBMeFJCamJHbmxR?=
 =?utf-8?B?VCt2S0ZTVi9WaW9LTEt1U0hPTzBtTUpqQm0rWWNRWUxYMjdMUmdxZE1RSTVZ?=
 =?utf-8?B?aVhYc0sxNHpkVWgrQ0hYbGw0bVFaYlhiWXZDTEhwMmd5bU9KVkhhQjM4L0I5?=
 =?utf-8?B?bExjN0l4a2hjUUZsbUp6Wi9qRm9lNTJvbzNYdGxIZXJEcXVWRkNPc3FYSFdm?=
 =?utf-8?B?dUhUSUFxVVpFRnYvNTJ6cXM1QjZrS3ZvcmliS2RXSCtxa2lDYkJkUThZWDNC?=
 =?utf-8?B?ODBCbVBVcTBkemhreHJjd2NJb3R1b0dWc3BZZUc4M3VDZVJLZ2tGZFZIazYz?=
 =?utf-8?B?UHFIcDJ1eGc5SHl6aEg5ZENIcitZQVNScS9xZ1JFeHkwblhvSEZTdVBqdUVz?=
 =?utf-8?B?Sk92d2U5TGZqRUk1akhMTmNEWTBKeW9GOThJWit3V1FEMzdEK0NTKzVGUEd3?=
 =?utf-8?B?cEF2MCtHanJoNTJiWGNiLzhMTm5aWTU4cWxmRTVrZTBKZXhMTnBuaEIrM1JJ?=
 =?utf-8?B?dXEzaVp4U2xFQk1WOUpLaW0yU1JmZXVlLzVyVE8rVUsrSExJYmVnRURldEJk?=
 =?utf-8?B?dnQwL2J5WEdkZ2lCa3BJeGxUYUh0bi9wWjRQTEhDRGlCWnByb1BkOUJ3UW1G?=
 =?utf-8?B?VGZOdElCNFJKRk80dXRUWG12NFBiNTRMM0k0dEFUSHlwQ3VYMnI0ZFpQUmFw?=
 =?utf-8?B?SVFxcTdUUjNjQUpLL0F5ZGlMdWhsc3VuanZtV1EzL3ZQNGpBY1lpYjdEaStO?=
 =?utf-8?B?dzMzVlBTUXlWN0ZqV2pWK2NZNW54MGFzUXlTZmFIUW1lazdXVjZjVitvU05P?=
 =?utf-8?B?VDkvVkR0c3pwdGNsSnlQVkhxR0k3VGw1Nmh4Kzg3Z0xNUmswRmFzUHdudXNQ?=
 =?utf-8?B?SUhZSHJKQjV0VnF0cjVuMHM5WElNaXlMRVNDVTgvT254c0w5KzJTTXRtSFVR?=
 =?utf-8?B?MGhEeDNnZXlaOXQwWUR5cEhqZitHWnE0N204dTVwZnIwVWNOZHFLekJDa05P?=
 =?utf-8?B?clpuY0VNOWdZOXZxZGptQW1HY2piYVZEblo4Z0xUZHdxQnJkdE0rZVkwWlR4?=
 =?utf-8?B?cmpGTmczTmMxVksva3MyT0JjaVNaUXJFU0p3ay9qeWtXKzNGc2VkWjFRRVZF?=
 =?utf-8?B?NlhuM1N4TUw1YWdLRDI2bU9SUnBEU3hObzVHTGFySm45TTd4blY4Y0ROME95?=
 =?utf-8?B?d2JBaVYvYnZpODJHMFBXSHFsZFZML2lTUFZ6MXY4b3QxUEcyK250ZnRSOXkz?=
 =?utf-8?Q?EWsI7/MpvbaknyHSNN?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5627fb8f-1e99-429e-ac54-08decd37a6f9
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2026 12:46:45.0625
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aPmza0eG8v3YWi/ckuyJ3+n1NHU7GjlSCt5FAuHCCZ6RU67f1bTRB0kxI6P16Y4W
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB7483
X-Spamd-Bar: -----
Message-ID-Hash: LP32MKKXISOHVUVLNX6S3F2TTCWKT4LF
X-Message-ID-Hash: LP32MKKXISOHVUVLNX6S3F2TTCWKT4LF
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, kernel-team@android.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: use correct callback in dma_fence_timeline_name()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LP32MKKXISOHVUVLNX6S3F2TTCWKT4LF/>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andre.draszik@linaro.org,m:sumit.semwal@linaro.org,m:tvrtko.ursulin@igalia.com,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:peter.griffin@linaro.org,m:tudor.ambarus@linaro.org,m:jyescas@google.com,m:kernel-team@android.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[amd.com:-];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:email,amd.com:mid,amd.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 950646A026A

T24gNi8xOC8yNiAxNDowMCwgQW5kcsOpIERyYXN6aWsgd3JvdGU6DQo+IGRtYV9mZW5jZV90aW1l
bGluZV9uYW1lKCkgaXMgYSB3cmFwcGVyIGFyb3VuZA0KPiBkbWFfZmVuY2Vfb3BzOjpnZXRfdGlt
ZWxpbmVfbmFtZSgpLiBTaW5jZSB0aGUgYmxhbWVkIGNvbW1pdCBiZWxvdywgaXQNCj4gY2FsbHMg
YW4gaW5jb3JyZWN0IGNhbGxiYWNrLg0KPiANCj4gVXBkYXRlIGl0IHRvIHJlc3RvcmUgZnVuY3Rp
b25hbGl0eSBieSBjYWxsaW5nIHRoZSBpbnRlbmRlZCBjYWxsYmFjay4NCj4gDQo+IEZpeGVzOiA2
MjkxODU0MmI3YmYgKCJkbWEtZmVuY2U6IEZpeCBzcGFyc2Ugd2FybmluZ3MgZHVlIF9fcmN1IGFu
bm90YXRpb25zIikNCj4gU2lnbmVkLW9mZi1ieTogQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6
aWtAbGluYXJvLm9yZz4NCg0KSSdtIGxpa2UgOTklIHN1cmUgd2UgaGFkIHRoYXQgYWxyZWFkeSBm
aXhlZCB3ZWVrcyBhZ28sIGJ1dCBzb21laG93IGl0IGxvb2tzIGxpa2UgdGhhdCB3YXMgbmV2ZXIg
bWVyZ2VkIHRvIGRybS1taXNjLWZpeGVzLg0KDQpBbnl3YXkgUmV2aWV3ZWQtYnk6IENocmlzdGlh
biBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMv
ZG1hLWJ1Zi9kbWEtZmVuY2UuYyB8IDIgKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtZmVuY2UuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPiBpbmRleCBiM2JmYTY5
NDNhOGUuLjUyOTJkNzE0NDE5YiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1m
ZW5jZS5jDQo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPiBAQCAtMTIwMiw3
ICsxMjAyLDcgQEAgY29uc3QgY2hhciBfX3JjdSAqZG1hX2ZlbmNlX3RpbWVsaW5lX25hbWUoc3Ry
dWN0IGRtYV9mZW5jZSAqZmVuY2UpDQo+ICAgICAgICAgLyogUkNVIHByb3RlY3Rpb24gaXMgcmVx
dWlyZWQgZm9yIHNhZmUgYWNjZXNzIHRvIHJldHVybmVkIHN0cmluZyAqLw0KPiAgICAgICAgIG9w
cyA9IHJjdV9kZXJlZmVyZW5jZShmZW5jZS0+b3BzKTsNCj4gICAgICAgICBpZiAoIWRtYV9mZW5j
ZV90ZXN0X3NpZ25hbGVkX2ZsYWcoZmVuY2UpKQ0KPiAtICAgICAgICAgICAgICAgcmV0dXJuIChj
b25zdCBjaGFyIF9fcmN1ICopb3BzLT5nZXRfZHJpdmVyX25hbWUoZmVuY2UpOw0KPiArICAgICAg
ICAgICAgICAgcmV0dXJuIChjb25zdCBjaGFyIF9fcmN1ICopb3BzLT5nZXRfdGltZWxpbmVfbmFt
ZShmZW5jZSk7DQo+ICAgICAgICAgZWxzZQ0KPiAgICAgICAgICAgICAgICAgcmV0dXJuIChjb25z
dCBjaGFyIF9fcmN1ICopInNpZ25hbGVkLXRpbWVsaW5lIjsNCj4gIH0NCj4gDQo+IC0tLQ0KPiBi
YXNlLWNvbW1pdDogZTJjYWUwMGMwNWQxOTY0OTFjMzE4MTk2NzkyMjk3ZjJkZmJhYTAyYw0KPiBj
aGFuZ2UtaWQ6IDIwMjYwNjE4LWxpbnV4LWRybV9jcnRjX2ZpeC0yNjc2NTVhMWM4OWYNCj4gDQo+
IEJlc3QgcmVnYXJkcywNCj4gLS0NCj4gQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGlu
YXJvLm9yZz4NCj4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWct
bGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

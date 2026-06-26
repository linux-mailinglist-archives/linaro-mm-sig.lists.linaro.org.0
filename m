Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9GASNAZ1PmrGGQkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Jun 2026 14:48:06 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4176CD228
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Jun 2026 14:48:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=amd.com header.s=selector1 header.b="QEsM/T5N";
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=amd.com (policy=quarantine);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6F38A43C5A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Jun 2026 12:48:05 +0000 (UTC)
Received: from PH7PR06CU001.outbound.protection.outlook.com (mail-westus3azon11010008.outbound.protection.outlook.com [52.101.201.8])
	by lists.linaro.org (Postfix) with ESMTPS id 958124098A
	for <linaro-mm-sig@lists.linaro.org>; Fri, 26 Jun 2026 12:47:54 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gfrh1rt5NtjOYn5ra0qo9ayqwGvMu6ty8ffz/QGWdytYFbCdAgy7EnXBqihYfrT8t9kel3Lu89ycYLF5fUXNTTql1kJyC6GXSE6xRMwXxOrF6jpqaw+o6PC9E1hs8v4MQSYT2nWfWoDuHqKskgEQ/dUaqA6xxynBgmHUk2GKU9TUcjuq+SKnBiJTHlFQF5TumXIeYjHpWd9YC5j3BRDbS3W83qLJ3lKosZClBkoT5VmvsAiPMMiW+ecKsjI7flIcQNWMFbUvcimDsDMmjHCOAeA8xASMXyQJoyoU/XZ/BANjceG6xPM9kTw/1tViMmHDSP535wjz+DGKY7MuQRdzuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z9AUdNGNKupZUUBrcI+nBGbrh6vdXHBFVgrpJjCDwCg=;
 b=j1MvD19mS7SlmJF/T+1CdhB3p/45gxmpd5fFnntcbbh0o8aeKY2rns1w458R9MFI3VbqSXXjNZNaKchU8D0O330+1nS8IXa/yQTo9HmluJUz2vjUcEDIoTfetYkHr42p2b/SIi9tGV1icB8KWMZiXJSeYnSBJ9JaDuxBLCsCUr9Dr2mjiRvSeowh71SAHsBCqo7wsKFqZykOzMISUBv4vs12Th//a+xGuM7KDlrspzKu5NmI3xis/chQLrSRAQ/pveVECx9w9XdignsozSCPEiiRW0h2tOi53VBQQPpqbsjEuxrIla6PAFYQECvLsidK8pf81QEbPgg2ap9CH5jrWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z9AUdNGNKupZUUBrcI+nBGbrh6vdXHBFVgrpJjCDwCg=;
 b=QEsM/T5NknEmWfFhKOv7OSBJ86r+EGIPujDOOVIEh1T3Xln/hdoexIKqY9xLtdtvrEUZoN76STCxQORY8DqCktyzSx59nPJoLnnaECCzDk9vl0NZ3R9ulgq60GMIKzZc8QFYLT1p3ucXGsRrIvzhFsIBnTGXCPmKT3nLSn2NN/I=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by IA1PR12MB8190.namprd12.prod.outlook.com (2603:10b6:208:3f2::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.17; Fri, 26 Jun
 2026 12:47:52 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0159.016; Fri, 26 Jun 2026
 12:47:52 +0000
Message-ID: <5180c887-c879-440f-a58b-1cad96b7abb1@amd.com>
Date: Fri, 26 Jun 2026 14:47:47 +0200
User-Agent: Mozilla Thunderbird
To: WenTao Liang <vulab@iscas.ac.cn>, sumit.semwal@linaro.org
References: <20260626122836.35856-1-vulab@iscas.ac.cn>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260626122836.35856-1-vulab@iscas.ac.cn>
X-ClientProxiedBy: BL1PR13CA0422.namprd13.prod.outlook.com
 (2603:10b6:208:2c3::7) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|IA1PR12MB8190:EE_
X-MS-Office365-Filtering-Correlation-Id: 0205992c-ea4e-4deb-9603-08ded38122a5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|23010399003|1800799024|366016|18002099003|22082099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: 
	r+a1zf7U/g2g2OmnsX4wwBE2n4Hc9NRTulSF5m5xCUJB7gF34TkRqX1W5PJDpDL1WU7sKHS3FTvRbI/RAOouAFQKwgSDdM74YvkML26omvCUr287CFUNUyOiEdeQHzfX2s+3/jNlVA3N+W7CCKTwhA4mXL1eSv6OwP8pRBH4FOxhUz/uT8pBvbO981fyZLvvBqk2PvbutHGxzxETdF3aDFh/oqRzuseoCcUCvRPXXRy3tCrRl0gFvBx4AYMpzBlXP6NW5o4c6dcIh6n1LGTpDfCywAXVrjsh2YFDN/TTMzqpzFfG0vX7LOEKZiAq5h16C/85z8o+RHE1Fg1Og5AsjKv+xuvxzauZ1IowOSMr7C+Lvo+qQzwUy8wpQADTRGhOZrNM8t/c/GhfyZ6H7xR2lxv/sva5cIVtNEryp+W4TKqbVt3/lmDFzPmq/DuUqD9KiQ5BupHPZRG1bTPw/k0/DCVO4/sHEM2HZNnvSLh3+uLJI+ok2+3FRsTqwfHqKQypbl9EM4CloAc6UkCip0EdgezefMrwsCQcUpKPhP47WiVPkI4Lb6CFuYBOj+mtcowsAY/l2iEzez8VV+HZN8SMz8YytmCq+e+bLXfyVG39+CSnQgYFb5Z5dgnv/f6VrOxOV1/eRXtsPRShCJwIy+uCwhy86SaeMxkFax6WBr5ItUM=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(23010399003)(1800799024)(366016)(18002099003)(22082099003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Vk41azdEUTFtRVJXNTZxTk5oZSsyNkdpWVF3aUZOTGtUQ0tyZDN3MUMvQkFB?=
 =?utf-8?B?WHZXalAvdlg0Nk9QNzZHYllwQldjMDBFNmdyTEdZYkJNUXZ4aDA2a0plblRF?=
 =?utf-8?B?SWlkbTUvR3lOVzdyZm8zZmIyUHZrOG9zYTBCL0tVaXRjTmgvSjEwaTB5alFw?=
 =?utf-8?B?M1B0c2NIQTdGUTJBaXlMOGVlWHd3NW4zYXgwTm1BbTRyc0VoNk0xeHZiQ29B?=
 =?utf-8?B?bTY3S09scGhaemZyM1A3aVVhWGJ2NzdDZXk1K1ZXYURKQk1aMEZhMHBkRDRo?=
 =?utf-8?B?WDU3M1YxRXFlYmJlR2YzcWhiQjFSdElLRVQwNE1aT0RLRk4ySTNGdWtDa01o?=
 =?utf-8?B?djBxamFnZXV4OS9VeUN3TXZzNWdMZndnZXRlR1NFMTQycWV4RERLSytmU0xM?=
 =?utf-8?B?QjJPUHN0eno1ZWVHRVdPSWpTalBFZHMycGowaHJFRHIyYkxxcS9SZGtDTmhK?=
 =?utf-8?B?dEEwK3kyZ29nTm1VdjZLTk5ncFpncXowZ013eHl2MTNSSU1YZHozNFF5MUpK?=
 =?utf-8?B?TUQvWVBwZVVHUkd1VklFdWpBbmdhR2lBaDRQQlluMUprSnc1b0NLbGhYeUhK?=
 =?utf-8?B?bmdsdXpTcEZId1FjZnMydGJKWjVKdFVhRXpyTExCQjZXSmovcFlkVmIxRzU1?=
 =?utf-8?B?bmdFSG5XdTV6cFRoYjZFUjgyejBPSXlTdUhqUUthMGhuTHlSS3ExVFpxNTNI?=
 =?utf-8?B?L2paOWYzUXp0OHpnMml1NGRsQkp5NkRsWlBUNHE0aEQzdElQYWlLeEl3ZEFq?=
 =?utf-8?B?NEo5MDlrcFVpWTNsWnFtNEpuWVZraXJpeGRYSEIxa1lHU3JKNFNDamt1d3Vp?=
 =?utf-8?B?a1NHM0x3enp3OEVEczBWbzMrQ1JOeHhpMEN6TGl0TklndmtVaVc3MHpFeVJx?=
 =?utf-8?B?eWFQZWRBbE8wNldnQXZoTlgyZitsNFYvVEprSHpjLzRkWDlQWS9QU3BDaFBo?=
 =?utf-8?B?T3R6QlJkNDBzWEMrdUZiOTA1WW1rNVRnRHhvN0dUdjF0RGVCaXowUXRnWVdF?=
 =?utf-8?B?N0JKNXAxeHlWNnVpSVl5QzQwUkRjaFZxV3lCTklKd2VvNFRRRkpIenBlQjJW?=
 =?utf-8?B?ekhZTzdFYkhOVUR6czhVT0RlRWlvalZMV0lod3FzV2pLdjQ3UGs4dUhudEdN?=
 =?utf-8?B?T2JEeURjSDdFM2VxOTdJcFdqUUhBUG5CQlAxR3Zmb1orbkpyWEQzcUhMQW5x?=
 =?utf-8?B?ZUtqWUV4a1dkMVNOTGNxNFRuc1N1Z2FIeDJBZVAvUmhzM2hRMC9MQ3BYQjBY?=
 =?utf-8?B?WUFTbmxtRGdJa0JGY3RrNVpiOVErZ3QvWisvNU9nY2Y0NEN6S05JRDFzeXox?=
 =?utf-8?B?d0dsdk9ubEg3SWsvMUFybEVXeHM2c0pzQ2FBeHFabmc5bGlCVmFPcHNPby92?=
 =?utf-8?B?ekN5T2FhUWJuRzdISml0RFNMbVVTNjlGSXo0d1VhaXUzYkdIQ1NMQWpWT01H?=
 =?utf-8?B?M1JOM2ZCY2JHM01MN1A2cWorWEQ4TXF1YllQc2JVYXVIc3ErZnVZcHN2L2lt?=
 =?utf-8?B?R2tiV2ZUNUZtc2M5c3N3N0J4Qm92LzhuUG4vbEFmejF1TncyTndLSFNqcXVO?=
 =?utf-8?B?b1NWTGVLbE9rRUJmRUZqQXluSEdWZy9pUU5BWCt3YndKSGVQNDI4bXBjdFpF?=
 =?utf-8?B?RTYvOUJ2dTNQaHgzbEtKNitabGgxUEYrSWYxbldScU54OC95YVFBdGtBSUJM?=
 =?utf-8?B?d1RhLzdXbWxJd1Z2cHY5cW5DZndRUGhvaDV3elFCcWR0c05kMm54NkxBb2xP?=
 =?utf-8?B?bWFOQjFLNTV0SUJMY2g4NHFTbU4zcFliRUJleEpFeFcyUEIzRUYxMnNYaEh4?=
 =?utf-8?B?bDZ2MnQrUmZJOEdZSFRzWXZtaldJMzM3MjFVZHF6UWV2ak9sWlJNS1pyR09y?=
 =?utf-8?B?Tm5ualdteS9PaWdXd1VHNEZ2QVdXMUlRbUJ0dkdJZnpxUEhrVHdMbnUwMnF1?=
 =?utf-8?B?aHlXWkZqS2NJakFIL3FTSGpDRFlDMEtveTE5SEp5Zm5PZFNpcXZVWmFiWmd5?=
 =?utf-8?B?ZzQrNk1yTWMyR2FacmpZSGxKNEVNM3UwWS9ucUIvV2ExWFcxREprbzcxNWQw?=
 =?utf-8?B?T1hKd3JtNy82SmQ1b1FJNzBiV3YzK3JBdTJLWEt4Ty9URGFRRlRuTzNRT1J5?=
 =?utf-8?B?cVpNbENLVmRWV1YxcElZdXljTm1kMWIvWnZOLzRRUHJLaTFCMzBnVFVkNk45?=
 =?utf-8?B?VENVcUdFQjFOWnlMV2NIYUZFc3hMR0cvQVdId2F4ZjNrQ3pNcnpPNkxvZjVC?=
 =?utf-8?B?WityK1VINUlBdWpLSnJkc2czS2hQQVN5NklPWkZjU0lkcUdpVklTT0NscGs4?=
 =?utf-8?Q?BeMVp4kIr1lpkTxYoD?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0205992c-ea4e-4deb-9603-08ded38122a5
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2026 12:47:52.0013
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jWwoNMEPf/qfC0KdJEV1qogXMRd4brK28gt64RcFe0u7J3kE9PC21ZK5yJTc+/8g
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB8190
X-Spamd-Bar: -----
Message-ID-Hash: DS37OEYOB73PKF2H4UDILDUBPFP7INLV
X-Message-ID-Hash: DS37OEYOB73PKF2H4UDILDUBPFP7INLV
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] fix: dma-buf: unwrap_merge_complex: dma_fence_get_stub reference leaked on all paths
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DS37OEYOB73PKF2H4UDILDUBPFP7INLV/>
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vulab@iscas.ac.cn,m:sumit.semwal@linaro.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
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
	RCPT_COUNT_SEVEN(0.00)[7];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[iscas.ac.cn:email,amd.com:email,amd.com:mid,amd.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5F4176CD228

T24gNi8yNi8yNiAxNDoyOCwgV2VuVGFvIExpYW5nIHdyb3RlOg0KPiBkbWFfZmVuY2VfZ2V0X3N0
dWIoKSBhY3F1aXJlcyBhbiBleHRyYSByZWZlcmVuY2Ugb24gdGhlIGdsb2JhbCBzdHViDQo+ICAg
ZmVuY2UsIGJ1dCB0aGlzIHJlZmVyZW5jZSBpcyBuZXZlciByZWxlYXNlZCBvbiBhbnkgZXhlY3V0
aW9uIHBhdGguIFRoZQ0KPiAgIHN0dWIgZmVuY2UgaXMgZmlsdGVyZWQgb3V0IGluc2lkZSBkbWFf
ZmVuY2VfdW53cmFwX21lcmdlIChhbHJlYWR5DQo+ICAgc2lnbmFsZWQpLCBzbyB0aGUgZXh0cmEg
cmVmZXJlbmNlIGlzIG5ldmVyIGNvbnN1bWVkLiBCb3RoIHN1Y2Nlc3MgYW5kDQo+ICAgZXJyb3Ig
cGF0aHMgZmFpbCB0byBjYWxsIGRtYV9mZW5jZV9wdXQgb24gdGhlIHN0dWIuDQo+IA0KPiBDYzog
c3RhYmxlQHZnZXIua2VybmVsLm9yZw0KPiBGaXhlczogMjQ1YTRhN2I1MzFjICgiZG1hLWJ1Zjog
Z2VuZXJhbGl6ZSBkbWFfZmVuY2UgdW53cmFwICYgbWVyZ2luZyB2MyIpDQoNCkp1c3QgZHJvcCB0
aGF0LCB0aGUgc3R1YiBmZW5jZSBpcyBhIGdsb2JhbCBkdW1teSBhbmQgbGVha2luZyByZWZlcmVu
Y2UgdG8gaXQgaXMgaGFybWxlc3MuDQoNCkJ1dCBqdXN0IGluIGNhc2Ugc29tZWJvZHkgdXNlcyB0
aGlzIGNvZGUgYXMgYmx1ZXByaW50IGZvciB0aGlzIG93biBpbXBsZW1lbnRhdGlvbiB3ZSBzaG91
bGQgcHJvYmFibHkgY2xlYW4gaXQgdXAuDQoNCj4gU2lnbmVkLW9mZi1ieTogV2VuVGFvIExpYW5n
IDx2dWxhYkBpc2Nhcy5hYy5jbj4NCg0KUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNo
cmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZG1hLWJ1Zi9zdC1k
bWEtZmVuY2UtdW53cmFwLmMgfCAxMSArKysrKysrLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDcg
aW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2RtYS1idWYvc3QtZG1hLWZlbmNlLXVud3JhcC5jIGIvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1m
ZW5jZS11bndyYXAuYw0KPiBpbmRleCA3MmNhNjMyZTM5ODEuLmI5ZWQ4NTU3MDIxMSAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS11bndyYXAuYw0KPiArKysgYi9k
cml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLXVud3JhcC5jDQo+IEBAIC00ODMsNyArNDgzLDcg
QEAgc3RhdGljIGludCB1bndyYXBfbWVyZ2Vfb3JkZXIodm9pZCAqYXJnKQ0KPiAgDQo+ICBzdGF0
aWMgaW50IHVud3JhcF9tZXJnZV9jb21wbGV4KHZvaWQgKmFyZykNCj4gIHsNCj4gLQlzdHJ1Y3Qg
ZG1hX2ZlbmNlICpmZW5jZSwgKmYxLCAqZjIsICpmMywgKmY0LCAqZjU7DQo+ICsJc3RydWN0IGRt
YV9mZW5jZSAqZmVuY2UsICpmMSwgKmYyLCAqZjMsICpmNCwgKmY1LCAqc3R1YjsNCj4gIAlzdHJ1
Y3QgZG1hX2ZlbmNlX3Vud3JhcCBpdGVyOw0KPiAgCWludCBlcnIgPSAtRU5PTUVNOw0KPiAgDQo+
IEBAIC01MDgsMTAgKzUwOCwxMSBAQCBzdGF0aWMgaW50IHVud3JhcF9tZXJnZV9jb21wbGV4KHZv
aWQgKmFyZykNCj4gIAlpZiAoIWY0KQ0KPiAgCQlnb3RvIGVycm9yX3B1dF9mMzsNCj4gIA0KPiAr
CXN0dWIgPSBkbWFfZmVuY2VfZ2V0X3N0dWIoKTsNCj4gIAkvKiBTaWduYWxlZCBmZW5jZXMgc2hv
dWxkIGJlIGZpbHRlcmVkLCB0aGUgdHdvIGFycmF5cyBtZXJnZWQuICovDQo+IC0JZjUgPSBkbWFf
ZmVuY2VfdW53cmFwX21lcmdlKGYzLCBmNCwgZG1hX2ZlbmNlX2dldF9zdHViKCkpOw0KPiArCWY1
ID0gZG1hX2ZlbmNlX3Vud3JhcF9tZXJnZShmMywgZjQsIHN0dWIpOw0KPiAgCWlmICghZjUpDQo+
IC0JCWdvdG8gZXJyb3JfcHV0X2Y0Ow0KPiArCQlnb3RvIGVycm9yX3B1dF9zdHViOw0KPiAgDQo+
ICAJZXJyID0gMDsNCj4gIAlkbWFfZmVuY2VfdW53cmFwX2Zvcl9lYWNoKGZlbmNlLCAmaXRlciwg
ZjUpIHsNCj4gQEAgLTUzMiw4ICs1MzMsMTAgQEAgc3RhdGljIGludCB1bndyYXBfbWVyZ2VfY29t
cGxleCh2b2lkICphcmcpDQo+ICAJCWVyciA9IC1FSU5WQUw7DQo+ICAJfQ0KPiAgDQo+ICsJZG1h
X2ZlbmNlX3B1dChzdHViKTsNCj4gIAlkbWFfZmVuY2VfcHV0KGY1KTsNCj4gLWVycm9yX3B1dF9m
NDoNCj4gK2Vycm9yX3B1dF9zdHViOg0KPiArCWRtYV9mZW5jZV9wdXQoc3R1Yik7DQo+ICAJZG1h
X2ZlbmNlX3B1dChmNCk7DQo+ICBlcnJvcl9wdXRfZjM6DQo+ICAJZG1hX2ZlbmNlX3B1dChmMyk7
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=

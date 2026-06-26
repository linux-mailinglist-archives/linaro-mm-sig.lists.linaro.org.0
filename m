Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2DIXJGVvPmo+GAkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Jun 2026 14:24:05 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E5D6CCF39
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Jun 2026 14:24:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=amd.com header.s=selector1 header.b=JGoZfS9w;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=amd.com (policy=quarantine);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 170AE43D23
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Jun 2026 12:24:04 +0000 (UTC)
Received: from BL0PR03CU003.outbound.protection.outlook.com (mail-eastusazon11012055.outbound.protection.outlook.com [52.101.53.55])
	by lists.linaro.org (Postfix) with ESMTPS id 7E4AF40AF7
	for <linaro-mm-sig@lists.linaro.org>; Fri, 26 Jun 2026 12:23:42 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tLbgm8gqsFNtidvPY9gzsU4h/yLYE5w5jySlPMbjPT0KIZPAkNaydzISsp5L7OMH0eYJaY47m4Jfh5kn3hcgM/KdGXSzkgxH+lWEiwfOwuhcsbbx50f8mdXcJxhNXquTbU08Wzz5Q+xwawwrK0yNF6aKyUhfN7hEYdjhv9ghSS/DmUoeABd4fMaIC0T4ofOkB+n6gOZDDgaOUtgK04uBdaj2MHfBaSvVL8Piq+XsLNzQsHt6j/9qnb7YDJcHQsoXWGHpTkBV2RRG4LVF3AcqulmTmG9ZDQwGt4HePGvq+61OZzGsG5ZxFY9BNdeTIcN4NkOalj0ToDSI4Ro+iTcVTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ae7JoDfAT4nZKqzKd5BpBO8QJ4B/Kb5cUylY7DAscVo=;
 b=Bi9PEcf3zyFKsKG3rQsOMsv8AjeJoxdYqPSvurBgFEQRobYO77HXwB3KXm2UO9LA0pvXjZToAEaqF3uEt+iTxqVHhplE80kzypCzj+5jPJJ0PXRjub03xbutBhx+Ebvtwt5AYySuNVw/KC6qVlG9z1OCiP5E4WAF9ty/l8eBpdzfI7Cct2nMThEeOeABvcM6aEfoQC1CwbOEmNRCjHWLXltr0FZ37qvPHvkSio0twqi+4mHCEBh7pen1BjHpZWi7n25yBzx1E2Z2SqJDfe8xPyjZPMNqnjVCA727C9So4+xMDGeO2pl3hKx3kBOVoitJR0nqsUpsbiczzoMNBBpqAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ae7JoDfAT4nZKqzKd5BpBO8QJ4B/Kb5cUylY7DAscVo=;
 b=JGoZfS9wjR4vW0bSvRO9YbbGP/7E9ISIIA7cIDez3sAZCCeUp7iYDjIh5uOooRaYeRt7qKVe+KMR8dSqab37/hLXaiGWZjjRDCf+LG4uChB5DQY38erE8DWlNoKNZJ+d8gqP9XuwZw6LoW5zSgfpGler/VqVDcH7qhj/7muq+MI=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MN2PR12MB4408.namprd12.prod.outlook.com (2603:10b6:208:26c::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.18; Fri, 26 Jun
 2026 12:23:40 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0159.016; Fri, 26 Jun 2026
 12:23:40 +0000
Message-ID: <dc2c1f29-5f1c-48fb-954e-46df677f35e6@amd.com>
Date: Fri, 26 Jun 2026 14:23:35 +0200
User-Agent: Mozilla Thunderbird
To: David Laight <david.laight.linux@gmail.com>
References: <20260624125242.11232-1-alhouseenyousef@gmail.com>
 <06bddfca-d868-4043-ac6f-28ca103fff02@amd.com>
 <20260626123139.7d6ec6ec@pumpkin>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260626123139.7d6ec6ec@pumpkin>
X-ClientProxiedBy: FR2P281CA0048.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:92::19) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MN2PR12MB4408:EE_
X-MS-Office365-Filtering-Correlation-Id: f98e3006-81ae-4b38-53e6-08ded37dc146
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|23010399003|1800799024|366016|376014|56012099006|4143699003|11063799006|22082099003|18002099003|3023799007;
X-Microsoft-Antispam-Message-Info: 
	34iFshEyTJxYTubFETIKZLtG3cyLO9AaBGioCOh3V9JKjTz1q5Qg5vpZ9bQlCJN3TD+6RC9xpH+cOGiDSzjzaLWwYLDqcJtthZT7PHALaSObz8aYlfPgY70QYuTMbTfnIvDP4n+JE2eYu75lf6mGF2lxa4mKYi6K5K/gmLItfslpzSe6+Onz39VqvhB/KS/z1IcBo1ItAK1V8L0JdERTtc6tzcaT8eXP7lxNQlFYJ0eJ4eKrOwd6xGNx0s11CzATppEfRfaq3/TLom3q7tl93yMxR3+bRg0NzHEJftlcgOPKD8U4NmzsTDlXhMBAejv5u1Qmn/6BKqy+nXb8zncb2KL1KMZgydZcQxKspNmCK/kOcNLsfh6MdwGBiiTuOF+T0Sa6MnhFyB2RO4IiNHdgZxUTTmOjCiAdYU+tku3Hqyl6fw9BQJKyEglN2n0bVRqSXaepS0G/iBYxW3q10RtfSH2G19HHU9s93aYMo2CmcrKv+ysMxSjvbEfXx5VNF3fwfeQ81BmwpuDIm3Ssi65zxuznxP4nDhKyC4u+1LugWxIyoAFfq7+bG+OgpMuXCntQXaGMzyL7v8Wo4ibU55Rv7Gjumtc4wKfqH4GPjE48S06OsFmDX12CaXjpHC8WIH4Z6meWH2gLw57XbYcU6KcLPddN1ewOm4PCqygaTvTtknM=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(1800799024)(366016)(376014)(56012099006)(4143699003)(11063799006)(22082099003)(18002099003)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SlNrek8rK2tnUndqOGhWdzBpcFJ4UkVwUFlYaFJXQkdhRGRHSWgyL293VUtx?=
 =?utf-8?B?M1hYbWtRWk1VZmxqVEFHbGxBaEdrUHBCZXBQVWhibTUvUnQ5V2ZOemNRaWU1?=
 =?utf-8?B?djZaSUpjQTNXbDVUemhNS1hscUplRVdzUWVhemZrRFYyY0RyUXdUdDNla3JY?=
 =?utf-8?B?WGJseDFyTDNveGkremx2bmYrRkgxOU9zeUVPc2NlY3A3aWs0em9UZGZOb1N3?=
 =?utf-8?B?KzA0cXk2dGQyQjZvZjJuM1M2S0RvNkgxRjROU0R3bVZqVTdvczRIVlBPMGxB?=
 =?utf-8?B?WVlFRlU0TjlNb1RuV0hrNWFzaDc0cHpKOFhlcFJ6QXdiM0lEdUs3ckE5TkJj?=
 =?utf-8?B?QVBYV2ltaFB3Y0JHMnpPMkhpVUNjOUlHTEh3VWZFSU5MSlBsN21hS0VOMnY1?=
 =?utf-8?B?MkZDQXVwczIzSG9aaHZxKzV1K2pwZzNHOEJVODF3VWdWN3dRR2o3SGl4NnVu?=
 =?utf-8?B?SWdJYjZuVEFyYU1yWHRnblgwMkx0aTBDRTFIQlBqdUdtY21iMXEveHhocXBJ?=
 =?utf-8?B?RmF5N0NmbjdJeHFNSjlCTHRRUmpyek9hclNtejFWYTEwNUVPZThWYjFLeEZL?=
 =?utf-8?B?MDROU1ltMVJUekFudWpwbVY1K0NSZUJZNE1ZbVhuNGtpbWl4SmttZXAxOWcw?=
 =?utf-8?B?ajlDdlNMVU5aZnR2MlRVbENqNVowZEdUNXA5bzF6aUxaUFZycndwZlUyMnNx?=
 =?utf-8?B?SGNFck03TGRoc3o4RlV5TVl5M3c4U0tOSjhPSWJNVW8rNVcxK3hiN2lPR2I4?=
 =?utf-8?B?VzZGWXRRZjdheUt0U1FSN1oxdWR3TWtnL05zT2JvZ0JseTR0dy9FUXJUZUhl?=
 =?utf-8?B?Tm1CMjZDbWxaWTMvUnZETUxVYnJSa0FBNTBBZTBnbWMyQUVWL1NJOTBtcG1t?=
 =?utf-8?B?MEo2RjVNeWJMRjM5b1VmNlVrMDFLRzZhRVkrWUZXR3hFNWpUeU5FUW43Vy9D?=
 =?utf-8?B?SkRpVFBZcG9ZeDgyaGR1WDVaaWpmMXQ4RXkrUVFkRWNjZlZJakRQRnRKTEc1?=
 =?utf-8?B?TXhCNFhGS0swTjJGTTFtYWRoSW92dDVTYllrWnEzdkVMTmhURk0zUStXcFBR?=
 =?utf-8?B?N21ZSk1qemwvRjMyWTZ5YVRRakYzZEtVNnYrVmQ0d0hGZ3haMzc4eFZFTGFX?=
 =?utf-8?B?RG1wRDVLUTRJV3Z1UlVZS1k4U3BoYmxaZzh4Rk43OG9wZWlMdXZoMWlMRUkw?=
 =?utf-8?B?MUdUK25IQ2hMNHM2bFFldTNaRHZqOG5ZcURSanZLYUZKbk0yZGIrODByNDBQ?=
 =?utf-8?B?SnJwcW5TTXRVaDZJaHl3N0ljS0tvWHNsTXVyOVNXUGx5QUYzbW9kWkl3dnNu?=
 =?utf-8?B?aGNOV1BSVGdJelplMkFKejYvZ1A3N3Y3K20yeWpoOC9DUktYMGZNbGdjbExv?=
 =?utf-8?B?Y2hUaXdjVEkybHFoSHV4WE1CNEJVWFhzS3ZIN2xvYVV4aGU1R2YzVC9Rdk16?=
 =?utf-8?B?WHNPWk0vczRXS040VnEzcnRXT2N5Snp0VHVlSFRwTjB5d1l2SjN1VFlvRnZp?=
 =?utf-8?B?dkNqS0wweEt0eVl6VWlTOS8yeWVlTWVvVnJTYU5uRmoyM2dTRHJyaVc5bmQ0?=
 =?utf-8?B?MUptb0tnNGd5TnBmTDIxVGNEVVVqT1ZSekc1QzBoNERwbko3Z2o2U3pqNEcr?=
 =?utf-8?B?OUUybS9CaFd2eWpXY1FuZDdpNFJHcW5yUnVRRXNJSjhOc09zWjhSK241TkxD?=
 =?utf-8?B?YituVDlqMURheDRtV0ZsZFRsR2RmMGJuYm54eExpa3poSEFodXYveWVzYWJt?=
 =?utf-8?B?MHEzRnBWNVZnNWxJL3V0ZkF6THVwcjlhTFl0Nk5Rbi9iL3o2ZFpQRUJWM1ln?=
 =?utf-8?B?dTFMVUZCdXZSSkpIVGprdHZUV3haSDhLNlVRekp4TGZ5ZlRGeHgvcy9pMmU5?=
 =?utf-8?B?ekhwNTdvZzhwWUFlN204QVNTWCtxOUJaNlJUNXBWbkhkN2FTM3VzTXN2SFA3?=
 =?utf-8?B?N2VNaFJzenlTdWRSekpiOUt4TXh0TGRSVVpGcjJHTnBLRVdMMHExSnpDYU93?=
 =?utf-8?B?OVFCcElDWHA3Y3VqS1k1UFFwTzQvRUtRQm01UTViRVZ4ckU2Rkt4Y1dKMzlm?=
 =?utf-8?B?eVFsL0duSURaZ1JBem4wUGc3YVNtdFFuN3dSVmxFVm51VmhXUEdYM0FDSzRQ?=
 =?utf-8?B?OVNTdGRpclliQWxCWU52ZVljM0NCczZ5WTNOcnJaK2g4QlVvZHAzL2V0U3E2?=
 =?utf-8?B?ais0RWV2YkdvQUNCcEtac2xieHBSZmF0eFlIdVpSUUlzQTArQmdQTWcwcWk0?=
 =?utf-8?B?UWlxVmdwMFE0QUx1TVhYUVQyMDdmLzdlNGpvSEVmVWd1OE1GUDBpenNwRHhv?=
 =?utf-8?Q?8nrzeDc1YBxolH5wv9?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f98e3006-81ae-4b38-53e6-08ded37dc146
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2026 12:23:40.1918
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JBtqKWsJzyYMP5qVHsMST921K0K3VBmsCGQyofklXeU7u6ACqfcT2xc59QFlcr6R
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4408
X-Spamd-Bar: -----
Message-ID-Hash: BARQ2A4K3PHJFYEYVRTD4OGONATGGCUV
X-Message-ID-Hash: BARQ2A4K3PHJFYEYVRTD4OGONATGGCUV
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Yousef Alhouseen <alhouseenyousef@gmail.com>, Gerd Hoffmann <kraxel@redhat.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: udmabuf: avoid list copy size overflow
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BARQ2A4K3PHJFYEYVRTD4OGONATGGCUV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:david.laight.linux@gmail.com,m:alhouseenyousef@gmail.com,m:kraxel@redhat.com,m:vivek.kasireddy@intel.com,m:sumit.semwal@linaro.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:davidlaightlinux@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,redhat.com,intel.com,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	DKIM_TRACE(0.00)[amd.com:-];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:email,amd.com:mid,amd.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 01E5D6CCF39

T24gNi8yNi8yNiAxMzozMSwgRGF2aWQgTGFpZ2h0IHdyb3RlOg0KPiBPbiBXZWQsIDI0IEp1biAy
MDI2IDE0OjU4OjU4ICswMjAwDQo+IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdA
YW1kLmNvbT4gd3JvdGU6DQo+IA0KPj4gT24gNi8yNC8yNiAxNDo1MiwgWW91c2VmIEFsaG91c2Vl
biB3cm90ZToNCj4+PiBVRE1BQlVGX0NSRUFURV9MSVNUIGNvcGllcyBhbiBhcnJheSB3aG9zZSBl
bGVtZW50IGNvdW50IGNvbWVzIGZyb20NCj4+PiB1c2Vyc3BhY2UuIFRoZSBjb3VudCBpcyBjb21w
YXJlZCBhZ2FpbnN0IGxpc3RfbGltaXQsIGJ1dCBsaXN0X2xpbWl0IGlzIGENCj4+PiBzaWduZWQg
bW9kdWxlIHBhcmFtZXRlciB3aGlsZSB0aGUgY291bnQgaXMgdTMyLiAgDQo+Pg0KPj4gV2Ugc2hv
dWxkIHByb2JhYmx5IGp1c3QgZHJvcCB0aGUgc2lnbiBmcm9tIHRoZSBtb2R1bGUgcGFyYW1ldGVy
IGluc3RlYWQuDQo+IA0KPiBEb2VzIGFueXRoaW5nIHNhbml0eS1jaGVjayB0aGUgbW9kdWxlIHBh
cmFtZXRlcj8NCg0KRG8gd2UgbmVlZCB0bz8gSSBtZWFuIHNob290aW5nIGludG8geW91ciBvd24g
Zm9vdCBpcyBzdXBwb3NlZCB0byBodXJ0Lg0KDQpDaHJpc3RpYW4uDQoNCj4gDQo+IAlEYXZpZA0K
PiANCj4+DQo+PiBJIGRvbid0IHNlZSBhbiB1c2UgY2FzZSBmb3IgbmVnYXRpdmUgdmFsdWVzIGhl
cmUuDQo+Pg0KPj4gUmVnYXJkcywNCj4+IENocmlzdGlhbi4NCj4+DQo+Pj4NCj4+PiBJZiB0aGUg
bGltaXQgaXMgcmFpc2VkIHRvbyBmYXIgb3IgbWFkZSBuZWdhdGl2ZSwgdGhhdCBjb21wYXJpc29u
IG5vDQo+Pj4gbG9uZ2VyIGJvdW5kcyB0aGUgY291bnQgdG8gYSByYW5nZSB3aGVyZSBzaXplb2Yo
Kmxpc3QpICogY291bnQgZml0cyBpbg0KPj4+IHRoZSB1MzIgdGVtcG9yYXJ5IHVzZWQgZm9yIHRo
ZSBjb3B5IGxlbmd0aC4gQSB3cmFwcGVkIGNvcHkgbGVuZ3RoIGxldHMNCj4+PiBtZW1kdXBfdXNl
cigpIGNvcHkgZmV3ZXIgZW50cmllcyB0aGFuIHVkbWFidWZfY3JlYXRlKCkgc3Vic2VxdWVudGx5
DQo+Pj4gd2Fsa3MsIGxlYWRpbmcgdG8gb3V0LW9mLWJvdW5kcyByZWFkcyBmcm9tIHRoZSBjb3Bp
ZWQgbGlzdC4NCj4+Pg0KPj4+IFRha2UgYSBwb3NpdGl2ZSBzbmFwc2hvdCBvZiB0aGUgbW9kdWxl
IGxpbWl0IGFuZCB1c2UgbWVtZHVwX2FycmF5X3VzZXIoKQ0KPj4+IHNvIHRoZSBtdWx0aXBsaWNh
dGlvbiBpcyBjaGVja2VkIGJlZm9yZSBjb3B5aW5nLg0KPj4+DQo+Pj4gU2lnbmVkLW9mZi1ieTog
WW91c2VmIEFsaG91c2VlbiA8YWxob3VzZWVueW91c2VmQGdtYWlsLmNvbT4NCj4+PiAtLS0NCj4+
PiAgZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYyB8IDkgKysrKystLS0tDQo+Pj4gIDEgZmlsZSBj
aGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+Pj4NCj4+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVm
LmMNCj4+PiBpbmRleCBiY2VkNDIxYzAuLmI0MDc4ZWM4NCAxMDA2NDQNCj4+PiAtLS0gYS9kcml2
ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jDQo+Pj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL3VkbWFidWYu
Yw0KPj4+IEBAIC00NjksMTQgKzQ2OSwxNSBAQCBzdGF0aWMgbG9uZyB1ZG1hYnVmX2lvY3RsX2Ny
ZWF0ZV9saXN0KHN0cnVjdCBmaWxlICpmaWxwLCB1bnNpZ25lZCBsb25nIGFyZykNCj4+PiAgICAg
ICAgIHN0cnVjdCB1ZG1hYnVmX2NyZWF0ZV9saXN0IGhlYWQ7DQo+Pj4gICAgICAgICBzdHJ1Y3Qg
dWRtYWJ1Zl9jcmVhdGVfaXRlbSAqbGlzdDsNCj4+PiAgICAgICAgIGludCByZXQgPSAtRUlOVkFM
Ow0KPj4+IC0gICAgICAgdTMyIGxzaXplOw0KPj4+ICsgICAgICAgaW50IGxpbWl0Ow0KPj4+DQo+
Pj4gICAgICAgICBpZiAoY29weV9mcm9tX3VzZXIoJmhlYWQsICh2b2lkIF9fdXNlciAqKWFyZywg
c2l6ZW9mKGhlYWQpKSkNCj4+PiAgICAgICAgICAgICAgICAgcmV0dXJuIC1FRkFVTFQ7DQo+Pj4g
LSAgICAgICBpZiAoaGVhZC5jb3VudCA+IGxpc3RfbGltaXQpDQo+Pj4gKyAgICAgICBsaW1pdCA9
IFJFQURfT05DRShsaXN0X2xpbWl0KTsNCj4+PiArICAgICAgIGlmICghaGVhZC5jb3VudCB8fCBs
aW1pdCA8PSAwIHx8IGhlYWQuY291bnQgPiBsaW1pdCkNCj4+PiAgICAgICAgICAgICAgICAgcmV0
dXJuIC1FSU5WQUw7DQo+Pj4gLSAgICAgICBsc2l6ZSA9IHNpemVvZihzdHJ1Y3QgdWRtYWJ1Zl9j
cmVhdGVfaXRlbSkgKiBoZWFkLmNvdW50Ow0KPj4+IC0gICAgICAgbGlzdCA9IG1lbWR1cF91c2Vy
KCh2b2lkIF9fdXNlciAqKShhcmcgKyBzaXplb2YoaGVhZCkpLCBsc2l6ZSk7DQo+Pj4gKyAgICAg
ICBsaXN0ID0gbWVtZHVwX2FycmF5X3VzZXIoKHZvaWQgX191c2VyICopKGFyZyArIHNpemVvZiho
ZWFkKSksDQo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaGVhZC5jb3VudCwg
c2l6ZW9mKCpsaXN0KSk7DQo+Pj4gICAgICAgICBpZiAoSVNfRVJSKGxpc3QpKQ0KPj4+ICAgICAg
ICAgICAgICAgICByZXR1cm4gUFRSX0VSUihsaXN0KTsNCj4+Pg0KPj4+IC0tDQo+Pj4gMi41NC4w
DQo+Pj4gICANCj4+DQo+Pg0KPiANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==

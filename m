Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jx/8D0ASRmqTJAsAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 02 Jul 2026 09:24:48 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B89D6F424C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 02 Jul 2026 09:24:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=amd.com header.s=selector1 header.b=JLn3PXCx;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=amd.com (policy=quarantine);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3DC9440AD3
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  2 Jul 2026 07:24:46 +0000 (UTC)
Received: from SN4PR0501CU005.outbound.protection.outlook.com (mail-southcentralusazon11011071.outbound.protection.outlook.com [40.93.194.71])
	by lists.linaro.org (Postfix) with ESMTPS id 83BE43F9BF
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Jul 2026 07:24:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n8mF84KGg5RF4djm1PAVcpddEU/o5Yo+iSUqFoqjNCTlmSHgSqQwDyMSOXHX8SXyH/XbdH3FV2yPZ6APrQvofztwSUJ3I8QIOiEdS5liyF4iEA+lRTufneS+9onaYkKX/VdzzieRAa5JiN3zxujsb577rnLwHzIVxJVCjokv/vWtJ0ruvuG60oQ+zi71ntvnUdVaHs2hAlt8xOVuxzMWtxUvywG+Z39kEZ1zQBYam8LF3e+1elnVcJ9ApOrJgbv4P96hy7t62h4wh/ZaLtadZmd+Drx56RnCSPS/dbwfEg47+9UIiGOfSHGqrVv24yYcg7iFk65Kd2f81UfFkqf6Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7tQ2VDhUjamM0umg8te1SX/25rlz/uxBX3PwZsCYKFc=;
 b=cA1sdmIY36UpLRdyVqF+G7e78rbWPoYKiVBAjTE1QPx/1SrN2jeKL+RKwwI2jW/CB/8UXW5Rd4oeBUUVopwN6jmtI/TWd4tBiIqN0hqdJ7ym2/VLAumi1bV40RmRREtaorilaEwF7mBS0LkMRnwKCBxEc9kkEbLJCr8BHnb/IZoebJBla86x91sJrXemo/PdqBd6H79URmd0wH6FM4AYvo3LEsiHfGtVlRS94oEm2TIESECCb96Cf195xrVgECefdqtkkTIpcNiIXUY4IO+DzwdVfV/1JpCC6xyoyqdmC+602AVsHhfpMp2v6QrUb5mQ3cZUurllYf+simxby4jwVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7tQ2VDhUjamM0umg8te1SX/25rlz/uxBX3PwZsCYKFc=;
 b=JLn3PXCx+psPLijcF93ig37navzSX6TOg91YHrWI+wz2nE5wl3ICA2p5GYJIrzkOCaNe+ymw39Pb2W0DJ8EiOHjgSwHbzbszNh0E9PMNcsm7/IqvZKNyTDlMIWBcocxQLk9Q7oee55GVRXdARE/b3tBA/D3qMTpRtgKWWrJzl6Y=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CH3PR12MB8482.namprd12.prod.outlook.com (2603:10b6:610:15b::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Thu, 2 Jul 2026
 07:24:31 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0181.008; Thu, 2 Jul 2026
 07:24:31 +0000
Message-ID: <df5a6d42-6731-4597-9416-c933c52a601d@amd.com>
Date: Thu, 2 Jul 2026 09:24:25 +0200
User-Agent: Mozilla Thunderbird
To: phasta@kernel.org, Shahyan Soltani <shahyan.soltani@amd.com>,
 sumit.semwal@linaro.org
References: <20260630160401.67544-1-shahyan.soltani@amd.com>
 <9650c30654db85e393217fde419a966d312e4a43.camel@mailbox.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <9650c30654db85e393217fde419a966d312e4a43.camel@mailbox.org>
X-ClientProxiedBy: FR4P281CA0040.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:c7::20) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CH3PR12MB8482:EE_
X-MS-Office365-Filtering-Correlation-Id: 47bb95c1-9cd0-4be2-384a-08ded80af52e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|23010399003|376014|1800799024|366016|18002099003|22082099003|4143699003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: 
	5JkJwMK0aze1zUo2RMdaX+4MECyWUvbsL64ScDv0v8UXe5MA7UvhoYbfW776WKJdC/AvEAOtOyiyFyyLQW/dhimpsllyTBJ1nn75KerQ8G5cPJQ8cZL4SNH2XwHfaHUYP2UQWizF0HZlHrI01VNBv6TByyBahc/29os3HtWQ3T21C3+zeBAcbTp5XveyBjpQfDeujVCrspc5W0jlKymBcbTFkdE62jaw1L3y7CTO7Hs88UfyPyJMKfyfUWydYZxfgZsTLZIVMU9iwfzKwKSEA1B0Ux46jTc6fgVWQG2cCC197kGm0RtDKv64PO46+ceRIGoMSbUeAPHaBEwEsn03W8l872S+kyllNgVuMLXzk0vEYMntT7MddVha/BA2olpCbG/GrBZLmukTQDnLKtO1Qlr+0P46tQhE3UOQgnbV5N3v7uGqYOk/AB6iJnj2Wg97SQPkS/Qh/m9Mzs8UcdBGfJgXqdETxA9K77bQCIeXjfwxV2zJoMEwZr/sLU9IC885EbdLWDXig508i/rjX11uzdwCND6AeZOaEriQXuEvrmMGMXED6TpObt8DHXYkCp3STdcsht94Vfblx2bX8wRQnZqsBq2wBac5p4MF2daws62vka826fii8jCuVCZxSB+2Xjz+n0+66ACuuI4Weg44t+bnpy6JdsVqJ/ZQxZbod1Q=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(18002099003)(22082099003)(4143699003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NlFpSThESzQ1Z1IwZ2pDRWxyS3JXUjdvRjQ2OFUxUzY0WEhhQjFacXA5R3lP?=
 =?utf-8?B?a1RxM3NpdHZGZUw0eVEvYVVPWm1LYllrZ3dFRVNjL2UvYm9rMVEvb3ZEYTE1?=
 =?utf-8?B?bUFzZjBUd1Rrcnpyc0dvSXVPVVlGOVRqZUx3SWE5YU12STE3UjIxWXRjeHB5?=
 =?utf-8?B?aSsrUVRxRzlBOWo0YmE3WjdHS05nMlBWTnZZNE54ZUZCWXhTcDhXNHlKWVE3?=
 =?utf-8?B?eGNGNHcrdmRhVU5CWU05WDhnaFB3eSt2ckZ0NlpodzlCdXdDWG5EZXB6VXYr?=
 =?utf-8?B?L3k5M284VnVXQnlWSWo5VGhUKzVHQmtlUGdVN3Q1d3VxWE5ieDhyeHpiS1gy?=
 =?utf-8?B?NXhPTHNsOGE5TS9CaVJ3MnNNUHpkWlBhRisxT2R1M2JEVHQ2Q0pLRkpLbURR?=
 =?utf-8?B?MmNMTnhWMlFoWjltYmdPYkMxRE05Q0cvY1hFcTk3UjZQSmdiT1JySnJseWRO?=
 =?utf-8?B?NVNmcEV4dDk0ejlJZ2Vtb2JFV1ZZdGZvV3duZndKQ044ZTlPVXhTd2xzQnNa?=
 =?utf-8?B?T05xL1g0Y2Nub0kvQ2tyWnVYR1ZrOUp2K2hlSGhYUENEZG9leUxQYUorVkNG?=
 =?utf-8?B?cXB4bmFpcnVYZzFGUFArOHVxZiswdWtxb0czUUdYdXVTeFFsVFZFb0VCZDQ5?=
 =?utf-8?B?SjdoSk84ZjJSeG5icFFIK0UydG1UazJrTlgwRDJrZ2xVdGRWWkhQc3NRdFo3?=
 =?utf-8?B?YkFPUWtEc3RYUW9meG41TzJMVXhPNjdjd3pqODlhanQ1TTNEUE9ZTktmemx1?=
 =?utf-8?B?d1FQSlM4eXIrdSszbTludzRvN1I4eUFNOGw5MlM4SjRNZ2xmT2swK1ozSjl1?=
 =?utf-8?B?QWIvK2M4eDJEWDVDN3JBSEZuakJaK1R3ampNNFgrUjd2clQzTi9Fd0UrOFhK?=
 =?utf-8?B?RjU1RzlxY3RSR0ZibTIvaDFKWTZVUlZrajJDOFJBM3d4TnhxVWJaU09GaGtV?=
 =?utf-8?B?NUJGSWJiUm8yclBsa05EU2o1akIyOE1PT0lmZ2srRG9QMHN3eFFFbCtWWERr?=
 =?utf-8?B?Zk02ZW9YbW1hNHRwc04zNjVLaXBvUXBkdktUQVV0Zzh6aUN2V0taUmMrbU9z?=
 =?utf-8?B?WFJJako1OVNWSHh5SDNFQUk5YmRwcHV5Q3BsWUNFMlBWS0xqa1FnVlVFYjNp?=
 =?utf-8?B?L3dQZjlJMk5UVjNNQ1VYOEc0ajlGNlVmZTVhN1ltQ3N6RmxVOEoxRDlDMGJS?=
 =?utf-8?B?WEh0b3lydnZPZGNmT0FoNmM3dFdrSEpzQ20vdHlyZVVTak5hanlUU0FUWWtN?=
 =?utf-8?B?akZIQUxlbG5aSGh4Wlg3OW53QUJ4eFppUWRTQXg5ZWJzTmpEUW82aFpKT2pv?=
 =?utf-8?B?aVJsaXB3Y29JWXlQd0F3SjNQM3BWTk9CSjZXMURKbFNyeUorYTJ3KzRsR0E4?=
 =?utf-8?B?VzdrSm1maWpWdHh2TmpINXZrZXExekpEQ0hnZFcxczl4L00zREw5Vm5QK3dH?=
 =?utf-8?B?K05yQ2FyZzBoZW9LUFVBbjVTcGJiTFVzVnBGdW92aHdsNk9oYkdHMjNsTkp3?=
 =?utf-8?B?N29jOTNRdEhFdVpFTE5DelVFRlZsVDExM2VqY055M1lUNUxNMWVEaWU3NWhi?=
 =?utf-8?B?bzc1cmFxTlBua25iZDMzNm96cGp2RVEwMUtXdS9ESDB6NVp0aUZ6b0E1S2c2?=
 =?utf-8?B?c0ZlNExYbVBVQlJTWGlqVElDdEJ6SXR3YnV2Rmp3STJpS0RadGxLOThKUUFk?=
 =?utf-8?B?OEdoNGZ0c2FaNjIrV1BEck5Hd3hiMEQ2bWhHaWxCNnpsL3ozNFp5REcrUkYr?=
 =?utf-8?B?WW1jV3M2Zmh5R3lUWGIvU05qV2RNQzZMUFJpMk02SkkvanRFa1BVOUcveEtH?=
 =?utf-8?B?R010dlA1TGYvbUd5aDZxaW9IcVNhN3VndTRpYUNzZXh1SlVPeDRBaTV6Y3Jk?=
 =?utf-8?B?bGY3NFh1K2dTQmh0ZEpGYVFBa2dPYklRYzZuUndHcktqcWhLMGluTkY2Y0p4?=
 =?utf-8?B?OWhnKzdTUWM0dm5iNXppR3dpVGE4bER4a2h4TXRqNmhvbVA0ZExkRWxsdmw3?=
 =?utf-8?B?OWJhMCt2VFhTM00zcFQzcUJzbE1ab1lWSURHY0dqM2tqNEw2MSttc21ESHF5?=
 =?utf-8?B?ME50RFpoQUR4ZGNhZzJaL0JZUzcxL1EyRno5OVhJM1pZd0dTdCtqb1htYlli?=
 =?utf-8?B?TFBETGE1WHNLSlRyK2JUaEp1NlNNV2JDaHpQQTVWaW05SmRTSVlRUWlvYjUz?=
 =?utf-8?B?dXE4UllMdTR2cHRpRmY0ZnRGWEZmWjRMaVY1ZlRjcTlVMWJRcXlMRUxEekRi?=
 =?utf-8?B?a09nOHpTM3FjMkcrS3lHa0E0RDVSakExYVFpTzM4QS9aYXkxaXFmcm9naXhz?=
 =?utf-8?Q?JXURkq1PMxdo96ynCL?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47bb95c1-9cd0-4be2-384a-08ded80af52e
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jul 2026 07:24:30.9382
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RDv8dV1us+kKDU+Z/s7DUvf3yhTqRdmafYl7hQ3/GmHlp5bhlbAc2C1aLjjr0KKS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB8482
X-Spamd-Bar: -----
Message-ID-Hash: HMRZ5MRGTXOPLKWH3YDCHG24IPKSRCRL
X-Message-ID-Hash: HMRZ5MRGTXOPLKWH3YDCHG24IPKSRCRL
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma_buf: change unsigned int and int types into size_t
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HMRZ5MRGTXOPLKWH3YDCHG24IPKSRCRL/>
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
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:phasta@kernel.org,m:shahyan.soltani@amd.com,m:sumit.semwal@linaro.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[amd.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:email,amd.com:email,amd.com:mid,amd.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9B89D6F424C

T24gNy8xLzI2IDA4OjUyLCBQaGlsaXBwIFN0YW5uZXIgd3JvdGU6DQo+IE9uIFR1ZSwgMjAyNi0w
Ni0zMCBhdCAxMjowNCAtMDQwMCwgU2hhaHlhbiBTb2x0YW5pIHdyb3RlOg0KPj4gVGhlIG51bV9m
ZW5jZXMsIGNvdW50LCBpLCBhbmQgaiB2YXJpYWJsZXMgaW4gZG1hX2ZlbmNlX2RlZHVwX2FycmF5
KCkgYW5kDQo+PiBfX2RtYV9mZW5jZV91bndyYXBfbWVyZ2UoKSBoYXZlIGluY29uc2lzdGVudCBp
bnRlZ2VyIHR5cGVzLCBtaXhpbmcgYm90aA0KPj4gdW5zaWduZWQgaW50IGFuZCBpbnQuDQo+Pg0K
Pj4gVXNlIHR5cGUgc2l6ZV90IGNvbnNpc3RlbnRseSBmb3IgdGhlc2UgaW5zdGVhZCwgYW5kIHVw
ZGF0ZSB0aGUgcmV0dXJuDQo+PiB0eXBlIG9mIGRtYV9mZW5jZV9kZWR1cF9hcnJheSgpIGFjY29y
ZGluZ2x5Lg0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IFNoYWh5YW4gU29sdGFuaSA8c2hhaHlhbi5z
b2x0YW5pQGFtZC5jb20+DQo+PiBTdWdnZXN0ZWQtYnk6IFBoaWxpcHAgU3Rhbm5lciA8cGhhc3Rh
QG1haWxib3gub3JnPg0KPiANCj4gVGh4IGZvciBmaXhpbmcgdGhpcywgY29vbCB3b3JrDQo+IA0K
PiBSZXZpZXdlZC1ieTogUGhpbGlwcCBTdGFubmVyIDxwaGFzdGFAa2VybmVsLm9yZz4NCj4gDQo+
PiAtLS0NCj4+IFRoZSByZXN0IG9mIHRoZSBzdWJzeXN0ZW1zIChkbWFfcmVzdl9yZXNlcnZlX2Zl
bmNlcywgZHJtX2V4ZWMsIGRybV9ncHV2bSwNCj4+IHhlLCBub3V2ZWF1LCBldGMpIHVzZXMgInVu
c2lnbmVkIGludCIgZm9yIG51bV9mZW5jZXMsIGZvciBleGFtcGxlIHRoZQ0KPj4gYW1kZ3B1IGNh
bGxlciBpbiBhbWRncHVfdXNlcnFfZmVuY2UuYy4NCg0KR29vZCBwb2ludC4NCg0KPiANCj4gWW91
IG1lbnRpb24gdGhhdCBiZWNhdXNlIHlvdSBjYW4ndCAvIHdvbid0IGNoYW5nZSB0aGVtPw0KPiAN
Cj4gTXkgc3VnZ2VzdGlvbiBhY3R1YWxseSBoYXMgYmVlbiB0byBnbyBmb3IgYHVuc2lnbmVkIGlu
dGAuIENocmlzdGlhbg0KPiBvcGluaW9uZWQgdGhhdCBpdCBzaG91bGQgYmUgc2l6ZV90LiBTaG91
bGRuJ3QgYmUgYSBiaWcgZGVhbCwgdGhvdWdoLCBteQ0KPiBpc3N1ZSB3YXMganVzdCB0aGUgcG9z
c2liaWxpdHkgZm9yIG5lZ2F0aXZlIG51bWJlcnMuDQoNClllYWgsIHVuc2lnbmVkIGludCB3b3Vs
ZCBwcm9iYWJseSB3b3JrIGFzIHdlbGwuIEJ1dCBBUlJBWV9TSVpFKCkgcmV0dXJucyBzaXplX3Qg
aWYgSSdtIG5vdCBjb21wbGV0ZWx5IG1pc3Rha2VuIGFuZCBJIGhhdmUgc2VlbiBzaXplX3QgYmVp
bmcgdXNlZCBlbHNld2hlcmUgYXMgd2VsbC4NCg0KPiANCj4gQ2hyaXN0aWFuLCB3b3VsZCBpdCBi
ZSBhIGJpdCBiZXR0ZXIgdG8gYmUgY29uc2lzdGVudCB3aXRoIHRoZSBwYXJ0aWVzDQo+IFNoYXlh
biBtZW50aW9ucz8NCg0KRm9yIHRoZSBhbWRncHUgdXNlIGNhc2VzIEkgZG9uJ3QgY2FyZSBtdWNo
IGJlY2F1c2Ugd2UgbGltaXQgbnVtX2ZlbmNlcyB0byAxNmJpdCBhbnl3YXkgYW5kIGRvbid0IGFs
bG93IGxhcmdlciBhbGxvY2F0aW9ucy4NCg0KVGhlIGRybV9leGVjIGFuZCBkcm1fZ3B1dm0gc2hv
dWxkIGRlZmluaXRlbHkgYmUgZml4ZWQgYXMgd2VsbC4gTm90IHN1cmUgYWJvdXQgWEUgb3IgTm91
dmVhdSwgDQoNCkl0IHNob3VsZCBqdXN0IG5vdCBiZSBhIHNpZ25lZCB0eXBlIGFueXdoZXJlLCBj
YXVzZSB0aGF0IGNhbiBpbmRlZWQgbWVhbiB0cm91YmxlLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFu
Lg0KDQo+IA0KPiANCj4gUC4NCj4gDQo+Pg0KPj4gwqBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNl
LXVud3JhcC5jIHwgOCArKysrLS0tLQ0KPj4gwqBpbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS11bndy
YXAuaMKgwqAgfCA2ICsrKystLQ0KPj4gwqAyIGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygr
KSwgNiBkZWxldGlvbnMoLSkNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2Rt
YS1mZW5jZS11bndyYXAuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtdW53cmFwLmMNCj4+
IGluZGV4IDUzYmI0MGU3MGIyNy4uNjVlODdkMjYzYzNhIDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVy
cy9kbWEtYnVmL2RtYS1mZW5jZS11bndyYXAuYw0KPj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2Rt
YS1mZW5jZS11bndyYXAuYw0KPj4gQEAgLTkzLDkgKzkzLDkgQEAgc3RhdGljIGludCBmZW5jZV9j
bXAoY29uc3Qgdm9pZCAqX2EsIGNvbnN0IHZvaWQgKl9iKQ0KPj4gwqAgKg0KPj4gwqAgKiBSZXR1
cm46IE51bWJlciBvZiB1bmlxdWUgZmVuY2VzIHJlbWFpbmluZyBpbiB0aGUgYXJyYXkuDQo+PiDC
oCAqLw0KPj4gLWludCBkbWFfZmVuY2VfZGVkdXBfYXJyYXkoc3RydWN0IGRtYV9mZW5jZSAqKmZl
bmNlcywgaW50IG51bV9mZW5jZXMpDQo+PiArc2l6ZV90IGRtYV9mZW5jZV9kZWR1cF9hcnJheShz
dHJ1Y3QgZG1hX2ZlbmNlICoqZmVuY2VzLCBzaXplX3QgbnVtX2ZlbmNlcykNCj4+IMKgew0KPj4g
LQlpbnQgaSwgajsNCj4+ICsJc2l6ZV90IGksIGo7DQo+PiDCoA0KPj4gwqAJc29ydChmZW5jZXMs
IG51bV9mZW5jZXMsIHNpemVvZigqZmVuY2VzKSwgZmVuY2VfY21wLCBOVUxMKTsNCj4+IMKgDQo+
PiBAQCAtMTE1LDE0ICsxMTUsMTQgQEAgaW50IGRtYV9mZW5jZV9kZWR1cF9hcnJheShzdHJ1Y3Qg
ZG1hX2ZlbmNlICoqZmVuY2VzLCBpbnQgbnVtX2ZlbmNlcykNCj4+IMKgRVhQT1JUX1NZTUJPTF9H
UEwoZG1hX2ZlbmNlX2RlZHVwX2FycmF5KTsNCj4+IMKgDQo+PiDCoC8qIEltcGxlbWVudGF0aW9u
IGZvciB0aGUgZG1hX2ZlbmNlX21lcmdlKCkgbWFyY28sIGRvbid0IHVzZSBkaXJlY3RseSAqLw0K
Pj4gLXN0cnVjdCBkbWFfZmVuY2UgKl9fZG1hX2ZlbmNlX3Vud3JhcF9tZXJnZSh1bnNpZ25lZCBp
bnQgbnVtX2ZlbmNlcywNCj4+ICtzdHJ1Y3QgZG1hX2ZlbmNlICpfX2RtYV9mZW5jZV91bndyYXBf
bWVyZ2Uoc2l6ZV90IG51bV9mZW5jZXMsDQo+PiDCoAkJCQkJwqDCoCBzdHJ1Y3QgZG1hX2ZlbmNl
ICoqZmVuY2VzLA0KPj4gwqAJCQkJCcKgwqAgc3RydWN0IGRtYV9mZW5jZV91bndyYXAgKml0ZXIp
DQo+PiDCoHsNCj4+IMKgCXN0cnVjdCBkbWFfZmVuY2UgKnRtcCwgKnVuc2lnbmFsZWQgPSBOVUxM
LCAqKmFycmF5Ow0KPj4gwqAJc3RydWN0IGRtYV9mZW5jZV9hcnJheSAqcmVzdWx0Ow0KPj4gwqAJ
a3RpbWVfdCB0aW1lc3RhbXA7DQo+PiAtCWludCBpLCBjb3VudDsNCj4+ICsJc2l6ZV90IGksIGNv
dW50Ow0KPj4gwqANCj4+IMKgCWNvdW50ID0gMDsNCj4+IMKgCXRpbWVzdGFtcCA9IG5zX3RvX2t0
aW1lKDApOw0KPj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLXVud3JhcC5o
IGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtdW53cmFwLmgNCj4+IGluZGV4IDYyZGYyMjJmZTBm
MS4uN2JmYWNkZjc5ZGUyIDEwMDY0NA0KPj4gLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2Ut
dW53cmFwLmgNCj4+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLXVud3JhcC5oDQo+PiBA
QCAtOCw2ICs4LDggQEANCj4+IMKgI2lmbmRlZiBfX0xJTlVYX0RNQV9GRU5DRV9VTldSQVBfSA0K
Pj4gwqAjZGVmaW5lIF9fTElOVVhfRE1BX0ZFTkNFX1VOV1JBUF9IDQo+PiDCoA0KPj4gKyNpbmNs
dWRlIDxsaW51eC90eXBlcy5oPg0KPj4gKw0KPj4gwqBzdHJ1Y3QgZG1hX2ZlbmNlOw0KPj4gwqAN
Cj4+IMKgLyoqDQo+PiBAQCAtNDgsMTEgKzUwLDExIEBAIHN0cnVjdCBkbWFfZmVuY2UgKmRtYV9m
ZW5jZV91bndyYXBfbmV4dChzdHJ1Y3QgZG1hX2ZlbmNlX3Vud3JhcCAqY3Vyc29yKTsNCj4+IMKg
CWZvciAoZmVuY2UgPSBkbWFfZmVuY2VfdW53cmFwX2ZpcnN0KGhlYWQsIGN1cnNvcik7IGZlbmNl
OwlcDQo+PiDCoAnCoMKgwqDCoCBmZW5jZSA9IGRtYV9mZW5jZV91bndyYXBfbmV4dChjdXJzb3Ip
KQ0KPj4gwqANCj4+IC1zdHJ1Y3QgZG1hX2ZlbmNlICpfX2RtYV9mZW5jZV91bndyYXBfbWVyZ2Uo
dW5zaWduZWQgaW50IG51bV9mZW5jZXMsDQo+PiArc3RydWN0IGRtYV9mZW5jZSAqX19kbWFfZmVu
Y2VfdW53cmFwX21lcmdlKHNpemVfdCBudW1fZmVuY2VzLA0KPj4gwqAJCQkJCcKgwqAgc3RydWN0
IGRtYV9mZW5jZSAqKmZlbmNlcywNCj4+IMKgCQkJCQnCoMKgIHN0cnVjdCBkbWFfZmVuY2VfdW53
cmFwICpjdXJzb3JzKTsNCj4+IMKgDQo+PiAtaW50IGRtYV9mZW5jZV9kZWR1cF9hcnJheShzdHJ1
Y3QgZG1hX2ZlbmNlICoqYXJyYXksIGludCBudW1fZmVuY2VzKTsNCj4+ICtzaXplX3QgZG1hX2Zl
bmNlX2RlZHVwX2FycmF5KHN0cnVjdCBkbWFfZmVuY2UgKiphcnJheSwgc2l6ZV90IG51bV9mZW5j
ZXMpOw0KPj4gwqANCj4+IMKgLyoqDQo+PiDCoCAqIGRtYV9mZW5jZV91bndyYXBfbWVyZ2UgLSB1
bndyYXAgYW5kIG1lcmdlIGZlbmNlcw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

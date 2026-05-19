Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aIqYOGYGDGodUAUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 08:42:46 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A7957842E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 08:42:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EB31440961
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 06:42:44 +0000 (UTC)
Received: from DM5PR21CU001.outbound.protection.outlook.com (mail-centralusazon11011050.outbound.protection.outlook.com [52.101.62.50])
	by lists.linaro.org (Postfix) with ESMTPS id C210340501
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 06:42:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=0UV1oA1N;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.62.50 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CEzAVXahcLJlgeVhCt4JIybVAaK5a0h2MOMPnUZdUZilWEX6VmES84tF7tYxKTpnQf3+MWfBAhXe9gMfnoMk67PmcYBgFhRhogyoz7xQnnObpVB5zdWOfUTVzjai5EQVNXqrj5RrOG6EmvgjurPLD0n6JV02Qy7LXaOFirODXL5viNCTpTZkeIIU7lwXSQPuVKUtF/pik08BTejMBFy3M7TmaqA+u7WTB9tYkYuGkWLQWMC6A4udwM1oMq4y0ob/jY2LPgx5oHc4QJjD6pETtgd6b4mcCkRJnRH+AJU6c+TMMSRLVfBLjjJQM16jv5WQRRp2MO8awFEmwk7HzdXNMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e7sY/foZAH43jstdkkGZNaT7YS+iuWy02Cy+I+1W2FY=;
 b=m+bQka9EVBJG5uEwVOK3/hJ0W2lMHNtvJa6cTZX3K8Oi9DGk7xPEIloYauIyvCPiGaH4PVDv2ABZo4AeQRg7M2DD4HpYz2dzET4f4wr/oyh+l278n1/BZm4690QIwMSsVdEqAWW0RJEqygB2NTTnsFjCc1ZELChtLP+w4vWIbPilhfhcv2/6NISxsu+rRxw/PPnW6rcjpcTdvps3D0nulqWOo6tYCVBk2K2gsqqtZK3zCrX4Ouks525my9rls9zEl0Heyf2CAwy7dpPd32R9E3drSZxZSjqxUkDlLnW1CKBrb20vweVM7Btp6KRHcgjmArG5wG9owaPWYBkiMLR0ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e7sY/foZAH43jstdkkGZNaT7YS+iuWy02Cy+I+1W2FY=;
 b=0UV1oA1Nkeo+bgYZ7qWRIFOvevl5b8/2YMcvnENR8nwhIr2RPS6wB+qV4f6UeeLInL3Kt6aWKYEbaFtzDiWxI+VvEQ2w2LFpLdkjY4f0fgmeQYyQlu/LaaDJ+C4m8wCPhlD3ZkDLS42II2kDQACtgP234w9Crb9mTOMsaELPDA0=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by LV9PR12MB9806.namprd12.prod.outlook.com (2603:10b6:408:2ea::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.24; Tue, 19 May
 2026 06:42:32 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0025.022; Tue, 19 May 2026
 06:42:32 +0000
Message-ID: <a83bfea0-7d3a-40cb-a437-5be09d59660b@amd.com>
Date: Tue, 19 May 2026 08:42:27 +0200
User-Agent: Mozilla Thunderbird
To: Lizhi Hou <lizhi.hou@amd.com>, ogabbay@kernel.org,
 quic_jhugo@quicinc.com, mario.limonciello@amd.com,
 karol.wachowski@linux.intel.com
References: <20260518155706.937461-1-lizhi.hou@amd.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260518155706.937461-1-lizhi.hou@amd.com>
X-ClientProxiedBy: FRYP281CA0004.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10::14)
 To PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|LV9PR12MB9806:EE_
X-MS-Office365-Filtering-Correlation-Id: 99f05abe-9ab0-4395-a7f7-08deb571cdcf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|1800799024|376014|18002099003|22082099003|56012099003|11063799003;
X-Microsoft-Antispam-Message-Info: 
	hGQ9YPaWuMehKah0MV/sN9iyp2hd46/r56ymbDYzmC9MGzuznc6CmJmimO7RLRnbBRUDgYtvF1AooqLzmNC8B5RGp68ZiUIFGcXONSQcTiceVWKrTdfFNbtuPbmOJUvOsHJgiuHVQYbymRRbNClf34sLe5KXFZU+d3LvF2R8FdqM75deqQbNgcj2DGPK3Z45JKi6zDv8XqBsE64DrQ/4RyznCxn/Lf0V6RpYSBIiMBahvo1Nrz37t3cZcXzkdAxma8QBBpP7oD2RDosX4rq+4G9E777AY4drGJG97H7U+6ooiQHdWMETDEXrFqeG3gj3euCKuthHiD+E2u5+vKu2mdbB1qMdm9QrNqCIE6NMlNjCoKWtBmLZGuhlcFnRv6B5BHcX18TqX9V6gdL0nFe6vWWP5O56cOS73AjGE/Yex9prjgLKnrwYqBvteCek7/2yJKM8A+bp0miFO8r5sO7FCm0F5zGQNnxMF4ylsEfP+/qyGMryhqKpcLpAP3xVn3uXrUUX6KcBEmbBNHujuGHJhMYotYjJfhYARPtCg/xU2O/S19PRp0NsIFSfu51MvXadR9t26Gl2gACVTV7N0USCC8hl1apgI/YgkRvR4RsolZIKb5MXOZNf/VaTsNbUaAcrwdk7HxWU3+eg4fAkAcUp2+p5nRfv+XEPpNSyfnrmik0wDkCwQ64sJoynJ0Uk9+c6
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(22082099003)(56012099003)(11063799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?a2ZKZjRXa1RuVEZFRmkrcFZ1TGJoTkVicVF3OW9HdlVxZ2NRTkJQZlRHaFFP?=
 =?utf-8?B?MEJtZzZJbTRma1did3Vnc1Bwc3RiZlNkK2daRU9FTk84cVloOVBpT1pTR3Ru?=
 =?utf-8?B?R1FkTTRtTWRoWFJRQ0dlekVRU2ZzanFUbkJabkxlL0xmcWoweG1iUDlxa29r?=
 =?utf-8?B?SnRLWmJkdDN6VnhtTXdZYVNocGZORnFRUGdDU2trekl4ckNVUkdncm15ODJt?=
 =?utf-8?B?eXUvRmpEMGpzR2g0ZmRpSmp1Wm1kS3dkU1ZabDVSb1pYc3M1ZEpyTWJZL1F3?=
 =?utf-8?B?T3VMbktpZHJCNXJIMlZHenVRNzVmYnlPcmh0TUVVMXI4OVJhU2pMUFdYRktu?=
 =?utf-8?B?T3VzekRTb3FYR3RXaUR4bnRxVlZUQ0UyUXFqTHpiS2sxRUdOMmpuSGFIRndj?=
 =?utf-8?B?czRCQ0JwWXhreExRZTZEK2RCNllMZTZLRU5VYzRjYXFwSEFHd01PVlNFa2M3?=
 =?utf-8?B?N2hmVXZ2OUYyblQ1d2U1T3h0WGlvUUExK201N0w0WnZkUnRjNWhIM3dHRkRE?=
 =?utf-8?B?OURoTjJhdzBGVFprRDlzREhVeWtpeUJuVXJVTndxMkpvQ2xJMTNsUFRUeGsz?=
 =?utf-8?B?ZS9nUHl5RldnaGJXU1VQWHJQL1FiZ3p1YU9pZEFRaG9INUpPanJzcyt6MlIw?=
 =?utf-8?B?ZUVxLy9rNXQyUVZzMEZDN0JXQWR6Q1o2U0kwbmUwRzkrVjRMUjcyZkNoamhi?=
 =?utf-8?B?NVY5ZC9ZdTh3dXExVEJ1LytJZmRaZkdwK2F3NHkxNk5WbER2ZStNcVZBT0c0?=
 =?utf-8?B?UkNhcE9GMUh2djg3bHVBRzQyM2tsdGNMME5uNDNFbkZBUWlNRFFueVJMb3Jm?=
 =?utf-8?B?VElMRmpBNWV1MTA3L2kxVDJldW0xVVpaaTFyUHFvK05wWVY1V2dzZGhWNStu?=
 =?utf-8?B?QjhYbGQxWXB4cHFhS2txYW5iY2Nnd0k4cldwaEpWYWh5bzlTUjlmMWdMcFpl?=
 =?utf-8?B?L2JOYzFheVVIelFLWG9wcEM2R2tEWmp5b25FRGNCYS9zaFBSS3dFcUlvU2tw?=
 =?utf-8?B?Wm82R3JXTkhaNkZFN1MxWDQvSDU4UnRiQ095Q29MWnhyTGdEWWtwS2plc1NW?=
 =?utf-8?B?Vzc4UXVwdE1kMEc2aWpkeTRYVThaZU1BRnVqRUhIdm1XcXhLbStVekVza0xo?=
 =?utf-8?B?R1NhY0lkUDJIRmE5cWx2N3dZOU1kY0FVSmVpK2FvTEsyMkVlN3FxUkI1VWVI?=
 =?utf-8?B?enhiT3NnajlON1Y2MzYyQUZ4N091dUx6ek9zb09XTEs4TjNua3RMbWJnMDc0?=
 =?utf-8?B?TFlHSGRrUVpRVkQ4WnBhR1RqdGxSTk5CNlFSa3VtcE9FMG1Nam1lMUs0eUgy?=
 =?utf-8?B?eWg2VTdndjhZRzJCTjZPUUo4bGZ0aFdnNUswVi9McmZXQzNNU3FQd0szV2kx?=
 =?utf-8?B?N3YrOUs0L1FrT1ZMVTArRWpIQk1Bb0s0WnRFTkY2TkNnN1ZOWDRvZEtBejJB?=
 =?utf-8?B?RzcyOGtJS0lpaGgxNllTQ3M1NDZVaW5lV0J5UkxPUU0yRmRrdkV0V0J4eVNI?=
 =?utf-8?B?SzZva0drbWZjUzRGODI1SGhIR0xnQTZ2NjU2cXBQOVA0cEo0WmJTZTZqTWxn?=
 =?utf-8?B?b1pEMDY3NDdSWTVud1lDWnEzUEJycHlRbGxzWldGaUJLWWNiVThjakU3cXh6?=
 =?utf-8?B?V2hoZUJuOEJ0UW1XQSs5aVVsWVlsOUNyVFFjSFRLWkJYeXBaTzFSaFB6VkpP?=
 =?utf-8?B?NnZaWmU1dU5XOWhwVUVWQ2NDZEE4RGx1ZnBxVjVUUW0xZ1dkb2RzdnFQZXRx?=
 =?utf-8?B?UkZycER0TkkrN1FuNUkvMXI2L3MrR3RhNUR6emFPSnNNV0gzUk1XS2F4dndX?=
 =?utf-8?B?QklncEJkNWtWMFZaVjBCelFjNFkvYXlYY1FNZjlDcHhQc3RCU2dXcW1LaEd4?=
 =?utf-8?B?dEgrUVJjTjMwME43WkEvMHE0UTVjZ1JlK2F5Q3hQY0dVV3FudWtTYXNCZE5I?=
 =?utf-8?B?U3hnTWFGdVQvYWF3aFpvWTkrV1VKTmZiSXc0QjRPbXFyejlZZTE1MXFXemNF?=
 =?utf-8?B?cmJlSTlta3p6RllIRmpwZVlPUVhLa3FnMkEzWWhUQ25OU0NNcElpeDdJUWhF?=
 =?utf-8?B?TkpYUDZwMDR6TXFCVllEZ2xBdGtrNUhoUXpiUVZXYVVObjI3SFIwWXFBa2kv?=
 =?utf-8?B?QVF2RTBUQU1Rc0JXVUlLVmtvcEpuQWRKenhtTmtBOEJSTkFSN3lUaTI2bUpw?=
 =?utf-8?B?SERuei9jYVpic1kza1hTS0tRK0hETTRGT1ZTNmJCUUxEQTdTZklWdmVTVXQw?=
 =?utf-8?B?Q0pUczU3ZklTZmV1SUlmZEdsVGdZYUd1VlZCeGQ4dXFSd240UFBzU0VWb2R3?=
 =?utf-8?Q?w0frpwGxunKdcPun7P?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99f05abe-9ab0-4395-a7f7-08deb571cdcf
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2026 06:42:32.4264
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dFjhA/EeCyvAb0Kl6BpDuKRbKYHo7AMTfXNOM+nvj6jl3lAJNuxVECzyXLTrc5r6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV9PR12MB9806
X-Spamd-Bar: ---
Message-ID-Hash: OTKHVCP4AM5ONQMJJXVV63R4ZESWVKWU
X-Message-ID-Hash: OTKHVCP4AM5ONQMJJXVV63R4ZESWVKWU
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, simona@ffwll.ch, max.zhen@amd.com, sonal.santan@amd.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V2] accel/amdxdna: Remove mmap and export support for ubuf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OTKHVCP4AM5ONQMJJXVV63R4ZESWVKWU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:mid,amd.com:email,linaro.org:email];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_SEVEN(0.00)[11];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-]
X-Rspamd-Queue-Id: 58A7957842E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNS8xOC8yNiAxNzo1NywgTGl6aGkgSG91IHdyb3RlOg0KPiBVYnVmIHBhZ2VzIHNob3VsZCBu
b3QgYmUgbW1hcGVkIG9yIGV4cG9ydGVkLiBSZW1vdmUgdGhlIHVidWYgbW1hcCBjYWxsYmFjaw0K
PiBhbmQgcmV0dXJuIC1FT1BOT1RTVVBQIHdoZW4gZXhwb3J0aW5nIHVidWYgb2JqZWN0cy4NCj4g
DQo+IHVidWYgdm1hcCBpcyBhbHNvIHJlbW92ZWQgZm9yIHRoZXJlIGlzIG5vdCBhIHJlYWwgdXNl
IGNhc2UgeWV0Lg0KPiANCj4gRml4ZXM6IGJkNzJkNGFjZGExMCAoImFjY2VsL2FtZHhkbmE6IFN1
cHBvcnQgdXNlciBzcGFjZSBhbGxvY2F0ZWQgYnVmZmVyIikNCj4gQ2M6IENocmlzdGlhbiBLb2Vu
aWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogTGl6aGkgSG91
IDxsaXpoaS5ob3VAYW1kLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNo
cmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCg0KPiAtLS0NCj4gdjI6DQo+ICAgUmVtb3ZlIGRlYWQg
Y29kZSBhbWR4ZG5hX3VidWZfdm1fb3BzIHN0cnVjdHVyZSBhbmQgYW1keGRuYV91YnVmX3ZtX2Zh
dWx0DQo+ICAgZnVuY3Rpb24uDQo+ICAgUmVuYW1lIE5vbi1leHBvcnRhYmxlIGJ1ZmZlciBmbGFn
IGZyb20gJ3ByaScgdG8gJ3ByaXZhdGVfYnVmZmVyJw0KPiANCj4gIGRyaXZlcnMvYWNjZWwvYW1k
eGRuYS9hbWR4ZG5hX2dlbS5jICB8ICA5ICsrKystDQo+ICBkcml2ZXJzL2FjY2VsL2FtZHhkbmEv
YW1keGRuYV9nZW0uaCAgfCAgMiArKw0KPiAgZHJpdmVycy9hY2NlbC9hbWR4ZG5hL2FtZHhkbmFf
dWJ1Zi5jIHwgNTAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiAgMyBmaWxlcyBjaGFu
Z2VkLCAxMCBpbnNlcnRpb25zKCspLCA1MSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2FjY2VsL2FtZHhkbmEvYW1keGRuYV9nZW0uYyBiL2RyaXZlcnMvYWNjZWwvYW1k
eGRuYS9hbWR4ZG5hX2dlbS5jDQo+IGluZGV4IDMxOWQyMDY0ZmFmYS4uNmI5YjU1NmRlNTU1IDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2FjY2VsL2FtZHhkbmEvYW1keGRuYV9nZW0uYw0KPiArKysg
Yi9kcml2ZXJzL2FjY2VsL2FtZHhkbmEvYW1keGRuYV9nZW0uYw0KPiBAQCAtNDkyLDYgKzQ5Miw5
IEBAIHN0YXRpYyBzdHJ1Y3QgZG1hX2J1ZiAqYW1keGRuYV9nZW1fcHJpbWVfZXhwb3J0KHN0cnVj
dCBkcm1fZ2VtX29iamVjdCAqZ29iaiwgaW50DQo+ICAJc3RydWN0IGFtZHhkbmFfZ2VtX29iaiAq
YWJvID0gdG9feGRuYV9vYmooZ29iaik7DQo+ICAJREVGSU5FX0RNQV9CVUZfRVhQT1JUX0lORk8o
ZXhwX2luZm8pOw0KPiAgDQo+ICsJaWYgKGFiby0+cHJpdmF0ZV9idWZmZXIpDQo+ICsJCXJldHVy
biBFUlJfUFRSKC1FT1BOT1RTVVBQKTsNCj4gKw0KPiAgCWlmIChhYm8tPmRtYV9idWYpIHsNCj4g
IAkJZ2V0X2RtYV9idWYoYWJvLT5kbWFfYnVmKTsNCj4gIAkJcmV0dXJuIGFiby0+ZG1hX2J1ZjsN
Cj4gQEAgLTcxNiw2ICs3MTksNyBAQCBhbWR4ZG5hX2dlbV9jcmVhdGVfdWJ1Zl9vYmplY3Qoc3Ry
dWN0IGRybV9kZXZpY2UgKmRldiwgc3RydWN0IGFtZHhkbmFfZHJtX2NyZWF0ZQ0KPiAgew0KPiAg
CXN0cnVjdCBhbWR4ZG5hX2RldiAqeGRuYSA9IHRvX3hkbmFfZGV2KGRldik7DQo+ICAJc3RydWN0
IGFtZHhkbmFfZHJtX3ZhX3RibCB2YV90Ymw7DQo+ICsJc3RydWN0IGFtZHhkbmFfZ2VtX29iaiAq
YWJvOw0KPiAgCXN0cnVjdCBkcm1fZ2VtX29iamVjdCAqZ29iajsNCj4gIAlzdHJ1Y3QgZG1hX2J1
ZiAqZG1hX2J1ZjsNCj4gIA0KPiBAQCAtNzQyLDcgKzc0NiwxMCBAQCBhbWR4ZG5hX2dlbV9jcmVh
dGVfdWJ1Zl9vYmplY3Qoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgc3RydWN0IGFtZHhkbmFfZHJt
X2NyZWF0ZQ0KPiAgDQo+ICAJZG1hX2J1Zl9wdXQoZG1hX2J1Zik7DQo+ICANCj4gLQlyZXR1cm4g
dG9feGRuYV9vYmooZ29iaik7DQo+ICsJYWJvID0gdG9feGRuYV9vYmooZ29iaik7DQo+ICsJYWJv
LT5wcml2YXRlX2J1ZmZlciA9IHRydWU7DQo+ICsNCj4gKwlyZXR1cm4gYWJvOw0KPiAgfQ0KPiAg
DQo+ICBzdGF0aWMgc3RydWN0IGFtZHhkbmFfZ2VtX29iaiAqDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2FjY2VsL2FtZHhkbmEvYW1keGRuYV9nZW0uaCBiL2RyaXZlcnMvYWNjZWwvYW1keGRuYS9h
bWR4ZG5hX2dlbS5oDQo+IGluZGV4IDRmYzQ4YTExODlkMi4uOTU3MzA1Y2NiNDg1IDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2FjY2VsL2FtZHhkbmEvYW1keGRuYV9nZW0uaA0KPiArKysgYi9kcml2
ZXJzL2FjY2VsL2FtZHhkbmEvYW1keGRuYV9nZW0uaA0KPiBAQCAtNTQsNiArNTQsOCBAQCBzdHJ1
Y3QgYW1keGRuYV9nZW1fb2JqIHsNCj4gIA0KPiAgCS8qIFRydWUsIGlmIEJPIGlzIG1hbmFnZWQg
YnkgWFJULCBub3QgYXBwbGljYXRpb24gKi8NCj4gIAlib29sCQkJCWludGVybmFsOw0KPiArCS8q
IFRydWUsIGlmIEJPIGlzIG5vdCBleHBvcnRhYmxlICovDQo+ICsJYm9vbAkJCQlwcml2YXRlX2J1
ZmZlcjsNCj4gIH07DQo+ICANCj4gICNkZWZpbmUgdG9fZ29iaihvYmopICAgICgmKG9iaiktPmJh
c2UuYmFzZSkNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvYWNjZWwvYW1keGRuYS9hbWR4ZG5hX3Vi
dWYuYyBiL2RyaXZlcnMvYWNjZWwvYW1keGRuYS9hbWR4ZG5hX3VidWYuYw0KPiBpbmRleCAzNzY5
MjEwYzU1Y2MuLmJiNjBmYjgwNDY3ZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9hY2NlbC9hbWR4
ZG5hL2FtZHhkbmFfdWJ1Zi5jDQo+ICsrKyBiL2RyaXZlcnMvYWNjZWwvYW1keGRuYS9hbWR4ZG5h
X3VidWYuYw0KPiBAQCAtNjksNjAgKzY5LDEwIEBAIHN0YXRpYyB2b2lkIGFtZHhkbmFfdWJ1Zl9y
ZWxlYXNlKHN0cnVjdCBkbWFfYnVmICpkYnVmKQ0KPiAgCWtmcmVlKHVidWYpOw0KPiAgfQ0KPiAg
DQo+IC1zdGF0aWMgdm1fZmF1bHRfdCBhbWR4ZG5hX3VidWZfdm1fZmF1bHQoc3RydWN0IHZtX2Zh
dWx0ICp2bWYpDQo+IC17DQo+IC0Jc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEgPSB2bWYtPnZt
YTsNCj4gLQlzdHJ1Y3QgYW1keGRuYV91YnVmX3ByaXYgKnVidWY7DQo+IC0JdW5zaWduZWQgbG9u
ZyBwZm47DQo+IC0JcGdvZmZfdCBwZ29mZjsNCj4gLQ0KPiAtCXVidWYgPSB2bWEtPnZtX3ByaXZh
dGVfZGF0YTsNCj4gLQlwZ29mZiA9ICh2bWYtPmFkZHJlc3MgLSB2bWEtPnZtX3N0YXJ0KSA+PiBQ
QUdFX1NISUZUOw0KPiAtDQo+IC0JcGZuID0gcGFnZV90b19wZm4odWJ1Zi0+cGFnZXNbcGdvZmZd
KTsNCj4gLQlyZXR1cm4gdm1mX2luc2VydF9wZm4odm1hLCB2bWYtPmFkZHJlc3MsIHBmbik7DQo+
IC19DQo+IC0NCj4gLXN0YXRpYyBjb25zdCBzdHJ1Y3Qgdm1fb3BlcmF0aW9uc19zdHJ1Y3QgYW1k
eGRuYV91YnVmX3ZtX29wcyA9IHsNCj4gLQkuZmF1bHQgPSBhbWR4ZG5hX3VidWZfdm1fZmF1bHQs
DQo+IC19Ow0KPiAtDQo+IC1zdGF0aWMgaW50IGFtZHhkbmFfdWJ1Zl9tbWFwKHN0cnVjdCBkbWFf
YnVmICpkYnVmLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSkNCj4gLXsNCj4gLQlzdHJ1Y3Qg
YW1keGRuYV91YnVmX3ByaXYgKnVidWYgPSBkYnVmLT5wcml2Ow0KPiAtDQo+IC0Jdm1hLT52bV9v
cHMgPSAmYW1keGRuYV91YnVmX3ZtX29wczsNCj4gLQl2bWEtPnZtX3ByaXZhdGVfZGF0YSA9IHVi
dWY7DQo+IC0Jdm1fZmxhZ3Nfc2V0KHZtYSwgVk1fUEZOTUFQIHwgVk1fRE9OVEVYUEFORCB8IFZN
X0RPTlREVU1QKTsNCj4gLQ0KPiAtCXJldHVybiAwOw0KPiAtfQ0KPiAtDQo+IC1zdGF0aWMgaW50
IGFtZHhkbmFfdWJ1Zl92bWFwKHN0cnVjdCBkbWFfYnVmICpkYnVmLCBzdHJ1Y3QgaW9zeXNfbWFw
ICptYXApDQo+IC17DQo+IC0Jc3RydWN0IGFtZHhkbmFfdWJ1Zl9wcml2ICp1YnVmID0gZGJ1Zi0+
cHJpdjsNCj4gLQl2b2lkICprdmE7DQo+IC0NCj4gLQlrdmEgPSB2bWFwKHVidWYtPnBhZ2VzLCB1
YnVmLT5ucl9wYWdlcywgVk1fTUFQLCBQQUdFX0tFUk5FTCk7DQo+IC0JaWYgKCFrdmEpDQo+IC0J
CXJldHVybiAtRUlOVkFMOw0KPiAtDQo+IC0JaW9zeXNfbWFwX3NldF92YWRkcihtYXAsIGt2YSk7
DQo+IC0JcmV0dXJuIDA7DQo+IC19DQo+IC0NCj4gLXN0YXRpYyB2b2lkIGFtZHhkbmFfdWJ1Zl92
dW5tYXAoc3RydWN0IGRtYV9idWYgKmRidWYsIHN0cnVjdCBpb3N5c19tYXAgKm1hcCkNCj4gLXsN
Cj4gLQl2dW5tYXAobWFwLT52YWRkcik7DQo+IC19DQo+IC0NCj4gIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgZG1hX2J1Zl9vcHMgYW1keGRuYV91YnVmX2RtYWJ1Zl9vcHMgPSB7DQo+ICAJLm1hcF9kbWFf
YnVmID0gYW1keGRuYV91YnVmX21hcCwNCj4gIAkudW5tYXBfZG1hX2J1ZiA9IGFtZHhkbmFfdWJ1
Zl91bm1hcCwNCj4gIAkucmVsZWFzZSA9IGFtZHhkbmFfdWJ1Zl9yZWxlYXNlLA0KPiAtCS5tbWFw
ID0gYW1keGRuYV91YnVmX21tYXAsDQo+IC0JLnZtYXAgPSBhbWR4ZG5hX3VidWZfdm1hcCwNCj4g
LQkudnVubWFwID0gYW1keGRuYV91YnVmX3Z1bm1hcCwNCj4gIH07DQo+ICANCj4gIHN0YXRpYyBp
bnQgcmVhZG9ubHlfdmFfZW50cnkoc3RydWN0IGFtZHhkbmFfZHJtX3ZhX2VudHJ5ICp2YV9lbnQp
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MBUtENa72GlThggAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Apr 2026 10:59:02 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A7AD73D46DB
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Apr 2026 10:59:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3987A404B3
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Apr 2026 08:59:00 +0000 (UTC)
Received: from SJ2PR03CU001.outbound.protection.outlook.com (mail-westusazon11012039.outbound.protection.outlook.com [52.101.43.39])
	by lists.linaro.org (Postfix) with ESMTPS id D43443F70C
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Apr 2026 08:58:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="Vi/v6jlh";
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.43.39 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tPnU8RnGhjU0Avc195Xi74RIGiiVyUMiVbxID7Fm/5dxQfsXgm+O9w9444F/YD+lZKWMsUTzorVN5iI5wTr73teGz9CcUNjwrE6tCIyHVOGjpCd6Ug9Hkky/MNHwKnWabL/4dy+pVvyFQE9iDuQPDRX+D55eGvfq1VUjmhfJ/VksJy6NHr/49P3tCvmIymZZdgfOgDrOsRj4Puc04OAnwsf+wvAjju24aR9tJqIb0f+Hd7mnYKx1Q3MLByBHpI6SFr6YjU94dDDZPe/ujhuFl5xMEgRoeuA2ScmTo7smJzbuZSHDJfT7qp6JHVb0mzrgAHnhBXObuMOO76v9q53xsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ILgRY5+Fz981rnHHgnY8pD7P4hJtorwPhDoWTapzONk=;
 b=wSed2XqVXB6aRf+IGxDEV1VsW7sjtn95MdRKZtXCyfp0Cr48E/1y8FxKe7pBjmSOhZTFMFHr+VZMvzXV/lbYABMgW6MmU7V3Gyw1mTKmaHawWAOjtAqOEdDjynqIo3NtfXxAizL8JZ0E8BGjMZ8uQdI4vej1r/0YoolfBCG+pqyFWi6aNRDnuS4oS6U+rHJ12RkRGZZbYC/8Xa9pRdL3m1Xto0yiT/oe4DT6vuw//5PIpIj7SV76QwuGfeZp6C/U+vnAGdlcu5jxcnrf6ZFXFXlKuAWwHXAsvj0VaoCP0ri/1eRs5erA3PU4uAzqj1VnBzrncSpd+2xG17nK4I+K0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ILgRY5+Fz981rnHHgnY8pD7P4hJtorwPhDoWTapzONk=;
 b=Vi/v6jlhexjk+DA0jaDVS4pvqgXoO9QmbAWo/XhR0gw+Zy5hYBZwEHcpPluYzqfqubvosypTWo5Hi4YT3+iFViLPualb0ZQI4h+sL66EloU9L2roHj6AMlkXJ7nqLH1ldwCJb74D+zmFSzxuwGyU7j/mKXvtL3zGksJUXaw4jSY=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SJ0PR12MB6757.namprd12.prod.outlook.com (2603:10b6:a03:449::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9791.34; Fri, 10 Apr
 2026 08:58:52 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9791.032; Fri, 10 Apr 2026
 08:58:52 +0000
Message-ID: <2fae926b-a25b-42bc-ab63-caf36505b33d@amd.com>
Date: Fri, 10 Apr 2026 10:58:47 +0200
User-Agent: Mozilla Thunderbird
To: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 Boris Brezillon <boris.brezillon@collabora.com>
References: <20260330133623.17704-1-tvrtko.ursulin@igalia.com>
 <20260331094944.772833c0@fedora>
 <918805b0-2cb9-454a-9048-84cc5bfc8798@igalia.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <918805b0-2cb9-454a-9048-84cc5bfc8798@igalia.com>
X-ClientProxiedBy: FR4P281CA0001.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:c8::15) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SJ0PR12MB6757:EE_
X-MS-Office365-Filtering-Correlation-Id: 3f0154d8-80ca-440c-5fa0-08de96df6334
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|366016|376014|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: 
	QV6tsxaMjOzyk8KxTfN1ppGr5LpgJFgQ7GYltu/2TyxVYBHpsL5SMPTR+6YvdP+kGY7lmOI6uFIRgg4fMoWzHtH2gRPJXbKa4GnXS4l/MgoZry0dj81PA99erv1oYSnTi8EZyYX1kNmY+Dpov2OnB6+SuoyRkNib4tHbvhBX4dSJg+mk6xeyDakT3h6QAC62r2obzNqp2RA082DkXnpq+e4vgezU4/q8086JtzRmwbEeiAXBC1Sv3odGX9MnIz9hd1Yd0x2CqLJzqgySkWRuhl8V/oQlA14kO5UDszKle5qBgAk6WHkcYh85E8oGOfNuWNOaRPRWktaA2zL65nHYXmukUQIeCLe7P4EBguSDVNVaAo4+asS8aHYyZCiewANNHOktrd/9d1ug5r5PAuPADgb7HmxFcp+Sog6hwNzf/5MrC8BSMmHtDsofkeQbzHgeoB/AdOn18WaVkGKEppD9UI4Ftf+UYCeEWxcEEVDT9ohC1RvHcAyQ94dAGMQeexx89wmPW5xBc/mTsWDBs6+GswjaxcJuPu2U6MkrRsHwlw5pFXnEJ/I8gZH3z3aSZWAvtuCPJv4zdPfZF4MN248epxh4+slCS04lxwlBKbLexa4TtHhKmc0klezrCeqrNu8U0naVZTBOQAjEEC3ZtPFr3uipGIVE3TegR+UW8WkbLiHjtthB1yL8lWPimKycs4WMyiiSVhy4UXFw4hDTTpC7R3QJsKTsll28fFhcmJP31vs=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(22082099003)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZkFrdFBiNVFxVWFVRWh1RjdmNXlWQzVkNFRwV2JVb2hHM2M0SzJ0VE1yN3p0?=
 =?utf-8?B?VVBuSTJGUzEwRC9oeTFibkovT1NSRVhBUEMvUXVRa2orNGNOclNFc1E1dllK?=
 =?utf-8?B?cUtLcm1VOUJ4cFF4R3RHOE56SDJQUC82aFl4Y3dYVXVJZ1RuMS85bnRFOWM5?=
 =?utf-8?B?Y2RKQnJkNjRwL2dOVHowbWpHRDM4Ny9oVHBTeTNQbHVWQ2lwQktQSm9kM0gz?=
 =?utf-8?B?bTd1TUhnaXdqVlRLR1U3Vjl5YlpSRUFOSUc5S3dvbDF1MURXb1MvQjE0dlRL?=
 =?utf-8?B?aHQzYzNmREtaM2o1Wi8vVUEzb29lcEhhZ29wR0ZXVjE0WXlnZjBSaEFBWXpX?=
 =?utf-8?B?cjcvcG5FdGs4cXdJK0EyYzRtOS9BcUhZQmM5bEpISU1iQ0JXQU5ybW9lMm5h?=
 =?utf-8?B?WGJOcGR4M1NyRXZ2TUZ2T2xiUk9XWnBNSzdTZTg3ekl5OGxYVzN4WWtuL3VC?=
 =?utf-8?B?Z25pZytKbkNRZUZTbXV3WjRtWkFzTHFBSGk2RkdseVNNZHpOTTdZTUg3MTEw?=
 =?utf-8?B?cndZajkxdlV1QmM1d2czcVdXWmpaSXM5aVlNQThLL2ZEcGNzaGhPYXdnK2hn?=
 =?utf-8?B?QXdoUVZJUmQ1WHBtUUp6cnRRNExFTk4yckQwSElsa0NEMTlCZGJETGw5bElr?=
 =?utf-8?B?U1JTZHZONHdJeVlxRkRaL2hJcGVvOVU1Snp4aHBwOWZCellqVmlCaHB5dUlo?=
 =?utf-8?B?UkdmSzJmY2JYRHhrRmpuV2hjK1ZWci9CNldlUWZEVWxFRjRuZEJSYUNiU3hj?=
 =?utf-8?B?Z01LazFkK0tCQWVhWCtsN2R4aDhYaWJXZytuekZUMHRlM2JKdDdMbmEyTG9B?=
 =?utf-8?B?dXJITDJvK2N4ZThvZit3NGVqa0pBWUpVM0JydWczbDlwc2Z2NWVET0lFYW1F?=
 =?utf-8?B?NytlWE9YNytKdTZlN3dpbGgzODRScXZrQld2cnRESG1NcUFFTWg2OVA3dGlI?=
 =?utf-8?B?THhhejNlZU1RN1JCSEhKTTBWczN3T3hNU1FISWhwbWlzY3B6bzM5TkRzZ1E3?=
 =?utf-8?B?ejlJZ05GZEdnZXFTTG5ZL0dMay9mRFRONERycFVEbXhOTjV1TmZlMTFWYU1i?=
 =?utf-8?B?OVJBV1lhNGpRZXBTVXVsb1pZVHhMTDFRYU5hUFlFcVp0bGNIQXdMWklTS1dB?=
 =?utf-8?B?TzZ3TVhramZTQnNLRGpVdk1CbWlXYTYxd0Ivck5zSk9uRUdINnk4MnRVTDhr?=
 =?utf-8?B?dVhqeFl3bTcxSjM1UlExTW9qVzhqVW5pVm5ISXdBVmd5aGUxQnBqK2VXRTFP?=
 =?utf-8?B?eFVWWXJmREo3Vnl0dVlOTEM4UGczZ3ludVZuWmVYdGVRZTJYcXVnakg0akRh?=
 =?utf-8?B?K1B1SXVlOEM0dExsYkgwcm8xSmJlWE5jOHd2YWpjVVRWNno4ZGFqMHV2NzJt?=
 =?utf-8?B?VW44cTZ3ZGJtdS9Xc2hDU0ZTL3ZxQzNSdnFwdS9sb3ZRTUpNTWpJaFgrcGpu?=
 =?utf-8?B?VDA4NXd5VjREYXFpakxLc2ZyWjhHb2ZKRjlFLzFITUxYN2diem9KeDNScEF5?=
 =?utf-8?B?L0pjVDhIMWFoUzkzd0IvY01uUmN2bHpsRWFPT1BLS3ZVMU5OMnR2OWZ1SGJG?=
 =?utf-8?B?TDcrc1l3WDd4UTBmejc3UjRSakhOS2IyOU9qeW91cGNtaTdqNHdOcWxveUtQ?=
 =?utf-8?B?L3pqaE0wSkRwN01wY3dvazBwZVhGRjdETlVwY09mc0duUjdjMDhqdlBpYmhn?=
 =?utf-8?B?TVpMS3BjRDZaaWVELzBhSmFEZm0ycDVQb0xVTFZpdGFrSnBHYjRwZjJZMEw0?=
 =?utf-8?B?NHB3cWFsMVVONDNlQ0M2ZFJGb2ZRendsZkd6OFp3M3B2UWFjaVBHQUJUV0tB?=
 =?utf-8?B?VkkxYUxaOHVFU21ZZE1ZSWtuU3dLSW5rZ2loQkIzNEhVeVNMeTRQMzE0U2tP?=
 =?utf-8?B?RmJQOFhnZzZIckxHNHNNandxb2RzL1JYZU5BNFNzNitqKy9PUWFRbE5nSXlN?=
 =?utf-8?B?UjNuOUhkdWtKMjNWbDJyVHFBYmZBWlZ6L3J3N09SekgvVWZFMUNBTXZRcWVx?=
 =?utf-8?B?TG02eEhoRGhDYVc5Rm1PK280VXNyajhzNnN3Y0RUWVZTUjJjTWtvTmt1b1o4?=
 =?utf-8?B?MFV0NWZoMWJvNDZrYlVEUjZ2L3lJNWVkajREYVQ3Z1R5OVNXQzhWVEJkc0Fq?=
 =?utf-8?B?OWdxOEQ4VG4vS1U2OSs0REtVN2Y2S0wxVmdCMWFuNG5obVhpYXQxUnd0Tm5S?=
 =?utf-8?B?MlVaYUJTS0xLYmRybmlvUFQzczR4Q1M3ZjRYQXkyTGNFNzR6QkhaR3hNdnNL?=
 =?utf-8?B?clY2bUdlbHNHTnlXbm1BS3JpWjgrdGNHd3o5VGxTM1NodTB4TWVJL296NjVu?=
 =?utf-8?Q?cY/zpHlXm6477JIj62?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f0154d8-80ca-440c-5fa0-08de96df6334
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2026 08:58:52.0869
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: L8amLVDQOszLaKY3VEyMlG8QqdUav34AXH9oNvZhikvT4SkFvuzazboO2/IIWao1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB6757
X-Spamd-Bar: -----
Message-ID-Hash: AR7OXOJZSDQA5JXQU3V4SWJQ2O6U7OVD
X-Message-ID-Hash: AR7OXOJZSDQA5JXQU3V4SWJQ2O6U7OVD
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, kernel-dev@igalia.com, Philipp Stanner <phasta@kernel.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: Move signalling tracepoint to before ops detach
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AR7OXOJZSDQA5JXQU3V4SWJQ2O6U7OVD/>
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
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.637];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:email,amd.com:mid]
X-Rspamd-Queue-Id: A7AD73D46DB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNC85LzI2IDE1OjU4LCBUdnJ0a28gVXJzdWxpbiB3cm90ZToNCj4gDQo+IE9uIDMxLzAzLzIw
MjYgMDg6NDksIEJvcmlzIEJyZXppbGxvbiB3cm90ZToNCj4+IE9uIE1vbiwgMzAgTWFyIDIwMjYg
MTQ6MzY6MjMgKzAxMDANCj4+IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpZ2FsaWEu
Y29tPiB3cm90ZToNCj4+DQo+Pj4gTW92ZSB0aGUgc2lnbmFsbGluZyB0cmFjZXBvaW50IHRvIGJl
Zm9yZSBmZW5jZS0+b3BzIGFyZSByZXNldCBvdGhlcndpc2UNCj4+PiB0cmFjZXBvaW50IHdpbGwg
ZGVyZWZlcmVuY2UgYSBudWxsIHBvaW50ZXIuDQo+Pg0KPj4gSSBzdXNwZWN0IG90aGVyIHRyYWNl
IHBvaW50cyBhcmUgaW1wYWN0ZWQgdG9vDQo+PiAodHJhY2VfZG1hX2ZlbmNlX2Rlc3Ryb3koKSBp
cywgYXQgdGhlIHZlcnkgbGVhc3QpLg0KPiANCj4gSW5kZWVkLiBJIHdvbmRlciB3aHkgdGhhdCBk
aWQgbm90IHRyaWdnZXIgZm9yIG1lLCB3aGlsZSB0aGUgb25lIEkgZml4IGhlcmUgd2FzIGFuIGlu
c3RhLWNyYXNoLi4uDQoNCllvdSBuZWVkIHRvIGFjdHVhbGx5IGVuYWJsZSB0aGUgdHJhY2UgcG9p
bnRzIGFuZCBhdCBsZWFzdCBmb3IgdGhlIGRlc3Ryb3kgb25lIG5vYm9keSBpcyB1c3VhbGx5IGlu
dGVyZXN0ZWQgaW4gdGhhdC4NCg0KPiANCj4gVG8gZml4IHRyYWNlX2RtYV9mZW5jZV9kZXN0cm95
IEkgdGhpbmsgd2UgbmVlZCBhIG5ldyB0cmFjZXBvaW50IGRlZmluaXRpb24gaWUuIG1vdmUgaXQg
YXdheSBmcm9tIHRoZSBleGlzdGluZyBldmVudCBjbGFzcyAtIG1ha2UgaXQganVzdCBsb2cgdGhl
IGNvbnRleHQgYW5kIHNlcW5vLg0KPiANCj4gQW55b25lIGhhcyBhIGJldHRlciBpZGVhPw0KDQpU
aGUgaWRlYSBvZiB0cmFjaW5nIHdpdGhvdXQgYWNjZXNzaW5nIGZlbmNlLT5vcHMgc291bmRzIHZh
bGlkIHRvIG1lLg0KDQpBbHRlcm5hdGl2ZWx5IHdlIGNvdWxkIGNhbGwgZG1hX2ZlbmNlX3RpbWVs
aW5lX25hbWUoKSBhbmQgZG1hX2ZlbmNlX2RyaXZlcl9uYW1lKCkgZnJvbSB0aGUgdHJhY2Vwb2lu
dCBhcyB3ZWxsLCBidXQgdGhhdCBtZWFucyB0aGUgdHJhY2Vwb2ludHMgbm93IHJlcXVpcmUgYSBS
Q1UgcmVhZCBzaWRlIGxvY2suDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4gDQo+IFJlZ2Fy
ZHMsDQo+IA0KPiBUdnJ0a28NCj4gDQo+Pj4gU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4g
PHR2cnRrby51cnN1bGluQGlnYWxpYS5jb20+DQo+Pj4gRml4ZXM6IDU0MWM4ZjI0NjhiOSAoImRt
YS1idWY6IGRldGFjaCBmZW5jZSBvcHMgb24gc2lnbmFsIHYzIikNCj4+PiBDYzogQ2hyaXN0aWFu
IEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4+IENjOiBQaGlsaXBwIFN0YW5u
ZXIgPHBoYXN0YUBrZXJuZWwub3JnPg0KPj4+IENjOiBCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJy
ZXppbGxvbkBjb2xsYWJvcmEuY29tPg0KPj4+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5v
cmcNCj4+PiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnDQo+Pj4gLS0tDQo+Pj4g
wqAgZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIHwgMyArKy0NCj4+PiDCoCAxIGZpbGUgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+Pj4NCj4+PiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5j
ZS5jDQo+Pj4gaW5kZXggMTgyNmJhNzMwOTRjLi4xYzFlYWVjYWYxYjAgMTAwNjQ0DQo+Pj4gLS0t
IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+Pj4gKysrIGIvZHJpdmVycy9kbWEtYnVm
L2RtYS1mZW5jZS5jDQo+Pj4gQEAgLTM2Myw2ICszNjMsOCBAQCB2b2lkIGRtYV9mZW5jZV9zaWdu
YWxfdGltZXN0YW1wX2xvY2tlZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwNCj4+PiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICZmZW5jZS0+ZmxhZ3MpKSkN
Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuOw0KPj4+IMKgICvCoMKgwqAgdHJhY2VfZG1h
X2ZlbmNlX3NpZ25hbGVkKGZlbmNlKTsNCj4+PiArDQo+Pj4gwqDCoMKgwqDCoCAvKg0KPj4+IMKg
wqDCoMKgwqDCoCAqIFdoZW4gbmVpdGhlciBhIHJlbGVhc2Ugbm9yIGEgd2FpdCBvcGVyYXRpb24g
aXMgc3BlY2lmaWVkIHNldCB0aGUgb3BzDQo+Pj4gwqDCoMKgwqDCoMKgICogcG9pbnRlciB0byBO
VUxMIHRvIGFsbG93IHRoZSBmZW5jZSBzdHJ1Y3R1cmUgdG8gYmVjb21lIGluZGVwZW5kZW50DQo+
Pj4gQEAgLTM3Nyw3ICszNzksNiBAQCB2b2lkIGRtYV9mZW5jZV9zaWduYWxfdGltZXN0YW1wX2xv
Y2tlZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwNCj4+PiDCoCDCoMKgwqDCoMKgIGZlbmNlLT50
aW1lc3RhbXAgPSB0aW1lc3RhbXA7DQo+Pj4gwqDCoMKgwqDCoCBzZXRfYml0KERNQV9GRU5DRV9G
TEFHX1RJTUVTVEFNUF9CSVQsICZmZW5jZS0+ZmxhZ3MpOw0KPj4+IC3CoMKgwqAgdHJhY2VfZG1h
X2ZlbmNlX3NpZ25hbGVkKGZlbmNlKTsNCj4+PiDCoCDCoMKgwqDCoMKgIGxpc3RfZm9yX2VhY2hf
ZW50cnlfc2FmZShjdXIsIHRtcCwgJmNiX2xpc3QsIG5vZGUpIHsNCj4+PiDCoMKgwqDCoMKgwqDC
oMKgwqAgSU5JVF9MSVNUX0hFQUQoJmN1ci0+bm9kZSk7DQo+Pg0KPiANCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==

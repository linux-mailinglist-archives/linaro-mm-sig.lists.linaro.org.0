Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uAy1CMKH3mlXFgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Apr 2026 20:30:26 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A26F73FDB0B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Apr 2026 20:30:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2DA29404D2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Apr 2026 18:30:23 +0000 (UTC)
Received: from BN1PR04CU002.outbound.protection.outlook.com (mail-eastus2azon11010041.outbound.protection.outlook.com [52.101.56.41])
	by lists.linaro.org (Postfix) with ESMTPS id ECB65404BB
	for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2026 18:30:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=UWCsSPKR;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.56.41 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xxcAWgCMHrvmfzdni3kFNDbCBXjw52Lq0rmWkjp9Aj+85R7wlNE4UPHzuX58Ppr28WVq+CCd7YoTGpxFlurWJkNzR5CnhhIooNI1ksF/l3HTANpRVrQozjx/VTEslLqJEtzMiWKv+Ca1C3yWcShtX9PHKuKf6Meo5phBOp9ZxlPPiZhkiDs6pdzLQ3V18IgjtlsDW6wskvC+i+TBIbfMDBg7b18kUy5eMn23Dy7/G3sRtZMF3ivJ6JkrWDDbNJjb48L/NjHAUdPjoRWRIiPe8nsGUFwDttvD8uC2Yk0r0XqjCCUgGorhA1XGciONOreeMZpHxj1W4nahhaYSIhZ0Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wbesk+Ud5QnC8io+WkRXGb6kAfJ4tMgQ3rZwQ0eR2jo=;
 b=CRoZTdPzB7VUdFv2+TN0rbycRSDH9O4yyFtgkTMo3CmvVd4nBHobFxq4yN45xLcKOkeDMNT+I5zTQKU5KYYco9begAVQRFH8hbszEQ86LYljz/wCSIBPLshUbPayZBJzQCfdYQwWa4Q4JsY40xCzHIzuN9YiwiaORtv48kEdmIE7c2XYnJ8HvSEONZ5bPvMxmODnjrOdp3bhS/+yYbPe80ijcdkYWTHlrKdzH2jK8d2fs7lXDdBu3JmvVTGz1LCVYSIoVIb6W8gqv+nqypTeskAOgK4NCOMgJ6NaGmHylsN5FRnhQCZ4GZK7G3jKaxXvSlswtMoydOJLrQole8p/dQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wbesk+Ud5QnC8io+WkRXGb6kAfJ4tMgQ3rZwQ0eR2jo=;
 b=UWCsSPKRiy3majNj9UrGD6wRDBg8JtyMTKyslA4Z+UA6lsam5rIn4xY8bucLVeRCXFHzIW5riguW6Zgeo81t+dSJTu8mUDCJY8lDJFRHKnqOArFiUVQ2OPe10R6H1nT+WV2Mg43wht2ol3sW63ewf4ECEJGD2/mXcJ//Gfkvc08=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SJ1PR12MB6195.namprd12.prod.outlook.com (2603:10b6:a03:457::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.21; Tue, 14 Apr
 2026 18:30:17 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9818.017; Tue, 14 Apr 2026
 18:30:17 +0000
Message-ID: <650e835e-b60d-44fd-b212-47f8a9d18c15@amd.com>
Date: Tue, 14 Apr 2026 20:30:14 +0200
User-Agent: Mozilla Thunderbird
To: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 dri-devel@lists.freedesktop.org
References: <20260414154928.32934-1-tvrtko.ursulin@igalia.com>
 <20260414154928.32934-2-tvrtko.ursulin@igalia.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260414154928.32934-2-tvrtko.ursulin@igalia.com>
X-ClientProxiedBy: BL1PR13CA0181.namprd13.prod.outlook.com
 (2603:10b6:208:2be::6) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SJ1PR12MB6195:EE_
X-MS-Office365-Filtering-Correlation-Id: 24ae0b5a-e50d-4d4e-65d6-08de9a53e0a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: 
	xrpzmt4E2ZYcxjPGTUiS2yitu0y5sMp9LJsSr+UYQ9+71hhpq9Zwkl5m5gbSioUcqDqt+3WUsY4JoTC5VePgxR4yTzE/ciK01Fcr4glaBaN8ZY0MTNVtLMloXvf9RNjHcyu45ywzFvbW0ITWdMgNbMMg1GbaQ/K4xXOrvjCF/n6esUaJMQMbmHsXkKM1DSd2LAKdmO10Ubxk5A4sfY8fqWpbiw0PeAGU2LkzddoHPGxxOME6rDmovrxxd1jH0yz2I35t67NO/+h07NKhVFdXmDTzmLo3RH9hPyHE5ncHPT6xsmpeYfbdf7JCwelzVI0DKsFByyrJRS8pFrLRLn8Hdip3lF00/xs3zRJ1JXgIrS9nIYWHU0GMX4+4MVh1Wm6smxkG/E+W5O8zXYf3xYot9q0sOjgLb8sMIqcLkq1gKeUXEQNEc8xaLRclAM1v9zJMFvNn2hEmz2uYKQ/p3JVtoZECZmWveJgt2/lo7nc2FOJm/3m8vOIOFQILo2I6zNadZg61Z5aqzOfqEMQBcwrwemMyZThfnedhy34Vwk5RGUAdKd+oNBCYmsYU/oC5g0AyyFNNtpEyj7lt9rASUSicV6B45wOjWUL3QCWbBUaWpVF7WzHw/f6sUyPPHnXVXfJCAWlQx55VuC1ShQA9Hv5mZ/H+uqOe/3gWfRDEFfZlD3kx1gkDBjpYvw5PM7aC3T9I+QL+04ecXhGiFoKuy8knAHOBKYmAdAFqiHJsyu893HM=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?US9DSktET3V1TWpZb295UlpoSmthV2poaFNuVUliQkdKczhzYWJwT29GY0tz?=
 =?utf-8?B?TVVQbEZqbUp1UCtteXNDT0JCdEIybm1Ob3EyZzd4WmZPM0VNUktXczI1TW5N?=
 =?utf-8?B?V1Fock1kblNSZzNiZFZhbDRwenBHYkQ2QXRvek1HR2RPZU5BaWJQZ295N1RV?=
 =?utf-8?B?S1RpWWorQzZhcFZ3STBSU2JHWVI5Z0ZwUlBXemQzVzV3NU0rQnA3WWhCZTFo?=
 =?utf-8?B?cTdzYlh0d1kzQmpjZEVvZG9JSGRuVXRyK290cXU0dGYyYnFHSW5ydGdYNFhz?=
 =?utf-8?B?MktFZ0t6bms2UldPY0VjYXhLTTVSdXB6cTR0aVFTbzljdFVRNCtGdmk1WW1s?=
 =?utf-8?B?SkpiclFDSE44VTFPcWd2ZmVZaTZzWENNNSs1K2J4Y0doZ3Z1TkhwZFNKaWth?=
 =?utf-8?B?TythMS9sRnNqZVU1YnhWYzhYMk1PeGtvbEpJZU0zQzd2WHZyTkZoRHJ0aEpy?=
 =?utf-8?B?dlB5S0F2dldLb3ZzOEJORTJCeFN5ZTlSa3hYU0pIN3JyZ21jMGk2bUErZzRn?=
 =?utf-8?B?SWhLM2NaQkdkbFQyUEpXWkpVdlJYaTcrSlpSam43K1FsMnZ3V0pUSzVwOFY1?=
 =?utf-8?B?ZE1vbnFRTlBQVXN6aUtRNllRVG5FVVVxK2EvdndXVlhqNDZ3c0lMV056a2w1?=
 =?utf-8?B?VTFLc2JCamRXVWFPMDk4UWw4SmtQRnhua1NqU1VzcThydzhTaFFIZlM4TnNG?=
 =?utf-8?B?M0FmSTIySDlUcGUwMVFIZUlqT29VWGlNYkdGY3Ivcm9kMDVGTmVJbGNjTXRH?=
 =?utf-8?B?d214N3FILzVSQ0ZjVUZGMHVaMFRLN2U2aEtPRXdHUTl0SFRpY1N6MXhyZVVL?=
 =?utf-8?B?eWY4MmJyUVZ0QVljUFNnZ0YwN3JyWEFRTW1LT3RaUVdDaG84SWFWdXYwOGl5?=
 =?utf-8?B?MFRmNW9RbmsxQ3Zxd2wwUUFxdFRsTlVDWmx0Wkhac3gwZkVveHMzNHAwSkIx?=
 =?utf-8?B?b3NXRW5OSXpmTGVnSXNGU1pjQ2FldG1Fa1VNR2lETllQRkJxem41eHVDUFQv?=
 =?utf-8?B?aFI0NUFpSFVaQkZSOU5YUHpSeVpFWDRKd0IyVmlNaFRHb25wU1VTMm1OSDBr?=
 =?utf-8?B?NG1yUmI1dGk2clg0VWo0bWhvZ2VmYkNPd1VYLyswT3NkVGc5TFlidTQ5ejhU?=
 =?utf-8?B?d1JpZERvQk5mTDRoL293eDlJNVB0TUZidVcrZDhkcmdqUDhBbjhNUHRzL29L?=
 =?utf-8?B?MGV1YWM5dWFpc0htZHovNTBOYVJEMkdKakh1MWtnMDNmazNQSVdUY1Q2b3BG?=
 =?utf-8?B?WjRnV25YMEs3WnI2bnlnZFc3ZHdZc3lhUzBwRTNJWUU0b0tZSHYrQ1lDWkZT?=
 =?utf-8?B?em9PWiswYnZ0Q1hiZEVIN2pZTi9idDl1QlRoTXhwRHBPVkZydG40MHdKWWs5?=
 =?utf-8?B?cWJsVUdoVGRoRElRYllmaVZOODlGbG1haVY3cVJMandDbFZyV2Fsa3pRc0Vx?=
 =?utf-8?B?OFlJQXFiNFlmWWR5RXV1bE8xSmZYOUxqQ3l0MllqOVlMMVJQdzVkUVJHNEZK?=
 =?utf-8?B?S0pNblplbzFKOXFCOS9rMnFaclM0ejhQMjZDaEc4am8yZzFoeld1dEVpbWxy?=
 =?utf-8?B?bG1XZEN3bUdZNGlFeTlGdGRqL0VVNnpwTVVHSHh4bG1TZzU1R1JqMjczMEFY?=
 =?utf-8?B?aHF3R204WHZ3UlQyS2I2bHJYV01PTllmczFtLytBWUtSOUNNSEZaRC9GaUlu?=
 =?utf-8?B?aSt6Q2tIUlVCVUJmTlhDai9LL281azVwc25Sb045VWljdzE0aEkrS013bnI1?=
 =?utf-8?B?Z01QTWtJSE8vUnZadGVsVm8vS2Jmdmt4U2RraGRJMWVLMGpMYnJYVnZXN1lt?=
 =?utf-8?B?L1U4TXNsSHRDRHdaVm5aUytkYzVxSnZxQmtDVXNBQkxnTTJNTUw3NXBKVEts?=
 =?utf-8?B?S3FOUVFqK3NwOXB5OEpKNjVMN0kwc2I4OVNFV091dmJSRVhhTVlPY2NvajhV?=
 =?utf-8?B?SjhZNnRRL0EzTGI3bFh0eUJCMVcrcFJzZFFjQ3Rhc0puUCsvMzIyazM3OTVC?=
 =?utf-8?B?RzVyYWNYSkU0MEo3Q2Vnd3pPTFJlQUNrUEZUb2ZzUjZCdFZjc3AzclQ4RVlj?=
 =?utf-8?B?RXN2VkN1cUJ5bm1YWUIwOWZoTy9TcDd6QzF3Rk5BVHV5Z0tzZUZScTBCMEh6?=
 =?utf-8?B?NGRIemgrU29nODEzdHZibkp2N25kY1IrbnhxOVY0QWVTUG9FcDJjakNGSXBE?=
 =?utf-8?B?R2tZbUlOTHQyR0JsYkVVL0xzY0VnWHBleW9qS2t2L2lZNFZoNXVWNkZtVGEy?=
 =?utf-8?B?alJqYVlhMmtta25Wek1YZFpCMUxWakRhN3l3Z29naHl4cGgvRlA4WWpENmhh?=
 =?utf-8?Q?9jd2tW+bPBJisSAnN6?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24ae0b5a-e50d-4d4e-65d6-08de9a53e0a1
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2026 18:30:17.6561
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pv1+btBJ6lB4VCj6zORGT/t/GCz2VpGEFRfHPuhQwwePK7+f8BOK4oeNbAyoWRoP
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR12MB6195
X-Spamd-Bar: -----
Message-ID-Hash: WAGRXIPTO6JDXEAMI2KPM5Q3BYV5PZTW
X-Message-ID-Hash: WAGRXIPTO6JDXEAMI2KPM5Q3BYV5PZTW
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: kernel-dev@igalia.com, Philipp Stanner <phasta@kernel.org>, Boris Brezillon <boris.brezillon@collabora.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/2] dma-fence: Fix potential tracepoint null pointer dereferences
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WAGRXIPTO6JDXEAMI2KPM5Q3BYV5PZTW/>
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
	R_SPF_ALLOW(-0.20)[+mx:c];
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
	NEURAL_HAM(-0.00)[-0.991];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:mid,amd.com:email,igalia.com:email,linaro.org:email]
X-Rspamd-Queue-Id: A26F73FDB0B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNC8xNC8yNiAxNzo0OSwgVHZydGtvIFVyc3VsaW4gd3JvdGU6DQo+IFRyYWNlX2RtYV9mZW5j
ZV9zaWduYWxlZCwgdHJhY2VfZG1hX2ZlbmNlX3dhaXRfZW5kIGFuZA0KPiB0cmFjZV9kbWFfZmVu
Y2VfZGVzdHJveSBjYW4gYWxsIGN1cnJlbnRseSBkZXJlZmVyZW5jZSBhIG51bGwgZmVuY2UtPm9w
cw0KPiBwb2ludGVyIGFmdGVyIGl0IGhhcyBiZWVuIHJlc2V0IG9uIGZlbmNlIHNpZ25hbGxpbmcu
DQo+IA0KPiBMZXRzIHVzZSB0aGUgc2FmZSBzdHJpbmcgZ2V0dGVycyBmb3IgbW9zdCB0cmFjZXBv
aW50cyB0byBhdm9pZCB0aGlzIGNsYXNzDQo+IG9mIGEgcHJvYmxlbSwgd2hpbGUgZm9yIHRoZSBz
aWduYWwgdHJhY2Vwb2ludCB3ZSBtb3ZlIGl0IHRvIGJlZm9yZSBvcHMgYXJlDQo+IGNsZWFyZWQg
dG8gYXZvaWQgbG9zaW5nIHRoZSBkcml2ZXIgYW5kIHRpbWVsaW5lIG5hbWUgaW5mb3JtYXRpb24u
IEFwYXJ0DQo+IGZyb20gbW92aW5nIGl0IHdlIGFsc28gbmVlZCB0byBhZGQgYSBuZXcgdHJhY2Vw
b2ludCBjbGFzcyB0byBieXBhc3MgdGhlDQo+IHNhZmUgbmFtZSBnZXR0ZXJzIHNpbmNlIHRoZSBz
aWduYWxlZCBiaXQgaXMgYWxyZWFkeSBzZXQuDQo+IA0KPiBGb3IgZG1hX2ZlbmNlX2luaXQgd2Ug
YWxzbyBuZWVkIHRvIHVzZSB0aGUgbmV3IHRyYWNlcG9pbnQgY2xhc3Mgc2luY2UgdGhlDQo+IHJj
dSByZWFkIGxvY2sgaXMgbm90IGhlbGQgdGhlcmUsIGFuZCB3ZSBjYW4gZG8gdGhlIHNhbWUgZm9y
IHRoZSBlbmFibGUNCj4gc2lnbmFsaW5nIHNpbmNlIHRoZXJlIHdlIGFyZSBjZXJ0YWluIHRoZSBm
ZW5jZSBjYW5ub3QgYmUgc2lnbmFsZWQgd2hpbGUNCj4gd2UgYXJlIGhvbGRpbmcgdGhlIGxvY2sg
YW5kIGhhdmUgZXZlbiB2YWxpZGF0ZWQgdGhlIGZlbmNlLT5vcHMuDQo+IA0KPiBTaWduZWQtb2Zm
LWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaWdhbGlhLmNvbT4NCj4gRml4ZXM6
IDU0MWM4ZjI0NjhiOSAoImRtYS1idWY6IGRldGFjaCBmZW5jZSBvcHMgb24gc2lnbmFsIHYzIikN
Cj4gQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4gQ2M6
IFBoaWxpcHAgU3Rhbm5lciA8cGhhc3RhQGtlcm5lbC5vcmc+DQo+IENjOiBCb3JpcyBCcmV6aWxs
b24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPg0KPiBDYzogbGludXgtbWVkaWFAdmdl
ci5rZXJuZWwub3JnDQo+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNCj4gLS0t
DQo+ICBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgICAgICB8ICAzICsrLQ0KPiAgaW5jbHVk
ZS90cmFjZS9ldmVudHMvZG1hX2ZlbmNlLmggfCAzMyArKysrKysrKysrKysrKysrKysrKysrKysr
KysrLS0tLQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAzMSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9u
cygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyBiL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPiBpbmRleCBhMmFhODJmNGVlZGQuLmIzYmZhNjk0
M2E4ZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+ICsrKyBi
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPiBAQCAtMzYzLDYgKzM2Myw4IEBAIHZvaWQg
ZG1hX2ZlbmNlX3NpZ25hbF90aW1lc3RhbXBfbG9ja2VkKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNl
LA0KPiAgCQkJCSAgICAgICZmZW5jZS0+ZmxhZ3MpKSkNCj4gIAkJcmV0dXJuOw0KPiAgDQo+ICsJ
dHJhY2VfZG1hX2ZlbmNlX3NpZ25hbGVkKGZlbmNlKTsNCj4gKw0KPiAgCS8qDQo+ICAJICogV2hl
biBuZWl0aGVyIGEgcmVsZWFzZSBub3IgYSB3YWl0IG9wZXJhdGlvbiBpcyBzcGVjaWZpZWQgc2V0
IHRoZSBvcHMNCj4gIAkgKiBwb2ludGVyIHRvIE5VTEwgdG8gYWxsb3cgdGhlIGZlbmNlIHN0cnVj
dHVyZSB0byBiZWNvbWUgaW5kZXBlbmRlbnQNCj4gQEAgLTM3Nyw3ICszNzksNiBAQCB2b2lkIGRt
YV9mZW5jZV9zaWduYWxfdGltZXN0YW1wX2xvY2tlZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwN
Cj4gIA0KPiAgCWZlbmNlLT50aW1lc3RhbXAgPSB0aW1lc3RhbXA7DQo+ICAJc2V0X2JpdChETUFf
RkVOQ0VfRkxBR19USU1FU1RBTVBfQklULCAmZmVuY2UtPmZsYWdzKTsNCj4gLQl0cmFjZV9kbWFf
ZmVuY2Vfc2lnbmFsZWQoZmVuY2UpOw0KDQpJIHRoaW5rIHRoaXMgcGFydCBoZXJlIHNob3VsZCBi
ZSBhIHNlcGFyYXRlIHBhdGNoLg0KDQo+ICANCj4gIAlsaXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUo
Y3VyLCB0bXAsICZjYl9saXN0LCBub2RlKSB7DQo+ICAJCUlOSVRfTElTVF9IRUFEKCZjdXItPm5v
ZGUpOw0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS90cmFjZS9ldmVudHMvZG1hX2ZlbmNlLmggYi9p
bmNsdWRlL3RyYWNlL2V2ZW50cy9kbWFfZmVuY2UuaA0KPiBpbmRleCAzYWJiYTQ1YzA2MDEuLjll
MGNiOWNlMjM4OCAxMDA2NDQNCj4gLS0tIGEvaW5jbHVkZS90cmFjZS9ldmVudHMvZG1hX2ZlbmNl
LmgNCj4gKysrIGIvaW5jbHVkZS90cmFjZS9ldmVudHMvZG1hX2ZlbmNlLmgNCj4gQEAgLTksMTIg
KzksMzcgQEANCj4gIA0KPiAgc3RydWN0IGRtYV9mZW5jZTsNCj4gIA0KPiArREVDTEFSRV9FVkVO
VF9DTEFTUyhkbWFfZmVuY2UsDQo+ICsNCj4gKwlUUF9QUk9UTyhzdHJ1Y3QgZG1hX2ZlbmNlICpm
ZW5jZSksDQo+ICsNCj4gKwlUUF9BUkdTKGZlbmNlKSwNCj4gKw0KPiArCVRQX1NUUlVDVF9fZW50
cnkoDQo+ICsJCV9fc3RyaW5nKGRyaXZlciwgZG1hX2ZlbmNlX2RyaXZlcl9uYW1lKGZlbmNlKSkN
Cj4gKwkJX19zdHJpbmcodGltZWxpbmUsIGRtYV9mZW5jZV90aW1lbGluZV9uYW1lKGZlbmNlKSkN
Cj4gKwkJX19maWVsZCh1bnNpZ25lZCBpbnQsIGNvbnRleHQpDQo+ICsJCV9fZmllbGQodW5zaWdu
ZWQgaW50LCBzZXFubykNCj4gKwkpLA0KPiArDQo+ICsJVFBfZmFzdF9hc3NpZ24oDQo+ICsJCV9f
YXNzaWduX3N0cihkcml2ZXIpOw0KPiArCQlfX2Fzc2lnbl9zdHIodGltZWxpbmUpOw0KPiArCQlf
X2VudHJ5LT5jb250ZXh0ID0gZmVuY2UtPmNvbnRleHQ7DQo+ICsJCV9fZW50cnktPnNlcW5vID0g
ZmVuY2UtPnNlcW5vOw0KPiArCSksDQo+ICsNCj4gKwlUUF9wcmludGsoImRyaXZlcj0lcyB0aW1l
bGluZT0lcyBjb250ZXh0PSV1IHNlcW5vPSV1IiwNCj4gKwkJICBfX2dldF9zdHIoZHJpdmVyKSwg
X19nZXRfc3RyKHRpbWVsaW5lKSwgX19lbnRyeS0+Y29udGV4dCwNCj4gKwkJICBfX2VudHJ5LT5z
ZXFubykNCj4gKyk7DQo+ICsNCg0KTWhtLCBJJ20gc3Ryb25nbHkgaW4gZmF2b3IgdG8ganVzdCB1
c2UgdGhpcyBhcHByb2FjaCBmb3IgYWxsIHRyYWNlIHBvaW50cy4NCg0KVGhlIG1pbmltYWwgZXh0
cmEgb3ZlcmhlYWQgc2hvdWxkbid0IHJlYWxseSBtYXR0ZXIgYXQgYWxsLg0KDQpSZWdhcmRzLA0K
Q2hyaXN0aWFuLiANCg0KPiAgLyoNCj4gICAqIFNhZmUgb25seSBmb3IgY2FsbCBzaXRlcyB3aGlj
aCBhcmUgZ3VhcmFudGVlZCB0byBub3QgcmFjZSB3aXRoIGZlbmNlDQo+ICAgKiBzaWduYWxpbmcs
aG9sZGluZyB0aGUgZmVuY2UtPmxvY2sgYW5kIGhhdmluZyBjaGVja2VkIGZvciBub3Qgc2lnbmFs
ZWQsIG9yIHRoZQ0KPiAgICogc2lnbmFsaW5nIHBhdGggaXRzZWxmLg0KPiAgICovDQo+IC1ERUNM
QVJFX0VWRU5UX0NMQVNTKGRtYV9mZW5jZSwNCj4gK0RFQ0xBUkVfRVZFTlRfQ0xBU1MoZG1hX2Zl
bmNlX29wcywNCj4gIA0KPiAgCVRQX1BST1RPKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKSwNCj4g
IA0KPiBAQCAtNDYsNyArNzEsNyBAQCBERUZJTkVfRVZFTlQoZG1hX2ZlbmNlLCBkbWFfZmVuY2Vf
ZW1pdCwNCj4gIAlUUF9BUkdTKGZlbmNlKQ0KPiAgKTsNCj4gIA0KPiAtREVGSU5FX0VWRU5UKGRt
YV9mZW5jZSwgZG1hX2ZlbmNlX2luaXQsDQo+ICtERUZJTkVfRVZFTlQoZG1hX2ZlbmNlX29wcywg
ZG1hX2ZlbmNlX2luaXQsDQo+ICANCj4gIAlUUF9QUk9UTyhzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5j
ZSksDQo+ICANCj4gQEAgLTYwLDE0ICs4NSwxNCBAQCBERUZJTkVfRVZFTlQoZG1hX2ZlbmNlLCBk
bWFfZmVuY2VfZGVzdHJveSwNCj4gIAlUUF9BUkdTKGZlbmNlKQ0KPiAgKTsNCj4gIA0KPiAtREVG
SU5FX0VWRU5UKGRtYV9mZW5jZSwgZG1hX2ZlbmNlX2VuYWJsZV9zaWduYWwsDQo+ICtERUZJTkVf
RVZFTlQoZG1hX2ZlbmNlX29wcywgZG1hX2ZlbmNlX2VuYWJsZV9zaWduYWwsDQo+ICANCj4gIAlU
UF9QUk9UTyhzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSksDQo+ICANCj4gIAlUUF9BUkdTKGZlbmNl
KQ0KPiAgKTsNCj4gIA0KPiAtREVGSU5FX0VWRU5UKGRtYV9mZW5jZSwgZG1hX2ZlbmNlX3NpZ25h
bGVkLA0KPiArREVGSU5FX0VWRU5UKGRtYV9mZW5jZV9vcHMsIGRtYV9mZW5jZV9zaWduYWxlZCwN
Cj4gIA0KPiAgCVRQX1BST1RPKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKSwNCj4gIA0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aBD7HXPcr2kzdAIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Mar 2026 09:55:15 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id F1CF3247B1C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Mar 2026 09:55:14 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D14623F7AE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Mar 2026 08:55:13 +0000 (UTC)
Received: from DM1PR04CU001.outbound.protection.outlook.com (mail-centralusazon11010012.outbound.protection.outlook.com [52.101.61.12])
	by lists.linaro.org (Postfix) with ESMTPS id C84BA3F7AE
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Mar 2026 08:55:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="Qm/52LTK";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.61.12 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T9OSUSZ/1VGQjaPq/vYTGGItteBGeP8I26CI1ldrU/2axqxIALGkXHoQzs3GWfzFZ54L56KSNz5wwaVgkrXQ93HdEYUjS0imihOmdqbrH+LtA5stxOBBtFdqZDLK0OgTNfhKOybR+sqU9z4GCAT7MDjPeaoSyqRqutXPURW7+fiPYcgEQncP2eDe5Hp79iyQpLd7ucKJWWQFG43Ja21J+UlooMTZ+KuEN5FgpHScOgf+G3bMKqZ/dXXTGW2qZM9v1quuJBzMQlyApJsoh+ODjKyaZCNhqa2GLksI5wnKBgTnYLbhavEdMPy1wiZAsGBny8B5g9Wa9FZ3ShdolcWRlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XQXSEzS2OHfooCaM/61uv9i0wEBu1Le8KE7FbDZfaQ8=;
 b=dynCzBJUM/SO58MjeQgKW/ADeXOKjCs/7tFgMDHf7gG/Og5tOTSbfS3y0uSa3C49WHvjr8oeqxLQQfH1sHqG04cMmddcVRMFCFpbEZs4rhvB3UXHZt+FkBVzBAtYVfd+iuI0v1CZaOq0MrhcfqiWrzDGB7oGt3RJ82xMXPFgpOYfFFjoBU6CfcKTvNqny7L0nkAFSVdHLkdPt4ZyLgBPqyGoyH0uX57KOeyH/WCz/STLsQslFdPXXiOhNSR07BYVTy0PDGFZg6MVIF3bZtysCA5+iJMY5+mBJsKBgnRCwut2m45AZ7fzsFte55n7jf0vc97bX0f274PXu6Mig7xvdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XQXSEzS2OHfooCaM/61uv9i0wEBu1Le8KE7FbDZfaQ8=;
 b=Qm/52LTKGByIBFdEjA/BO4BKlrRkJRTAVc2/7nZJTNyLn578H3cVx38KBcDwjlsZXs70EKrH5oW6SPli3oWwMNLf/OHZUu/OKSUH03mjberm0n+5Mqd0T5Ttz3udbZgYUzf4nmnoIp2rtnwDpyyecFk5XrTw9J71iTpkJ0W1IJY=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DS0PR12MB8561.namprd12.prod.outlook.com (2603:10b6:8:166::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.5; Tue, 10 Mar
 2026 08:55:08 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9700.010; Tue, 10 Mar 2026
 08:55:07 +0000
Message-ID: <c9271f37-e66e-45f6-8c81-1c9686ff53d4@amd.com>
Date: Tue, 10 Mar 2026 09:55:02 +0100
User-Agent: Mozilla Thunderbird
To: Linus Walleij <linusw@kernel.org>, Sumit Semwal
 <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>
References: <20260310-cma-heap-clear-pages-v2-0-ecbbed3d7e6d@kernel.org>
 <20260310-cma-heap-clear-pages-v2-2-ecbbed3d7e6d@kernel.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260310-cma-heap-clear-pages-v2-2-ecbbed3d7e6d@kernel.org>
X-ClientProxiedBy: FR4P281CA0417.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:d0::8) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DS0PR12MB8561:EE_
X-MS-Office365-Filtering-Correlation-Id: 8c1b99f7-85c0-4db2-afbf-08de7e82ba89
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: 
	3jGayQTpW7I/LiU+g0Uxr4JDed+OD0SSX7RnL1lUd9CdhEMcBXZ03B1n0vngUD0ltOgr4HPEi/4vs8WmxsLv7HKsU3Hg1kMIQUnMY0UnuMDgdIiqBbIAYu6RkQ/J69/Ch2gbyjfH3k6bJO/Hiiga981lGJdR5uNE1ze/36mIQ2qcMrUed90KpIhzFQHfkqNcsjN6ruA1qEk5dVCsl2swLiqDyN4c4cg/1CCu94/SRDj3CMvazcdACyY0yMxguzIDfD3s+dP9Pv+dhFQqr4L+PoV/afAYDnNxpTsGmOjTUmQsxGPMcwsU+hiev6kFpc1AHSKVayMnAAZic60RtIuP+6R3xMk02Kq5cMxYJ7dpIpYVI1Pxqma0jlhbscuoRmBut8cdKecAUcq7K31+TOABRosJys0LSDJIsOeDrOvEoHm9y/qyGq8WBvCnlZocrZtR/sVJE2/gsSJXfU9NSIENuTIrHFRnscMIsO/RWOCCDCQH9G2XYpZ3phZmRywpIenKzXXhXdMWGKmKIOUJAGLqCCjJg5xCeRR0ITn28qPA7NcOkMRPoUSs/ayO0mXum+TZ+x11kwZU4p/Xc4sk657b1PnHo7qAb/Grc1aOIvDiZtcRj6cg31VfR9xkeWXMMtwj3/L3boQpRFQ59TODcZG/5PyKGiyL8rMuUT3Gs+heLxCFwjV5/iKdQ5aG8a4Ov2E0lkU/DTJ+1FrGBaJLmTyzkyExSML5Z48b46L0RSqSbIc=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?S2pyWU0ybzFOL2gzZVV5SksrOUo3TTFteHF0R1ZvTEcxY2kxNEJBUG9sb1lN?=
 =?utf-8?B?WDgrMjZhV01pWEZFS3BYTS9DT1RUbGFJekdvMGFFTXIvSHkzalNBcmdNTUhL?=
 =?utf-8?B?THh5SDIvSkhGTUV6VlVjSHI3YjVQSDF3YUkydW9SQXVlZGhlclVNc2NtcC9u?=
 =?utf-8?B?MHZVT1FXSmFDQ3dNcHRmM1JOU2RlMWc2OGNIWFpDTGFZcGYrd3c3eEVEUGFW?=
 =?utf-8?B?M2NSTm1UdWVUK1MrbjlIa3hWMDJQZlR5UHI3VmlRQmdRT1l2azBoNGhsNk1l?=
 =?utf-8?B?aENmMWsvTnJ3QVpqZ2JCT2VhcFcxdUVhVnpITTNGTDZNbE9sVjBsc3BpeVZQ?=
 =?utf-8?B?L1VBbEg4bnUxM2hXY05ZOWM4RmErSm1EVXludDgrU2xuaEVnUSs5SXNUTnpR?=
 =?utf-8?B?dnFVMVlXVjhaZlR4dGNuVUFqeDlGN3FmWGpDaFcvQVJQeEM2S0dmMml6Z0Fi?=
 =?utf-8?B?NWttOTZ2MkpIbGxTWGNZeGI5QWxKN0tqdGg0NHJseXM2cWRFZnNxcno3RUQr?=
 =?utf-8?B?SXBMeE5QcFRzOElRNG52QUgwYTBOdEJqSFpQcHpzMVRJWTdXMzMvSGxackFa?=
 =?utf-8?B?eHladnRIUnYxMjdFUWhOQWRsSjlMZmRnR21idkNOT2c1QnlMMXI5Q0VTTXA5?=
 =?utf-8?B?WXUyL2FSa0RzaDYxZ012NkIvSEJOTDF4bVhmQ3IrYjRHYUpLcVRzcGVRTE0r?=
 =?utf-8?B?a1M1cFd5ZHJuNXAyY05qUktocll4VXNQTko5K2xHYUJvMmo0amZ3c242a0Ux?=
 =?utf-8?B?RGsrUGYrT0Z1bWkvRWlQWktVNnJGK1hIY1h0UGtBNTlRZTFxdmlzYXVqUllu?=
 =?utf-8?B?MlB0RE1VSE1NTnRRb0EvYkg2WUV2aC8wMnBYc29NUzlsNHIxdy9xemo4bTBZ?=
 =?utf-8?B?MmI1RXUxaUsxS0hkbkM3SUlWNTVHdlRvS3ZmYldrRE5BRWw1d2dnWENhRlBu?=
 =?utf-8?B?ZVo3MWw4YnZ1YlFKeTRMaStYTTJVdnBlU20wRjJNd013Ylg4MjlBVFpzQ2VV?=
 =?utf-8?B?OGpMZXNoZXZPenhLQnhReU9McmhSK2dreHpEOTJFQTR1ckZTdk1GQ0svblZK?=
 =?utf-8?B?dFpQeEFZUTZHSjR5SzAzaVRIR2oxa1FybmJlVjhENU5qSzdlaHllQUJPSVZ1?=
 =?utf-8?B?SWM4VHhKR01iYnFsS1VXY0RZdzg2SVlSTTF5TnZXd25abmdmbit2ZEFzd3ls?=
 =?utf-8?B?eHJFZEZsSjJRMGdhZ0QwLzl0aWhvRVVkdWI2THI4MnpFTXJzS1BadERSYnJE?=
 =?utf-8?B?NUl5ZzhrNFk2MHZBb2R1YksxM2FETXlmb2tUS05YRFlXTGZTSm5sL0VSTWI1?=
 =?utf-8?B?b0pPTFJBMXBFazRkUUVwRUdtRm5ZbFpCb1pRVVFWTyttNFhibjlUUWNETEJI?=
 =?utf-8?B?aE5Sc0l5SFJmUnJzQ1QxN1hkS1FNc2hqTmZtb0hFdUMreVJxSnhCL0Rsb0sz?=
 =?utf-8?B?Zk5iQTd1emwvYW8zNXhpQVRvTE9iSkR4ZG9rbXBhdjc2dk5KNm8reldRWmRp?=
 =?utf-8?B?cWNqdExjWXkzS292czdxSllBYjlUMTV5bnpGMWNMTitnbnRETWh1bTJhTnZ2?=
 =?utf-8?B?YXhBekVITmFydkdhbS93eVFqU2s1dUxtZ3FIQ2JoSWxVWTMxNzZHL001b040?=
 =?utf-8?B?OGJBQXRFUDBTM1pLZU1mZnpaeWx4bXZHeU96Sy9SSUk1bjZTcVJncWF2bkxU?=
 =?utf-8?B?TlBYYTJmZUEzOVZCb0NGTnVHcmpueTZQa3NnWm8wWGxqWmh0TFdLZU4xR2Mv?=
 =?utf-8?B?Q25GMWhiYncxbWVTL0JFd3Nlak5uQnVzencvY0ppVEJYZXlvQ3FaTGlwSTFk?=
 =?utf-8?B?QmpUdTlNTFRON1pUSWRtVnRuMzRKUGliKytpNzd1amYrdHR2MlNqNktJWUgx?=
 =?utf-8?B?TWZDSXJmeHROSnN1bTFwd1d2NXhGYkE3LzZweEk3ZEx5RUxqMlgzdjl1SmZo?=
 =?utf-8?B?bnNiVlpEU213bWlFVFRDekhZK3dVajRGSXQyUVo4MWI1a0poQWJybnIxR09z?=
 =?utf-8?B?bUIxcDROMXNPTmxSa09jaGp2OXh5bHhjNnVnVWM4eVN5K0p2a1NJMS9qV2JY?=
 =?utf-8?B?OFI4aUowaTFJV2ZlclRabkkyK3hLdnBNRURIdWJaNlNuOFZtMmFyWEgxNW5k?=
 =?utf-8?B?aVRoSWhrd3FibzROUnVqcEl2ZDFOc3JvR1gwNThONEI2VGM0TDkyNS90TXFO?=
 =?utf-8?B?c3BwT2JaTWdWT3k3L2NZcHBWU29sZyttMnZydnJoVHZUTmZRWXlYYnRVYThB?=
 =?utf-8?B?RHQ5a0dTc2VsRGFrUzBXdVhtOHJkSUppY0RkTGtqeEFZS1k5cjhlUzhMTlF5?=
 =?utf-8?Q?OMc7LSJuUIUlzWiVHs?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c1b99f7-85c0-4db2-afbf-08de7e82ba89
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2026 08:55:07.7524
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j3+CvbxtrCDEsVCH0o3hpbgDSF+UnlsWJ0VDHlLRQN010qPbw/8NqUtrW5i96C6b
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB8561
X-Spamd-Bar: ----
Message-ID-Hash: DMOBRE66QA3SLSNNFZT36Q7ZVKBTV4AU
X-Message-ID-Hash: DMOBRE66QA3SLSNNFZT36Q7ZVKBTV4AU
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/2] dma-buf: heaps: Clear CMA highages using helper
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DMOBRE66QA3SLSNNFZT36Q7ZVKBTV4AU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: F1CF3247B1C
X-Rspamd-Server: lfdr
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
	NEURAL_HAM(-0.00)[-0.910];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:mid,amd.com:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Action: no action

T24gMy8xMC8yNiAwOTo1MywgTGludXMgV2FsbGVpaiB3cm90ZToNCj4gQ3VycmVudGx5IHRoZSBD
TUEgYWxsb2NhdG9yIGNsZWFycyBoaWdobWVtIHBhZ2VzIHVzaW5nDQo+IGttYXAoKS0+Y2xlYXJf
cGFnZSgpLT5rdW5tYXAoKSwgYnV0IHRoZXJlIGlzIGEgaGVscGVyDQo+IHN0YXRpYyBpbmxpbmUg
aW4gPGxpbnV4L2hpZ2htZW0uaD4gdGhhdCBkb2VzIHRoZSBzYW1lIGZvcg0KPiB1cyBzbyB1c2Ug
Y2xlYXJfaGlnaHBhZ2UoKSBpbnN0ZWFkIG9mIG9wZW4gY29kaW5nIHRoaXMuDQo+IA0KPiBTdWdn
ZXN0ZWQtYnk6IFQuSi4gTWVyY2llciA8dGptZXJjaWVyQGdvb2dsZS5jb20+DQo+IFNpZ25lZC1v
ZmYtYnk6IExpbnVzIFdhbGxlaWogPGxpbnVzd0BrZXJuZWwub3JnPg0KDQpBaCB5ZXMsIHNvbWVi
b2R5IHBvaW50ZWQgdGhhdCBvdXQgdG8gbWUgYmVmb3JlIGJ1dCBJIG5ldmVyIGZvdW5kIHRpbWUg
dG8gd3JpdGUgYSBwYXRjaCB0byBjbGVhbiBpdCB1cC4NCg0KUmV2aWV3ZWQtYnk6IENocmlzdGlh
biBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMv
ZG1hLWJ1Zi9oZWFwcy9jbWFfaGVhcC5jIHwgNSArLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCA0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
ZG1hLWJ1Zi9oZWFwcy9jbWFfaGVhcC5jIGIvZHJpdmVycy9kbWEtYnVmL2hlYXBzL2NtYV9oZWFw
LmMNCj4gaW5kZXggZjBiYWNmMjVlZDlkLi45Mjg2NTc4NmNmYzkgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZG1hLWJ1Zi9oZWFwcy9jbWFfaGVhcC5jDQo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9o
ZWFwcy9jbWFfaGVhcC5jDQo+IEBAIC0zMjksMTAgKzMyOSw3IEBAIHN0YXRpYyBzdHJ1Y3QgZG1h
X2J1ZiAqY21hX2hlYXBfYWxsb2NhdGUoc3RydWN0IGRtYV9oZWFwICpoZWFwLA0KPiAgICAgICAg
ICAgICAgICAgc3RydWN0IHBhZ2UgKnBhZ2UgPSBjbWFfcGFnZXM7DQo+IA0KPiAgICAgICAgICAg
ICAgICAgd2hpbGUgKG5yX2NsZWFyX3BhZ2VzID4gMCkgew0KPiAtICAgICAgICAgICAgICAgICAg
ICAgICB2b2lkICp2YWRkciA9IGttYXBfbG9jYWxfcGFnZShwYWdlKTsNCj4gLQ0KPiAtICAgICAg
ICAgICAgICAgICAgICAgICBjbGVhcl9wYWdlKHZhZGRyKTsNCj4gLSAgICAgICAgICAgICAgICAg
ICAgICAga3VubWFwX2xvY2FsKHZhZGRyKTsNCj4gKyAgICAgICAgICAgICAgICAgICAgICAgY2xl
YXJfaGlnaHBhZ2UocGFnZSk7DQo+ICAgICAgICAgICAgICAgICAgICAgICAgIC8qDQo+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAqIEF2b2lkIHdhc3RpbmcgdGltZSB6ZXJvaW5nIG1lbW9yeSBp
ZiB0aGUgcHJvY2Vzcw0KPiAgICAgICAgICAgICAgICAgICAgICAgICAgKiBoYXMgYmVlbiBraWxs
ZWQgYnkgU0lHS0lMTC4NCj4gDQo+IC0tDQo+IDIuNTMuMA0KPiANCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==

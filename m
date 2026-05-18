Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oBuQO1H4CmpZ+QQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 13:30:25 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 67FCB56B903
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 13:30:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A3947406AD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 11:30:23 +0000 (UTC)
Received: from BN8PR05CU002.outbound.protection.outlook.com (mail-eastus2azon11011027.outbound.protection.outlook.com [52.101.57.27])
	by lists.linaro.org (Postfix) with ESMTPS id E503D404C7
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 11:30:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=N0dMmEAe;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.57.27 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Dmxmza0rQp6o7A5nVToAp2soaQUHo+lLofgj7VslnG5XuuPpAsdaKSGnDe+IZSP9yhc10TazMkhRpgYgfk9dT6Eb0XPUizl1OKctnOlKK8ptXYKdjsuCUpgIn/IfM3BsAXk4ulEl3VB+Lp3ElfgFufqcAGkWZCDD5Lq/wqRtazisBMYVkCQcTbhk6zDzhf5IHf4rIUJ6rnAdMIAYyD7aXGAHVKG5eiy++PCPmW5LCXOE+/4g9deCrBh+vj+5g5mfDCyRxsDIyuelZcmnEPiEUqu0uak0xInmgh55AViOkgco7wwTHvIMlLKuqeiLN0+24HMaYpay7f1X/4uDiKJ/Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JujPs5Axe1X/x5PWvhbmclW3rCRoDhYl7FhOhq2CFPo=;
 b=OcDYeZ9EB/t0MKI0nGHoZ5QD6bVBki59I3i//D0CveNSgAZtaMel42opQkkKpTMFv14YtWMgg7OaZLOKMizPNJ/BEyH8nMW1+HxwLgqigep1LWGszzSqZv1E1mqq28BMHlfaYmFL7w0CrbfIbBhKef7iziouc0Bozow7wQFY+EbQLkDCTX+XZQqoMyT1oLtQ3yc/jO/qseJHmIlUT4fgB6WniQKyni1cuCap5jB53gorGnuxAOVTwG40geDoXojBuzcboWPKY0LMEyiH62AM4bd3ZtNvKP79RtTxOD8Dk7NEeRHDwX3gnq1rjeD8lI4imTWdnotTOyy9BVZ1pK6VVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JujPs5Axe1X/x5PWvhbmclW3rCRoDhYl7FhOhq2CFPo=;
 b=N0dMmEAe3Fj5HVzjLylaON/AXWlIokYI6d/+j9qsWvyq1Il29GSHz8pCRRnwBNndOD5keqys28ToGsTNjmh6N5nXIVv3ve993F/wjooJ7lp9TitK9wlEdu93QbKQ5I5HkA1uz3x3/XOmU1+7tJ9sollhy4/J8DOEtZ/iV4sLEcw=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SJ2PR12MB9211.namprd12.prod.outlook.com (2603:10b6:a03:55e::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.23; Mon, 18 May
 2026 11:30:09 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0025.022; Mon, 18 May 2026
 11:30:09 +0000
Message-ID: <b202b9f4-9ef6-422a-be39-8050217590ad@amd.com>
Date: Mon, 18 May 2026 13:30:04 +0200
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 Philipp Stanner <phasta@kernel.org>
References: <20260419134943.54833-2-mcanal@igalia.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260419134943.54833-2-mcanal@igalia.com>
X-ClientProxiedBy: BL1PR13CA0171.namprd13.prod.outlook.com
 (2603:10b6:208:2bd::26) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SJ2PR12MB9211:EE_
X-MS-Office365-Filtering-Correlation-Id: e02ce674-b251-4a2b-d299-08deb4d0d12e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|1800799024|366016|18002099003|56012099003|22082099003|11063799003;
X-Microsoft-Antispam-Message-Info: 
	QrhZnVKRmIYb9zcgFsLRRr0oILbqfT+c4EC/7QKEuu/B1eMCH6e7ac+fzsZKYAL3N5pEzjwcf8sLvYrgOTUuX/ZJD5GW9MyBiRtRH5dicRIlqvZ/gFUd9EpY4Aa6meKi4JbVg7Qu07GHGZjBu1/T3TrLcidr7PEZCy370pCUQixK/AzluG1MetqrBx/9w7N5AODsBvpY1Fbtxh2Vt/ZVogRSDhSE0U1+gvtgshstMHZ4/CRqVxSDnBq5lKzwrw22ByoTF03pFZBaiaVvYGuwFuPe38tTmYXlz3yskm+SagcDG4fIV/SYnmLeUGkh+/CvIOHYnMG9YmCvBkcTB5vjgP59VkbsN+0JKoNl5ac8fvIAc4YHxw85nl+Dj/QNep/1tHx0fM/NN2Ib4YtKg1/FG0A1e6QQnlc/mpaqHipXw8BF09gBkwWfd+Xi/JhCeiSFxBISxgtz0n4pT4ouU9YlgjknCLkvL4wJwvBzbA0SmqJFNj9OH7IVBPhSxcbH9KSN7OpFBov3BCbp82MQvWrbilUn80f9EbDe66rRPFeaaasCqB52439E6uxdX64srWoJ+5VviHkhE6RYofM0Cagn2ujkEfFP9WGsqDZvLq9gw78+KSiaJ6/hHdqJERkHsfK+oKvsmU+Q0+6GMkqI75a6C5h8+ZCo5mRWJTh2eA97TuULLYcQdQYHcqa2P3408IZYnEnlRft4U9bcjoGWF1TDig==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(18002099003)(56012099003)(22082099003)(11063799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZmFJdVlPNG1wTzlSZmZJOEpCVE9EL093UGtjd081d3VOSkFWR0pvajZmYjc4?=
 =?utf-8?B?NXdiWHErb0s1cGd2TVFXMkpLd3hIcHpFWUt2NzlReDZnT1JLVmN4ck5ZVzN5?=
 =?utf-8?B?bUtyTlprelJUOTQ0bnFac043ZDhmaHJndU5nYWRTeHJqSWtlWkhHQUh4Ui9N?=
 =?utf-8?B?SCtHd2xRdFJVYjN5cWp4NnhkM1d2M1dEVUhsbDdMbXJGakR1cEVjYVlxb1ZC?=
 =?utf-8?B?d1A4NGlXREV2b21YRmNCRmJnUFFFVFY3dFZ5SGdXK2ZkdkgxS3BKVkh1SHZz?=
 =?utf-8?B?VzZxNTdzRk5keHIrZUdvRk5vanlBSTBqUHlZckdMYzhWNXRqQlU4QVRPKzAr?=
 =?utf-8?B?TGpsMGdIMHZGcjBmM3VQbXQ4dUpNUG8xT3VHbkhubDZ4VWF6UVM4Ykszayty?=
 =?utf-8?B?Vlk0RmdXSC80aUw2VDZPb1pWUTZROG1oQVp2MyswejllRVQ1YlVDdXl2dGNo?=
 =?utf-8?B?cWhXVU5sNlUwenprN3pBWWt6L3ZtczVZMmdhTFhKMG4rSE5tSmRLelQ2ZUc5?=
 =?utf-8?B?Z1VYU2VIeWpwbW1CU2hXU3Q3MGVKVTVJbVVlK3N3RTY3dm1iUlZudnBYbFpV?=
 =?utf-8?B?REpsenFmVlVQZ3lkUHhvK0xlYmpHRnNqS2FKeklEZ3hTN01kc28vZ2VOc0dC?=
 =?utf-8?B?eDRGRExkQlVHUmVzTGlFTWpTalZMc1VVMWZlTDNKaURTUGo2NEw2VitzQ0pN?=
 =?utf-8?B?bzFtNDFOdDEzZldZZ3JaNWlEQWNzaFJHc2VnVWpJQUF4QW9TdHFEYThEaXY1?=
 =?utf-8?B?RnVrVXhySHpMZXhvcEl2cW5HMlhYb2s1SEZXUFpDNC9qQUd1YzNDL0VqTHh6?=
 =?utf-8?B?bDl6ZzNQdlFTOHlERElaclIvaHFRcU12YXVUQ0tBNEFhMmptb2FxNjhqRUNz?=
 =?utf-8?B?WXZOQmVWTll4SGJvUi9xWXVycFk3NlRiM1UvaDRsbVFuVTZueXJHbGtobFJL?=
 =?utf-8?B?NEh2RHVKN1RZZUhlR0VZRithNVp4c21mV1dyeEc4ZWFVRHJjdVVySU9lMmtk?=
 =?utf-8?B?UWdHaXZKNG1LZk90RWhwVXltU0Y4QmVvVkRZS0E4bnh6WkZRckw5Z3pwRXVj?=
 =?utf-8?B?akpCKzN0VVdvSGs2RlRUbjR6QXdDVThoK0M3eE9meWhZSm40NUx1WWMrdVRl?=
 =?utf-8?B?WGtMS1M2MEJCNE03T2N0cDdGeTdoZ0tmblR1MWRUWEQzU1E2TGllNkRUSmhZ?=
 =?utf-8?B?MEZ5VmJMSkthanZpRWNsRVduNDBXSXdwdTZkbG9vODU1cEJrTW85UEZ0NXVv?=
 =?utf-8?B?bTJJMjJkNHZlNFlLMnRhdFlXTUlHMkFWcXlTNjJteFJNZUJiM3RuYXpOdjhV?=
 =?utf-8?B?UWR6YXRzUko5SU84T1JNcHYxalIwbndaM241U1Y0cDkxNDlJMlN6UXRxWGNG?=
 =?utf-8?B?dXU0ZHYwTjhJM3hibGtJZ1p5VzlNN2R3SzVrTHpYVlFRelYxYmhCbU05cGlH?=
 =?utf-8?B?ZUpyaG92TGN0Y2NnRUFZdk9mczQzU2VCeHVMT3Y2dG9nZEpjMUZXcWx5aUFY?=
 =?utf-8?B?THdZeUdPWnhHTFF5M09za3VackwvRVgrT1hsUVZuTGV1V0xvcWpCNW5pbnJn?=
 =?utf-8?B?eVJ2bHRLdGlrVEQ0V2J6WnBvc2hoRWdwa0xKR0U4SHZwcjN0MW8yaWdaTm5L?=
 =?utf-8?B?bU9qZFRJS0pIV3l5djVNSEVpMmJpRHFmZ080dkNoQ2JpK0d4MUF1RXVQaDJK?=
 =?utf-8?B?NGRuV3pOLzJ1SzV0QUJ4NDhyMXpPTmJhQ3RGSHVyekJMWGtPTG0wRnI5ZXhH?=
 =?utf-8?B?Q1ZiNENTUTNJN0xVU2NqdG1XdDE2Z3NWclZWbit6UWVsU1NnU1FaTWw0WWhl?=
 =?utf-8?B?TDJYZ0NrdjJlc3paaklaSDRtOHdBTDB1WmZFQjg0RWFDZkFtRXB0Rm1JNVZJ?=
 =?utf-8?B?b09hQndZVUtwM2Z5VXA5TENXa2xiYitRL3BLQ3FiK3FHbHgyc0EwL3RqMTdE?=
 =?utf-8?B?ZkdJYk1PcEdxaVZycE9qdTF2ZUd1Ny90blBHV05ROGNlU3o5eEJjNStNQWFS?=
 =?utf-8?B?K2ExcnhwU1F0K012c09uMnZYNTljQVN3NTVPYjNybEIyUktQaFZNVXI1Zmdn?=
 =?utf-8?B?MFM3Zi90OHhOL3lHQ282UXRHellrcjRzYWZ5MVQ5U1d6NUtCMFN6QkJvR2Fm?=
 =?utf-8?B?ZzZrMWxWaWppWU9Mb0gvNXlvL2x2dEVLZVF0aHFDMmVmbGgrTHh5VlloekZx?=
 =?utf-8?B?TlVRejU3endOZUVqMDBWU1oweElUeHY0cnhhVEZ6LzZacmZnanB5eGR4U0Fr?=
 =?utf-8?B?b09zWS9xNS9QYmVlK3VmWHM4QXlhdmpqcTZCT3lsTXdxVWtkWUFDYWZVT2x6?=
 =?utf-8?Q?2CqkcWzHCKLaW/fQbK?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e02ce674-b251-4a2b-d299-08deb4d0d12e
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2026 11:30:09.0790
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mOJb1GFvFQ7DPYZ3sIhCF9o7es72jAjDXehTByf3fFJ3ioIf0ihmwIIorhxpDuG4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR12MB9211
X-Spamd-Bar: --
Message-ID-Hash: JMEEX5ZXKGWU4IOFK7I742CEOAUY5MRO
X-Message-ID-Hash: JMEEX5ZXKGWU4IOFK7I742CEOAUY5MRO
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kernel-dev@igalia.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-fence: Clarify external lock use case in dma_fence_init() docs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JMEEX5ZXKGWU4IOFK7I742CEOAUY5MRO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 67FCB56B903
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
	NEURAL_HAM(-0.00)[-0.918];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:mid,igalia.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

T24gNC8xOS8yNiAxNTo0OCwgTWHDrXJhIENhbmFsIHdyb3RlOg0KPiBUaGUga2VybmVsZG9jIGNv
bW1lbnQgb24gZG1hX2ZlbmNlX2luaXQoKSBhbmQgZG1hX2ZlbmNlX2luaXQ2NCgpIGRlc2NyaWJl
DQo+IHRoZSBsZWdhY3kgcmVhc29uIHRvIHBhc3MgYW4gZXh0ZXJuYWwgbG9jayBhcyBhIG5lZWQg
dG8gcHJldmVudCBtdWx0aXBsZQ0KPiBmZW5jZXMgImZyb20gc2lnbmFsaW5nIG91dCBvZiBvcmRl
ciIuIEhvd2V2ZXIsIHRoaXMgd29yZGluZyBpcyBhIGJpdA0KPiBtaXNsZWFkaW5nOiBhIHNoYXJl
ZCBzcGlubG9jayBkb2VzIG5vdCAoYW5kIGNhbm5vdCkgcHJldmVudCB0aGUgc2lnbmFsZXINCj4g
ZnJvbSBzaWduYWxpbmcgb3V0IG9mIG9yZGVyLiBTaWduYWxpbmcgb3JkZXIgaXMgdGhlIGRyaXZl
cidzIHJlc3BvbnNpYmlsaXR5DQo+IHJlZ2FyZGxlc3Mgb2Ygd2hldGhlciB0aGUgbG9jayBpcyBz
aGFyZWQgb3IgcGVyLWZlbmNlLg0KPiANCj4gV2hhdCBhIHNoYXJlZCBsb2NrIGFjdHVhbGx5IHBy
b3ZpZGVzIGlzIHNlcmlhbGl6YXRpb24gb2Ygc2lnbmFsaW5nIGFuZA0KPiBvYnNlcnZhdGlvbiBh
Y3Jvc3MgZmVuY2VzIGluIGEgZ2l2ZW4gY29udGV4dCwgc28gdGhhdCBvYnNlcnZlcnMgbmV2ZXIN
Cj4gc2VlIGEgbGF0ZXIgZmVuY2Ugc2lnbmFsZWQgd2hpbGUgYW4gZWFybGllciBvbmUgaXMgbm90
Lg0KPiANCj4gUmV3b3JkIGJvdGggY29tbWVudHMgdG8gZGVzY3JpYmUgdGhpcyBtb3JlIGFjY3Vy
YXRlbHkuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBNYcOtcmEgQ2FuYWwgPG1jYW5hbEBpZ2FsaWEu
Y29tPg0KPiANCj4gLS0tDQo+IA0KPiB2MSAtPiB2MjogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
ZHJpLWRldmVsLzIwMjYwNDExMTg1NzU2LjE4ODcxMTktNC1tY2FuYWxAaWdhbGlhLmNvbS8NCj4g
DQo+IC0gQmUgbW9yZSBleHBsaWNpdCBhYm91dCBub3QgYWxsb3dpbmcgbmV3IHVzZXJzIHRvIHVz
ZSBhbiBleHRlcm5hbCBsb2NrLg0KPiAtIERlLWR1cGxpY2F0ZSB0aGUgZXhwbGFuYXRpb24gaW4g
ZG1hX2ZlbmNlX2luaXQ2NCgpIGJ5IHBvaW50aW5nIHRvIHRoZQ0KPiAgIGRtYV9mZW5jZV9pbml0
KCkgZG9jdW1lbnRhdGlvbi4NCj4gLS0tDQo+ICBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMg
fCAxMyArKysrKysrLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA2
IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVu
Y2UuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPiBpbmRleCAxYzFlYWVjYWYxYjAu
LjYzYjM0OWJhOWEzNCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5j
DQo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPiBAQCAtMTEwMiw5ICsxMTAy
LDExIEBAIF9fZG1hX2ZlbmNlX2luaXQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGNvbnN0IHN0
cnVjdCBkbWFfZmVuY2Vfb3BzICpvcHMsDQo+ICAgKiBjb250ZXh0IGFuZCBzZXFubyBhcmUgdXNl
ZCBmb3IgZWFzeSBjb21wYXJpc29uIGJldHdlZW4gZmVuY2VzLCBhbGxvd2luZw0KPiAgICogdG8g
Y2hlY2sgd2hpY2ggZmVuY2UgaXMgbGF0ZXIgYnkgc2ltcGx5IHVzaW5nIGRtYV9mZW5jZV9sYXRl
cigpLg0KPiAgICoNCj4gLSAqIEl0IGlzIHN0cm9uZ2x5IGRpc2NvdXJhZ2VkIHRvIHByb3ZpZGUg
YW4gZXh0ZXJuYWwgbG9jayBiZWNhdXNlIHRoaXMgY291cGxlcw0KPiAtICogbG9jayBhbmQgZmVu
Y2UgbGlmZSB0aW1lLiBUaGlzIGlzIG9ubHkgYWxsb3dlZCBmb3IgbGVnYWN5IHVzZSBjYXNlcyB3
aGVuDQo+IC0gKiBtdWx0aXBsZSBmZW5jZXMgbmVlZCB0byBiZSBwcmV2ZW50ZWQgZnJvbSBzaWdu
YWxpbmcgb3V0IG9mIG9yZGVyLg0KPiArICogRXh0ZXJuYWwgbG9ja3MgYXJlIGEgcmVsaWMgZnJv
bSBsZWdhY3kgdXNlIGNhc2VzIHRoYXQgbmVlZGVkIGEgc2hhcmVkIGxvY2sNCj4gKyAqIHRvIHNl
cmlhbGl6ZSBzaWduYWxpbmcgYW5kIG9ic2VydmF0aW9uIG9mIGZlbmNlcyB3aXRoaW4gYSBjb250
ZXh0LCBzbyB0aGF0DQo+ICsgKiBvYnNlcnZlcnMgbmV2ZXIgc2VlIGEgbGF0ZXIgZmVuY2Ugc2ln
bmFsZWQgd2hpbGUgYW4gZWFybGllciBvbmUgaXNuJ3QuIE5ldw0KPiArICogdXNlcnMgTVVTVCBO
T1QgdXNlIGV4dGVybmFsIGxvY2tzLCBhcyB0aGV5IGZvcmNlIHRoZSBpc3N1ZXIgdG8gb3V0bGl2
ZSBhbGwNCj4gKyAqIGZlbmNlcyB0aGF0IHJlZmVyZW5jZSB0aGUgbG9jay4NCg0KTm8gdGhhdCdz
IG5vdCBjb3JyZWN0LiBUaGUgdXNlIG9mIHRoZSBleHRlcm5hbCBsb2NrIHdhcyBpbmRlZWQgdG8g
cHJldmVudCBzaWduYWxpbmcgb3V0IG9mIG9yZGVyLg0KDQpJdCBpcyBwZXJmZWN0bHkgcG9zc2li
bGUgdG8gb2JzZXJ2ZSB0aGUgZmVuY2UgYXMgc2lnbmFsZWQgZXZlbiB3aXRob3V0IHRha2luZyB0
aGUgbG9jayBiZWNhdXNlIG9mIHRoZSB1bmxvY2tlZCB0ZXN0X2JpdCgpIG9wZXJhdGlvbiB3ZSB1
c2UsIHNvIHRoZSBuZXcgd29yZGluZyBpcyBjbGVhcmx5IG1pc2xlYWRpbmcgYW5kIG5vdCBleHBs
YWluaW5nIHByb3Blcmx5IHdoYXQgaXMgZ29pbmcgb24gaGVyZS4NCg0KUmVnYXJkcywNCkNocmlz
dGlhbi4NCg0KDQo+ICAgKi8NCj4gIHZvaWQNCj4gIGRtYV9mZW5jZV9pbml0KHN0cnVjdCBkbWFf
ZmVuY2UgKmZlbmNlLCBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyAqb3BzLA0KPiBAQCAtMTEy
OSw5ICsxMTMxLDggQEAgRVhQT1JUX1NZTUJPTChkbWFfZmVuY2VfaW5pdCk7DQo+ICAgKiBDb250
ZXh0IGFuZCBzZXFubyBhcmUgdXNlZCBmb3IgZWFzeSBjb21wYXJpc29uIGJldHdlZW4gZmVuY2Vz
LCBhbGxvd2luZw0KPiAgICogdG8gY2hlY2sgd2hpY2ggZmVuY2UgaXMgbGF0ZXIgYnkgc2ltcGx5
IHVzaW5nIGRtYV9mZW5jZV9sYXRlcigpLg0KPiAgICoNCj4gLSAqIEl0IGlzIHN0cm9uZ2x5IGRp
c2NvdXJhZ2VkIHRvIHByb3ZpZGUgYW4gZXh0ZXJuYWwgbG9jayBiZWNhdXNlIHRoaXMgY291cGxl
cw0KPiAtICogbG9jayBhbmQgZmVuY2UgbGlmZSB0aW1lLiBUaGlzIGlzIG9ubHkgYWxsb3dlZCBm
b3IgbGVnYWN5IHVzZSBjYXNlcyB3aGVuDQo+IC0gKiBtdWx0aXBsZSBmZW5jZXMgbmVlZCB0byBi
ZSBwcmV2ZW50ZWQgZnJvbSBzaWduYWxpbmcgb3V0IG9mIG9yZGVyLg0KPiArICogTmV3IHVzZXJz
IE1VU1QgTk9UIHVzZSBleHRlcm5hbCBsb2Nrcy4gQ2hlY2sgdGhlIGRvY3VtZW50YXRpb24gaW4N
Cj4gKyAqIGRtYV9mZW5jZV9pbml0KCkgdG8gdW5kZXJzdGFuZCB0aGUgbW90aXZlcyBiZWhpbmQg
dGhlIGxlZ2FjeSB1c2UgY2FzZXMuDQo+ICAgKi8NCj4gIHZvaWQNCj4gIGRtYV9mZW5jZV9pbml0
NjQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzICpv
cHMsDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aAbYMRMrxWnb7gQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Mar 2026 13:48:19 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C509335730
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Mar 2026 13:48:19 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DA3E03F728
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Mar 2026 12:48:17 +0000 (UTC)
Received: from BL2PR02CU003.outbound.protection.outlook.com (mail-eastusazon11011042.outbound.protection.outlook.com [52.101.52.42])
	by lists.linaro.org (Postfix) with ESMTPS id E471C3F728
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Mar 2026 12:48:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=cyAxGiXa;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.52.42 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nRHLIavLkWzWX7Z/CcZa4n3WFrJIN6oi5X4pNIuI8jHHulCNHWeJkGVjiWO4sTcDl7T250N2yivBerPjpTz6eckMrsneeqs2LZKZIbYdO8r4JI1WmzildaK0Ob0CplYE+y4zMS1lTH6NXIjtWO/xUVMuVKI8fL2vqTqsxHZTiVni/GEt6wHZy5QlOxeHFYzg4iknCFGdjvjPXyqFjb6l3WcK6a68Lw6vcHCCCAF6vAURXtjsVHsIbWa88BPibbmcWS218wKeiPb6PCWaW4gCbefOWvG0Dse+8LeXPwSyTu+MJZYmTV10k1RoIrbGZhagKW5HokEIzY2EcoMmOhnKoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+3O506dJcL1pShLqRQGTt0zwEjCwSVvtPKVRf9aHZLE=;
 b=AFPghjfDsEHD8TNeA/tkgtQE9aRvRLLFLN53C+vkT8fi/NnzsABcB0QJZatqfkGXIr9tdS+6UmUnIwzJck0cRE9T3ea6j2zWn/ymx65LfDZPzqumJSp9aybUNvvi0ZwAT5ZJ0D8/J5qlUTdmL6aH4gM/RaAiw1D3Rygek6IXpld4LvgPESNi6B/hRBI1Dgjs+7byZKBxdkMV+g8CzaIFtXkw9WQNCg0xOBi6gj42hKKrwz624kAcekBdp+bvb0aJ2MoivzytyZMF8gOBKC45Vvl6MxP2es7lXZyUWI/xLp1aqLnq/vsQeO6q1P0xMuoN5Is7hUwq7gQ++JgFCu+pjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+3O506dJcL1pShLqRQGTt0zwEjCwSVvtPKVRf9aHZLE=;
 b=cyAxGiXaMcf+WW0w7dSMGyqQnNYQZbUM6ytEbsR9a6RUUiiyrfivswrI2EttHWLEu8aG3hppTOGc6clh3yOWzifmantrtSPKOnE5MUtb8Na/B+rPPFvnc5MuEHzb9DAEtgipgFDsELmeEGFWuzJoj4hwG5KWr6MfSDTbxvJ0Zwg=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by LV8PR12MB9207.namprd12.prod.outlook.com (2603:10b6:408:187::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.7; Thu, 26 Mar
 2026 12:48:12 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9769.006; Thu, 26 Mar 2026
 12:48:12 +0000
Message-ID: <ca366b4a-ae51-4387-b0e7-86e9844b01e1@amd.com>
Date: Thu, 26 Mar 2026 13:48:05 +0100
User-Agent: Mozilla Thunderbird
To: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>
References: <20260203102236.3456-1-pierre-eric.pelloux-prayer@amd.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260203102236.3456-1-pierre-eric.pelloux-prayer@amd.com>
X-ClientProxiedBy: FR2P281CA0162.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:99::12) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|LV8PR12MB9207:EE_
X-MS-Office365-Filtering-Correlation-Id: 6b911031-1fec-4645-069d-08de8b35f0b6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: 
	0MvPLb7L2ImW0qO5qq+dBxRNE0V1uSR5B4gTdSJLCcrrP1FB0KyQG4VnXMHETR/1bzRiS/7gO0T4hr6NsRdgafJIbCDHlQ/x2iUPtW+urDHNi6rTEUZZCUfNGMtLcAuxaA2m9Airw2qCVHYYRjoKDoQJgt+TkjG9uOUqA83ZcudBwfgIX8yf74k/c0hT1FbnHrnGfU3lXsUGv3H+8dP51Rw/re7U1Ham/KbJBDurkftNHt3fIg20vXaoTQ1UlU7h7HHRKlsItRl/EQc4eY3u0CvhSgJrR6qLuD/haEeBsGA9AZoVcsOZzycNfNHQVM8JfqD8Ai8f8/SPJ6EbysvUfEBcSZNQ7Km05sLYAkj+XQyepwkWZW3NG8drg13EWPrukF7CMAv3GAJZkv2GxebXbfvZdhy1DJunFhOTk/GJHdxZPRjeXY9DtYXnH23675m3xmsn80FAso2dHSk2nOBtAOX3oH4Cz6nu1BGQRSmbGDvJkP/48ObPlvEir1qWSeQ2Y7gDOfRD2b2+mhdbMsGvJNnIlZ3WPwHzZd5KQ2jxS8n9DLzPXMYLgoCNRgD0Mr4pgvddAYRHu7HeUotFJYZVUMqDqqatM2h+iNF1bXDTrqC2EiorWuC3hImpmuiSEGP/7ludmFbm2vk6e+VPs1HP0mBI02wjtNOVvR/orXxBJVboPcfipCzpZUPohHtIgGF/
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?V015NngvTmJmYWtKdjZ6ZzRKbzY5S1drWmhUUk82TjdDeFRZdGVuR2F0bWZa?=
 =?utf-8?B?UGJQdm05U2tZRUN4ZFArZkMrVWJsZ1phaUNsZXB4K01VbHhnZXdXbUpZY0sv?=
 =?utf-8?B?Nm5ybDJSMWZkY21iYSt1bTlJbDhTS2g1MjhBRVBjUTJZQWo2NElmRUhKd09l?=
 =?utf-8?B?U3Zucjk2Q0JXMFlvTzg2YWVra0JqWTZJYU5hdTh2SllGTi80Y3NoK2svU0hM?=
 =?utf-8?B?VnlIcVA0Q1RSUjYzeUIyaGZtdlYyeGM4YnEwcVVyT3N0TjZGNFloTy9qbWM1?=
 =?utf-8?B?Vjc1Z2xUWjlFM0ljMjBYNGIveDlva2QyNXRHNWxjS1FIUUVUUmIyWnEyOEhr?=
 =?utf-8?B?WXhBYXY5d1FtQ1ZLV2l0NDVJeVpEb2paemIyVUIrZEFlUENMbFdPS3VxN3ND?=
 =?utf-8?B?UndsRDBMN3dSb21VR0JtYVhHUkt2WkhFelY1UnY0REpHSW5UMlFKOTNXdjZY?=
 =?utf-8?B?NWM5a3VzdjRvcUlLdFV3V2tUbU15eE5GaUd2cEZYNWxIWS8vS3JkTVVsZjhs?=
 =?utf-8?B?cWFGcGpRS2tQR2IyYWhXM2x5M2MyZU5BTXh3cTVaQmFpejhuYlA5Vnp5bnVG?=
 =?utf-8?B?SUZvOXVWWENIMENKK3FZYitDdURyTHhmaXRSU3pqYVZrck5Sc3NrU2JoWVlC?=
 =?utf-8?B?TTJXM0J1UTJkdlQ1R0JuY3V2SVJydEtwU1pxNnNGQUNXNC94RWpBWGYwMTc4?=
 =?utf-8?B?UU9qVjB2OVlhSnVSc3lFd0MzYVkyKzVMY1JNWXFyQkh4M24zYTZnNklMMlVZ?=
 =?utf-8?B?VXpRZ3ZTVFdEZVpGSUU1US9jZWU3OUU5U2JmRmhPVXBWU2pMSVY2U3RjL0Zl?=
 =?utf-8?B?SmhhU0JrNHA2ejJtOFV3eXdJUElFcDlIZ01uaU94TGZ2bUg3RkkydUFSTDFG?=
 =?utf-8?B?ZWZYWVhLK2hZZHRWdXkwYkhGUDVYMnViYTFjRE1ybTkxQmcydWpVTGw2SDJ6?=
 =?utf-8?B?KzQyNnFFYWQyZWMvd1ZKdWlXdERsZXRYV2FVbEhmMnRON201cEtPcTF0NFJm?=
 =?utf-8?B?WVhMWjVhdHFnK2tLWURXbzFvdlkvK2RxenMyWTQzRk1mY3VUNUliaVJoQjhC?=
 =?utf-8?B?QWFPekcxYU9rOEhVdFNEY3hTcmVhOGFEd0NmVXdtb0loVm1lbkJwTGRSZkhP?=
 =?utf-8?B?Zmp4cDlHNDYxdEsvRTQxU0F5NmFmbWNzZk5DaGdYdStwSUVQeG9wRGdnRHB6?=
 =?utf-8?B?VmQ1VWhSaTRkZjBZVkhneDFmc0FSRDVxUVFPQk5GUjN5SXc5K3UyelJNYmVE?=
 =?utf-8?B?ZDIwVkowbmxZOWhIa0xVMTBLRU14K25TWkVQNlhrWXMyNnYwV1ordVNsSjBi?=
 =?utf-8?B?SDhMWGZHdVY1VjI1ZWlZZWZIQ1FNMnBWaDluUkdudTBnRWVmc0JzaXpzZWJC?=
 =?utf-8?B?WFRtLzByVkpHK2diQkhMVkFQVXJKOW4reGk4eHhCSUp4THJMOC9DZG1oNXV6?=
 =?utf-8?B?dVd2VFpGQXRYOWlqSkhTdytCVnhXUVh5bUZYUXUyTmwwczNxbGJXZ0l6cFEw?=
 =?utf-8?B?eE8xZWFRaE1ZQ1lBQldyTllZSGNLN2NHSUtMdHZ0Mi9HWGovdlVlMU1lQXE3?=
 =?utf-8?B?aWVOMnpZNFZ1U3ppUnlTZno2RW9aNjdmNlowODZUT2lYMHJrSm56Vi9xSHhj?=
 =?utf-8?B?T2M4aEdrQS85QmNHMWlRejE3dWdnMThmY0NJdUNLZG5kNWpmYWdYMDY2K0xD?=
 =?utf-8?B?UFNNcTkzRDBjY2xSSE5WMTdNT0NiMlV4NTZMRHNhZnBvV0svSjJSRmxUUFNn?=
 =?utf-8?B?V1dUcVY3bEhxZHhoUmRjZnZCYW5rUS9aZi9qenp4RWFkU0JFNllZeVlUVGNF?=
 =?utf-8?B?UWZPaGJabWdXOVdUQTJiRFN2b29HN0RuUklmT3NHUjIwNU9rV0ErS0gzaFNm?=
 =?utf-8?B?UGh4R1BPQkRTODVJeDYwV0hNdG13SGJ4dGFQWUthR0cyYVhCbm5uL1JpZXh1?=
 =?utf-8?B?S2dNdjFQR2M5ZGo3ZWJBNHg2R3hVVm9OTzVjbnR2eTBIR1FpZW16SmdMaHlw?=
 =?utf-8?B?WUxHdHNRbXAvYlVqZFUrSzJTdzBTYWVlOWFyOWNIbDl3TjhiTGlIQU5Rc3lW?=
 =?utf-8?B?VS9jWnloSXF2SUx0Q0xYanFDQ1hKVUlvNVBiTWlLTUdFeGtyeUw0MjkvZUxt?=
 =?utf-8?B?ckZpTkJVYnl2cVpmOGxOQUhDaXkzbklBYkptVVZZNEdlZXZEZ1grYzA5THU4?=
 =?utf-8?B?V2ZCL1BWZXBWcE13OFNaSlZQZ0N2d1lvanZSNFpxdDl0TUE2YlZmMTFKNHB1?=
 =?utf-8?B?S29hM3VRVTladEUvM0E1eW82eExvTVRsYkRmalNtZGJXSDd6SGFaZ0VabHBk?=
 =?utf-8?Q?95un2f+vJdrSB4s2UE?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b911031-1fec-4645-069d-08de8b35f0b6
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2026 12:48:12.4725
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xUWCJ9tyHaysMu419CKFN1/inIYO6ldAOgMag8ofZwhtVSb8UnWpjXrrATEqbeyQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR12MB9207
X-Spamd-Bar: -----
Message-ID-Hash: XQQ6EBPTXS3RXO6ZXPHPLFPRZHKOU36G
X-Message-ID-Hash: XQQ6EBPTXS3RXO6ZXPHPLFPRZHKOU36G
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 00/12] drm/amdgpu: use all SDMA instances for TTM clears and moves
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XQQ6EBPTXS3RXO6ZXPHPLFPRZHKOU36G/>
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
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.976];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org,lists.linaro.org,vger.kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:email,amd.com:mid,gitlab.freedesktop.org:url]
X-Rspamd-Queue-Id: 3C509335730
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

RmluYWxseSBjb21pbmcgYmFjayB0byB0aGlzIHBhdGNoIHNldCBoZXJlLg0KDQpGZWxsIGZyZWUg
dG8gYWRkIFJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+IHRvIHRoZSBmaXJzdCB0d28gcGF0Y2hlcyBhcyB3ZWxsIGFuZCB0aGVuIHBsZWFzZSBz
dGFydCBwdXNoaW5nIHRoZSBwYXRjaGVzIHRvIGFtZC1zdGFnaW5nLWRybS1uZXh0Lg0KDQpJIHBy
b2JhYmx5IG5lZWQgdG8gZ28gb3ZlciB0aGUgbGFzdCBwYXRjaGVzIG9uY2UgbW9yZSwgYnV0IEkg
dGhpbmsgaXQgd291bGQgYmUgYmV0dGVyIHRvIGhhdmUgdGhlIGZpcnN0IGZldyB1cHN0cmVhbSBm
aXJzdC4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KT24gMi8zLzI2IDExOjIyLCBQaWVycmUt
RXJpYyBQZWxsb3V4LVByYXllciB3cm90ZToNCj4gVGhlIGRybS90dG0gcGF0Y2ggbW9kaWZpZXMg
VFRNIHRvIHN1cHBvcnQgbXVsdGlwbGUgY29udGV4dHMgZm9yIHRoZSBwaXBlbGluZWQgbW92ZXMu
DQo+IA0KPiBUaGVuIGFtZGdwdS90dG0gaXMgdXBkYXRlZCB0byBleHByZXNzIGRlcGVuZGVuY2ll
cyBiZXR3ZWVuIGpvYnMgZXhwbGljaXRlbHksDQo+IGluc3RlYWQgb2YgcmVseWluZyBvbiB0aGUg
b3JkZXJpbmcgb2YgZXhlY3V0aW9uIGd1YXJhbnRlZWQgYnkgdGhlIHVzZSBvZiBhIHNpbmdsZQ0K
PiBpbnN0YW5jZS4NCj4gV2l0aCBhbGwgb2YgdGhpcyBpbiBwbGFjZSwgd2UgY2FuIHVzZSBtdWx0
aXBsZSBlbnRpdGllcywgd2l0aCBlYWNoIGhhdmluZyBhY2Nlc3MNCj4gdG8gdGhlIGF2YWlsYWJs
ZSBTRE1BIGluc3RhbmNlcy4NCj4gDQo+IFRoaXMgcmV3b3JrIGFsc28gZ2l2ZXMgdGhlIG9wcG9y
dHVuaXR5IHRvIG1lcmdlIHRoZSBjbGVhciBmdW5jdGlvbnMgaW50byBhIHNpbmdsZQ0KPiBvbmUg
YW5kIHRvIG9wdGltaXplIGEgYml0IEdBUlQgdXNhZ2UuDQo+IA0KPiBTaW5jZSB2MyBzb21lIHBh
dGNoZXMgaGF2ZSBiZWVuIGFscmVhZHkgcmV2aWV3ZWQgYW5kIG1lcmdlZCBzZXBhcmF0ZWx5Og0K
PiAtIGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL2FyY2hpdmVzL2FtZC1nZngvMjAyNi1K
YW51YXJ5LzEzNzc0Ny5odG1sDQo+IC0gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2Ry
bS9rZXJuZWwvLS9jb21taXQvZGRmMDU1YjgwYTU0NGQ2ZjM2Zjc3YmU1ZjBjNmQzYzgwMTc3ZDU3
Yw0KPiBUaGlzIHZlcnNpb24gZGVwZW5kIG9uIHRoZW0uDQo+IA0KPiB2MzogaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvYXJjaGl2ZXMvZHJpLWRldmVsLzIwMjUtTm92ZW1iZXIvNTM3ODMw
Lmh0bWwNCj4gDQo+IFBpZXJyZS1FcmljIFBlbGxvdXgtUHJheWVyICgxMik6DQo+ICAgZHJtL2Ft
ZGdwdTogYWxsb2NhdGUgY2xlYXIgZW50aXRpZXMgZHluYW1pY2FsbHkNCj4gICBkcm0vYW1kZ3B1
OiBhbGxvY2F0ZSBtb3ZlIGVudGl0aWVzIGR5bmFtaWNhbGx5DQo+ICAgZHJtL2FtZGdwdTogcm91
bmQgcm9iaW4gdGhyb3VnaCBjbGVhcl9lbnRpdGllcyBpbiBhbWRncHVfZmlsbF9idWZmZXINCj4g
ICBkcm0vYW1kZ3B1OiB1c2UgVFRNX05VTV9NT1ZFX0ZFTkNFUyB3aGVuIHJlc2VydmluZyBmZW5j
ZXMNCj4gICBkcm0vYW1kZ3B1OiB1c2UgbXVsdGlwbGUgZW50aXRpZXMgaW4gYW1kZ3B1X21vdmVf
YmxpdA0KPiAgIGRybS9hbWRncHU6IHBhc3MgYWxsIHRoZSBzZG1hIHNjaGVkcyB0byBhbWRncHVf
bW1hbg0KPiAgIGRybS9hbWRncHU6IG9ubHkgdXNlIHdvcmtpbmcgc2RtYSBzY2hlZHVsZXJzIGZv
ciB0dG0NCj4gICBkcm0vYW1kZ3B1OiBjcmVhdGUgbXVsdGlwbGUgY2xlYXIvbW92ZSB0dG0gZW50
aXRpZXMNCj4gICBkcm0vYW1kZ3B1OiBnaXZlIHR0bSBlbnRpdGllcyBhY2Nlc3MgdG8gYWxsIHRo
ZSBzZG1hIHNjaGVkcw0KPiAgIGRybS9hbWRncHU6IGdldCByaWQgb2YgYW1kZ3B1X3R0bV9jbGVh
cl9idWZmZXINCj4gICBkcm0vYW1kZ3B1OiByZW5hbWUgYW1kZ3B1X2ZpbGxfYnVmZmVyIGFzIGFt
ZGdwdV90dG1fY2xlYXJfYnVmZmVyDQo+ICAgZHJtL2FtZGdwdTogc3BsaXQgYW1kZ3B1X3R0bV9z
ZXRfYnVmZmVyX2Z1bmNzX3N0YXR1cyBpbiAyIGZ1bmNzDQo+IA0KPiAgZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1LmggICAgICAgICAgIHwgICAyICsNCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdV9jcy5jICAgICAgICB8ICAgNSArLQ0KPiAgZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RldmljZS5jICAgIHwgIDE2ICstDQo+ICBkcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZ21jLmMgICAgICAgfCAgIDQgKy0NCj4gIGRyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9vYmplY3QuYyAgICB8ICAxNyArLQ0KPiAgZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jICAgICAgIHwgMzI5ICsrKysrKysrKyst
LS0tLS0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5oICAgICAg
IHwgIDI5ICstDQo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdmttcy5jICAg
ICAgfCAgIDYgKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Npa19zZG1hLmMgICAg
ICAgICB8ICAxMyArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvc2RtYV92Ml80LmMg
ICAgICAgIHwgICA4ICstDQo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9zZG1hX3YzXzAu
YyAgICAgICAgfCAgIDggKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L3NkbWFfdjRf
MC5jICAgICAgICB8ICAxNSArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvc2RtYV92
NF80XzIuYyAgICAgIHwgIDEyICstDQo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9zZG1h
X3Y1XzAuYyAgICAgICAgfCAgMTEgKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L3Nk
bWFfdjVfMi5jICAgICAgICB8ICAxNCArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
c2RtYV92Nl8wLmMgICAgICAgIHwgICA1ICstDQo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9zZG1hX3Y3XzAuYyAgICAgICAgfCAgIDUgKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L3NkbWFfdjdfMS5jICAgICAgICB8ICAxMiArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvc2lfZG1hLmMgICAgICAgICAgIHwgIDEyICstDQo+ICBkcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGtmZC9rZmRfbWlncmF0ZS5jICAgICAgfCAgIDUgKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9h
bWQvYW1ka2ZkL2tmZF9zdm0uYyAgICAgICAgICB8ICAgMyArLQ0KPiAgLi4uL2FtZC9kaXNwbGF5
L2FtZGdwdV9kbS9hbWRncHVfZG1fcGxhbmUuYyAgIHwgICA2ICstDQo+ICAuLi4vZHJtL2FtZC9k
aXNwbGF5L2FtZGdwdV9kbS9hbWRncHVfZG1fd2IuYyAgfCAgIDYgKy0NCj4gIDIzIGZpbGVzIGNo
YW5nZWQsIDMwMCBpbnNlcnRpb25zKCspLCAyNDMgZGVsZXRpb25zKC0pDQo+IA0KDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

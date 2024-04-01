Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C58893B15
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  1 Apr 2024 14:45:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 22F2F3EE2D
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  1 Apr 2024 12:45:50 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2098.outbound.protection.outlook.com [40.107.220.98])
	by lists.linaro.org (Postfix) with ESMTPS id 95B913EE2D
	for <linaro-mm-sig@lists.linaro.org>; Mon,  1 Apr 2024 12:45:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=htKrYXlu;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.220.98 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bz19jB0WPK3Y4BMl09v3MfYhkWqQqpYogWOzHnCtfnznJnsPYy1f4uWA8+4trlHcWKbFIlazgSK4z4DGpdEOV04n+0uCZJpzTx2u4gfhdp43OLBfOOU6eN1IylRCKeBQl0eiVYDWWAmoLwEwRl8w7gASzjg/qf+JX4rkXjxZuKaP8d6HwqyRjIu5Pz0JmhaANEigVAOqHcuw7/TmtTC/TyZ3LWbfe1JCaMLclM1hSi/oi3WhttsQSTYKMVSMmtxjes8Hdr9ahLZxUbUqK5iId3uUDfN3/PbAoI/e4Ubw+pueep3xKqiwIqtfdbtWI3mQpIXKCRlXtE+v/tYVXONI7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3+3e6WHm8djZRf0PvwE3BRyfuPArpA/DW1R3uprjUf8=;
 b=KsWyDIcPXcAOFmhXEpdbynPUJh83yjGAHveAjlpc2jD4XloQnDdwKGrWrvB/EW5hfTOk//BlAZR1AGgwNNW4LeZ2VGNkM3JyWqR/IXMmOfIZBNKKVowXzPRgyYGXAbx5bYhTB4cZ/MecMyFObmcyrV4xmtdt4YTqdb060eECcC8Ktq8hdCT9RaEl1kOAPocxgHg2smpCf8g6xlxXilSIBFRpOQ9i8gmhLl/bChetOa60yCDpagk4jzRjs8ewld7HaVKk2Cr2PSo+HCTPHsh6GV+v56lCc/Qp2RTcezNEGJ6x5Ms1Z2O2NaVz8BrsI1dl/W1uQkdVherNNBsnj69GXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3+3e6WHm8djZRf0PvwE3BRyfuPArpA/DW1R3uprjUf8=;
 b=htKrYXluFsqHaa73Aguq/VvUOukwqHPVYPKgTdLRMfSVXwe8Wk9UWVyhAtekkgf/KuFgfn3MEwSLc+TnZpIS8SzQrxZ1BPZlTGHTD1Uu4QBBEWzVILWH1w0oHujJsScz17767mV4Ecyvx5em/AvMsmz/iZ6FyFYC0iPnB6ZQIdc=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DM3PR12MB9349.namprd12.prod.outlook.com (2603:10b6:0:49::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.46; Mon, 1 Apr
 2024 12:45:46 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::f2b6:1034:76e8:f15a]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::f2b6:1034:76e8:f15a%6]) with mapi id 15.20.7409.042; Mon, 1 Apr 2024
 12:45:45 +0000
Message-ID: <1e94363a-b449-4efb-b2fe-c1dd710b57c9@amd.com>
Date: Mon, 1 Apr 2024 14:45:40 +0200
User-Agent: Mozilla Thunderbird
To: Tvrtko Ursulin <tursulin@ursulin.net>, "T.J. Mercier"
 <tjmercier@google.com>, Tvrtko Ursulin <tursulin@igalia.com>
References: <20240328145323.68872-1-tursulin@igalia.com>
 <CABdmKX3V3HGA4mNQvqHqhcLqyr-A5kJK8v9vmuDybRvV-KsiOg@mail.gmail.com>
 <9a063c39-6d2f-43c3-98b3-e4f8c3c6e9c4@ursulin.net>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <9a063c39-6d2f-43c3-98b3-e4f8c3c6e9c4@ursulin.net>
X-ClientProxiedBy: FR4P281CA0181.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ca::7) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DM3PR12MB9349:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	EdZgqHLp0dQQdXw9RfHbk9n2m9T/5RpP1HvX2qjkknJUghpJJuoBPZd6mRL49kntSOGLPAqeIBhZscoGkl6JlRV66PghBAttTTzyMWh2Cq/PhTxu/cQZduIv5UOSQQYHEwCS4UpW8513KBL5nnsbAMha3rmBTQ+lnw8S2/jzXONOkQEYKGB0rw0yfvFCExiCV4XX4VxqOVgt33sTB25rFS5jIdQwu6u0H9xH+rHsXRu0NmMEG7M6iM3amZ83dHhRXi6zfpp4W+nx6iz8T4kRXdg3wP5vZZSGjpBjQJfmEFSOvaMIhLWDWEgOK5LK5nlDffucLpaSJ0hemuPkyXv9Zcs6h8JXGlI1wLbHqPMKeE9p3Tz8PgN8kS8fy6gO2CopPwJfH6cZmCLo7zi9Xpk+wWWdE80UTZTUc1PfgK0VxUmHJwm/SA3ptqTQfhddcAwGgMK9H2mqrWitNb7p1DHB0PZwvYXv5FO3ww1KlAlLNq5q84XdGKfJmcNuNrvVezV5MlIUbzeCjAoWTzaXaFGN57FSp+DHGHD+BehofP2eMGItKT876XA1Yj9Zl3GwBSjNQTsqH/fZH/t0Keq+uz8+mIs54G6NAZWXE5w8MSlir0FkVW2NbI3PxpSUnKPv9AHSkt74eryNVQ8ktGx+GBgvAbTRmIbu/J0CyoOl2DTS5ms=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(376005)(366007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MzFPMnMvM1YyM0ZPdHlsc0J4TE5IRDY1R3Q2K1c2b0RvT0loOGU1RUJmRzZa?=
 =?utf-8?B?bVdpSUdyUzBFSlZ0KzE4YndFb0pUcW5xZld1Rkt2aXZZUjV0eFZ1bDRiVENO?=
 =?utf-8?B?V3NFNExoSjFRdXpWVlpicmg5alpLNTRXWmE5clJva1lDRVpDdlliMmVHM0tN?=
 =?utf-8?B?dlNDRm0wZVBTek5XaXViUmU3M3FIYWpVN3haSTJKVSsyTU1VWUtocENqd0FK?=
 =?utf-8?B?U2pJbjhXMTZZYmhhandQQ2J4Y0loY0dqOEQrWk1admlSY2tQMkcxMUJ0ZDg3?=
 =?utf-8?B?aXFHWHRrU0J4WUwwWkd2dkgrU3BDZW5ra1dpeWNJUCt5eXVyZ2MzbnJRbU1v?=
 =?utf-8?B?d1lIaHcvL2ZHMC9LdHhzNkUwK2FKdWZucmw4MklrRVl1aTV0QzRMOFN6elZ5?=
 =?utf-8?B?eTFDVE9YZkVKM0V0M0F0bHk1UW1TaDN3UFBxTngzVVgxNGlzNGRnbkpkM0pG?=
 =?utf-8?B?WklaeXdnNEdjZ0hjWGgydUt2STJVdnRZT3hpaDFvSEN6SE5veTJYOFhSckQw?=
 =?utf-8?B?TWhHZUpTWGZJUTVTR1Jtd2h4RGpTZWZ4WUI4S3Z6UkVsaXFDbWpYQmJtMFRE?=
 =?utf-8?B?SmQvYWhvVTE3RmNyWHMrWDR4eEJ6eTNMZmNjN1htRWFEcDFsZHNwN3BJTmth?=
 =?utf-8?B?UWxzVFVpSU5oS1lUTjFwenFBUVNseFMvRUw2ZnM0cnRUZXQzQ213MkxMc3J4?=
 =?utf-8?B?dEMramRSMGR0ZXdXUVhGeWhEM3hHckQ4ejJNVVU2RDd2MXZOTE9IeUNhKzIz?=
 =?utf-8?B?clA0NlczaVVOZ0pEWjFmNHcvTTZOVG0xQWM1dUg3OS90d25XZWdGMCtsSDVE?=
 =?utf-8?B?c0FiUlhiUUN6c2NPSlJiZG80cy90YUkvN00wekJEMWZQd3g2YlF4cjNyUXlC?=
 =?utf-8?B?YndZSjcveFA3WFF1YTVSSy9Db1NGM1o2d1I2c3gzeTRzUE9reWp5VElHSXds?=
 =?utf-8?B?NlVjOXRjMWpmUkhzeHBYYTZkb281MUl0K0c4OEpjUysxU1hUSGRxRlpBT0Ev?=
 =?utf-8?B?TGVxRHF3aTV1RFJNQmlDOFdpUlRIcGxvam9va3ZBbnBDL1o3TXpwSURHNExF?=
 =?utf-8?B?NnZKaWlSRzlEZjdqZWZadlJTSys1d3hyYVpwN25TQitOTDlkTm8rVExIWUJl?=
 =?utf-8?B?bWJpaFdXZS9qVUlEZnlKckN3MURmYUZkaXk3RmdvY0Z6TFQ0NU5vTytxYkxL?=
 =?utf-8?B?UkVRc2p1L3Z2OFVwUVRPT2EzV3lib0dkd3U1VDZZeklaMDBDaERNQlB4S2RS?=
 =?utf-8?B?YWlZVmJlR1dMd1ZtU2RzWTBJcjRtT0d6aUxuY3k2THNsNVpTbWltZXJvcGVV?=
 =?utf-8?B?RmVpcmxYTXVxSUVSdFpBUkR3dXRMNWFWTE8xQ3N3Uk55WmFiUGdJZ1l0OU5l?=
 =?utf-8?B?MzF0Q1UyVWErSE1YNFRVSzgxTmhtUy83bGtwaFV0YlRRMnpPbElYQTBROTM3?=
 =?utf-8?B?WW1WRWwyTWJJaS9tMGFBMWtZdUVISTM0YWdFRGtaU3RTVy9YdmN6UG9CU0Qx?=
 =?utf-8?B?VkpkR3BXTFhSUTI2MEFsaWJPZkt2ZWlmbWREUUVLcHJWNkRUcUZ5dzFIek8w?=
 =?utf-8?B?T1FYbTRZcHpubjlZYTFYSUhXYjFSMU8rdnd2WVpHRVlRWWN6OVlGMk9DVW5F?=
 =?utf-8?B?bUlTSm50WWhPNUNjZ0hXTU51UG05dWZ6bHEzeExyWDZlNDZuVGVReVFaZ0ZH?=
 =?utf-8?B?N0srZUxxNWxiSW4xWHNuWnh6Wlk5cC9VZUpMUm03QjNKNUlFTmZBZmtOcTVq?=
 =?utf-8?B?UUFFQjQyZlNab0I2bEl3OC9Vckp3dVZBZkpXUW84MVZYaGxFd3cyU3d2L2Fx?=
 =?utf-8?B?Q3NmblJyc3JYcmFsN1ZNUHo1YTFHdFVBRkgrbFlELy95YzcwRTRsWVZKc2lz?=
 =?utf-8?B?ZC9kK2ErUEJJVnVSVmovZ2ZPSkxLcU5XV2NTKzYxdUszcExnQ2hWUHRDZXRo?=
 =?utf-8?B?aTI4UlF4ell1MVRjTWJ4VTRQbExkQTlTdUpIOHQxYXNjWW1meGxCaW44a0ZE?=
 =?utf-8?B?WDFwSVoyS1A1dTl0c0gwRW4zZWRKSW5zYnprSUFhYmlhMzluRzJqTnNkODZY?=
 =?utf-8?B?akJHbnFRSzRQbHg1V3RGOFl0Z0MrRmhGWVpZdStuUkxxZFMyckNPTnVqQXVD?=
 =?utf-8?Q?a94k=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e27f7a9-aa2a-444c-0f9b-08dc5249a649
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2024 12:45:45.8653
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mX9oYvLIPTYYs9XTFyowP7bzZnjofNQ4IQJ6ReiM8EEIs2/yexnEDITi2Q60Zc+o
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR12MB9349
X-Rspamd-Queue-Id: 95B913EE2D
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.99 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.220.98:from];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: UGNE5FKOYXWOBEIHR44NTWY3MULOVH7L
X-Message-ID-Hash: UGNE5FKOYXWOBEIHR44NTWY3MULOVH7L
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, kernel-dev@igalia.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Do not build debugfs related code when !CONFIG_DEBUG_FS
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UGNE5FKOYXWOBEIHR44NTWY3MULOVH7L/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDEuMDQuMjQgdW0gMTQ6Mzkgc2NocmllYiBUdnJ0a28gVXJzdWxpbjoNCj4NCj4gT24gMjkv
MDMvMjAyNCAwMDowMCwgVC5KLiBNZXJjaWVyIHdyb3RlOg0KPj4gT24gVGh1LCBNYXIgMjgsIDIw
MjQgYXQgNzo1M+KAr0FNIFR2cnRrbyBVcnN1bGluIDx0dXJzdWxpbkBpZ2FsaWEuY29tPiANCj4+
IHdyb3RlOg0KPj4+DQo+Pj4gRnJvbTogVHZydGtvIFVyc3VsaW4gPHR1cnN1bGluQHVyc3VsaW4u
bmV0Pg0KPj4+DQo+Pj4gVGhlcmUgaXMgbm8gcG9pbnQgaW4gY29tcGlsaW5nIGluIHRoZSBsaXN0
IGFuZCBtdXRleCBvcGVyYXRpb25zIA0KPj4+IHdoaWNoIGFyZQ0KPj4+IG9ubHkgdXNlZCBmcm9t
IHRoZSBkbWEtYnVmIGRlYnVnZnMgY29kZSwgaWYgZGVidWdmcyBpcyBub3QgY29tcGlsZWQgaW4u
DQo+Pj4NCj4+PiBQdXQgdGhlIGNvZGUgaW4gcXVlc3Rpb25zIGJlaGluZCBzb21lIGtjb25maWcg
Z3VhcmRzIGFuZCBzbyBzYXZlIA0KPj4+IHNvbWUgdGV4dA0KPj4+IGFuZCBtYXliZSBldmVuIGEg
cG9pbnRlciBwZXIgb2JqZWN0IGF0IHJ1bnRpbWUgd2hlbiBub3QgZW5hYmxlZC4NCj4+Pg0KPj4+
IFNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dXJzdWxpbkB1cnN1bGluLm5ldD4NCj4+
DQo+PiBSZXZpZXdlZC1ieTogVC5KLiBNZXJjaWVyIDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4NCj4N
Cj4gVGhhbmtzIQ0KPg0KPiBIb3cgd291bGQgcGF0Y2hlcyB0byBkbWEtYnVmIGJlIHR5cGljYWxs
eSBsYW5kZWQ/IFZpYSB3aGF0IHRyZWUgSSANCj4gbWVhbj8gZHJtLW1pc2MtbmV4dD8NCg0KVGhh
dCBzaG91bGQgZ28gdGhyb3VnaCBkcm0tbWlzYy1uZXh0Lg0KDQpBbmQgZmVlbCBmcmVlIHRvIGFk
ZCBSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyANCjxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+IGFzIHdlbGwuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4NCj4gUmVnYXJkcywNCj4N
Cj4gVHZydGtvDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=

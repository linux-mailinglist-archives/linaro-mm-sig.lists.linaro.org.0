Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6128A26C0
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Apr 2024 08:39:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1E9863EA59
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Apr 2024 06:39:26 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2072.outbound.protection.outlook.com [40.107.93.72])
	by lists.linaro.org (Postfix) with ESMTPS id E7A353EA59
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Apr 2024 06:39:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=Dy1j1xbJ;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.93.72 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LMSJw44OZfqWIUQPNmLT0nhCJbnx7HVf3aeKXGtDaj5LcOuBGlL2jm2t9uTr3vl1KChoCy0TecvUJdFB+rHK9xCOfEXSasanl7tTQKXN3T0GavMTH/BbQO4c5mdU9zhi68CD05OE3AnQhgMegTqUYEC90fkQbyesOy1D6AGnfVT7HgIE7K8HnxFgo2h+p1smICGId27xlu+Qsxf4WND7tb9H614E5fZNsnaClNJkS7e1pp48hiNEx2eEGYzdWtHKFGM5slbaG+OeSlceFpfxAuCc/TOPGQjL7oNHxNbD00P/AuC5MoFyJtyRYb+eXEhPZCUj3Aj5l4GxeyuqzeTNKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aqUxssL/L11N0JQTXj7RKeHgH6Cujv20XZkUmG7Lehc=;
 b=LVLSHc7R+7bG5mUnO1GxHBOtwyU4q98F8PPtyYDlyk1LOEb3e1iDr43vS6feCXJRFzACfisHVc3FaMXhWTsMyrmjG7AbwaoVQ2rX88aneZ0A+0P9qlXYJeftyDrVWUC6CJDjNCwApRYGWf80YEPM9Ubges4cRLLGsAP/kp7djo9Ps25wE2/MfNXOzCDDSB6KUFfOiXrto/aCZppz6/rWIWryR65P04q+Nk8vsNi0/vX2OhgKLXhf6A7tkmRnNJgNHb5sLpJdGuqRqkUcmml6NIS9lKpdPi6u3uf9c4C4tcfDmEfvxD/Ml/F4hGV2zrHaHkF4mi2TdTkTe1P8YNw/Yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aqUxssL/L11N0JQTXj7RKeHgH6Cujv20XZkUmG7Lehc=;
 b=Dy1j1xbJG/drNESWiLCyfYlE+2wXikvn7JMp/ofZgBB0ZOGVLsX5nLPiqG7FrjVLR13EAxCJ00ohj0bWa9Xqqkayey1qOiktsrIQoNjpR5Khyqzqso/+ZgqDf2BrmQ4PiNSE8AEZj3DVcKDwLGOlzRsbkJ9uOIptKZb2GabBXQQ=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SA1PR12MB6774.namprd12.prod.outlook.com (2603:10b6:806:259::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.46; Fri, 12 Apr
 2024 06:39:20 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::f2b6:1034:76e8:f15a]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::f2b6:1034:76e8:f15a%6]) with mapi id 15.20.7409.053; Fri, 12 Apr 2024
 06:39:20 +0000
Message-ID: <40ac02bb-efe2-4f52-a4f2-7b56d9b93d2c@amd.com>
Date: Fri, 12 Apr 2024 08:39:14 +0200
User-Agent: Mozilla Thunderbird
To: zhiguojiang <justinjiang@vivo.com>, "T.J. Mercier" <tjmercier@google.com>
References: <20240327022903.776-1-justinjiang@vivo.com>
 <5cf29162-a29d-4af7-b68e-aac5c862d20e@amd.com>
 <cc7defae-60c1-4cc8-aee5-475d4460e574@vivo.com>
 <23375ba8-9558-4886-9c65-af9fe8e8e8b6@amd.com>
 <CABdmKX2Kf4ZmVzv3LGTz2GyP-9+rAtFY9hSAxdkrwK8mG0gDvQ@mail.gmail.com>
 <e55cad9b-a361-4d27-a351-f6a4f5b8b734@vivo.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <e55cad9b-a361-4d27-a351-f6a4f5b8b734@vivo.com>
X-ClientProxiedBy: VI1P191CA0015.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:800:1ba::8) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SA1PR12MB6774:EE_
X-MS-Office365-Filtering-Correlation-Id: 58460528-97d9-47a6-48e3-08dc5abb48c1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	6uT52cxV5QOSX759oUT/GH7Z/iy1erKLN1SdumLA6Bm68/pSSWB833feared5friXtQ4u+1vJ2GpxaMi4Bf7pGiDWi6l5VqL05YvUbyzZntI7RG0VqzIMwOWxcXXjea5+QBJ1cV/lJgVm2sNr210yx6YBnhJ5NP5JsnYebRiJs5nN6SkgDPKYOaonSn4/94KV5T/n+aOnNyGR8yGeWw7hvkkDSntTKv0lQQbiWRkB7joUo6mT4lxTsI8q3tfefjXvb+j3wsE8dbTBZZ6w+/Lk0On0Yq9i9s0ZZiriZSptQwU9eG8nrkmjOWH2NX50yQ3tW3dbggC06Fbqg9NoFVCVLak/UGacuIt2qCtIBaI+JeIGNydlle/g81Ik2XS0NaZHbqMPkha/7Jv/axMn8nZoxjhoUq0SzIh1n9BugsqBT68KbGlPLx3+TSJk+D9XWwq49L+l/z/HaOewf3O8m6/xQsO30XEklsbZh7yAV/KgLwNjPIQRkGUTso+Fb3MEke6aWaNR99ygK8Xh4MxSyIDTJ+m4ego5Id2t/5yUjXHA8i9c34eJjNo1PTVLevZB/JYS8ag8WG2HiC0aReOSFW4HCQaf/9A6Dc7sVEsqDBo1/NnBVUmoz7Rss25x5djieC334NBGTpvxuZzqlWHW4fv/ZETlHkMTqnrSxFdy3rr8dQ=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(376005)(366007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?aVp4b1VsejlpYlZWUEJ6bW53aUo0clpTeVhGclpEOEZnY08yRlVxQ2FRWC9w?=
 =?utf-8?B?MVpjYU9BMGVyVDcyd1RsQTBwbG1OMm1WTEQ2SnNKNisxdWJNdFM1WHFlTk9D?=
 =?utf-8?B?NHVoeFR5SzZNREVmcm9LY0RkY3ZJQnd0SGh6WWZCVGJaYjZ1cFVucWtrUDlu?=
 =?utf-8?B?Z1E0blo3cDdtSGtIbjFSNWt4aGhRNER5MVpEMlJaYTY5SzR6Ulc0WDl1L2Mw?=
 =?utf-8?B?U2ozUEVOSVNQOFdBaXVFeVR6SUpTUUJ4QitlSzQvMU9kSW41c2RKK3NmMisv?=
 =?utf-8?B?MWZXYlRRaFZ4dnloQndGZ0piRWZDdnFPdGhMSFora1V1YXdYUWppR2RzSFB3?=
 =?utf-8?B?NjU4S093TldncFZwVkgxRGR6VkpqQjNLN2Npa2szWlI3VzFlV3R2UDV0czdr?=
 =?utf-8?B?OEJiZGNPaWF2VVdZOUIwdFJLemZia1Rpd2IyVnlmWFVPL2llL3ZXRDU0Qysv?=
 =?utf-8?B?eVVkWHlSaGkwdEdsZzRDaHZTVHlyUWpFYUEvelZieFp3SVJqaVNWQUxuS2t1?=
 =?utf-8?B?NmhwckNCdHhGNXZqT0ppbS8vdmJpZlBDMEFlbVVzYzJYUmJSRU9OREoxUkJD?=
 =?utf-8?B?eTVzS2xKVlpzL3RsNlV6a0FxaXVkaGxweHJMRHI1akJRYzFzeC9acVQ2OUM3?=
 =?utf-8?B?WFJZWXJvUGZTbnJ2TEs0UzE3U1lDMjlOcEd4WWs4b2VQTTh6eUhwS3UyQi9B?=
 =?utf-8?B?bmVNRHFNM3RiOU93dzVPM1AxNVlFbTNYNGdlS1dZZkZvMitkWVZiL2RCZjUz?=
 =?utf-8?B?L2lwZ0piSkVsRXJYYVhyRi96cEJJbGRhcXoxdTZUZi9iVFlyUWkrVWpBcDJx?=
 =?utf-8?B?Z2ZVVURpaUZlNFpsMjk4T2NDVE9ETUg4WTNWa1V2UHhCdWtyb2VQYmt5eUJR?=
 =?utf-8?B?YzlCdWpuUnlZaWFaSFZwVlJ4UDdQRGdteDBhR3dYQ1NRTmZub0FWdDV3QkNR?=
 =?utf-8?B?MUgyTW9UaDhLRlJNbW1hZTFVWW82MHJjY1E0NVEzZzl1VHIxWFlXUmp3MENu?=
 =?utf-8?B?SGVkbStNRmNRU05HR1doVG9TREwyeWxrTGt5TGFYYml6dXdoN3BjRmFUTWFv?=
 =?utf-8?B?d0NWNnZKMHpRRXlCNUt1allPZGxqM2ZFVkhNdURYcnhIa0NjT1ppVmJLeTNa?=
 =?utf-8?B?K2tYZ1pTblhCUDluRUUweVZNOHJQbis0ZVR2bm12QTFVM1dUWHBydzhpWVM1?=
 =?utf-8?B?Q0dESXpTUjI3ZUJqYS92em95SS9BeUVTdjZmSk5MajVXRElET2hRTFkrMnQz?=
 =?utf-8?B?WUN5TDkxNFNsNVlVUG5rTUxzVmJ6RXlIcjRSTkJPUTExbE1uTGNJKzFqeUJP?=
 =?utf-8?B?NXJvcjFyWkhmWEJSbzlsTkxxK0huV1VkZ0tUZ1AwVXdTMDhPMDZ0Vnh1azd2?=
 =?utf-8?B?UXNFQitTWkd6UVhpazE0aVQydktYV1RwMlJoMnNGVEtKSTRRK2xUR1g3VS9h?=
 =?utf-8?B?SWhGRjRsVWt2NEU3TjFHTy94NXRXSHFNb291ZFYvd2ZtV2ppOUhZaEN2YVdu?=
 =?utf-8?B?UnRUTG9jZDcrcGY3NllnY09JRmhDN09kUFdkcmxEendoQkY0TEJESDE5a1Zi?=
 =?utf-8?B?WFZPZFZqUGpEa3VVUkQ2cFVMUVl5MXpRQTVtTFd2cVNxNFd0a0lmVUp3MnBj?=
 =?utf-8?B?dWpQTUx0OSt5TTJ1Zmd4djdpNk5BVkZiZkc4dG81QzA5K0sxN2Fnc2s1RkVh?=
 =?utf-8?B?NVlWS2JYOFBjWGpPVFVsVU9vb2VmdHltQnoyUm9QN0Z5UVlOUEE0UzUxZEZh?=
 =?utf-8?B?TkNtZVM0SGFFVGRVMDE3alIyYzB0TWZ1RXpHUC9nN083TTNhNFd6ZzQ5dk5W?=
 =?utf-8?B?L01uTmR0ZjJoZWJqOFIyakRvQytKVVBTUEorVmx3aS8rZFAvdGVNZXVuQUdD?=
 =?utf-8?B?azRhK0NyMmZtaHBHdzFQeXB5NjNWQWhUOFV0UFVBTjdhb2J2VGkrd2ZsZ0g5?=
 =?utf-8?B?VWtkbW9aQ3JBQlZ6anFUR0xtS2h1Z1M2YlhIekNVUHZhVWdYM3RwMW5kS2R0?=
 =?utf-8?B?WFRIN2JzaUNOMFQxM0xjcTlNZjJPR1Z2MUFrQ0VyL0h0aXROZUxINjlFRVR6?=
 =?utf-8?B?ZjV0SEs2bEloTUY3WlMyOGhmWUl2T3lnQmRHdUlQWXViRW10QmxXeExaRks0?=
 =?utf-8?Q?6UPmyibxZBD79eNjH6yRf7Npl?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58460528-97d9-47a6-48e3-08dc5abb48c1
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2024 06:39:20.8113
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YQz4in2mgetj+TXos2DJN5peSxWrOwX/uujZk3CFMwITd7SmF6J5fw6uptyU1StM
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB6774
X-Rspamd-Queue-Id: E7A353EA59
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.99 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	DKIM_TRACE(0.00)[amd.com:+];
	RCVD_TLS_LAST(0.00)[];
	URIBL_BLOCKED(0.00)[mail-dm6nam10on2072.outbound.protection.outlook.com:rdns,NAM10-DM6-obe.outbound.protection.outlook.com:helo,amd.com:dkim];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.93.72:from];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.961];
	RCPT_COUNT_SEVEN(0.00)[8];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: S3YOPKZIYAA3OWWHSPG5Q5UBNSP3F7EU
X-Message-ID-Hash: S3YOPKZIYAA3OWWHSPG5Q5UBNSP3F7EU
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, opensource.kernel@vivo.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dmabuf: fix dmabuf file poll uaf issue
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/S3YOPKZIYAA3OWWHSPG5Q5UBNSP3F7EU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTIuMDQuMjQgdW0gMDg6MTkgc2NocmllYiB6aGlndW9qaWFuZzoNCj4gW1NOSVBdDQo+IC0+
IEhlcmUgdGFzayAyMjIwIGRvIGVwb2xsIGFnYWluIHdoZXJlIGludGVybmFsbHkgaXQgd2lsbCBn
ZXQvcHV0IHRoZW4gDQo+IHN0YXJ0IHRvIGZyZWUgdHdpY2UgYW5kIGxlYWQgdG8gZmluYWwgY3Jh
c2guDQo+DQo+IEhlcmUgaXMgdGhlIGJhc2ljIGZsb3c6DQo+DQo+IDEuIFRocmVhZCBBIGluc3Rh
bGwgdGhlIGRtYV9idWZfZmQgdmlhIGRtYV9idWZfZXhwb3J0LCB0aGUgZmQgcmVmY291bnQgDQo+
IGlzIDENCj4NCj4gMi4gVGhyZWFkIEEgYWRkIHRoZSBmZCB0byBlcG9sbCBsaXN0IHZpYSBlcG9s
bF9jdGwoRVBPTExfQ1RMX0FERCkNCj4NCj4gMy4gQWZ0ZXIgdXNlIHRoZSBkbWEgYnVmLCBUaHJl
YWQgQSBjbG9zZSB0aGUgZmQsIHRoZW4gaGVyZSBmZCByZWZjb3VudCANCj4gaXMgMCwNCj4gwqAg
YW5kIGl0IHdpbGwgcnVuIF9fZnB1dCBmaW5hbGx5IHRvIHJlbGVhc2UgdGhlIGZpbGUNCg0KU3Rv
cCwgdGhhdCBpc24ndCBjb3JyZWN0Lg0KDQpUaGUgZnMgbGF5ZXIgd2hpY2ggY2FsbHMgZG1hX2J1
Zl9wb2xsKCkgc2hvdWxkIG1ha2Ugc3VyZSB0aGF0IHRoZSBmaWxlIA0KY2FuJ3QgZ28gYXdheSB1
bnRpbCB0aGUgZnVuY3Rpb24gcmV0dXJucy4NCg0KVGhlbiBpbnNpZGUgZG1hX2J1Zl9wb2xsKCkg
d2UgYWRkIGFub3RoZXIgcmVmZXJlbmNlIHRvIHRoZSBmaWxlIHdoaWxlIA0KaW5zdGFsbGluZyB0
aGUgY2FsbGJhY2s6DQoNCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIC8qIFBhaXJlZCB3aXRoIGZwdXQgaW4gZG1hX2J1Zl9wb2xsX2NiICovDQogwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnZXRfZmlsZShkbWFidWYt
PmZpbGUpOw0KDQpUaGlzIHJlZmVyZW5jZSBpcyBvbmx5IGRyb3BwZWQgYWZ0ZXIgdGhlIGNhbGxi
YWNrIGlzIGNvbXBsZXRlZCBpbiANCmRtYV9idWZfcG9sbF9jYigpOg0KDQogwqDCoMKgwqDCoMKg
wqAgLyogUGFpcmVkIHdpdGggZ2V0X2ZpbGUgaW4gZG1hX2J1Zl9wb2xsICovDQogwqDCoMKgwqDC
oMKgwqAgZnB1dChkbWFidWYtPmZpbGUpOw0KDQpTbyB5b3VyIGV4cGxhbmF0aW9uIGZvciB0aGUg
aXNzdWUganVzdCBzZWVtcyB0byBiZSBpbmNvcnJlY3QuDQoNCj4NCj4gNC4gSGVyZSBUaHJlYWQg
QSBub3QgZG8gZXBvbGxfY3RsKEVQT0xMX0NUTF9ERUwpIG1hbnVuYWxseSwgc28gaXQgDQo+IHN0
aWxsIHJlc2lkZXMgaW4gb25lIGVwb2xsX2xpc3QuDQo+IMKgIEFsdGhvdWdoIF9fZnB1dCB3aWxs
IGNhbGwgZXZlbnRwb2xsX3JlbGVhc2UgdG8gcmVtb3ZlIHRoZSBmaWxlIGZyb20gDQo+IGJpbmRl
ZCBlcG9sbCBsaXN0LA0KPiDCoCBidXQgaXQgaGFzIHNtYWxsIHRpbWUgd2luZG93IHdoZXJlIFRo
cmVhZCBCIGp1bXBzIGluLg0KDQpXZWxsIGlmIHRoYXQgaXMgcmVhbGx5IHRoZSBjYXNlIHRoZW4g
dGhhdCB3b3VsZCB0aGVuIGJlIGEgYnVnIGluIA0KZXBvbGxfY3RsKCkuDQoNCj4NCj4gNS4gRHVy
aW5nIHRoZSBzbWFsbCB3aW5kb3csIFRocmVhZCBCIGRvIHRoZSBwb2xsIGFjdGlvbiBmb3IgDQo+
IGRtYV9idWZfZmQsIHdoZXJlIGl0IHdpbGwgZmdldC9mcHV0IGZvciB0aGUgZmlsZSwNCj4gwqAg
dGhpcyBtZWFucyB0aGUgZmQgcmVmY291bnQgd2lsbCBiZSAwIC0+IDEgLT4gMCwgYW5kIGl0IHdp
bGwgY2FsbCANCj4gX19mcHV0IGFnYWluLg0KPiDCoCBUaGlzIHdpbGwgbGVhZCB0byBfX2ZwdXQg
dHdpY2UgZm9yIHRoZSBzYW1lIGZpbGUuDQo+DQo+IDYuIFNvIHRoZSBwb3RlbmlhbCBmaXggaXMg
dXNlIGdldF9maWxlX3JjdSB3aGljaCB0byBjaGVjayBpZiBmaWxlIA0KPiByZWZjb3VudCBhbHJl
YWR5IHplcm8gd2hpY2ggbWVhbnMgdW5kZXIgZnJlZS4NCj4gwqAgSWYgc28sIHdlIGp1c3QgcmV0
dXJuIGFuZCBubyBuZWVkIHRvIGRvIHRoZSBkbWFfYnVmX3BvbGwuDQoNCldlbGwgdG8gc2F5IGl0
IGJsdW50bHkgYXMgZmFyIGFzIEkgY2FuIHNlZSB0aGlzIHN1Z2dlc3Rpb24gaXMgY29tcGxldGVs
eSANCm5vbnNlbnNlLg0KDQpXaGVuIHRoZSByZWZlcmVuY2UgdG8gdGhlIGZpbGUgZ29lcyBhd2F5
IHdoaWxlIGRtYV9idWZfcG9sbCgpIGlzIA0KZXhlY3V0ZWQgdGhlbiB0aGF0J3MgYSBtYXNzaXZl
IGJ1ZyBpbiB0aGUgY2FsbGVyIG9mIHRoYXQgZnVuY3Rpb24uDQoNClJlZ2FyZHMsDQpDaHJpc3Rp
YW4uDQoNCj4NCj4gSGVyZSBpcyB0aGUgcmFjZSBjb25kaXRpb246DQo+DQo+IFRocmVhZCBBIFRo
cmVhZCBCDQo+IGRtYV9idWZfZXhwb3J0DQo+IGZkX3JlZmNvdW50IGlzIDENCj4gZXBvbGxfY3Rs
KEVQT0xMX0FERCkNCj4gYWRkIGRtYV9idWZfZmQgdG8gZXBvbGwgbGlzdA0KPiBjbG9zZShkbWFf
YnVmX2ZkKQ0KPiBmZF9yZWZjb3VudCBpcyAwDQo+IF9fZnB1dA0KPiBkbWFfYnVmX3BvbGwNCj4g
ZmdldA0KPiBmcHV0DQo+IGZkX3JlZmNvdW50IGlzIHplcm8gYWdhaW4NCj4NCj4gVGhhbmtzDQo+
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=

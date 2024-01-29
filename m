Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E203840681
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jan 2024 14:17:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2D02F4009C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jan 2024 13:17:40 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2042.outbound.protection.outlook.com [40.107.93.42])
	by lists.linaro.org (Postfix) with ESMTPS id A505840094
	for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Jan 2024 13:17:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=MnhAVwCi;
	arc=pass ("microsoft.com:s=arcselector9901:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.93.42 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PZ0zFnLD9jxYRW3nnRlAOj5mYFiHPOTW3MvPyV3FVJvzyXcSPGbzualEw74HcIztYUmkTESekwAvm6qlEIgd/5vWQXwnZYChATnaGWgUJaAIwrGfnZlTy6EFSWyJQgjhLNYNmy7VIKaQ/4ADpzMXvbbfGHgkUTOqkNG0q+4uoOLtDy7Wuy5RhFkwg4rHqbudkIK0V9IoP0fE8JZ+QO1kUbYGXv7n4s1MgqDspRUkg5o25EsE77QX+YW7K2xw1pqgg8RYgbKrKbDF8rzHQdB5vowNy1B6SZST8TzwgK/VqMyEDbRy1S0Tr3BLGg1YE0JaJ2nmBobhJj1LMlUE6sS50g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TziM/MC4a+7rQVfajuIG3rpuBRK6MBZi4HF8k3308O8=;
 b=Dpt6U1mGGy2sfgw2r9JrdWo9c2APj+XNct7Xizq8bX9TWulVyrxZ86XiF0JVY2uU/f2UALctmZAGT9oCk2evUzKdTxdak5Ns6QZsG16Q4NdwVJw/nJayD5apnKVHhgBNXPM1WdELgiljnbXH8wCM+bV5ond+piqYQSZVtBzQpDZu4BDJlg1k5K6RItvzj+RwgX1Ftv1EZSJC1tcQeBgoq5QaSsYjP46pUoS+fWprTpZ0hFNUqmPfWtqYJOCUAGG9beFzZ+r3eQ2viRyf9TayxJqg0RGmypxVR3SVAm0zNAvnMw/5yytBpCstNgABrBOwRWArnqsJd3dO8+xRwjJXOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TziM/MC4a+7rQVfajuIG3rpuBRK6MBZi4HF8k3308O8=;
 b=MnhAVwCiZpTZ9qD28NLHTwxl5Wd9RXx2HonTwAZWkrtRG6Yze7hvGKwANUUWJhBfoYKhO0UCtG0tYlGStSEoDcxInpI8y4cMBVoLIOm2mbcb5jenmZwYB/wrGif2w8/OtxyrsxvD64RyVcBBQaVlOogTcftwxCy4jlcKK4LyR1g=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by BL0PR12MB4929.namprd12.prod.outlook.com (2603:10b6:208:1c4::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.34; Mon, 29 Jan
 2024 13:17:30 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::e1fb:4123:48b1:653]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::e1fb:4123:48b1:653%4]) with mapi id 15.20.7228.029; Mon, 29 Jan 2024
 13:17:30 +0000
Message-ID: <8fc55451-dfd7-4d09-8051-8b39048f85e2@amd.com>
Date: Mon, 29 Jan 2024 14:17:22 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Paul Cercueil <paul@crapouillou.net>, Jonathan Cameron <jic23@kernel.org>
References: <20231219175009.65482-1-paul@crapouillou.net>
 <20231219175009.65482-6-paul@crapouillou.net>
 <20231221120624.7bcdc302@jic23-huawei>
 <ee5d7bb2fb3e74e8fc621d745b23d1858e1f0c3c.camel@crapouillou.net>
 <20240127165044.22f1b329@jic23-huawei>
 <d6bef39c-f940-4097-8ca3-0cf4ef89a743@amd.com>
 <aac82ce15a49c5e4b939a69229b9a8a51ca00f5d.camel@crapouillou.net>
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <aac82ce15a49c5e4b939a69229b9a8a51ca00f5d.camel@crapouillou.net>
X-ClientProxiedBy: FR0P281CA0181.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ab::8) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|BL0PR12MB4929:EE_
X-MS-Office365-Filtering-Correlation-Id: 65f51ebd-7e7e-44bf-b98a-08dc20cca552
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	jthF+GGY5TWMfceu2Yvm06OP/1R7d0ggj8QmOeQta+12IqHw0inAHicHIn5Mbh2BMk9Ug8gaxc392uQJ7Si7oFyGM79R0cur4sWf1/i1/1QQEFUbR12NwfkL/f8OS50Mvlf68yJkFslgM/YVRcVWknH8EYTzjjqJdTRYyRJivYVtMydFQdAu2FXfY3IbyuI7QmMA2iS2D/OGUiIA3hE2DSdsuA9igHdnmeu+O4qtxb9z1wyjRI73MEt5sOm1FHC29+oHf3GwNPOIKE/oqS4YMRqHzIb0Cgj8QTvnB9odNjQt3gO1OqJ4HHUgyCpexI5UsQ2T0Zo4e2JFOdSj2loCzJHHZcz2p/CtJBJprHVywEmmKtYCSGIuTXnBji3npizxoc0qJc0dM3CXZ9Vh1Xr+G5mYCSGr9VdibeMMkaUBswPT8Otabj20AOpQqLu31oMUtu3VK6OzeLMjwWOnU4Ee4zbfwm2/0SDBJmdHlFac5tHe1IlVmDHzy90Bhq4qXnhnrPp6//el7KhroYyrLcddyeCJUsayVt9YAgFIjHWhPLJyT2FycsDOFp+/zffDJqEl8+HueD5V3N+zCVV5SIA7m4gnGm2Sv0rguX/+dRUMM+WCpHCf4JkDQ3fxvVrc/LUW/D08p1qZ+Y3l4zfnJSTu2g==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(396003)(376002)(366004)(39850400004)(346002)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(86362001)(31696002)(36756003)(38100700002)(6486002)(478600001)(41300700001)(8676002)(8936002)(4326008)(66946007)(26005)(66556008)(316002)(66476007)(54906003)(110136005)(2616005)(2906002)(7416002)(66574015)(6666004)(6512007)(5660300002)(6506007)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UUZUVFdOcjk1QzJlYmZFV2NlNkplbURLNHliTVFKa25teEROTi9BSUhpSG9Q?=
 =?utf-8?B?WkZRRU1tWDJ3NVYra1ZBaC8vcjk5azZFV3h4UFVXQVFCTGhROFdGQlYyc0Nt?=
 =?utf-8?B?MlJtMGVXTHozaVlweGZmN2gvcTlyejRqUGtuWHI1NTkrYURxenk1Z29HOUtI?=
 =?utf-8?B?ZzcvTmtXWnNQTWdxc1ZycWNlcFJvK2pxc3V4cjlZQWsxUXFvZ0wrSXNEazRX?=
 =?utf-8?B?QjQ0cGRWRmg3ZGdSNzBPU2ZKWkloSUk1cG1iaXdXZlNJSUtkekpZUzgxM1BS?=
 =?utf-8?B?UEJ3MlcwQlpDYXltWWoxK3BtWEE2eXNrNnU2ZzBkTXBXNDZwbGExNU1oMUdi?=
 =?utf-8?B?anJYVFFkaU9VWWpIVFNiUVZXK25ydEdrSjlmOVN0ZWluL0E3NFdxZXI3eHNq?=
 =?utf-8?B?U2E0VDJVbDRBRnF3akxhS3p0WjFJVWdwU0N2bFh3WjIxNWFEbEJnenliUGFX?=
 =?utf-8?B?d1c3T3dXN1BWengyNnpwbXdYaUtDdWhCTDFTNkZSNkVBSEsyRmJtR3d1RUsw?=
 =?utf-8?B?cmF6eGJvTmZHL1pGZ1FwL1FVd1hpRkhQVE1MeVdlM3pnMkI2bmorNlgwelZK?=
 =?utf-8?B?cmJXRW5KS3lEMlladEVnZHkreDNzNzkxTjEraW96cHg0RUtrRG1yVDI4Qlda?=
 =?utf-8?B?QWw0bExwdm5xZENJTnhjRlRQUDU3NXVhOUhYT3kyNnk0UlRnNWpHWTJFbDF1?=
 =?utf-8?B?RlozalpZVzlITU5pblFUQXRCNlI2dTZMU2E5QmczWlBRSS9XUFEzYnFIVW1L?=
 =?utf-8?B?OHRaek5OMitKTjV5RCs0SkxTS2N5aVNSSXQydXljZFJnM2hnamQ5U2RnMW14?=
 =?utf-8?B?QjVrWnc3ekZXUVJJVFlkdnp3U1QrdERodm1DOGdEbk9RTFFZeWpRenlCU2Zo?=
 =?utf-8?B?UENlL2JWbWhnOEwvanpLQmd6YUxLbWZqcmNJRXRYMzE2U0pEeCtFMzh3WnBw?=
 =?utf-8?B?Vkd5dmxsbGtzM2VQWWNCekIzdnVsczgyMzRacWpsMkxPNDhRazdDc0g3ZCtC?=
 =?utf-8?B?NTVGY0RuR2MyNGdhWjQvSFhFSGFBZ05DeGpBUEljYXlScE5SM0ROeHNZbHZS?=
 =?utf-8?B?NFUzVnoxS0NzSmFweEw1NGtzd0d5MGUwQmxjTVZVSk82azMyekd3eXZXTDRP?=
 =?utf-8?B?OHBaNkRoZWhMOW5VQzBzQkszcEt6a1JDRGYvTlBMR2YwN21FVGcvd0RjNmh6?=
 =?utf-8?B?b0J5dXpYbU9CMkdua2paUWhUSzhsNzYwVGg2UlZVSDdud0t6eWkvSUhzNjVq?=
 =?utf-8?B?S3MyaVBWNTVHSVQrQzU4YXRPczhBOEZLOW0zNmF6RmpIczFpNUpONWdCR1RI?=
 =?utf-8?B?RkFZOXVOUmIySWFWT2hYcFJJSWFlVng2bFVmVWJTZXY3WklUcnJ0eVM0RUtp?=
 =?utf-8?B?UTJUZEdkVjFiQW1EeUlSMElsTW84NTk0Zk1yNml0SXZaZHU0UE5sSE9qRkR2?=
 =?utf-8?B?N05MWk12MDhMMFhwS0JmWWcvMkRUOGdVeW1kU3ZNc1F0WU44Sk16ZzlDaS95?=
 =?utf-8?B?b0FmanNvUTBZdHE4ZHRkWjVsUVBXUXgwdGd5NE1yWkI2dmEzelc1eVVnS3NM?=
 =?utf-8?B?RVBYeVF5MDAvU2hTd0RFVWRsK1p3OFJRczdISEZRQ3NXWjRuVWR3Q1ZIeXd5?=
 =?utf-8?B?cnBMMEF5VHdGcnVRNWpjUTF5eVVEdHVVVnJXWmphZHMrckowOEd6N0JSdDUv?=
 =?utf-8?B?VFZoOGo5KzNpeFVkaDVRWlh5TmMyRytrNzA2WTB1Z1Bna2JzNGNQK0Z1c283?=
 =?utf-8?B?SEZ5eU5YaWM2bzhzTnZySkQrYmhTUXRHTk0wUkxMWHYveCtrUEVON0RlUHhy?=
 =?utf-8?B?ZVRzNFFTRnFYWjVOYThrTEdNZHlCMjYrcC8wMWNiNW5nVkVMeVFRc3ROYnVN?=
 =?utf-8?B?VzQwQkp2b1pJTXQ5S1pKT3hlZkZjWEpOZWFaVG5GVkU3d2lIS0k2TzhoTndO?=
 =?utf-8?B?UDduQUE1amszYzlUVXdqMDNsdmcrcW01d3NEZStsZnA5ZTlvL0hxelpEdkll?=
 =?utf-8?B?U0Zqb2VXZ2p3eEhYbjJ3OHdZengrL3huQlhTM1NZa3lxdXFGRkhjcDdFUGJO?=
 =?utf-8?B?NFlxR2F2WWY2Y3B6SFJISjI1S3hpRDJxWFhmNU80WmJidjhmcVRpSUcza0VT?=
 =?utf-8?Q?UrDJfYroSoIvRCEnnHNp7jHOS?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65f51ebd-7e7e-44bf-b98a-08dc20cca552
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2024 13:17:29.9931
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: s9ERICCRppoDrgUG8pZry0OgcfxpOQjLkvHmWUtTQQcUdVLBZ2mgT8S6HvR1TdLF
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB4929
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A505840094
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.49 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.93.42:from];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[metafoo.de,linaro.org,kernel.org,lwn.net,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com,analog.com];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: PL76RCYF26AEGYENPYPJMFMJQTDWHMJ7
X-Message-ID-Hash: PL76RCYF26AEGYENPYPJMFMJQTDWHMJ7
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Lars-Peter Clausen <lars@metafoo.de>, Sumit Semwal <sumit.semwal@linaro.org>, Vinod Koul <vkoul@kernel.org>, Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, =?UTF-8?Q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>, Michael Hennerich <Michael.Hennerich@analog.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 5/8] iio: core: Add new DMABUF interface infrastructure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PL76RCYF26AEGYENPYPJMFMJQTDWHMJ7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjkuMDEuMjQgdW0gMTQ6MDYgc2NocmllYiBQYXVsIENlcmN1ZWlsOg0KPiBIaSBDaHJpc3Rp
YW4sDQo+DQo+IExlIGx1bmRpIDI5IGphbnZpZXIgMjAyNCDDoCAxMzo1MiArMDEwMCwgQ2hyaXN0
aWFuIEvDtm5pZyBhIMOpY3JpdMKgOg0KPj4gQW0gMjcuMDEuMjQgdW0gMTc6NTAgc2NocmllYiBK
b25hdGhhbiBDYW1lcm9uOg0KPj4+Pj4+ICsJaWlvX2J1ZmZlcl9kbWFidWZfcHV0KGF0dGFjaCk7
DQo+Pj4+Pj4gKw0KPj4+Pj4+ICtvdXRfZG1hYnVmX3B1dDoNCj4+Pj4+PiArCWRtYV9idWZfcHV0
KGRtYWJ1Zik7DQo+Pj4+PiBBcyBiZWxvdy4gRmVlbHMgbGlrZSBhIF9fZnJlZShkbWFfYnVmX3B1
dCkgYml0IG9mIG1hZ2ljIHdvdWxkDQo+Pj4+PiBiZSBhDQo+Pj4+PiBuaWNlIHRvIGhhdmUuDQo+
Pj4+IEknbSB3b3JraW5nIG9uIHRoZSBwYXRjaGVzIHJpZ2h0IG5vdywganVzdCBvbmUgcXVpY2sg
cXVlc3Rpb24uDQo+Pj4+DQo+Pj4+IEhhdmluZyBhIF9fZnJlZShkbWFfYnVmX3B1dCkgcmVxdWly
ZXMgdGhhdCBkbWFfYnVmX3B1dCBpcyBmaXJzdA0KPj4+PiAicmVnaXN0ZXJlZCIgYXMgYSBmcmVl
aW5nIGZ1bmN0aW9uIHVzaW5nIERFRklORV9GUkVFKCkgaW4NCj4+Pj4gPGxpbnV4L2RtYS0NCj4+
Pj4gYnVmLmg+LCB3aGljaCBoYXMgbm90IGJlZW4gZG9uZSB5ZXQuDQo+Pj4+DQo+Pj4+IFRoYXQg
d291bGQgbWVhbiBjYXJyeWluZyBhIGRtYS1idWYgc3BlY2lmaWMgcGF0Y2ggaW4geW91ciB0cmVl
LA0KPj4+PiBhcmUgeW91DQo+Pj4+IE9LIHdpdGggdGhhdD8NCj4+PiBOZWVkcyBhbiBBQ0sgZnJv
bSBhcHByb3ByaWF0ZSBtYWludGFpbmVyLCBidXQgb3RoZXJ3aXNlIEknbSBmaW5lDQo+Pj4gZG9p
bmcNCj4+PiBzby7CoCBBbHRlcm5hdGl2ZSBpcyB0byBjaXJjbGUgYmFjayB0byB0aGlzIGxhdGVy
IGFmdGVyIHRoaXMgY29kZSBpcw0KPj4+IHVwc3RyZWFtLg0KPj4gU2VwYXJhdGUgcGF0Y2hlcyBm
b3IgdGhhdCBwbGVhc2UsIHRoZSBhdXRvY2xlYW51cCBmZWF0dXJlIGlzIHNvIG5ldw0KPj4gdGhh
dA0KPj4gSSdtIG5vdCAxMDAlIGNvbnZpbmNlZCB0aGF0IGV2ZXJ5dGhpbmcgd29ya3Mgb3V0IHNt
b290aGx5IGZyb20gdGhlDQo+PiBzdGFydC4NCj4gU2VwYXJhdGUgcGF0Y2hlcyBpcyBhIGdpdmVu
LCBkaWQgeW91IG1lYW4gb3V0c2lkZSB0aGlzIHBhdGNoc2V0Pw0KPiBCZWNhdXNlIEkgY2FuIHNl
bmQgYSBzZXBhcmF0ZSBwYXRjaHNldCB0aGF0IGludHJvZHVjZXMgc2NvcGUtYmFzZWQNCj4gbWFu
YWdlbWVudCBmb3IgZG1hX2ZlbmNlIGFuZCBkbWFfYnVmLCBidXQgdGhlbiBpdCB3b24ndCBoYXZl
IHVzZXJzLg0KDQpPdXRzaWRlIG9mIHRoZSBwYXRjaHNldCwgdGhpcyBpcyBlc3NlbnRpYWxseSBi
cmFuZCBuZXcgc3R1ZmYuDQoNCklJUkMgd2UgaGF2ZSBxdWl0ZSBhIG51bWJlciBvZiBkbWFfZmVu
Y2Ugc2VsZnRlc3RzIGFuZCBzd19zeW5jIHdoaWNoIGlzIA0KYmFzaWNhbGx5IGNvZGUgaW5zaWRl
IHRoZSBkcml2ZXJzL2RtYS1idWYgZGlyZWN0b3J5IG9ubHkgdGhlcmUgZm9yIA0KdGVzdGluZyBE
TUEtYnVmIGZ1bmN0aW9uYWxpdHkuDQoNCkNvbnZlcnQgdGhvc2Ugb3ZlciBhcyB3ZWxsIGFuZCBJ
J20gbW9yZSB0aGFuIGhhcHB5IHRvIHVwc3RyZWFtIHRoaXMgY2hhbmdlLg0KDQpUaGFua3MsDQpD
aHJpc3RpYW4uDQoNCj4NCj4gQ2hlZXJzLA0KPiAtUGF1bA0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

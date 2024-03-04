Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A03987039C
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 Mar 2024 15:07:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2D6C33F380
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 Mar 2024 14:07:30 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2067.outbound.protection.outlook.com [40.107.93.67])
	by lists.linaro.org (Postfix) with ESMTPS id 20D6B3F380
	for <linaro-mm-sig@lists.linaro.org>; Mon,  4 Mar 2024 14:07:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="i80SSS/b";
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.93.67 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ENWRqW49UCk3cDmqebYR9X5x2jkwC+8LhMitvr9l47FNCXE28VHjYKkD6d3R1ZGQGeeoPxqscqLm9YDQo9k7pFKdZdpbgGC17Ovrid0HgVl/C9HUfcdBjlDTyR8HEJl7HXShg3Ua25Voq/iu6NOTw4NmB/UM2dk6e1HByumU36S1WReVPFOUupcTo3AsXCLLZ/AnnaJ66nuQ2BYr9d05ZYevoeybkVzXihqXIBqXHcjTTrD/2IHkR7l+mXiAsxZDwYTzGMc467otZ6eLV86j8aJ4nYCSTOiNrE1VxeSq3MjYYYoYbe5mwaSrZJEsopHM1KaSIzrWnCSLlHHbOAChMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=giJzMAjGzgO5xRM1VIgQpGF4mAdEnrqBct3MlYnGiNc=;
 b=HX6YSuRYQXwx6/eRaARWJPgHkSUBS8lE64rEXbqEnCGfdKjAte/3Aq4g6yg8TC9ml2FItyhEnu829Immt8SOB9+yGKIvJMRrpCBy/OnqHI6HulXtGMZCm5Dcz3EDkLMTn+L9WsuTIC1+c5uy31YNl/5bj/GWqYiJXMBGsktigYg+XrHrR+sBfRy6rvYOyfZ22WYzdWNxW/AxyillChnZAD+62cEbrSWTOdMwFPICIfz2EH/l15L/0UaP7QUXWmBZSIOC9r0baX7284sBuQgOBUSeMjdV8CD0z4zibbDdVrSaZigA+y2SfhSTh6BgKHTyUwrs71l97e1g7nDoTM46lQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=giJzMAjGzgO5xRM1VIgQpGF4mAdEnrqBct3MlYnGiNc=;
 b=i80SSS/bHzUYQFBEFPmKh4IOsk9hxJGb5dmZgqdxhNKW5cveAQV7w1nNPGfmETEMYwrSWUzRIno5zpLioi3GXTKccxEKghixYIRXwJLX/vmbG+qiVYWaDPemRkwIxqifhvNLwgLD2W35tzJpOiezrU5uEBQ4JvRuf1dSj9KJe7s=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DS7PR12MB5743.namprd12.prod.outlook.com (2603:10b6:8:72::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.39; Mon, 4 Mar
 2024 14:07:17 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::f2b6:1034:76e8:f15a]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::f2b6:1034:76e8:f15a%6]) with mapi id 15.20.7339.031; Mon, 4 Mar 2024
 14:07:17 +0000
Message-ID: <63f8a0f5-55a4-47c9-99d7-bb0b8ad22b3a@amd.com>
Date: Mon, 4 Mar 2024 15:07:07 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Paul Cercueil <paul@crapouillou.net>, Nuno Sa <nuno.sa@analog.com>,
 Vinod Koul <vkoul@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Jonathan Cameron <jic23@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>,
 Jonathan Corbet <corbet@lwn.net>
References: <20240223-iio-dmabuf-v7-0-78cfaad117b9@analog.com>
 <20240223-iio-dmabuf-v7-3-78cfaad117b9@analog.com>
 <85782edb-4876-4cbd-ac14-abcbcfb58770@amd.com>
 <d17bd8aa17ac82773d0bdd6ce4edfe4a6249f179.camel@crapouillou.net>
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <d17bd8aa17ac82773d0bdd6ce4edfe4a6249f179.camel@crapouillou.net>
X-ClientProxiedBy: ZR0P278CA0145.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:41::15) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DS7PR12MB5743:EE_
X-MS-Office365-Filtering-Correlation-Id: a52e8aa8-49dc-4cab-6e87-08dc3c546645
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Z/sSZb6ZmxtPN/qLTAj++ZRBfxgotwgi7d/+GRruFmGwZG3N9gxV00jvAO6tMbcPqMzCWtsqyN7epAJONX4pyi0ewSGvBYZdhhjk+w31nD3CChGXJd3SqyVuDvbPwgvuG9vNzR2MVcTtsUhzBRWeoGS67Qjv5W6txsjj/4rYkYEj5TRfL4mORhUpNnMpIJr8MXV7zBSI+PXQSleAfprDlMhLWcTOmn9jx5Lzif7bIYCpg/5u60tXvplTZdpFim16qAtvJlzNK1ZZF/OUFcyoF4D2BGnuTCfRB97iv3l/00v8FjQLfUOCp1ya1pkHszjlSPw2lmtGqsxVSfYJwiZhG3aWsGhk2JtZRANEyz/h7FAGvQ0gbzfEfxG6r//v8qgMyzy3vOEty+lmpMmM8yxv5rQPjYF5Nb+/Fy4Bgi4DGlZla1xT1SVMgyp2lHrFy9R81YF7lqJOpb5kW+nzDC01WDV9vMOFgvLI6MNJTsQjTOs8gFhWUobSpKTFnpyovvTNy8KC9dtj4JrRVA3zQG1tKOFk1JGNFqg7dCnFo0GnZ0KcSJ95UNBaSMKLuXNEcV9UeMWuxAX08KsKrFKTcS8SMYIYiKFT1zkTAk1tlACcwzJb164t4bXsboDalPftH9JP1WG9Ztl2tWxQZ6zMSQLxfODIWwBl/wr8Uiq1ZaMlbcc=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VDJ0RkVzWWQzbWx2S2p5dWFqYW9Bc2RFazlYaXlqZkU3ZEEzeFRzTG9TelpC?=
 =?utf-8?B?LzN0Z1c0RnI2TFhLMk03QVNxUUg5TWdHNzlZeFhveUpFODRoZG1oWWFSZG5G?=
 =?utf-8?B?dHNiY3NpVnQ0VUdFdHhxNzQwTlRMR0x4QjlFbXdoNzllSEt5Y1V3ZEJQbk0r?=
 =?utf-8?B?MTByVEtRQm0raUtrYUtiYnRVcUZrSlJLT0xKZlpRY3dQTytlTXRkRVpBMHor?=
 =?utf-8?B?eGthMmduRm92bTJsdXhhTjlaTnE3cWl6YmlBcXFSczJ3Sjc4SDlyQkhuOEZT?=
 =?utf-8?B?b1JvNGFvMnZsVEdqT293N2R2VVY4WHpUU1M4enNJSnIvWUtvUmpuUGYwenJS?=
 =?utf-8?B?SHRaLzNMZWtpRjFvd1U1RjN5TmxYSVFWYTlJWXhWN3c3dU1hODZCd05DVmsz?=
 =?utf-8?B?Q0tqMkROeTdjenRtM1JUK1lpcG0yWkN0OE9VYmJNVjQ5bU9CWGNVdW12UEo5?=
 =?utf-8?B?Qjh5dU4yb0JzR1FGVXJYQzRrNTl1ZjZqeWx2a2d6QUFqcWxlS0JBQ1VUVXIx?=
 =?utf-8?B?TStTV3lYR0YyVUpRd2p5NlV2eXB6NG5LK2duNXhaMDQ1bWQ1a3Y5dGViSHUr?=
 =?utf-8?B?c0FqRFB3OEZwMWFmTjA3VmpuN2dHeHpBQURFc3haVDY4UmVmMTQ5SFVXYmZN?=
 =?utf-8?B?ZDIvZDN6R3cwc1pDU1BOblRrOCtqSXR2TVVTY0JBRHg5OUlvWC80QzIyRUl1?=
 =?utf-8?B?WGZEQ3NNTHFROElBSkpheVU5L2lTb0h4NTZxODV5ckhPVDRIeEtTcmM2bGZT?=
 =?utf-8?B?bzJuemFZa2dZcWsraXdrRjJiSEtNTmlsMlJvYWZVbG53aVBmYW1lNlB4dGRR?=
 =?utf-8?B?R2ZjY1U0NnhDdEpFS0JKODdXMW5FSUJJOHJEVDJpZ1BBQnp5dEZab1VPM0Y0?=
 =?utf-8?B?VytXdkJNaTFINHRwek14MWxuczdGM0ZwQURLcW5vbjh1Wmp2Q2FZQmZJOE0r?=
 =?utf-8?B?aW04OHBpVVlWZU90V2hKLy85K2FILzVYcmJmZ3FNS09PNTQxUE1ud25yaEkv?=
 =?utf-8?B?NFNaVnJqbFdDTG1oRFhzNnQrcGRGL2w3VjM4ZVpaYzhKaUlTY2FVRjY1UWtq?=
 =?utf-8?B?QmN6bjlRcVFBK2JoeThZQjdqTTViZUZDN3pCaGZGemtFNTFDMjZzWUtWSy9j?=
 =?utf-8?B?Um1qWTVEbG0wWWdSOGFmZ0I0YkZyb0JIL0FPYXZ2R0RnVTNjZGN5ZFJiaGM2?=
 =?utf-8?B?ZExNalJDai9paStwQ1dTYUlKUG85MUNkSDlyQTUwc0Q3SXNCY1RxYUtqZjMz?=
 =?utf-8?B?YWVlSktYUUd0WEFNeFNpWkEwZEhBSHJJWlV2bVJ6TnJNTytWQ1dMZW4yak5p?=
 =?utf-8?B?cmlETlQ3YjVxMzVNOGRaMHBSTmJRTk9FUVpDMklpNlRSNktsYXliRHJtd1Br?=
 =?utf-8?B?akhlM2RMWGR4QmlTWk1JNVk1TGRmZjBjbGhNSVFXR0xPZy9ydjU1R21OTUFl?=
 =?utf-8?B?MWswOVZ3TmlVS04yVXg4azljcWdiS0xBYjQ0NC9mZ3ZCSXQwNDRBS0RsOFV6?=
 =?utf-8?B?aG4wQ2tNMDhMc09QdjNmbkVWcllPM3F2UWlISXI4VS9PK1g5K2hIUGVranBV?=
 =?utf-8?B?S0NBcjhSamo0clJaMjJIK1JveHdpd0hFeWpVRFduYlZCUWFNQURyRlhuM3lO?=
 =?utf-8?B?VVIyWUd4M1VLNkgweStWRFhvZ0lpbW0rbnhEL1BxaFdEVFVkZ2ZVNStRKzJI?=
 =?utf-8?B?THBhVHhnalU4OUZNNldQY0g5eHdQV25qbS93dFZLd2xBSFlYRkoxWk4wYjdE?=
 =?utf-8?B?MndPaGRyZDRKOUowVTc2UE45blBybyt5ekNKTGoxYWRialFlUmRZYWZkWGZ4?=
 =?utf-8?B?K0V6TmFKTFV3aVlVcWhZTU8yck01aTMrNSt6V1JZKzdpM2MxbzI4R0RJZ29N?=
 =?utf-8?B?czdCbkhxZmc2aWQ3UHQvRnlCbkxzT05EOCs5ck5lTFFDLzhWb3owY08xbm5R?=
 =?utf-8?B?ekIwK3V2Zkd3cXZsbzFEZlJvQVRPVFBCOTdDKzJVUkJZVFBSU09qcXNFdGtj?=
 =?utf-8?B?OGdwTksrTHpGejRaY25MQ1A4TDdhaG1hOW1mUFFuN3pVS0J3aldnYzZ0UExI?=
 =?utf-8?B?V3JyYWoxZ3ZSaW5rdmhiTEVoQUZhRExQMHozbWg1WC9qSy83Tkx5YzRqV3Rp?=
 =?utf-8?Q?p1tJSeOxD6hlvWiQXwEfi+AJE?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a52e8aa8-49dc-4cab-6e87-08dc3c546645
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2024 14:07:17.1682
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4xzamYIgJnGfcUE6j12pIXJSOZV6bEpMAT1vGZfD1vbFSNZMmQ6HgYOgf8+URcq7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR12MB5743
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 20D6B3F380
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.99 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	XM_UA_NO_VERSION(0.01)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.93.67:from];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: 55KGSKM5XVSMKHNW5CV66QAQIGPG527J
X-Message-ID-Hash: 55KGSKM5XVSMKHNW5CV66QAQIGPG527J
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Daniel Vetter <daniel@ffwll.ch>, Michael Hennerich <Michael.Hennerich@analog.com>, linux-doc@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 3/6] iio: core: Add new DMABUF interface infrastructure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/55KGSKM5XVSMKHNW5CV66QAQIGPG527J/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============2834781801994523953=="

--===============2834781801994523953==
Content-Type: multipart/alternative;
 boundary="------------EPzh60HdejG5yPGqLZzXs02Y"
Content-Language: en-US

--------------EPzh60HdejG5yPGqLZzXs02Y
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDQuMDMuMjQgdW0gMTQ6NTkgc2NocmllYiBQYXVsIENlcmN1ZWlsOg0KPiBbU05JUF0NCj4+
PiArCWRtYV90b19yYW0gPSBidWZmZXItPmRpcmVjdGlvbiA9PSBJSU9fQlVGRkVSX0RJUkVDVElP
Tl9JTjsNCj4+PiArDQo+Pj4gKwlpZiAoZG1hX3RvX3JhbSkgew0KPj4+ICsJCS8qDQo+Pj4gKwkJ
ICogSWYgd2UncmUgd3JpdGluZyB0byB0aGUgRE1BQlVGLCBtYWtlIHN1cmUgd2UNCj4+PiBkb24n
dCBoYXZlDQo+Pj4gKwkJICogcmVhZGVycw0KPj4+ICsJCSAqLw0KPj4+ICsJCXJldGwgPSBkbWFf
cmVzdl93YWl0X3RpbWVvdXQoZG1hYnVmLT5yZXN2LA0KPj4+ICsJCQkJCcKgwqDCoMKgIERNQV9S
RVNWX1VTQUdFX1JFQUQsDQo+Pj4gdHJ1ZSwNCj4+PiArCQkJCQnCoMKgwqDCoCB0aW1lb3V0KTsN
Cj4+PiArCQlpZiAocmV0bCA9PSAwKQ0KPj4+ICsJCQlyZXRsID0gLUVCVVNZOw0KPj4+ICsJCWlm
IChyZXRsIDwgMCkgew0KPj4+ICsJCQlyZXQgPSAoaW50KXJldGw7DQo+Pj4gKwkJCWdvdG8gZXJy
X3Jlc3ZfdW5sb2NrOw0KPj4+ICsJCX0NCj4+PiArCX0NCj4+PiArDQo+Pj4gKwlpZiAoYnVmZmVy
LT5hY2Nlc3MtPmxvY2tfcXVldWUpDQo+Pj4gKwkJYnVmZmVyLT5hY2Nlc3MtPmxvY2tfcXVldWUo
YnVmZmVyKTsNCj4+PiArDQo+Pj4gKwlyZXQgPSBkbWFfcmVzdl9yZXNlcnZlX2ZlbmNlcyhkbWFi
dWYtPnJlc3YsIDEpOw0KPj4+ICsJaWYgKHJldCkNCj4+PiArCQlnb3RvIGVycl9xdWV1ZV91bmxv
Y2s7DQo+Pj4gKw0KPj4+ICsJZG1hX3Jlc3ZfYWRkX2ZlbmNlKGRtYWJ1Zi0+cmVzdiwgJmZlbmNl
LT5iYXNlLA0KPj4+ICsJCQnCoMKgIGRtYV9yZXN2X3VzYWdlX3J3KGRtYV90b19yYW0pKTsNCj4+
IFRoYXQgaXMgaW5jb3JyZWN0IHVzZSBvZiB0aGUgZnVuY3Rpb24gZG1hX3Jlc3ZfdXNhZ2Vfcnco
KS4gVGhhdA0KPj4gZnVuY3Rpb24NCj4+IGlzIGZvciByZXRyaWV2aW5nIGZlbmNlcyBhbmQgbm90
IGFkZGluZyB0aGVtLg0KPj4NCj4+IFNlZSB0aGUgZnVuY3Rpb24gaW1wbGVtZW50YXRpb24gYW5k
IGNvbW1lbnRzLCB3aGVuIHlvdSB1c2UgaXQgbGlrZQ0KPj4gdGhpcw0KPj4geW91IGdldCBleGFj
dGx5IHdoYXQgeW91IGRvbid0IHdhbnQuDQo+IE5vLCBJIGdldCBleGFjdGx5IHdoYXQgSSB3YW50
LiBJZiAiZG1hX3RvX3JhbSIsIEkgZ2V0DQo+IERNQV9SRVNWX1VTQUdFX1JFQUQsIG90aGVyd2lz
ZSBJIGdldCBETUFfUkVTVl9VU0FHRV9XUklURS4NCg0KQWgsIHNvIGJhc2ljYWxseSAhZG1hX3Rv
X3JhbSBtZWFucyB0aGF0IHlvdSBoYXZlIGEgd3JpdGUgYWNjZXNzIHRvIHRoZSANCmJ1ZmZlcj8N
Cg0KPiBJZiB5b3UgcmVhbGx5IGRvbid0IGxpa2UgdGhlIG1hY3JvLCBJIGNhbiBpbmxpbmUgdGhp
bmdzIGhlcmUuDQoNClllYWgsIHRoYXQgd291bGQgc3RpbGwgYmUgaW5jb3JyZWN0IHVzZS4NCg0K
VGhlIGRtYV9fcmVzdl91c2FnZV9ydygpIGlzIGZvciByZXRyaWV2aW5nIHRoZSBmZW5jZXMgdG8g
c3luYyB0byBmb3IgDQpyZWFkIGFuZCB3cml0ZSBvcGVyYXRpb25zIGFuZCBzaG91bGQgbmV2ZXIg
YmUgdXNlZCB0b2dldGhlciB3aXRoIA0KZG1hX2ZlbmNlX3Jlc3ZfYWRkKCkuDQoNClJlZ2FyZHMs
DQpDaHJpc3RpYW4uDQoNCj4NCj4gQ2hlZXJzLA0KPiAtUGF1bA0KPg0KPj4gUmVnYXJkcywNCj4+
IENocmlzdGlhbi4NCj4+DQo+Pj4gKwlkbWFfcmVzdl91bmxvY2soZG1hYnVmLT5yZXN2KTsNCj4+
PiArDQo+Pj4gKwljb29raWUgPSBkbWFfZmVuY2VfYmVnaW5fc2lnbmFsbGluZygpOw0KPj4+ICsN
Cj4+PiArCXJldCA9IGJ1ZmZlci0+YWNjZXNzLT5lbnF1ZXVlX2RtYWJ1ZihidWZmZXIsIHByaXYt
PmJsb2NrLA0KPj4+ICZmZW5jZS0+YmFzZSwNCj4+PiArCQkJCQnCoMKgwqDCoCBwcml2LT5zZ3Qs
DQo+Pj4gaWlvX2RtYWJ1Zi5ieXRlc191c2VkLA0KPj4+ICsJCQkJCcKgwqDCoMKgIGN5Y2xpYyk7
DQo+Pj4gKwlpZiAocmV0KSB7DQo+Pj4gKwkJLyoNCj4+PiArCQkgKiBETUFCVUYgZW5xdWV1ZSBm
YWlsZWQsIGJ1dCB3ZSBhbHJlYWR5IGFkZGVkIHRoZQ0KPj4+IGZlbmNlLg0KPj4+ICsJCSAqIFNp
Z25hbCB0aGUgZXJyb3IgdGhyb3VnaCB0aGUgZmVuY2UgY29tcGxldGlvbg0KPj4+IG1lY2hhbmlz
bS4NCj4+PiArCQkgKi8NCj4+PiArCQlpaW9fYnVmZmVyX3NpZ25hbF9kbWFidWZfZG9uZSgmZmVu
Y2UtPmJhc2UsIHJldCk7DQo+Pj4gKwl9DQo+Pj4gKw0KPj4+ICsJaWYgKGJ1ZmZlci0+YWNjZXNz
LT51bmxvY2tfcXVldWUpDQo+Pj4gKwkJYnVmZmVyLT5hY2Nlc3MtPnVubG9ja19xdWV1ZShidWZm
ZXIpOw0KPj4+ICsNCj4+PiArCWRtYV9mZW5jZV9lbmRfc2lnbmFsbGluZyhjb29raWUpOw0KPj4+
ICsJZG1hX2J1Zl9wdXQoZG1hYnVmKTsNCj4+PiArDQo+Pj4gKwlyZXR1cm4gcmV0Ow0KPj4+ICsN
Cj4+PiArZXJyX3F1ZXVlX3VubG9jazoNCj4+PiArCWlmIChidWZmZXItPmFjY2Vzcy0+dW5sb2Nr
X3F1ZXVlKQ0KPj4+ICsJCWJ1ZmZlci0+YWNjZXNzLT51bmxvY2tfcXVldWUoYnVmZmVyKTsNCj4+
PiArZXJyX3Jlc3ZfdW5sb2NrOg0KPj4+ICsJZG1hX3Jlc3ZfdW5sb2NrKGRtYWJ1Zi0+cmVzdik7
DQo+Pj4gK2Vycl9mZW5jZV9wdXQ6DQo+Pj4gKwlkbWFfZmVuY2VfcHV0KCZmZW5jZS0+YmFzZSk7
DQo+Pj4gK2Vycl9hdHRhY2htZW50X3B1dDoNCj4+PiArCWlpb19idWZmZXJfZG1hYnVmX3B1dChh
dHRhY2gpOw0KPj4+ICtlcnJfZG1hYnVmX3B1dDoNCj4+PiArCWRtYV9idWZfcHV0KGRtYWJ1Zik7
DQo+Pj4gKw0KPj4+ICsJcmV0dXJuIHJldDsNCj4+PiArfQ0KPj4+ICsNCj4+PiArc3RhdGljIHZv
aWQgaWlvX2J1ZmZlcl9jbGVhbnVwKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykNCj4+PiArew0K
Pj4+ICsJc3RydWN0IGlpb19kbWFfZmVuY2UgKmZlbmNlID0NCj4+PiArCQljb250YWluZXJfb2Yo
d29yaywgc3RydWN0IGlpb19kbWFfZmVuY2UsIHdvcmspOw0KPj4+ICsJc3RydWN0IGlpb19kbWFi
dWZfcHJpdiAqcHJpdiA9IGZlbmNlLT5wcml2Ow0KPj4+ICsJc3RydWN0IGRtYV9idWZfYXR0YWNo
bWVudCAqYXR0YWNoID0gcHJpdi0+YXR0YWNoOw0KPj4+ICsNCj4+PiArCWRtYV9mZW5jZV9wdXQo
JmZlbmNlLT5iYXNlKTsNCj4+PiArCWlpb19idWZmZXJfZG1hYnVmX3B1dChhdHRhY2gpOw0KPj4+
ICt9DQo+Pj4gKw0KPj4+ICt2b2lkIGlpb19idWZmZXJfc2lnbmFsX2RtYWJ1Zl9kb25lKHN0cnVj
dCBkbWFfZmVuY2UgKmZlbmNlLCBpbnQNCj4+PiByZXQpDQo+Pj4gK3sNCj4+PiArCXN0cnVjdCBp
aW9fZG1hX2ZlbmNlICppaW9fZmVuY2UgPQ0KPj4+ICsJCWNvbnRhaW5lcl9vZihmZW5jZSwgc3Ry
dWN0IGlpb19kbWFfZmVuY2UsIGJhc2UpOw0KPj4+ICsJYm9vbCBjb29raWUgPSBkbWFfZmVuY2Vf
YmVnaW5fc2lnbmFsbGluZygpOw0KPj4+ICsNCj4+PiArCS8qDQo+Pj4gKwkgKiBHZXQgYSByZWZl
cmVuY2UgdG8gdGhlIGZlbmNlLCBzbyB0aGF0IGl0J3Mgbm90IGZyZWVkIGFzDQo+Pj4gc29vbiBh
cw0KPj4+ICsJICogaXQncyBzaWduYWxlZC4NCj4+PiArCSAqLw0KPj4+ICsJZG1hX2ZlbmNlX2dl
dChmZW5jZSk7DQo+Pj4gKw0KPj4+ICsJZmVuY2UtPmVycm9yID0gcmV0Ow0KPj4+ICsJZG1hX2Zl
bmNlX3NpZ25hbChmZW5jZSk7DQo+Pj4gKwlkbWFfZmVuY2VfZW5kX3NpZ25hbGxpbmcoY29va2ll
KTsNCj4+PiArDQo+Pj4gKwkvKg0KPj4+ICsJICogVGhlIGZlbmNlIHdpbGwgYmUgdW5yZWYnZCBp
biBpaW9fYnVmZmVyX2NsZWFudXAuDQo+Pj4gKwkgKiBJdCBjYW4ndCBiZSBkb25lIGhlcmUsIGFz
IHRoZSB1bnJlZiBmdW5jdGlvbnMgbWlnaHQgdHJ5DQo+Pj4gdG8gbG9jayB0aGUNCj4+PiArCSAq
IHJlc3Ygb2JqZWN0LCB3aGljaCBjYW4gZGVhZGxvY2suDQo+Pj4gKwkgKi8NCj4+PiArCUlOSVRf
V09SSygmaWlvX2ZlbmNlLT53b3JrLCBpaW9fYnVmZmVyX2NsZWFudXApOw0KPj4+ICsJc2NoZWR1
bGVfd29yaygmaWlvX2ZlbmNlLT53b3JrKTsNCj4+PiArfQ0KPj4+ICtFWFBPUlRfU1lNQk9MX0dQ
TChpaW9fYnVmZmVyX3NpZ25hbF9kbWFidWZfZG9uZSk7DQo+Pj4gKw0KPj4+ICtzdGF0aWMgbG9u
ZyBpaW9fYnVmZmVyX2NocmRldl9pb2N0bChzdHJ1Y3QgZmlsZSAqZmlscCwNCj4+PiArCQkJCcKg
wqDCoCB1bnNpZ25lZCBpbnQgY21kLCB1bnNpZ25lZA0KPj4+IGxvbmcgYXJnKQ0KPj4+ICt7DQo+
Pj4gKwlzdHJ1Y3QgaWlvX2Rldl9idWZmZXJfcGFpciAqaWIgPSBmaWxwLT5wcml2YXRlX2RhdGE7
DQo+Pj4gKwl2b2lkIF9fdXNlciAqX2FyZyA9ICh2b2lkIF9fdXNlciAqKWFyZzsNCj4+PiArCWJv
b2wgbm9uYmxvY2sgPSBmaWxwLT5mX2ZsYWdzICYgT19OT05CTE9DSzsNCj4+PiArDQo+Pj4gKwlz
d2l0Y2ggKGNtZCkgew0KPj4+ICsJY2FzZSBJSU9fQlVGRkVSX0RNQUJVRl9BVFRBQ0hfSU9DVEw6
DQo+Pj4gKwkJcmV0dXJuIGlpb19idWZmZXJfYXR0YWNoX2RtYWJ1ZihpYiwgX2FyZywNCj4+PiBu
b25ibG9jayk7DQo+Pj4gKwljYXNlIElJT19CVUZGRVJfRE1BQlVGX0RFVEFDSF9JT0NUTDoNCj4+
PiArCQlyZXR1cm4gaWlvX2J1ZmZlcl9kZXRhY2hfZG1hYnVmKGliLCBfYXJnLA0KPj4+IG5vbmJs
b2NrKTsNCj4+PiArCWNhc2UgSUlPX0JVRkZFUl9ETUFCVUZfRU5RVUVVRV9JT0NUTDoNCj4+PiAr
CQlyZXR1cm4gaWlvX2J1ZmZlcl9lbnF1ZXVlX2RtYWJ1ZihpYiwgX2FyZywNCj4+PiBub25ibG9j
ayk7DQo+Pj4gKwlkZWZhdWx0Og0KPj4+ICsJCXJldHVybiAtRUlOVkFMOw0KPj4+ICsJfQ0KPj4+
ICt9DQo+Pj4gKw0KPj4+ICDCoCBzdGF0aWMgY29uc3Qgc3RydWN0IGZpbGVfb3BlcmF0aW9ucyBp
aW9fYnVmZmVyX2NocmRldl9maWxlb3BzID0gew0KPj4+ICDCoMKgCS5vd25lciA9IFRISVNfTU9E
VUxFLA0KPj4+ICDCoMKgCS5sbHNlZWsgPSBub29wX2xsc2VlaywNCj4+PiAgwqDCoAkucmVhZCA9
IGlpb19idWZmZXJfcmVhZCwNCj4+PiAgwqDCoAkud3JpdGUgPSBpaW9fYnVmZmVyX3dyaXRlLA0K
Pj4+ICsJLnVubG9ja2VkX2lvY3RsID0gaWlvX2J1ZmZlcl9jaHJkZXZfaW9jdGwsDQo+Pj4gKwku
Y29tcGF0X2lvY3RsID0gY29tcGF0X3B0cl9pb2N0bCwNCj4+PiAgwqDCoAkucG9sbCA9IGlpb19i
dWZmZXJfcG9sbCwNCj4+PiAgwqDCoAkucmVsZWFzZSA9IGlpb19idWZmZXJfY2hyZGV2X3JlbGVh
c2UsDQo+Pj4gIMKgIH07DQo+Pj4gQEAgLTE5NTMsNiArMjQxNCw3IEBAIHN0YXRpYyB2b2lkIGlp
b19idWZmZXJfcmVsZWFzZShzdHJ1Y3Qga3JlZg0KPj4+ICpyZWYpDQo+Pj4gIMKgIHsNCj4+PiAg
wqDCoAlzdHJ1Y3QgaWlvX2J1ZmZlciAqYnVmZmVyID0gY29udGFpbmVyX29mKHJlZiwgc3RydWN0
DQo+Pj4gaWlvX2J1ZmZlciwgcmVmKTsNCj4+PiAgICANCj4+PiArCW11dGV4X2Rlc3Ryb3koJmJ1
ZmZlci0+ZG1hYnVmc19tdXRleCk7DQo+Pj4gIMKgwqAJYnVmZmVyLT5hY2Nlc3MtPnJlbGVhc2Uo
YnVmZmVyKTsNCj4+PiAgwqAgfQ0KPj4+ICAgIA0KPj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xp
bnV4L2lpby9idWZmZXJfaW1wbC5oDQo+Pj4gYi9pbmNsdWRlL2xpbnV4L2lpby9idWZmZXJfaW1w
bC5oDQo+Pj4gaW5kZXggODljM2ZkN2MyOWNhLi5mNGIxMTQ3MjkxZTUgMTAwNjQ0DQo+Pj4gLS0t
IGEvaW5jbHVkZS9saW51eC9paW8vYnVmZmVyX2ltcGwuaA0KPj4+ICsrKyBiL2luY2x1ZGUvbGlu
dXgvaWlvL2J1ZmZlcl9pbXBsLmgNCj4+PiBAQCAtOSw4ICs5LDEyIEBADQo+Pj4gIMKgICNpbmNs
dWRlIDx1YXBpL2xpbnV4L2lpby9idWZmZXIuaD4NCj4+PiAgwqAgI2luY2x1ZGUgPGxpbnV4L2lp
by9idWZmZXIuaD4NCj4+PiAgICANCj4+PiArc3RydWN0IGRtYV9idWZfYXR0YWNobWVudDsNCj4+
PiArc3RydWN0IGRtYV9mZW5jZTsNCj4+PiAgwqAgc3RydWN0IGlpb19kZXY7DQo+Pj4gK3N0cnVj
dCBpaW9fZG1hX2J1ZmZlcl9ibG9jazsNCj4+PiAgwqAgc3RydWN0IGlpb19idWZmZXI7DQo+Pj4g
K3N0cnVjdCBzZ190YWJsZTsNCj4+PiAgICANCj4+PiAgwqAgLyoqDQo+Pj4gIMKgwqAgKiBJTkRJ
T19CVUZGRVJfRkxBR19GSVhFRF9XQVRFUk1BUksgLSBXYXRlcm1hcmsgbGV2ZWwgb2YgdGhlDQo+
Pj4gYnVmZmVyIGNhbiBub3QgYmUNCj4+PiBAQCAtMzksNiArNDMsMTMgQEAgc3RydWN0IGlpb19i
dWZmZXI7DQo+Pj4gIMKgwqAgKsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBkZXZpY2Ugc3RvcHMgc2FtcGxpbmcuIENhbGxlcyBhcmUNCj4+PiBiYWxhbmNlZCB3aXRo
IEBlbmFibGUuDQo+Pj4gIMKgwqAgKiBAcmVsZWFzZToJCWNhbGxlZCB3aGVuIHRoZSBsYXN0IHJl
ZmVyZW5jZSB0byB0aGUNCj4+PiBidWZmZXIgaXMgZHJvcHBlZCwNCj4+PiAgwqDCoCAqCQkJc2hv
dWxkIGZyZWUgYWxsIHJlc291cmNlcyBhbGxvY2F0ZWQgYnkgdGhlDQo+Pj4gYnVmZmVyLg0KPj4+
ICsgKiBAYXR0YWNoX2RtYWJ1ZjoJY2FsbGVkIGZyb20gdXNlcnNwYWNlIHZpYSBpb2N0bCB0byBh
dHRhY2gNCj4+PiBvbmUgZXh0ZXJuYWwNCj4+PiArICoJCQlETUFCVUYuDQo+Pj4gKyAqIEBkZXRh
Y2hfZG1hYnVmOgljYWxsZWQgZnJvbSB1c2Vyc3BhY2UgdmlhIGlvY3RsIHRvIGRldGFjaA0KPj4+
IG9uZSBwcmV2aW91c2x5DQo+Pj4gKyAqCQkJYXR0YWNoZWQgRE1BQlVGLg0KPj4+ICsgKiBAZW5x
dWV1ZV9kbWFidWY6CWNhbGxlZCBmcm9tIHVzZXJzcGFjZSB2aWEgaW9jdGwgdG8gcXVldWUNCj4+
PiB0aGlzIERNQUJVRg0KPj4+ICsgKgkJCW9iamVjdCB0byB0aGlzIGJ1ZmZlci4gUmVxdWlyZXMg
YSB2YWxpZA0KPj4+IERNQUJVRiBmZCwgdGhhdA0KPj4+ICsgKgkJCXdhcyBwcmV2aW91bHkgYXR0
YWNoZWQgdG8gdGhpcyBidWZmZXIuDQo+Pj4gIMKgwqAgKiBAbW9kZXM6CQlTdXBwb3J0ZWQgb3Bl
cmF0aW5nIG1vZGVzIGJ5IHRoaXMgYnVmZmVyDQo+Pj4gdHlwZQ0KPj4+ICDCoMKgICogQGZsYWdz
OgkJQSBiaXRtYXNrIGNvbWJpbmF0aW9uIG9mDQo+Pj4gSU5ESU9fQlVGRkVSX0ZMQUdfKg0KPj4+
ICDCoMKgICoNCj4+PiBAQCAtNjgsNiArNzksMTcgQEAgc3RydWN0IGlpb19idWZmZXJfYWNjZXNz
X2Z1bmNzIHsNCj4+PiAgICANCj4+PiAgwqDCoAl2b2lkICgqcmVsZWFzZSkoc3RydWN0IGlpb19i
dWZmZXIgKmJ1ZmZlcik7DQo+Pj4gICAgDQo+Pj4gKwlzdHJ1Y3QgaWlvX2RtYV9idWZmZXJfYmxv
Y2sgKiAoKmF0dGFjaF9kbWFidWYpKHN0cnVjdA0KPj4+IGlpb19idWZmZXIgKmJ1ZmZlciwNCj4+
PiArCQkJCQkJwqDCoMKgwqDCoMKgIHN0cnVjdA0KPj4+IGRtYV9idWZfYXR0YWNobWVudCAqYXR0
YWNoKTsNCj4+PiArCXZvaWQgKCpkZXRhY2hfZG1hYnVmKShzdHJ1Y3QgaWlvX2J1ZmZlciAqYnVm
ZmVyLA0KPj4+ICsJCQnCoMKgwqDCoMKgIHN0cnVjdCBpaW9fZG1hX2J1ZmZlcl9ibG9jayAqYmxv
Y2spOw0KPj4+ICsJaW50ICgqZW5xdWV1ZV9kbWFidWYpKHN0cnVjdCBpaW9fYnVmZmVyICpidWZm
ZXIsDQo+Pj4gKwkJCcKgwqDCoMKgwqAgc3RydWN0IGlpb19kbWFfYnVmZmVyX2Jsb2NrICpibG9j
aywNCj4+PiArCQkJwqDCoMKgwqDCoCBzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgc3RydWN0DQo+
Pj4gc2dfdGFibGUgKnNndCwNCj4+PiArCQkJwqDCoMKgwqDCoCBzaXplX3Qgc2l6ZSwgYm9vbCBj
eWNsaWMpOw0KPj4+ICsJdm9pZCAoKmxvY2tfcXVldWUpKHN0cnVjdCBpaW9fYnVmZmVyICpidWZm
ZXIpOw0KPj4+ICsJdm9pZCAoKnVubG9ja19xdWV1ZSkoc3RydWN0IGlpb19idWZmZXIgKmJ1ZmZl
cik7DQo+Pj4gKw0KPj4+ICDCoMKgCXVuc2lnbmVkIGludCBtb2RlczsNCj4+PiAgwqDCoAl1bnNp
Z25lZCBpbnQgZmxhZ3M7DQo+Pj4gIMKgIH07DQo+Pj4gQEAgLTEzNiw2ICsxNTgsMTIgQEAgc3Ry
dWN0IGlpb19idWZmZXIgew0KPj4+ICAgIA0KPj4+ICDCoMKgCS8qIEByZWY6IFJlZmVyZW5jZSBj
b3VudCBvZiB0aGUgYnVmZmVyLiAqLw0KPj4+ICDCoMKgCXN0cnVjdCBrcmVmIHJlZjsNCj4+PiAr
DQo+Pj4gKwkvKiBAZG1hYnVmczogTGlzdCBvZiBETUFCVUYgYXR0YWNobWVudHMgKi8NCj4+PiAr
CXN0cnVjdCBsaXN0X2hlYWQgZG1hYnVmczsgLyogUDogZG1hYnVmc19tdXRleCAqLw0KPj4+ICsN
Cj4+PiArCS8qIEBkbWFidWZzX211dGV4OiBQcm90ZWN0cyBkbWFidWZzICovDQo+Pj4gKwlzdHJ1
Y3QgbXV0ZXggZG1hYnVmc19tdXRleDsNCj4+PiAgwqAgfTsNCj4+PiAgICANCj4+PiAgwqAgLyoq
DQo+Pj4gQEAgLTE1Niw5ICsxODQsMTQgQEAgaW50IGlpb191cGRhdGVfYnVmZmVycyhzdHJ1Y3Qg
aWlvX2Rldg0KPj4+ICppbmRpb19kZXYsDQo+Pj4gIMKgwqAgKiovDQo+Pj4gIMKgIHZvaWQgaWlv
X2J1ZmZlcl9pbml0KHN0cnVjdCBpaW9fYnVmZmVyICpidWZmZXIpOw0KPj4+ICAgIA0KPj4+ICt2
b2lkIGlpb19idWZmZXJfZG1hYnVmX2dldChzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRh
Y2gpOw0KPj4+ICt2b2lkIGlpb19idWZmZXJfZG1hYnVmX3B1dChzdHJ1Y3QgZG1hX2J1Zl9hdHRh
Y2htZW50ICphdHRhY2gpOw0KPj4+ICsNCj4+PiAgwqAgc3RydWN0IGlpb19idWZmZXIgKmlpb19i
dWZmZXJfZ2V0KHN0cnVjdCBpaW9fYnVmZmVyICpidWZmZXIpOw0KPj4+ICDCoCB2b2lkIGlpb19i
dWZmZXJfcHV0KHN0cnVjdCBpaW9fYnVmZmVyICpidWZmZXIpOw0KPj4+ICAgIA0KPj4+ICt2b2lk
IGlpb19idWZmZXJfc2lnbmFsX2RtYWJ1Zl9kb25lKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBp
bnQNCj4+PiByZXQpOw0KPj4+ICsNCj4+PiAgwqAgI2Vsc2UgLyogQ09ORklHX0lJT19CVUZGRVIg
Ki8NCj4+PiAgICANCj4+PiAgwqAgc3RhdGljIGlubGluZSB2b2lkIGlpb19idWZmZXJfZ2V0KHN0
cnVjdCBpaW9fYnVmZmVyICpidWZmZXIpIHt9DQo+Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFw
aS9saW51eC9paW8vYnVmZmVyLmgNCj4+PiBiL2luY2x1ZGUvdWFwaS9saW51eC9paW8vYnVmZmVy
LmgNCj4+PiBpbmRleCAxMzkzOTAzMmIzZjYuLmM2NjZhYTk1ZTUzMiAxMDA2NDQNCj4+PiAtLS0g
YS9pbmNsdWRlL3VhcGkvbGludXgvaWlvL2J1ZmZlci5oDQo+Pj4gKysrIGIvaW5jbHVkZS91YXBp
L2xpbnV4L2lpby9idWZmZXIuaA0KPj4+IEBAIC01LDYgKzUsMjggQEANCj4+PiAgwqAgI2lmbmRl
ZiBfVUFQSV9JSU9fQlVGRkVSX0hfDQo+Pj4gIMKgICNkZWZpbmUgX1VBUElfSUlPX0JVRkZFUl9I
Xw0KPj4+ICAgIA0KPj4+ICsjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4NCj4+PiArDQo+Pj4gKy8q
IEZsYWdzIGZvciBpaW9fZG1hYnVmLmZsYWdzICovDQo+Pj4gKyNkZWZpbmUgSUlPX0JVRkZFUl9E
TUFCVUZfQ1lDTElDCQkoMSA8PCAwKQ0KPj4+ICsjZGVmaW5lIElJT19CVUZGRVJfRE1BQlVGX1NV
UFBPUlRFRF9GTEFHUwkweDAwMDAwMDAxDQo+Pj4gKw0KPj4+ICsvKioNCj4+PiArICogc3RydWN0
IGlpb19kbWFidWYgLSBEZXNjcmlwdG9yIGZvciBhIHNpbmdsZSBJSU8gRE1BQlVGIG9iamVjdA0K
Pj4+ICsgKiBAZmQ6CQlmaWxlIGRlc2NyaXB0b3Igb2YgdGhlIERNQUJVRiBvYmplY3QNCj4+PiAr
ICogQGZsYWdzOglvbmUgb3IgbW9yZSBJSU9fQlVGRkVSX0RNQUJVRl8qIGZsYWdzDQo+Pj4gKyAq
IEBieXRlc191c2VkOgludW1iZXIgb2YgYnl0ZXMgdXNlZCBpbiB0aGlzIERNQUJVRiBmb3INCj4+
PiB0aGUgZGF0YSB0cmFuc2Zlci4NCj4+PiArICoJCVNob3VsZCBnZW5lcmFsbHkgYmUgc2V0IHRv
IHRoZSBETUFCVUYncyBzaXplLg0KPj4+ICsgKi8NCj4+PiArc3RydWN0IGlpb19kbWFidWYgew0K
Pj4+ICsJX191MzIgZmQ7DQo+Pj4gKwlfX3UzMiBmbGFnczsNCj4+PiArCV9fdTY0IGJ5dGVzX3Vz
ZWQ7DQo+Pj4gK307DQo+Pj4gKw0KPj4+ICDCoCAjZGVmaW5lIElJT19CVUZGRVJfR0VUX0ZEX0lP
Q1RMCQkJX0lPV1IoJ2knLA0KPj4+IDB4OTEsIGludCkNCj4+PiArI2RlZmluZSBJSU9fQlVGRkVS
X0RNQUJVRl9BVFRBQ0hfSU9DVEwJCV9JT1coJ2knLCAweDkyLA0KPj4+IGludCkNCj4+PiArI2Rl
ZmluZSBJSU9fQlVGRkVSX0RNQUJVRl9ERVRBQ0hfSU9DVEwJCV9JT1coJ2knLCAweDkzLA0KPj4+
IGludCkNCj4+PiArI2RlZmluZSBJSU9fQlVGRkVSX0RNQUJVRl9FTlFVRVVFX0lPQ1RMCQlfSU9X
KCdpJywNCj4+PiAweDk0LCBzdHJ1Y3QgaWlvX2RtYWJ1ZikNCj4+PiAgICANCj4+PiAgwqAgI2Vu
ZGlmIC8qIF9VQVBJX0lJT19CVUZGRVJfSF8gKi8NCj4+Pg0K

--------------EPzh60HdejG5yPGqLZzXs02Y
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    Am 04.03.24 um 14:59 schrieb Paul Cercueil:<br>
    <blockquote type="cite" cite="mid:d17bd8aa17ac82773d0bdd6ce4edfe4a6249f179.camel@crapouillou.net">[SNIP]<span style="white-space: pre-wrap">
</span>
      <blockquote type="cite">
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">+	dma_to_ram = buffer-&gt;direction == IIO_BUFFER_DIRECTION_IN;
+
+	if (dma_to_ram) {
+		/*
+		 * If we're writing to the DMABUF, make sure we
don't have
+		 * readers
+		 */
+		retl = dma_resv_wait_timeout(dmabuf-&gt;resv,
+					&nbsp;&nbsp;&nbsp;&nbsp; DMA_RESV_USAGE_READ,
true,
+					&nbsp;&nbsp;&nbsp;&nbsp; timeout);
+		if (retl == 0)
+			retl = -EBUSY;
+		if (retl &lt; 0) {
+			ret = (int)retl;
+			goto err_resv_unlock;
+		}
+	}
+
+	if (buffer-&gt;access-&gt;lock_queue)
+		buffer-&gt;access-&gt;lock_queue(buffer);
+
+	ret = dma_resv_reserve_fences(dmabuf-&gt;resv, 1);
+	if (ret)
+		goto err_queue_unlock;
+
+	dma_resv_add_fence(dmabuf-&gt;resv, &amp;fence-&gt;base,
+			&nbsp;&nbsp; dma_resv_usage_rw(dma_to_ram));
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">
That is incorrect use of the function dma_resv_usage_rw(). That
function 
is for retrieving fences and not adding them.

See the function implementation and comments, when you use it like
this 
you get exactly what you don't want.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
No, I get exactly what I want. If &quot;dma_to_ram&quot;, I get
DMA_RESV_USAGE_READ, otherwise I get DMA_RESV_USAGE_WRITE.</pre>
    </blockquote>
    <br>
    Ah, so basically !dma_to_ram means that you have a write access to
    the buffer?<br>
    <br>
    <blockquote type="cite" cite="mid:d17bd8aa17ac82773d0bdd6ce4edfe4a6249f179.camel@crapouillou.net">
      <pre class="moz-quote-pre" wrap="">If you really don't like the macro, I can inline things here.</pre>
    </blockquote>
    <br>
    Yeah, that would still be incorrect use.<br>
    <br>
    The dma__resv_usage_rw() is for retrieving the fences to sync to for
    read and write operations and should never be used together with
    dma_fence_resv_add().<br>
    <br>
    Regards,<br>
    Christian.<br>
    <br>
    <blockquote type="cite" cite="mid:d17bd8aa17ac82773d0bdd6ce4edfe4a6249f179.camel@crapouillou.net">
      <pre class="moz-quote-pre" wrap="">

Cheers,
-Paul

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
Regards,
Christian.

</pre>
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">+	dma_resv_unlock(dmabuf-&gt;resv);
+
+	cookie = dma_fence_begin_signalling();
+
+	ret = buffer-&gt;access-&gt;enqueue_dmabuf(buffer, priv-&gt;block,
&amp;fence-&gt;base,
+					&nbsp;&nbsp;&nbsp;&nbsp; priv-&gt;sgt,
iio_dmabuf.bytes_used,
+					&nbsp;&nbsp;&nbsp;&nbsp; cyclic);
+	if (ret) {
+		/*
+		 * DMABUF enqueue failed, but we already added the
fence.
+		 * Signal the error through the fence completion
mechanism.
+		 */
+		iio_buffer_signal_dmabuf_done(&amp;fence-&gt;base, ret);
+	}
+
+	if (buffer-&gt;access-&gt;unlock_queue)
+		buffer-&gt;access-&gt;unlock_queue(buffer);
+
+	dma_fence_end_signalling(cookie);
+	dma_buf_put(dmabuf);
+
+	return ret;
+
+err_queue_unlock:
+	if (buffer-&gt;access-&gt;unlock_queue)
+		buffer-&gt;access-&gt;unlock_queue(buffer);
+err_resv_unlock:
+	dma_resv_unlock(dmabuf-&gt;resv);
+err_fence_put:
+	dma_fence_put(&amp;fence-&gt;base);
+err_attachment_put:
+	iio_buffer_dmabuf_put(attach);
+err_dmabuf_put:
+	dma_buf_put(dmabuf);
+
+	return ret;
+}
+
+static void iio_buffer_cleanup(struct work_struct *work)
+{
+	struct iio_dma_fence *fence =
+		container_of(work, struct iio_dma_fence, work);
+	struct iio_dmabuf_priv *priv = fence-&gt;priv;
+	struct dma_buf_attachment *attach = priv-&gt;attach;
+
+	dma_fence_put(&amp;fence-&gt;base);
+	iio_buffer_dmabuf_put(attach);
+}
+
+void iio_buffer_signal_dmabuf_done(struct dma_fence *fence, int
ret)
+{
+	struct iio_dma_fence *iio_fence =
+		container_of(fence, struct iio_dma_fence, base);
+	bool cookie = dma_fence_begin_signalling();
+
+	/*
+	 * Get a reference to the fence, so that it's not freed as
soon as
+	 * it's signaled.
+	 */
+	dma_fence_get(fence);
+
+	fence-&gt;error = ret;
+	dma_fence_signal(fence);
+	dma_fence_end_signalling(cookie);
+
+	/*
+	 * The fence will be unref'd in iio_buffer_cleanup.
+	 * It can't be done here, as the unref functions might try
to lock the
+	 * resv object, which can deadlock.
+	 */
+	INIT_WORK(&amp;iio_fence-&gt;work, iio_buffer_cleanup);
+	schedule_work(&amp;iio_fence-&gt;work);
+}
+EXPORT_SYMBOL_GPL(iio_buffer_signal_dmabuf_done);
+
+static long iio_buffer_chrdev_ioctl(struct file *filp,
+				&nbsp;&nbsp;&nbsp; unsigned int cmd, unsigned
long arg)
+{
+	struct iio_dev_buffer_pair *ib = filp-&gt;private_data;
+	void __user *_arg = (void __user *)arg;
+	bool nonblock = filp-&gt;f_flags &amp; O_NONBLOCK;
+
+	switch (cmd) {
+	case IIO_BUFFER_DMABUF_ATTACH_IOCTL:
+		return iio_buffer_attach_dmabuf(ib, _arg,
nonblock);
+	case IIO_BUFFER_DMABUF_DETACH_IOCTL:
+		return iio_buffer_detach_dmabuf(ib, _arg,
nonblock);
+	case IIO_BUFFER_DMABUF_ENQUEUE_IOCTL:
+		return iio_buffer_enqueue_dmabuf(ib, _arg,
nonblock);
+	default:
+		return -EINVAL;
+	}
+}
+
&nbsp; static const struct file_operations iio_buffer_chrdev_fileops = {
&nbsp;&nbsp;	.owner = THIS_MODULE,
&nbsp;&nbsp;	.llseek = noop_llseek,
&nbsp;&nbsp;	.read = iio_buffer_read,
&nbsp;&nbsp;	.write = iio_buffer_write,
+	.unlocked_ioctl = iio_buffer_chrdev_ioctl,
+	.compat_ioctl = compat_ptr_ioctl,
&nbsp;&nbsp;	.poll = iio_buffer_poll,
&nbsp;&nbsp;	.release = iio_buffer_chrdev_release,
&nbsp; };
@@ -1953,6 +2414,7 @@ static void iio_buffer_release(struct kref
*ref)
&nbsp; {
&nbsp;&nbsp;	struct iio_buffer *buffer = container_of(ref, struct
iio_buffer, ref);
&nbsp; 
+	mutex_destroy(&amp;buffer-&gt;dmabufs_mutex);
&nbsp;&nbsp;	buffer-&gt;access-&gt;release(buffer);
&nbsp; }
&nbsp; 
diff --git a/include/linux/iio/buffer_impl.h
b/include/linux/iio/buffer_impl.h
index 89c3fd7c29ca..f4b1147291e5 100644
--- a/include/linux/iio/buffer_impl.h
+++ b/include/linux/iio/buffer_impl.h
@@ -9,8 +9,12 @@
&nbsp; #include &lt;uapi/linux/iio/buffer.h&gt;
&nbsp; #include &lt;linux/iio/buffer.h&gt;
&nbsp; 
+struct dma_buf_attachment;
+struct dma_fence;
&nbsp; struct iio_dev;
+struct iio_dma_buffer_block;
&nbsp; struct iio_buffer;
+struct sg_table;
&nbsp; 
&nbsp; /**
&nbsp;&nbsp; * INDIO_BUFFER_FLAG_FIXED_WATERMARK - Watermark level of the
buffer can not be
@@ -39,6 +43,13 @@ struct iio_buffer;
&nbsp;&nbsp; *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; device stops sampling. Calles are
balanced with @enable.
&nbsp;&nbsp; * @release:		called when the last reference to the
buffer is dropped,
&nbsp;&nbsp; *			should free all resources allocated by the
buffer.
+ * @attach_dmabuf:	called from userspace via ioctl to attach
one external
+ *			DMABUF.
+ * @detach_dmabuf:	called from userspace via ioctl to detach
one previously
+ *			attached DMABUF.
+ * @enqueue_dmabuf:	called from userspace via ioctl to queue
this DMABUF
+ *			object to this buffer. Requires a valid
DMABUF fd, that
+ *			was previouly attached to this buffer.
&nbsp;&nbsp; * @modes:		Supported operating modes by this buffer
type
&nbsp;&nbsp; * @flags:		A bitmask combination of
INDIO_BUFFER_FLAG_*
&nbsp;&nbsp; *
@@ -68,6 +79,17 @@ struct iio_buffer_access_funcs {
&nbsp; 
&nbsp;&nbsp;	void (*release)(struct iio_buffer *buffer);
&nbsp; 
+	struct iio_dma_buffer_block * (*attach_dmabuf)(struct
iio_buffer *buffer,
+						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct
dma_buf_attachment *attach);
+	void (*detach_dmabuf)(struct iio_buffer *buffer,
+			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct iio_dma_buffer_block *block);
+	int (*enqueue_dmabuf)(struct iio_buffer *buffer,
+			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct iio_dma_buffer_block *block,
+			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct dma_fence *fence, struct
sg_table *sgt,
+			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size_t size, bool cyclic);
+	void (*lock_queue)(struct iio_buffer *buffer);
+	void (*unlock_queue)(struct iio_buffer *buffer);
+
&nbsp;&nbsp;	unsigned int modes;
&nbsp;&nbsp;	unsigned int flags;
&nbsp; };
@@ -136,6 +158,12 @@ struct iio_buffer {
&nbsp; 
&nbsp;&nbsp;	/* @ref: Reference count of the buffer. */
&nbsp;&nbsp;	struct kref ref;
+
+	/* @dmabufs: List of DMABUF attachments */
+	struct list_head dmabufs; /* P: dmabufs_mutex */
+
+	/* @dmabufs_mutex: Protects dmabufs */
+	struct mutex dmabufs_mutex;
&nbsp; };
&nbsp; 
&nbsp; /**
@@ -156,9 +184,14 @@ int iio_update_buffers(struct iio_dev
*indio_dev,
&nbsp;&nbsp; **/
&nbsp; void iio_buffer_init(struct iio_buffer *buffer);
&nbsp; 
+void iio_buffer_dmabuf_get(struct dma_buf_attachment *attach);
+void iio_buffer_dmabuf_put(struct dma_buf_attachment *attach);
+
&nbsp; struct iio_buffer *iio_buffer_get(struct iio_buffer *buffer);
&nbsp; void iio_buffer_put(struct iio_buffer *buffer);
&nbsp; 
+void iio_buffer_signal_dmabuf_done(struct dma_fence *fence, int
ret);
+
&nbsp; #else /* CONFIG_IIO_BUFFER */
&nbsp; 
&nbsp; static inline void iio_buffer_get(struct iio_buffer *buffer) {}
diff --git a/include/uapi/linux/iio/buffer.h
b/include/uapi/linux/iio/buffer.h
index 13939032b3f6..c666aa95e532 100644
--- a/include/uapi/linux/iio/buffer.h
+++ b/include/uapi/linux/iio/buffer.h
@@ -5,6 +5,28 @@
&nbsp; #ifndef _UAPI_IIO_BUFFER_H_
&nbsp; #define _UAPI_IIO_BUFFER_H_
&nbsp; 
+#include &lt;linux/types.h&gt;
+
+/* Flags for iio_dmabuf.flags */
+#define IIO_BUFFER_DMABUF_CYCLIC		(1 &lt;&lt; 0)
+#define IIO_BUFFER_DMABUF_SUPPORTED_FLAGS	0x00000001
+
+/**
+ * struct iio_dmabuf - Descriptor for a single IIO DMABUF object
+ * @fd:		file descriptor of the DMABUF object
+ * @flags:	one or more IIO_BUFFER_DMABUF_* flags
+ * @bytes_used:	number of bytes used in this DMABUF for
the data transfer.
+ *		Should generally be set to the DMABUF's size.
+ */
+struct iio_dmabuf {
+	__u32 fd;
+	__u32 flags;
+	__u64 bytes_used;
+};
+
&nbsp; #define IIO_BUFFER_GET_FD_IOCTL			_IOWR('i',
0x91, int)
+#define IIO_BUFFER_DMABUF_ATTACH_IOCTL		_IOW('i', 0x92,
int)
+#define IIO_BUFFER_DMABUF_DETACH_IOCTL		_IOW('i', 0x93,
int)
+#define IIO_BUFFER_DMABUF_ENQUEUE_IOCTL		_IOW('i',
0x94, struct iio_dmabuf)
&nbsp; 
&nbsp; #endif /* _UAPI_IIO_BUFFER_H_ */

</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------EPzh60HdejG5yPGqLZzXs02Y--

--===============2834781801994523953==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============2834781801994523953==--

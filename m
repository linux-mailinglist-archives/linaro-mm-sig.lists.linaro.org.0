Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OGKaOYtlDGpXggUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 15:28:43 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7553857FA5B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 15:28:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6CD20406F3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 13:28:42 +0000 (UTC)
Received: from SA9PR02CU001.outbound.protection.outlook.com (mail-southcentralusazon11013060.outbound.protection.outlook.com [40.93.196.60])
	by lists.linaro.org (Postfix) with ESMTPS id 0990E401E2
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 13:28:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=mZNr9YIU;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.196.60 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TDfUy/H9B2OKVVYK9iNc/s43F4rsl/pVGQY0W8LkmtAS4aK6mLEp3F/s+LfG18JXAUrYQ/QKQTksyi0voBAt6jCt+T5ifq1v5fYctdb68p/TBVz1wUAqcguTpcsJ0x5rZ/sXhVO0VZzvIPyXH+Frbpj1o+eoxP7HS96xxg5ltPg9+M4yuYZbFlHz3dTnyjnbDCcrrHgUAqnmtndF3a//xrgbd0yHx+3cLrohfd9nxq3n45KOq0Ok1HDMFoaLDVclxlZcgfLG6Z6WSXRND/V3GxG+HQnH1NIkDTDaqn85CehGeDCMkDxTP2adKQH4iV+BKUOgMnLfx6ELe5Qi2MsEZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fTGTwFsT6mK9W9lL44pUtWMh17Wdka4kfHZsf6oj+Vk=;
 b=foZohj2QGgCETmX2iRYT5gxIy2KJzdijwNt+1nYckGRnemHI/s33ctYtJWg6eJSz6CV8kWTJOORWRajCbyKh64uuiMzJfuZrGEaZWU/7zT+CRxe5r43pcWxFg3l9wsXIDraY6HVMUCL+9lqvKhTnCNyX6p2j/AD5YSuHkHA8rH77dNQsm/9h6YFfVdCv7MDHHYXcnnMS9EPxvrdq8lEBmn1KUre5tcsSUjDKFpTibo+0nhWv7lqjrOzfZrLn8ft+mCcuCInT/vI7laGUKSXYYcV4ql9SqFOkM7IbzpigM7wYLdTZt/dbpugJ4cF5WsQ43wmGlKcJBC8UA5DpaIsCKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fTGTwFsT6mK9W9lL44pUtWMh17Wdka4kfHZsf6oj+Vk=;
 b=mZNr9YIUsibbTZ6M+EQ7Sh9bPB65nvY96+aUhztoT8LVfi1vRDa1IdumR1WmhBvpTIgUgrROYDRSeuRj8smdzbCY4FwpTgkgfJWdLKOi62B3XzeVEd9uQXjSy14zi1FktCGtdu2/pyR++pMi5NIyFjHc6ed4EQdWP8ItX4AWsDU=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SA1PR12MB7176.namprd12.prod.outlook.com (2603:10b6:806:2bd::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.21; Tue, 19 May
 2026 13:28:30 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0025.022; Tue, 19 May 2026
 13:28:29 +0000
Message-ID: <5ee6d5af-ac48-41d7-a19f-e08a3c5b7d19@amd.com>
Date: Tue, 19 May 2026 15:28:18 +0200
User-Agent: Mozilla Thunderbird
To: Julian Orth <ju.orth@gmail.com>
References: <20260516-jorth-syncobj-v1-0-88ede9d98a81@gmail.com>
 <c6c91de9-a34b-4b50-a3c1-d42bf7631f8e@amd.com>
 <CAHijbEUzWZC4GAMU6YGV42gOYkrQaMZZPiwS4Erb4H1J-fh_8Q@mail.gmail.com>
 <69dcbcc1-da58-4d34-bfb0-5c8d33b75d59@amd.com>
 <CAHijbEWqc2+kSkk3i_LxB2PQ6XwUetw1UkdUdXJfdv3zgKd1kA@mail.gmail.com>
 <38551bfe-75e1-4978-b57d-adc43cebc85e@amd.com>
 <CAHijbEWHp960qvZFoK7+9ppHAqkAR7=UQhtMUccqWzGd_pFPQA@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <CAHijbEWHp960qvZFoK7+9ppHAqkAR7=UQhtMUccqWzGd_pFPQA@mail.gmail.com>
X-ClientProxiedBy: BLAPR03CA0147.namprd03.prod.outlook.com
 (2603:10b6:208:32e::32) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SA1PR12MB7176:EE_
X-MS-Office365-Filtering-Correlation-Id: 4f047e07-93d1-4261-0268-08deb5aa83ea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|7416014|366016|1800799024|4143699003|3023799003|18002099003|11063799006|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: 
	5GhQ70yXH0dM24buZadQlnyvJcoUf8z9cDFxWSCXUX9eSw0+G63cEH8R5ZncOdfgmlHEuAM7X27uhqjhW49rNFAfHbpD8ecyvstVBLDsdxacU/EK32JauAS4w6jO6PWNImCWsfpUNbwdSNw3f9x0cW1HS5ajsjnlW3NhC4MB8mlBmjWcvEmb1qscM4FFLkicnyUU30XX4GVQ35oYPcHMXbV/OYRtA07MuPwXgz8fFWQvlBr7jfmaUk1SaO+wif1AdWagx3PtcTjFzzmzfDbrnodHaUOKTYBzBLiwv22IQoHsxgwAImhsxCd1xTUrzDHZn8og84I939RzmpKoc32CbXXkW0o4XosMRGcvCJnz0/LkACUOWGaTSb4ZoVC01Tpz5WwhXTHg8z9GYSy7U9xFsOrbJgBh7zeoGWFEqqp4UhsXE+e1tl6S8OdW85dlUrZR2iO19pkUwi/gtWi9yGSpZ4TkLNQN5znrO8pBfU2vnXnknfCyWiSPpy7d/eCkJbdL01w0J5IarmCEj8ZvIseJa75ccAgcZ0hMV6rq51zh7dztQmYvkQCXQFWx7RtCvM6yhoVbcwuEq55cuPkBoQX/wXbhFNppd+yoQp5QswlhUTV5tXfS3oF6BDN1eKTO3Ax7ZaxvtaHo+VksCBnXLaTFQSrFk/yHXAgtBCJHd+J9wDWnjmj9KciJiyFCR3yJv7tmCO2Ec5/WkTGUjyxqoGmd5A==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(1800799024)(4143699003)(3023799003)(18002099003)(11063799006)(22082099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Q3RvZU5KODUvZHVzYThnR1hWTFhNL1ZjOUdkTitVT1UzTHFDUCtiN3JSUEcy?=
 =?utf-8?B?RGF0VmFLOEM1Zk5JT0FVc3lJTjBJOTVtRS9JN3pEKzFjMXpXNFdTOXA5Z3RX?=
 =?utf-8?B?THAxbkVrQzlyYmpJc2htc0h0eHgvZ1Z4VXMzTjJIamRmMFcxdVg4OHZWajk0?=
 =?utf-8?B?ZU1mYzUwL2o0N05wbDhLbXdVQ0Nvc3FVNW9ZMUVxMTRnR25hd0o4cm1uQktj?=
 =?utf-8?B?RUdBUHRCbU1DeU10RlhFaldMdVJPUEl2UFUzUklmWGtrUC91MUVCcFpKdUZ6?=
 =?utf-8?B?VXJFS1BnNlZuWU4rN0w2RFhNV0ZIWFhoL0lhWWhQWktIZFJLdGhSNWRDR2lk?=
 =?utf-8?B?Q1dsRUMvYlhYRXVQbmZsNEdrbWluNzVNY0J2bEl2OTRJb3llanQ3Nk0zMXBP?=
 =?utf-8?B?RHBEcnJjenIzK1JRNWNBSndwV3V0Q1ZrYTUxSFV4dTU3UzhQZEdmTEtraHd3?=
 =?utf-8?B?bnl4VWhPSDZMd0l6MGV1RlVhUTdLUmx1TnRJTzNTZmZDdDh1enJlNGhyaXMz?=
 =?utf-8?B?aVJUenVPL0ZXYzJzRDlJWGhlSlhMdEpUZktoSnlKVUVUdTdJR0plT1lEZm1n?=
 =?utf-8?B?cnVxcW1BNXhmb3FaWGNpd3gyM1RIZVFBMWtDY2RlQ2taV093SUFoOWZxTXI5?=
 =?utf-8?B?RHhGV3l4ZUxYWXBxbnB3OEo4dXpUOGpBZHUrbG42YzNDdUpRdHdDUGh1Y3pE?=
 =?utf-8?B?K0NnR0YwUk9Ja3ZhdTJKZlpuZ1hsNnd1TWhycU1JWWdRVkgycys1Q3J2UVRx?=
 =?utf-8?B?bUtiUit5dFlMN0VmRUdsRGNmUEhxcE1EZGw5UW5OUUE3M0ZISHFjRytBY3BH?=
 =?utf-8?B?R3RtcGpQSExRUEQ0dGcvSklOZ1BYdGJGTW1rRks0YnFuNC8vYXZsQTIrS0h6?=
 =?utf-8?B?RXp1bFMvOGYxL1hnbFluK2xTY2NtRnphVXN3bG9ZaHZYa1UwRFhVSmtMZDJy?=
 =?utf-8?B?Y0xWeEEyakwrUkkvYzlBNjVMWDVJZVVtWHJYZE1ySS9aWU1pQVNHOHdZYUF2?=
 =?utf-8?B?MHJUcUZ6blB2TWlWYkJyUEJ3S2F4V2IrTDdzOUh2MGQvajFGN3FQS0lhQ3Ju?=
 =?utf-8?B?SmhNbm42YUxmbVV6SlNzNGNlYldzRFVIc1dvLys0TFlBWGcyNThCU3JvNG1I?=
 =?utf-8?B?bys4bW1mYWNyeFhrcE9nZ285dDdmZlRKNXo3NTJKQklCUWdVczZwM1hRemJM?=
 =?utf-8?B?dEVYVzc1azBqaERMZHZiVnpJaWV1aElkRWZ5QkF2UU9FSU1iUnQ1Zi9WMlBZ?=
 =?utf-8?B?anZ1MWp4WnVhcFcvRmdOUnFaTkpqMlpiYVQvM2tZT3dSL1FrZExoVWIvMS9z?=
 =?utf-8?B?a0lObEwxOUgvenI5dXVycXJmM1VkTG50QW9hazMvOFBSc0RaVGJGaDBsWGlQ?=
 =?utf-8?B?dWREWVlYWWJHNnVQUnhwaldJbVVBeU1LKzZTZi9WaVRNUWNJRkRJSTA5Y3dj?=
 =?utf-8?B?Q0p6SjRLSVEreXZPZEZDSnRSR2NLYmZMZ1o0RGZOOXR1TXVJQVU2Z0UxL3hk?=
 =?utf-8?B?OFMraS9oZFhJUGprUjdmVm1oekpRSVFwVjIrZVoxOE4rY3RxK2x2cXZ1Nkt4?=
 =?utf-8?B?enZyV1J2SXFkSkZJWW9PWkp3MlkxY3B3UWxiOG9hSG1zMXhJSlBIeFhaWUVt?=
 =?utf-8?B?OVJPOXVqYnowMTNBQS9ZZEk2d0tFMXpBVUw2Qzg2Q2pXWE9zUkpiTzBXTHZq?=
 =?utf-8?B?eHV3ZnlzM3pMNUdmaTExN3c3UFhvREZwSVVCLzBTVUo4UnUzRjZVd2RYSXhk?=
 =?utf-8?B?d3hJV0FFMkZUbmpVT1lhUTF5dE5laWdLZlpaUGpveGJQOFF6ZjRyRFMzNnEx?=
 =?utf-8?B?N0FXUmJ2WDBqSWtBVzEvM0JZQm43QzJKWDVGbFdFa1VRNDczdjE2T0FpUE9n?=
 =?utf-8?B?SWZOQXpIMnAwUXB6QXBZSjRqSDF3ekI2b0o3bkgvWWpXVG1QeVVQOFFkeFgv?=
 =?utf-8?B?cWJrQmxxTmpnbkYySERReHl1N1BuazdjWXZXOFluQ3ZFWUkyWWZXWmpoc1pJ?=
 =?utf-8?B?bWMxLzFxTFRHSmFnSHl0R1NDM2pGSkhWZXZRWnUrNXo4WENZNDFWWU9SWUVZ?=
 =?utf-8?B?WU5nOTRyZzVDYlNsdm9KOW9YYlFyTEtaZmJqV0VHS240UUNIdzdyRFhHV1NX?=
 =?utf-8?B?aUhsd0JTNnFBNGVNVFJYMFdOKzNmWFNLUUU2N25TZXFpN1hzN3I1anJXTFNS?=
 =?utf-8?B?RDl6bTBMZEpXT28yazNXdnN4MkdHR2JaUjMybTBuZ1dHNXNtZEpkeFZzU1BW?=
 =?utf-8?B?YlhBUkp4UDd6Wm5pbjRmVlZFb3hIeWFyTmZEUlVOSzRaZFZyUWR2ZTNxM0Rw?=
 =?utf-8?Q?RaJ5b8g4HlDXXGQzh9?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f047e07-93d1-4261-0268-08deb5aa83ea
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2026 13:28:29.7893
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +GXmBbKZ0cPo7s8DmxImyAJvey4jJwU6ZMu+hfKPzqPsZJzQddJes3TehDXfBjMD
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB7176
X-Spamd-Bar: --
Message-ID-Hash: J44KKTXU6WXNUBDGZPOFVE6MIDOY524S
X-Message-ID-Hash: J44KKTXU6WXNUBDGZPOFVE6MIDOY524S
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org, =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 00/12] misc/syncobj: add /dev/syncobj device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/J44KKTXU6WXNUBDGZPOFVE6MIDOY524S/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [4.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,lwn.net,linuxfoundation.org,arndb.de,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,mailbox.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DKIM_TRACE(0.00)[amd.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:mid,amd.com:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: 7553857FA5B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNS8xOS8yNiAxNToxOSwgSnVsaWFuIE9ydGggd3JvdGU6DQo+IE9uIFR1ZSwgTWF5IDE5LCAy
MDI2IGF0IDEwOjE44oCvQU0gQ2hyaXN0aWFuIEvDtm5pZw0KPiA8Y2hyaXN0aWFuLmtvZW5pZ0Bh
bWQuY29tPiB3cm90ZToNCj4+DQo+PiBPbiA1LzE4LzI2IDE0OjU4LCBKdWxpYW4gT3J0aCB3cm90
ZToNCj4+PiBPbiBNb24sIE1heSAxOCwgMjAyNiBhdCAyOjQx4oCvUE0gQ2hyaXN0aWFuIEvDtm5p
Zw0KPj4+IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPj4gLi4uDQo+Pj4+IEl0
IGNvdWxkIGJlIHRoYXQgd2UgaGF2ZSBldmVudGZkIGludGVncmF0aW9uIGZvciB0aGF0IGFzIHdl
bGwgbm93LCBidXQgaW4gdGhhdCBjYXNlIHlvdSBjb3VsZCBnaXZlIHRoZSBjb21wb3NpdG9yIGFu
IGV2ZW50ZmQgaW5zdGVhZCBvZiBhIGRybV9zeW5jb2JqIGZkIGluIHRoZSBmaXJzdCBwbGFjZS4N
Cj4+Pg0KPj4+IFllcywgYWxsIGNvbXBvc2l0b3JzIHVzZSB0aGUgRFJNX0lPQ1RMX1NZTkNPQkpf
RVZFTlRGRCBpb2N0bCB0byB3YWl0DQo+Pj4gYXN5bmMgZm9yIHRoZSB0aW1lbGluZSBwb2ludCB0
byBtYXRlcmlhbGl6ZSBhbmQvb3IgYmUgc2lnbmFsZWQuIFRoZQ0KPj4+IHdheWxhbmQgcHJvdG9j
b2wgd2FzIHRoZSBtb3RpdmF0aW9uIGZvciB0aGF0IGlvY3RsLg0KPj4+DQo+Pj4+DQo+Pj4+IFNv
IGFzIGZhciBhcyBJIGNhbiBzZWUgdXNpbmcgZHJtX3N5bmNvYmogZm9yIHNvZnR3YXJlIHJlbmRl
cmluZyByZWFsbHkgZG9lc24ndCBtYWtlIHNlbnNlLCBldmVudGZkIGlzIGEgbXVjaCBiZXR0ZXIg
Zml0IGZvciB0aGF0IHVzZSBjYXNlLg0KPj4+DQo+Pj4gVXNpbmcgZXZlbnRmZCBoYXMgc29tZSBk
aXNhZHZhbnRhZ2VzOg0KPj4+DQo+Pj4gLSBXZSd2ZSBqdXN0IGFkZGVkIHN5bmNvYmogc3VwcG9y
dCB0byB2dWxrYW46DQo+Pj4gaHR0cHM6Ly9naXRodWIuY29tL0tocm9ub3NHcm91cC9WdWxrYW4t
RG9jcy9pc3N1ZXMvMjQ3MyNpc3N1ZWNvbW1lbnQtNDQ0NjExNzI4MC4NCj4+PiBGb3IgZXZlbnRm
ZCB3ZSB3b3VsZCBub3Qgb25seSBoYXZlIHRvIGFkZCB5ZXQgYW5vdGhlciBleHRlbnNpb24sIHRo
YXQNCj4+PiB3b3VsZCByZWFsaXN0aWNhbGx5IG9ubHkgYmUgZXhwb3NlZCBieSBsbHZtcGlwZSwg
YnV0IGFsc28gZXZlcnkNCj4+PiBjb21wb3NpdG9yIGFuZCBldmVyeSBjbGllbnQgd291bGQgaGF2
ZSB0byBzdXBwb3J0IGJvdGggZXh0ZW5zaW9ucy4NCj4+PiAtIFNpbWlsYXJseSwgYSBuZXcgd2F5
bGFuZCBwcm90b2NvbCB3b3VsZCBuZWVkIHRvIGJlIGRlc2lnbmVkIHRvDQo+Pj4gc3VwcG9ydCBz
eW5jIG92ZXIgZXZlbnRmZC4NCj4+PiAtIEV2ZW50ZmQgZG9lcyBub3Qgc3VwcG9ydCB0aW1lbGlu
ZSBzZW1hbnRpY3MuIE1lYW5pbmcgdGhhdCB5b3Ugd291bGQNCj4+PiBoYXZlIHRvIHNlbmQgdHdv
IGV2ZW50ZmRzIG92ZXIgdGhlIHdpcmUgZm9yIGVhY2ggY29tbWl0LCBvbmUgZm9yIHRoZQ0KPj4+
IGFjcXVpcmUgcG9pbnQgYW5kIG9uZSBmb3IgdGhlIHJlbGVhc2UgcG9pbnQuIFdoZXJlYXMgd2l0
aCBzeW5jb2JqIHlvdQ0KPj4+IG9ubHkgbmVlZCB0byBzZW5kIHR3byBpbnRlZ2VycyBwZXIgY29t
bWl0Lg0KPj4+DQo+Pj4gSSBkb24ndCBzZWUgdGhlIGFkdmFudGFnZSB3aGVuIGRybV9zeW5jb2Jq
IGFscmVhZHkgZG9lcyBldmVyeXRoaW5nIHdlIG5lZWQuDQo+Pj4NCj4+PiBZb3Ugc2VlbSB0byBi
ZWxpZXZlIHRoYXQgY29tcG9zaXRvcnMgd291bGQgbm90IGJlIHJlYWR5IGZvciB0aGlzIGFuZA0K
Pj4+IGZyb20gdGhhdCBwZXJzcGVjdGl2ZSBJIGNhbiB1bmRlcnN0YW5kIHlvdXIgYXBwcmVoZW5z
aW9uLiBCdXQgSSBjYW4NCj4+PiBhc3N1cmUgeW91IHRoYXQgY29tcG9zaXRvcnMgYXJlIGFscmVh
ZHkgZnVsbHkgc2V0IHVwIHRvIHN1cHBvcnQgYWxsIG9mDQo+Pj4gdGhlIHVzZWNhc2VzIEkndmUg
ZGVzY3JpYmVkOiBUaGUgd2F5bGFuZCBwcm90b2NvbCByZXF1aXJlcyB0aGUNCj4+PiBjb21wb3Np
dG9yIHRvIHN1cHBvcnQgd2FpdCBiZWZvcmUgc2lnbmFsLg0KPj4gWWVhaCB0aGF0J3MgbXVjaCBi
ZXR0ZXIgdGhhbiBJIHRob3VnaHQgaXQgd291bGQgYmUuDQo+Pg0KPj4gQW5kIHRoYXQgZXZlbnRm
ZHMgZG9uJ3Qgc3VwcG9ydCB0aW1lbGluZSBwb2ludHMgaXMgaW5kZWVkIGEgcHJldHR5IGdvb2Qg
YXJndW1lbnQuDQo+Pg0KPj4gQnV0IEkgc3RpbGwgZG9uJ3Qgc2VlIG11Y2gganVzdGlmaWNhdGlv
biBmb3IgY3JlYXRpbmcgYSAvZGV2L3N5bmNvYmogZGV2aWNlLCB0aGlzIGlzIGNsZWFybHkgc29t
ZXRoaW5nIERSTSBzcGVjaWZpYy4NCj4gDQo+IFRoZSBqdXN0aWZpY2F0aW9uIGlzIGdpdmVuIGlu
IHRoZSBjb3ZlciBsZXR0ZXIuIFRvIHJlcGVhdCB0aGVtIGJyaWVmbHk6DQo+IA0KPiAxLiBUaGlz
IHNlcmllcyBtYWtlcyB0aGUgYWJpbGl0eSB0byBtYW5pcHVsYXRlIHN5bmNvYmpzIGF2YWlsYWJs
ZQ0KPiBpbmRlcGVuZGVudGx5IG9mIGF0dGFjaGVkIGhhcmR3YXJlLg0KPiAyLiBJdCBtYWtlcyBp
dCBhdmFpbGFibGUgdW5kZXIgYSBjb25zaXN0ZW50IHBhdGggL2Rldi9zeW5jb2JqLg0KDQpFeGFj
dGx5IHRoYXQgaXMgYSBiaWcgbm8tZ28uIFRoaXMgaGFzIHRvIGJlIHVuZGVyIC9kZXYvZHJpLg0K
DQo+IDMuIEl0IHJlbW92ZXMgdGhlIG5lZWQgdG8gdHJhbnNsYXRlIGJldHdlZW4gc3luY29ianMg
ZmRzIGFuZCBoYW5kbGVzLg0KDQpUaGF0J3MgYSBwcmV0dHkgYmlnIG5vLWdvIGFzIHdlbGwuIFRo
ZSBkaWZmZXJlbnRpYXRpb24gYmV0d2VlbiBGRHMgYW5kIGhhbmRsZXMgaXMgY29tcGxldGVseSBp
bnRlbnRpb25hbC4gDQoNCj4gDQo+Pg0KPj4gV2hhdCBhYm91dCB1c2luZyBWR0VNIGZvciB0aGlz
Pw0KPiANCj4gSWYgdGhlIHZnZW0gcmVuZGVyIG5vZGUgd2VyZSBtYWRlIGF2YWlsYWJsZSB1bmNv
bmRpdGlvbmFsbHkgdW5kZXIsDQoNClNvZnR3YXJlIHJlbmRlcmluZyBpcyBhIGNvbXBsZXRlIGNv
cm5lciBjYXNlLCBJIGRvbid0IHRoaW5rIHRoYXQgdGhpcyB3aWxsIGJlIGVuYWJsZWQgYnkgZGVm
YXVsdC4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPiBzYXksIC9kZXYvdmdlbSBhbmQgRFJJ
VkVSX1NZTkNPQkpfVElNRUxJTkUgd2VyZSBhZGRlZCB0byB0aGUgZHJpdmVyLA0KPiB0aGVuIG1h
eWJlIHRoYXQgY291bGQgc29sdmUgcG9pbnRzIDEgYW5kIDIgYWJvdmUuDQo+IA0KPiBCdXQgaXQg
d291bGQgbm90IHNvbHZlIHBvaW50IDMgYW5kIGl0IHNvdW5kcyBsaWtlIGEgaGFjayB0byBtZSB0
byBoYXZlDQo+IGEgcmVuZGVyIG5vZGUgYXZhaWxhYmxlIG91dHNpZGUgb2YgL2Rldi9kcmkuDQo+
IA0KPj4NCj4+IFJlZ2FyZHMsDQo+PiBDaHJpc3RpYW4uDQo+Pg0KPj4+DQo+Pj4+DQo+Pj4+IFJl
Z2FyZHMsDQo+Pj4+IENocmlzdGlhbi4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==

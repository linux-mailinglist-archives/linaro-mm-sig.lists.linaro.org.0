Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 979035AD8FF
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 Sep 2022 20:26:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 92A3F48A1C
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 Sep 2022 18:26:54 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2040.outbound.protection.outlook.com [40.107.237.40])
	by lists.linaro.org (Postfix) with ESMTPS id 3DD4F3F601
	for <linaro-mm-sig@lists.linaro.org>; Mon,  5 Sep 2022 18:26:49 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k5sU+SxfTVR/L2ga1+9lOmkBfRiw1C+CD452mCykTma0rr9dkqbXTd1B499jLCwwToyPxx7qDvY/dUqLrwFTwyg8HYwQSBlKEitAe6/NpvldftKYH6LiV3gTQOevTl3nRhmoMauys9Z6Sc+JncbPEL1OUAjXhgm8bAId4SoMLM0MIkvZUgXH4/bAHUOVaSrp+kRpFcGWTf1EPCCGqua0EAdo9PcyFZddbd2lgD4NlLJkciMfdSP09RjXBZhiIPLQ3P/JHH+Ktb3NU2u5N8upsnp+Lq8TvU+cGPMamPx0yPlN6WMgBF2uLTBQrwye5QN5WlcdpoLQ0SHEvZ8j9h98zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=poSojd5kbTekZqSfy8QCPrycXD96N8UxYkoF+PazzD4=;
 b=EY0zFA6htxTqeyR9XGpspUIPAufg+w6bCQjXSH/LU+Oqamd5XrDJ4dpbsjlAs1xLmcij+dSvkDfeltL0tMWhRyB1Syk8C4oTuv+uKLUiJCRt0fRXceaEtxxKuC0b2toJFwumaI3hgan371E3kn4dfGar1ste5tOqZqBq90BAfEjXdRmmDLXnr96pNvt+yk951Jxxn7DvhtJuOnnRcgjXLsFNK/fNksUSylV3GMThSDO67BNQw5305dhgGpeRzfYWhwtcgRbDt8si+MzHGzaww0Q3ePop5QwWDKEZ39Cu8u6ZT0DuwIFytF1w28xUQR2I4EpeVpj6LZxAmh/X70pxHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=poSojd5kbTekZqSfy8QCPrycXD96N8UxYkoF+PazzD4=;
 b=2vEAlp1k3EvycXPxiwwEKbYtONiui88AekinCV8kyxPjOhqUzoF7i9g6D6KpNLQrNVon15jM8O/wCHkRlZIk5X1Z9IpSDscNgXwo791jZGBYfeYbZ2OUsioM/3fy5nKGKDAto9gf6XAlHuefdf0qS8AKH+aUiZopjSsG8yUONiI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by MN2PR12MB4485.namprd12.prod.outlook.com (2603:10b6:208:269::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.11; Mon, 5 Sep
 2022 18:26:47 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::4524:eda6:873a:8f94]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::4524:eda6:873a:8f94%7]) with mapi id 15.20.5588.018; Mon, 5 Sep 2022
 18:26:47 +0000
Message-ID: <3da7b3c2-737e-a067-9018-8e743e59ef65@amd.com>
Date: Mon, 5 Sep 2022 20:26:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Arvind Yadav <Arvind.Yadav@amd.com>, andrey.grodzovsky@amd.com,
 shashank.sharma@amd.com, amaranath.somalapuram@amd.com,
 Arunpravin.PaneerSelvam@amd.com, sumit.semwal@linaro.org,
 gustavo@padovan.org, airlied@linux.ie, daniel@ffwll.ch,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20220905105653.13670-1-Arvind.Yadav@amd.com>
 <20220905105653.13670-2-Arvind.Yadav@amd.com>
 <0038fcff-35f1-87e3-aa26-cdd104a13628@amd.com>
 <3c702549-75f4-c640-9f9c-37d7fcbb1645@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <3c702549-75f4-c640-9f9c-37d7fcbb1645@linux.intel.com>
X-ClientProxiedBy: FR0P281CA0144.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:96::19) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 58a2fea0-7a65-490d-019b-08da8f6c3131
X-MS-TrafficTypeDiagnostic: MN2PR12MB4485:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	tj4DW1lQ+s+sSZoQnV+Y1xE9LeXE+kirZWlzuAI4sIwReJWSP5yOFk7XgKo6wqd8rx+KZ9FLlHzhJH9CarZViz6TH8rf1wzhlWD/S0OPFyZaiJA0M+NCqq5MhIOEM7MQHYhMCY00KSCnxkVvov7hX1BIx4U3NKTodhoCsmATyht86d9FzXk9KPA3K692IkAP1BM440AQY2bf9185QCAlydu7xSfbmbCE3U2JI9gXB4fD5V6TOTIcT/3xI4XtA4o3XRjlpREcDLjvWJfcuZIFyd+rW42uXE0z2x3jfMgEcRGBSLcn4bQrWa9U7nA2UcIEjF4RLlsLhEB6U5/Lw65EmmoLLpQCa/Nu/cwt+QrOl2+UnxzEjuKrFxbhDXvpOL+digHrRnb3KYjxrRXfFzAH5/v8nRHIj9ydOF1W6L7TOrbrPU1OzU9KgUVm1IFfiU+4aCiYZioAJ2lnWbG65n3yhhPgTkyUhpHFcxwwxxwV87vDcuIWxNfeasvljlYXtE3I/NcY/lYcWcbR30VkwvAL74ig49hO3Jym0p3NOdX8Q0/mGUy4VtTKdD+EQR7UEZwAEorWqmHemhYLlBoWEnYauEZEV4BDfmpj0EmoLI1xzz7vdOtWsupCu4ljhf76uyp1yCmrUsAY+s1KTSNAM2tEqK8bi+b5J0GUT0dQv80jKw/PV9xCYZHwawOr/SjeQ+wOFTUMstX05tu9tLkQPzm5AYeB6hAIOXbMuEjtQyEcxF9jwjJr2k6ynCSQJHGsEjKzXeehm4LeoODyplmOsC8u3Ln5nb7eLA4oKBNopLisggRdaaR2g0VjmJCf6pGtnCSn
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(39860400002)(366004)(376002)(396003)(136003)(346002)(8676002)(83380400001)(66476007)(66574015)(66946007)(8936002)(66556008)(5660300002)(6506007)(478600001)(53546011)(6486002)(41300700001)(186003)(6666004)(6512007)(2616005)(316002)(86362001)(110136005)(31696002)(36756003)(31686004)(38100700002)(921005)(2906002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?L3F4SjdmQ2NpVDZSSXFGR2o3SHkvcDNCclZYa1NFSVJnbWRwVWR5MWZ2K29x?=
 =?utf-8?B?alNkUHBJQmY1ME5DRFdnSDdzdmIvMldCalNyQnduMFBpWTJVdDEzbms1MXVN?=
 =?utf-8?B?SWQzY002RzZXb3FoZXRKeDVKTFNzbWhsdzRLNExTOTVNN2VWZUM1V2xRRU0y?=
 =?utf-8?B?NkJnUklYQmpZdUE1K3lJYkNlRTl3SzcyRWhxZ1lEOGVwSDZpdjBzNWVpSGky?=
 =?utf-8?B?TlVZeE0zTGppRFNvNHJzTERHVkVRMERZTk9aWWRobDM4M1BuWXN5UU52ei9T?=
 =?utf-8?B?WkpaTkF0S2pBMWd5VjRsYWV1S2JJV0Z3N1N6YUZzUXNmbjNoTU1BSnRXZTdr?=
 =?utf-8?B?ZW11cno2U21rVHlrQUVnUStSclVneWh4TmV3VmNqY1dnb1NmMXlSSkZ5RkFq?=
 =?utf-8?B?SzJrSjZMeE5NYWxSa0l2RXl0YlBwbWZMcU5xcHRaNEVyUEtJVDJWaWZwcWNP?=
 =?utf-8?B?Ti9mZzU5L04vNTNtM0R0TWJVTTdkRnB5SnR0enhIaW03T0FLTlBhdDNaRHUv?=
 =?utf-8?B?d3g5NmJkTUJFS3BDZWRIOUlnQ0hhU3E5QjkyUWdnWkFUUU5udW5HcWxiemJU?=
 =?utf-8?B?VkxIRUgxcmdpYXRodGsrL2R3N0ZBcHpUdzVjMWZheThDV3h4Ylg1N1oyNHV2?=
 =?utf-8?B?NDJVdVFuaWd1bTRsVXRUcFYzUWhlS2pCQ2FwNjd0aXRheFBiVndvMjczWjcv?=
 =?utf-8?B?enBIRHpwRlQ0WlpySTlBSk55bGNvUncydTBnSy9IY0FyQkhzTkNiNzZPSGpO?=
 =?utf-8?B?WWtJdDhqLzVEdHNieTZlVkNyUThyWGdOeWZBZithek5vR1BoOFNqWVVkUDdw?=
 =?utf-8?B?WFAvOEhrZm9nN1dWaFZxL0tVMUJlemllYlRIcWdmK2d1ME5UTmNHZU1kYTRD?=
 =?utf-8?B?WlhYMkxSNElqeHJOMFlaVzlLdEcraTN2QlE4K3RNMlhXeGRURFYvSEF3cFpv?=
 =?utf-8?B?enBtcktwbFlMSWw4a3lWV251V0p5SHdyTEJjb0xhcUxSbkFqbzZySDBqaVFG?=
 =?utf-8?B?TlZoVGkzYk1Sc1JVdjE4dHhLMlQxcTlLWGJyL0FXL2MwRGhLRmFYS1RpK2Mv?=
 =?utf-8?B?cjY3aHVIdTdjZmlFdmdDcEh6ZjBtQStkSjFVY2pwaGlUVWNta3E1NE9OdDRD?=
 =?utf-8?B?OEh6N1d0c2dDY2NQSEZLc2laNmdsY0pHanNIK2VraUgzM3hEM2syVWFtVkc5?=
 =?utf-8?B?cDdrZzVyaDlmTlVUNTlSOWZPeEEyK2xjaVNiZjljL210ZzRONGpFMU9Wdi9N?=
 =?utf-8?B?eXRsWk16WnZPV1pkVnA3c1pUUHJpZXBBSitzdWdZK0VvV0twcTRkOEo3a1Rj?=
 =?utf-8?B?d3RtWlBDUld4TUJzUUNLRis4Y0xJby85VmRYcjJ5WlZPdE00anN4TStYTnhT?=
 =?utf-8?B?eW1sUDJCQUh0OElUR29oZXpzZ2hJTGhzalJWeFJSRzd3KzBWMkZpRUJMSnZO?=
 =?utf-8?B?by8wRDRDZ1Q1c1NqTVlVTWRmWTl1RkoxNm9NcFRzcU5iVXh2VS9VeUpIMTZ2?=
 =?utf-8?B?cjV4TFRhSjMzTXZPeG5aaUc3NEZrTWlsdEx6Lyt6NDRBbGdkR0F4RGc2N1E0?=
 =?utf-8?B?OEwzNkExWDdlRkhuYkNQRGZtamZZQUVqUE1qMnBwRmJCYk5sS1piTERmS3lp?=
 =?utf-8?B?ZFpvR3pZK1JnbUVsZmsxUGthS1lNOVdJSzBKZUpGUEdRaHMzSDBSYmp3Y1Zj?=
 =?utf-8?B?MUI1ckhIN1JOQkdYaXdFaTEyVDhidExQdjBRVGdNSVBXcHRoNDZyZTdyRTJM?=
 =?utf-8?B?RTBqcFVBaExZWXdTQWJ4bDR4anZFVW9NeHNpMnlxaXdFYUxUKzlOVmpubzBB?=
 =?utf-8?B?d2FSK05ERFdlRjJ2RjFaOHQyZGM3TzFBS3gwd0I2TEd2RHBoY0pzdjZWSEtn?=
 =?utf-8?B?eGlRd1hpcEJEU3lVN0JhbDZheUNoN1A4UlByMVhKcmx6SHhxdkFCbHdFc1NB?=
 =?utf-8?B?QmM5ak53dlljT0N3VnNBZVlrWjNkdjBOYlg1U1hSUXIyekxlVnBJa2tGUWU0?=
 =?utf-8?B?S2hQYUhuY2g0MU8xRUtCNEF1dk5URUFwM3BkdWhRb2pMU2J1aUMyaFRqa3lU?=
 =?utf-8?B?U2dtMnlITjVSQlJjYUpGUWszTkFhd0I5OHdCSVBkTitCOG40TFZNTFRSMkp4?=
 =?utf-8?B?N1NNSVd1eERKVFB5L3dRdFcyck5NSUJqRW1hYWc2SFJOMFMzdnVMRTJxa0hK?=
 =?utf-8?Q?NR36zzsc+5AIzb34udo7qtZkTy+VsDr3iwLtmnWTrqjT?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58a2fea0-7a65-490d-019b-08da8f6c3131
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2022 18:26:47.3693
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /+mmSSUxF8Ny4Qk/IpGZJiFqUWrbZYg8k5enzf7AXUwWU3fNpHyj3eqxDc+SooK4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4485
Message-ID-Hash: LSGTLS2VUUKW4VXMWSI7N53V33CJQIEC
X-Message-ID-Hash: LSGTLS2VUUKW4VXMWSI7N53V33CJQIEC
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/4] dma-buf: Check status of enable-signaling bit on debug
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LSGTLS2VUUKW4VXMWSI7N53V33CJQIEC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDUuMDkuMjIgdW0gMTg6Mzkgc2NocmllYiBUdnJ0a28gVXJzdWxpbjoNCj4NCj4gT24gMDUv
MDkvMjAyMiAxMjoyMSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+IEFtIDA1LjA5LjIyIHVt
IDEyOjU2IHNjaHJpZWIgQXJ2aW5kIFlhZGF2Og0KPj4+IFRoZSBjb3JlIERNQS1idWYgZnJhbWV3
b3JrIG5lZWRzIHRvIGVuYWJsZSBzaWduYWxpbmcNCj4+PiBiZWZvcmUgdGhlIGZlbmNlIGlzIHNp
Z25hbGVkLiBUaGUgY29yZSBETUEtYnVmIGZyYW1ld29yaw0KPj4+IGNhbiBmb3JnZXQgdG8gZW5h
YmxlIHNpZ25hbGluZyBiZWZvcmUgdGhlIGZlbmNlIGlzIHNpZ25hbGVkLg0KPj4+IFRvIGF2b2lk
IHRoaXMgc2NlbmFyaW8gb24gdGhlIGRlYnVnIGtlcm5lbCwgY2hlY2sgdGhlDQo+Pj4gRE1BX0ZF
TkNFX0ZMQUdfRU5BQkxFX1NJR05BTF9CSVQgc3RhdHVzIGJpdCBiZWZvcmUgY2hlY2tpbmcNCj4+
PiB0aGUgc2lnbmFsaW5nIGJpdCBzdGF0dXMgdG8gY29uZmlybSB0aGF0IGVuYWJsZV9zaWduYWxp
bmcNCj4+PiBpcyBlbmFibGVkLg0KPj4NCj4+IFlvdSBtaWdodCB3YW50IHRvIHB1dCB0aGlzIHBh
dGNoIGF0IHRoZSBlbmQgb2YgdGhlIHNlcmllcyB0byBhdm9pZCANCj4+IGJyZWFraW5nIHRoZSBr
ZXJuZWwgaW4gYmV0d2Vlbi4NCj4+DQo+Pj4NCj4+PiBTaWduZWQtb2ZmLWJ5OiBBcnZpbmQgWWFk
YXYgPEFydmluZC5ZYWRhdkBhbWQuY29tPg0KPj4+IC0tLQ0KPj4+IMKgIGluY2x1ZGUvbGludXgv
ZG1hLWZlbmNlLmggfCA1ICsrKysrDQo+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9u
cygrKQ0KPj4+DQo+Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggYi9p
bmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQo+Pj4gaW5kZXggNzc1Y2RjMGI0ZjI0Li42MGMwZTkz
NWMwYjUgMTAwNjQ0DQo+Pj4gLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KPj4+ICsr
KyBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCj4+PiBAQCAtNDI4LDYgKzQyOCwxMSBAQCBk
bWFfZmVuY2VfaXNfc2lnbmFsZWRfbG9ja2VkKHN0cnVjdCBkbWFfZmVuY2UgDQo+Pj4gKmZlbmNl
KQ0KPj4+IMKgIHN0YXRpYyBpbmxpbmUgYm9vbA0KPj4+IMKgIGRtYV9mZW5jZV9pc19zaWduYWxl
ZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCj4+PiDCoCB7DQo+Pj4gKyNpZmRlZiBDT05GSUdf
REVCVUdfRlMNCj4+DQo+PiBDT05GSUdfREVCVUdfRlMgaXMgY2VydGFpbmx5IHdyb25nLCBwcm9i
YWJseSBiZXR0ZXIgdG8gY2hlY2sgZm9yIA0KPj4gQ09ORklHX0RFQlVHX1dXX01VVEVYX1NMT1dQ
QVRIIGhlcmUuDQo+Pg0KPj4gQXBhcnQgZnJvbSB0aGF0IGxvb2tzIGdvb2QgdG8gbWUsDQo+DQo+
IFdoYXQncyB0aGUgZnVsbCBzdG9yeSBpbiB0aGlzIHNlcmllcyAtIEknbSBhZnJhaWQgdGhlIGNv
dmVyIGxldHRlciANCj4gZG9lcyBub3QgbWFrZSBpdCBjbGVhciB0byBhIGNhc3VhbCByZWFkZXIg
bGlrZSBteXNlbGY/IFdoZXJlIGRvZXMgdGhlIA0KPiBkaWZmZXJlbmNlIGJldHdlZW4gZGVidWcg
YW5kIG5vbiBkZWJ1ZyBrZXJuZWwgY29tZSBmcm9tPw0KDQpXZSBoYXZlIGEgYnVnIHRoYXQgdGhl
IGRybV9zeW5jIGZpbGUgZG9lc24ndCBwcm9wZXJseSBlbmFibGUgc2lnbmFsaW5nIA0KbGVhZGlu
ZyB0byBhbiBpZ3QgdGVzdCBmYWlsdXJlLg0KDQo+DQo+IEFuZCBob3cgZG8gdGhlIHByb3Bvc2Vk
IGNoYW5nZXMgcmVsYXRlIHRvIHRoZSBmb2xsb3dpbmcga2VybmVsZG9jIA0KPiBleGNlcnB0Og0K
Pg0KPiDCoMKgwqDCoCAqIFNpbmNlIG1hbnkgaW1wbGVtZW50YXRpb25zIGNhbiBjYWxsIGRtYV9m
ZW5jZV9zaWduYWwoKSBldmVuIA0KPiB3aGVuIGJlZm9yZQ0KPiDCoMKgwqDCoCAqIEBlbmFibGVf
c2lnbmFsaW5nIGhhcyBiZWVuIGNhbGxlZCB0aGVyZSdzIGEgcmFjZSB3aW5kb3csIHdoZXJlIHRo
ZQ0KPiDCoMKgwqDCoCAqIGRtYV9mZW5jZV9zaWduYWwoKSBtaWdodCByZXN1bHQgaW4gdGhlIGZp
bmFsIGZlbmNlIHJlZmVyZW5jZSBiZWluZw0KPiDCoMKgwqDCoCAqIHJlbGVhc2VkIGFuZCBpdHMg
bWVtb3J5IGZyZWVkLiBUbyBhdm9pZCB0aGlzLCBpbXBsZW1lbnRhdGlvbnMgDQo+IG9mIHRoaXMN
Cj4gwqDCoMKgwqAgKiBjYWxsYmFjayBzaG91bGQgZ3JhYiB0aGVpciBvd24gcmVmZXJlbmNlIHVz
aW5nIGRtYV9mZW5jZV9nZXQoKSwgDQo+IHRvIGJlDQo+IMKgwqDCoMKgICogcmVsZWFzZWQgd2hl
biB0aGUgZmVuY2UgaXMgc2lnbmFsbGVkICh0aHJvdWdoIGUuZy4gdGhlIGludGVycnVwdA0KPiDC
oMKgwqDCoCAqIGhhbmRsZXIpLg0KPiDCoMKgwqDCoCAqDQo+IMKgwqDCoMKgICogVGhpcyBjYWxs
YmFjayBpcyBvcHRpb25hbC4gSWYgdGhpcyBjYWxsYmFjayBpcyBub3QgcHJlc2VudCwgDQo+IHRo
ZW4gdGhlDQo+IMKgwqDCoMKgICogZHJpdmVyIG11c3QgYWx3YXlzIGhhdmUgc2lnbmFsaW5nIGVu
YWJsZWQuDQo+DQo+IElzIGl0IG5vdyBhbiBlcnJvciwgb3Igc2hvdWxkIGJlIGltcG9zc2libGUg
Y29uZGl0aW9uLCBmb3IgImlzIA0KPiBzaWduYWxlZCIgdG8gcmV0dXJuIHRydWUgX3VubGVzc18g
c2lnbmFsaW5nIGhhcyBiZWVuIGVuYWJsZWQ/DQoNClRoYXQncyBuZWl0aGVyIGFuIGVycm9yIG5v
ciBpbXBvc3NpYmxlLiBGb3IgZGVidWdnaW5nIHdlIGp1c3QgbmV2ZXIgDQpyZXR1cm4gc2lnbmFs
ZWQgZnJvbSB0aGUgZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKCkgZnVuY3Rpb24gd2hlbiBzaWduYWxp
bmcgDQp3YXMgbm90IGVuYWJsZWQgYmVmb3JlLg0KDQpJIGFsc28gcGxhbiB0byByZW1vdmUgdGhl
IHJldHVybiB2YWx1ZSBmcm9tIHRoZSBlbmFibGVfc2lnbmFsaW5nIA0KY2FsbGJhY2suIFRoYXQg
d2FzIGp1c3Qgbm90IHZlcnkgd2VsbCBkZXNpZ25lZC4NCg0KPg0KPiBJZiB0aGUgc3RhdGVtZW50
IChpbiBhIGxhdGVyIHBhdGNoKSBpcyBzaWduYWxsaW5nIHNob3VsZCBhbHdheXMgYmUgDQo+IGV4
cGxpY2l0bHkgZW5hYmxlZCBieSB0aGUgY2FsbGVycyBvZiBkbWFfZmVuY2VfYWRkX2NhbGxiYWNr
LCB0aGVuIHdoYXQgDQo+IGFib3V0IHRoZSBleGlzdGluZyBjYWxsIHRvIF9fZG1hX2ZlbmNlX2Vu
YWJsZV9zaWduYWxpbmcgZnJvbSANCj4gZG1hX2ZlbmNlX2FkZF9jYWxsYmFjaz8NCg0KT2gsIGdv
b2QgcG9pbnQuIFRoYXQgc291bmRzIGxpa2Ugd2UgaGF2ZSBzb21lIGJ1ZyBpbiB0aGUgY29yZSBk
bWFfZmVuY2UgDQpjb2RlIGFzIHdlbGwuDQoNCkNhbGxzIHRvIGRtYV9mZW5jZV9hZGRfY2FsbGJh
Y2soKSBhbmQgZG1hX2ZlbmNlX3dhaXQoKSBzaG91bGQgZW5hYmxlIA0Kc2lnbmFsaW5nIGltcGxp
Y2l0bHkgYW5kIGRvbid0IG5lZWQgYW4gZXh0cmEgY2FsbCBmb3IgdGhhdC4NCg0KT25seSBkbWFf
ZmVuY2VfaXNfc2lnbmFsZWQoKSBuZWVkcyB0aGlzIGV4cGxpY2l0IGVuYWJsaW5nIG9mIHNpZ25h
bGluZyANCnRocm91Z2ggZG1hX2ZlbmNlX2VuYWJsZV9zd19zaWduYWxpbmcoKS4NCg0KPg0KPiBP
ciBpZiB0aGUgcnVsZXMgYXJlIGNoYW5naW5nIHNob3VsZG4ndCBrZXJuZWxkb2MgYmUgdXBkYXRl
ZCBhcyBwYXJ0IG9mIA0KPiB0aGUgc2VyaWVzPw0KDQpJIHRoaW5rIHRoZSBrZXJuZWxkb2MgaXMg
anVzdCBhIGJpdCBtaXNsZWFkaW5nLiBUaGUgcG9pbnQgaXMgdGhhdCB3aGVuIA0KeW91IG5lZWQg
dG8gY2FsbCBkbWFfZmVuY2VfZW5hYmxlX3N3X3NpZ25hbGluZygpIHlvdSBtdXN0IGhvbGQgYSAN
CnJlZmVyZW5jZSB0byB0aGUgZmVuY2Ugb2JqZWN0Lg0KDQpCdXQgdGhhdCdzIHRydWUgZm9yIGFs
bCB0aGUgZG1hX2ZlbmNlXyogZnVuY3Rpb25zLiBUaGUgcmFjZSBkZXNjcmliZWQgaW4gDQp0aGUg
Y29tbWVudCBpcyBqdXN0IG5vbnNlbnNlIGJlY2F1c2UgeW91IG5lZWQgdG8gaG9sZCB0aGF0IHJl
ZmVyZW5jZSBhbnl3YXkuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4NCj4gUmVnYXJkcywN
Cj4NCj4gVHZydGtvDQo+DQo+PiBDaHJpc3RpYW4uDQo+Pg0KPj4+ICvCoMKgwqAgaWYgKCF0ZXN0
X2JpdChETUFfRkVOQ0VfRkxBR19FTkFCTEVfU0lHTkFMX0JJVCwgJmZlbmNlLT5mbGFncykpDQo+
Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiBmYWxzZTsNCj4+PiArI2VuZGlmDQo+Pj4gKw0KPj4+
IMKgwqDCoMKgwqAgaWYgKHRlc3RfYml0KERNQV9GRU5DRV9GTEFHX1NJR05BTEVEX0JJVCwgJmZl
bmNlLT5mbGFncykpDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiB0cnVlOw0KPj4NCg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5h
cm8ub3JnCg==

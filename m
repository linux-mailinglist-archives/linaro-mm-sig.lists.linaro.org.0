Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5196C49DB70
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Jan 2022 08:27:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8289D401D6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Jan 2022 07:27:27 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2048.outbound.protection.outlook.com [40.107.92.48])
	by lists.linaro.org (Postfix) with ESMTPS id C8A413ECC6
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Jan 2022 07:27:18 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ewdATfFs8IjT/e+aGVdXQJXOwxtpHxevN4Wj0BzSUyE8rhI8QSW/m5T5Lkr2deG9xBD1o6ZVFR9b1ttgEqeC0QmUCUcUc/gjGjaW2D9eex3lG0NdfTUBlL5SKP7z9A9MOqa8TA5ulbkoolwWMTWRpV1+rjTUIhbTpMdh1C1lr7ZybV6JBKH0OUtzGLK7A2h2Z99zN9FIeOJ20q+kNochokDueIsbucbdQBsQz/+1WlKpjXbonZIwfTTR+pX2yQ0l9JdSR/5L+wXu9eVvs5HNMwma6NYKP5/RBZd7n+PAgjgS2zx5QwrELI40eLfI4TXS6Fsmdo4PpsKeLv/OFAQyww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WAyxq43yKpnPAdn+/QR3a/24qkATUY3MSXD/g0pPkSs=;
 b=oEP//wfdi3bTeTxj1wkCFhGPFT7LdyWx9TlDfoNXJpqp0dyK2hxUsiV1U/a2ZZdTGOrAy7E6pBGFyRDuaEFGff0hD3scKAYEwYDg61qtBeBhk8wV+x3/1N7UGK4Z7nwZGZAPVQQqm8xZcfXSUjBj8KyMjIosCTLlRD/59yQW62HKZ+wqtqz7RjxeTS4mt5Rgba1kYlve5O2DMEMeYc4TPwSruVJlSVR8uVx3DQ4rZUE976cv7h9hnI92pv8XhcwO7z8cSCrnFnjM10cOvBJxc7YIoc+sTrEhYWTIzaNmBm3LJZp8hJ5xXdqlzZ5PvyznKF9apYMhvdZZ2l0yXs0+QA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WAyxq43yKpnPAdn+/QR3a/24qkATUY3MSXD/g0pPkSs=;
 b=cCNanOCYh2nA4oFcM4j6wyu3JyWaRkxf1nwubTxs3Mvo0NFC3NFPKmtkgL7BiFj/VzIGEKhvkE8rM45VIHRUu9e96ecL/w0KdUADqa5Wd+Nm6Fww6icVPd7r3CsdVOxClD4kWOx7HxLg0K9PpyoOjUo3fUT0LZr4UcdebLcHZDE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (20.178.210.205) by
 DM6PR12MB2603.namprd12.prod.outlook.com (20.176.116.84) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4930.15; Thu, 27 Jan 2022 07:27:16 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::d8e7:e6b0:d63c:4a21]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::d8e7:e6b0:d63c:4a21%5]) with mapi id 15.20.4909.019; Thu, 27 Jan 2022
 07:27:16 +0000
Message-ID: <f0dbdcc0-13b5-c484-0bf3-a1f8c3e48954@amd.com>
Date: Thu, 27 Jan 2022 08:27:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220126203702.1784589-1-lucas.demarchi@intel.com>
 <20220126203702.1784589-3-lucas.demarchi@intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20220126203702.1784589-3-lucas.demarchi@intel.com>
X-ClientProxiedBy: AM6P191CA0100.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:209:8a::41) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d481c12f-3a39-425a-5287-08d9e1667206
X-MS-TrafficTypeDiagnostic: DM6PR12MB2603:EE_
X-Microsoft-Antispam-PRVS: 
	<DM6PR12MB26031297356638C44CF5AEB183219@DM6PR12MB2603.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	qdUT8mdwGgzFGIZkwxj2kvS+CFEhlpkHPxUWvprinf/Q+xGgqqEkcrp6Hlr35ZV65FZLKxN5mCNSTsdzYvdOeYvnt2Cxe8UvrGbl/E3FIGxZ84XkbU8TeqYukirFV/yXIgEk6jwX+BTTSs/3TQUYehm25Gb5Sb1hLOX4hwSubK08hs2kkkQhaH+zQy4lo9PVwDz5AjR74jxoA93h2gwS8+RR3ndWJ7z+u/0lq1yKruZiaFJTfd1j2VPqwdezzKimXQA3yvj0vdSXWmsFuWo1XGWuzvC2lh3Rkn94hXGG5oPtxRwbY7m5NtmjPOWEQp1ijVKWxvK/KLMvZwEjReY1DzdW51w9BuPxKpb0bFodsWAWtEUnJJ1TfGXwGTfnDmD5ZaqEjbr+emZFtZzrVx91Mm6BnsqAnfAA0kML3j/3hPXtr2Y/yBk/JJlbQdW3MAJXk8zfI3iBvqaKsiA+MDO/6QFNJRrfBb9Htwc5FWLyUlv1pw9AZrsD5KPGn2NJCSuooVMYXRoZd+IIbmH8w1SUjFckuwWdksNVWir0c0ffEAzBvNUGyU8iVtxNck9r1TKuXysNBAA8fUhyT6ch05qyP2yRTGQeeC5PG2PrXAlK3MqcTgD2rqLy6O5nVVG25XBsCP7gZRTKtAYYsvf6hNiDcFWvLUG9QUNM/XY5r68GN0cKpam50wA2qrurmGcRANp4fatdQxVciVWgTkf01+7/vXkxHMQ4YMNapCsmsejKSMTaW2kBy9dgJVvxPMPqU6wm
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(54906003)(38100700002)(5660300002)(66946007)(31696002)(2906002)(66476007)(8936002)(8676002)(316002)(66556008)(6666004)(31686004)(86362001)(4326008)(66574015)(508600001)(2616005)(83380400001)(6512007)(26005)(6506007)(6486002)(36756003)(186003)(45980500001)(43740500002)(20210929001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?L1BNS0xoR2lDM0pLSUFhRkxWK0R6R0xKUGVnL0tvWU5OTndtQXNINVZVTm1D?=
 =?utf-8?B?QkM2MnUrdjVWaS9rVVJHbDIxV0ZaTUtJZnNUeDU5cVl3UGdTZjlYdEhhQlU3?=
 =?utf-8?B?TlhzZm1VSU94SXVUNm1UY0tKcU45V2k4amhINWVoUzVWaml5aHRudTJ0QW8r?=
 =?utf-8?B?dGFhSWhjcElUNXRPOUYzZEN6TndwTjJxTmFMMGcxN0gzQkRLeWxKSnBVNjBo?=
 =?utf-8?B?V24yNkpPbG9mMmJsaFBrL0phYWUwWW1EMkl2RThlbFI1TFYvZ1UzTGd6UXdE?=
 =?utf-8?B?QklOeGsrMWZ0ejRSVWE4WEtzb3JOejVZb25Ta2c1c0JpZCt6MHgwWjFMQU9I?=
 =?utf-8?B?M3M4Q1R2UXhKTFJkVDZqcE5hYWdOOFBYRW9FeWhOUkdMb0oxWHdBVnNXdlNr?=
 =?utf-8?B?Q3ZKR1JLK05JTDl2bitDL1JRWXAzNmJFODg1STY1SkVuYm9laVJOUzJ6MnNY?=
 =?utf-8?B?cmMwRFk4SklMVlVKM1VQRWlCd24rVVErLzN2ZWNxQ2V1U3pKUGRyeDZESjZm?=
 =?utf-8?B?OWMwVDJyVTlZNFY1VVJJWVlIOFdjVE0weXpiRGtZTS90QVIrQmQ5MHpUeS9C?=
 =?utf-8?B?Mk96eGovR0d0SjdnWldGVWxtUWdheDhQeURYMUJYbG94eUZmR1ZyVFJ1V3pG?=
 =?utf-8?B?Ui9VR1ZBa3hoS29vcEJicVRqOE5URzhzYWdVbWtIb2FyeTlGbS9VRnljZUgr?=
 =?utf-8?B?dXIwN0lxQlZCRVdsSlFGNHg3V0lPeGh0djVnaW5SUWJlNWtVNkpDYmZsYTZu?=
 =?utf-8?B?bHBUT2x6ekxFQXZNVTB1dDAxR1ZJaS95ZkZNT2pqZCtqTWlockhyYXpyMlZF?=
 =?utf-8?B?WVZVcGxPN2tRYXZ2N2R0MFFIaXhROERUa2dNZzQxL2NzdFVsRnpoZDJ4a1Mv?=
 =?utf-8?B?YUg3WlhpZjhzZGtKNXZvbVpyQTMwQmI5YUhwWnY1Tmp6eHlCYXlHWG8xQW55?=
 =?utf-8?B?NysvejlJZUwxZFF4ZlpSMEpOanRKUmttbWpxQnJJZVJJejJURys2L29wQmpv?=
 =?utf-8?B?S0c5MU9OZUJQbk5zek13VEtBcmZGY2U4UG9ON2xUNnBEUDVLNHlleE13c05j?=
 =?utf-8?B?NUNtVllmejJXZnc0SkRwMk8rbWhQZkI2VnhGRm5HVU5sTUdORVJjeXk5NjY2?=
 =?utf-8?B?Q0EwOTMyNmc5MXNiVUMwK0JXOXRqczEwbUkyUlJiOFQwc3VwU2dDWEF0VjRu?=
 =?utf-8?B?YnRtZ2kwWG1zRWR2QlZwNUJ3dERPWXdoMGZ0SUsza1A5ZGpnQ0JuaExjTnRG?=
 =?utf-8?B?VE5KWnhZVm02TGVHVzUwbys2aWlGZS83UHlnUzBsY1lwb2dyYlBrcGk3RjR0?=
 =?utf-8?B?L2I5ZFBSM2NGUzFNdGZPQm9PTjdHeFRzOVp0Wk5PY0ZaWmlST1lwM0hTWEds?=
 =?utf-8?B?ejlhQnpVUHdRaS8yNDY0QStlUTlUKy9Vd2xUYkZ1ZmtTL3h6b1lQSVZnMDNJ?=
 =?utf-8?B?OWwyWERXblZOUFV1a0d2SHgxZ0RwZGsyWXM0Njg2a0JUOW5CaEFGbTFkTDE0?=
 =?utf-8?B?MjQybzM4YkN2VXpUUU4rdnNhQUdXdDJKNUFGV3Y4MUlxN0VlSlZyWjZINkpU?=
 =?utf-8?B?WjE4ZnV3cmY2Uk5VVER5NnhyaGEwVGFkdHZwUmtIenZPdHlsNnhvMDlFUTZj?=
 =?utf-8?B?ck1MaFo5ay81REdkUlR2OXVuVm9BRFlrSW5NRjh1QlZBZUtvNER5NUFWak5E?=
 =?utf-8?B?STNJRE5mT3l1cFIrVlZRSTVsYXgvRWZLVThrRlNzaldsbVU1Y0ZYdTNSVWg3?=
 =?utf-8?B?MjBOZjFqbm5iS2gzWkZ6NTFoL21iT3hZdVFHaUtFTit0YlJmN3FTcnhvTi8r?=
 =?utf-8?B?V3Nrc1cxYWU4RkdKQnF2L0wzWkw4THR4OVJXdVVDMEh6aThvSXRaeXVTSTRi?=
 =?utf-8?B?aW42OSt6cldjVlpLck5zMXlJblpFVUNaRlgxb1VWVnhycjBrSExLRURVZ0FD?=
 =?utf-8?B?U3lrTDVYZEhicXZJNVdWUEVpdVlZQ1NZOTJXeU1DRzJDUzRaZ2lpUGl0ZlJG?=
 =?utf-8?B?Um1YK2Q4eGJGbzduNHpDOHM1VStrRHZmZ3BvTUVBZk9YZnRHYXc2NlEyU00v?=
 =?utf-8?B?eTVRTmlBMFRuejJRS3hjMW1zc2lRWjdTcWZRMVJLM1lVaTZzNWRDM1hMTjdW?=
 =?utf-8?Q?DcAI=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d481c12f-3a39-425a-5287-08d9e1667206
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2022 07:27:16.7285
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qTeNZA25bCsp6F6Bu4QZ6LPuOXo8IuwLb5ZyzhycE+6kwzYXhSwxy9ifbedTjLrC
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB2603
Message-ID-Hash: RNRNWXYPLAIBQNPZDQJXXSBXWZ7TAQUS
X-Message-ID-Hash: RNRNWXYPLAIBQNPZDQJXXSBXWZ7TAQUS
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 02/19] dma-buf-map: Add helper to initialize second map
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RNRNWXYPLAIBQNPZDQJXXSBXWZ7TAQUS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjYuMDEuMjIgdW0gMjE6MzYgc2NocmllYiBMdWNhcyBEZSBNYXJjaGk6DQo+IFdoZW4gZG1h
X2J1Zl9tYXAgc3RydWN0IGlzIHBhc3NlZCBhcm91bmQsIGl0J3MgdXNlZnVsIHRvIGJlIGFibGUg
dG8NCj4gaW5pdGlhbGl6ZSBhIHNlY29uZCBtYXAgdGhhdCB0YWtlcyBjYXJlIG9mIHJlYWRpbmcv
d3JpdGluZyB0byBhbiBvZmZzZXQNCj4gb2YgdGhlIG9yaWdpbmFsIG1hcC4NCj4NCj4gQWRkIGEg
aGVscGVyIHRoYXQgY29waWVzIHRoZSBzdHJ1Y3QgYW5kIGFkZCB0aGUgb2Zmc2V0IHRvIHRoZSBw
cm9wZXINCj4gYWRkcmVzcy4NCg0KV2VsbCB3aGF0IHlvdSBwcm9wb3NlIGhlcmUgY2FuIGxlYWQg
dG8gYWxsIGtpbmQgb2YgcHJvYmxlbXMgYW5kIGlzIA0KcmF0aGVyIGJhZCBkZXNpZ24gYXMgZmFy
IGFzIEkgY2FuIHNlZS4NCg0KVGhlIHN0cnVjdCBkbWFfYnVmX21hcCBpcyBvbmx5IHRvIGJlIGZp
bGxlZCBpbiBieSB0aGUgZXhwb3J0ZXIgYW5kIA0Kc2hvdWxkIG5vdCBiZSBtb2RpZmllZCBpbiB0
aGlzIHdheSBieSB0aGUgaW1wb3J0ZXIuDQoNCklmIHlvdSBuZWVkIHRvIGNvcHkgb25seSBhIGNl
cnRhaW4gc3Vic2V0IG9mIHRoZSBtYXBwaW5nIHVzZSB0aGUgDQpmdW5jdGlvbnMgeW91IGFkZGVk
IGluIHBhdGNoICMxLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+DQo+IENjOiBTdW1pdCBT
ZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KPiBDYzogQ2hyaXN0aWFuIEvDtm5pZyA8
Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwu
b3JnDQo+IENjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNCj4gQ2M6IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5v
cmcNCj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20+DQo+IC0tLQ0KPiAgIGluY2x1ZGUvbGludXgvZG1hLWJ1Zi1tYXAuaCB8IDI5ICsrKysr
KysrKysrKysrKysrKysrKysrKysrKysrDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDI5IGluc2VydGlv
bnMoKykNCj4NCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi1tYXAuaCBiL2lu
Y2x1ZGUvbGludXgvZG1hLWJ1Zi1tYXAuaA0KPiBpbmRleCA2NWU5MjdkOWNlMzMuLjM1MTRhODU5
ZjYyOCAxMDA2NDQNCj4gLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLW1hcC5oDQo+ICsrKyBi
L2luY2x1ZGUvbGludXgvZG1hLWJ1Zi1tYXAuaA0KPiBAQCAtMTMxLDYgKzEzMSwzNSBAQCBzdHJ1
Y3QgZG1hX2J1Zl9tYXAgew0KPiAgIAkJLmlzX2lvbWVtID0gZmFsc2UsIFwNCj4gICAJfQ0KPiAg
IA0KPiArLyoqDQo+ICsgKiBETUFfQlVGX01BUF9JTklUX09GRlNFVCAtIEluaXRpYWxpemVzIHN0
cnVjdCBkbWFfYnVmX21hcCBmcm9tIGFub3RoZXIgZG1hX2J1Zl9tYXANCj4gKyAqIEBtYXBfOglU
aGUgZG1hLWJ1ZiBtYXBwaW5nIHN0cnVjdHVyZSB0byBjb3B5IGZyb20NCj4gKyAqIEBvZmZzZXQ6
CU9mZnNldCB0byBhZGQgdG8gdGhlIG90aGVyIG1hcHBpbmcNCj4gKyAqDQo+ICsgKiBJbml0aWFs
aXplcyBhIG5ldyBkbWFfYnVmX3N0cnVjdCBiYXNlZCBvbiBhbm90aGVyLiBUaGlzIGlzIHRoZSBl
cXVpdmFsZW50IG9mIGRvaW5nOg0KPiArICoNCj4gKyAqIC4uIGNvZGUtYmxvY2s6IGMNCj4gKyAq
DQo+ICsgKglkbWFfYnVmX21hcCBtYXAgPSBvdGhlcl9tYXA7DQo+ICsgKglkbWFfYnVmX21hcF9p
bmNyKCZtYXAsICZvZmZzZXQpOw0KPiArICoNCj4gKyAqIEV4YW1wbGUgdXNhZ2U6DQo+ICsgKg0K
PiArICogLi4gY29kZS1ibG9jazogYw0KPiArICoNCj4gKyAqCXZvaWQgZm9vKHN0cnVjdCBkZXZp
Y2UgKmRldiwgc3RydWN0IGRtYV9idWZfbWFwICpiYXNlX21hcCkNCj4gKyAqCXsNCj4gKyAqCQku
Li4NCj4gKyAqCQlzdHJ1Y3QgZG1hX2J1Zl9tYXAgPSBETUFfQlVGX01BUF9JTklUX09GRlNFVChi
YXNlX21hcCwgRklFTERfT0ZGU0VUKTsNCj4gKyAqCQkuLi4NCj4gKyAqCX0NCj4gKyAqLw0KPiAr
I2RlZmluZSBETUFfQlVGX01BUF9JTklUX09GRlNFVChtYXBfLCBvZmZzZXRfKQkoc3RydWN0IGRt
YV9idWZfbWFwKQlcDQo+ICsJewkJCQkJCQkJXA0KPiArCQkudmFkZHIgPSAobWFwXyktPnZhZGRy
ICsgKG9mZnNldF8pLAkJCVwNCj4gKwkJLmlzX2lvbWVtID0gKG1hcF8pLT5pc19pb21lbSwJCQkJ
XA0KPiArCX0NCj4gKw0KPiAgIC8qKg0KPiAgICAqIGRtYV9idWZfbWFwX3NldF92YWRkciAtIFNl
dHMgYSBkbWEtYnVmIG1hcHBpbmcgc3RydWN0dXJlIHRvIGFuIGFkZHJlc3MgaW4gc3lzdGVtIG1l
bW9yeQ0KPiAgICAqIEBtYXA6CVRoZSBkbWEtYnVmIG1hcHBpbmcgc3RydWN0dXJlDQoNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=

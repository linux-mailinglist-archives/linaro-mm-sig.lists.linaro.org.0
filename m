Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB4A49DD09
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Jan 2022 09:55:24 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E3F77401D7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Jan 2022 08:55:23 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2084.outbound.protection.outlook.com [40.107.236.84])
	by lists.linaro.org (Postfix) with ESMTPS id 89471401D5
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Jan 2022 08:55:15 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YALz3mS87bxHMRxYAUrtpFJLJKV1JYnPv4E4wmsDRTn/xCJvHxUe9vy4fKVnJJoL/WfiK/n8PHT9EpT8EsuIKcchRS75Hb6uwBdF/2vJgzJGsQCK7vjnKjSQf9e3ojozPfQ2llYrxjWzAH6n65hJVJ12xbreCWJO7llgAZ85U+VtwPM6mqa1HQHH7dnq+0tXZTN7OgxfE0MRwAm0YkVih4kuXc40IAkTTo2WHdeGS9CHk9KGEdo0LuQWA5XfX2ASGV62ENN5KFH1a6f6H4we1kZlE67zPEf8MhdQA4XyCu6hiGmnG8Xv5UkgsbzOrX6wu7ywQ1oHl0FOZ5aCkWICHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lcKO6xsaAtEgaAb/kGt7KGKjafucaxfU7sexzWq4h6k=;
 b=nVNrIZwT4S5GFoYnqb50jNSbGzbC+E/fAJh+9RDf6mRRv3TEEyiJLKHjT7UAisBAaR/4RTC+Ct4r6LfQKY5jYJm2nktQoggaPW8mW+wif7+h0Zb3QXc3yWkeWemZzjxYd4oC2n0t7fkKfew5tBFcPKAdYjX+jQ2fpmFugR0TNNG2+jR8Xg+6kEiQJ7xG58TTg9/gds92uL1hdfNtCDNOCnzPZJVEl/cOEOc68Ab/QUvgYmYDhSG2+QRV6tVj1ecIt8PAQL151kWcevDRd1XZ//GvatnZ4TL+Kc2nWZ22YO3cZXgYreS1J1vftBFDN3V9SCRkSLczDCP63T+spB40KA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lcKO6xsaAtEgaAb/kGt7KGKjafucaxfU7sexzWq4h6k=;
 b=rnwbFTP46+Gl7o0vi+7Mskpapsnnu97Gh9WTx8YL3TbPr+8yiXyhkZ0XLAFa9eNW2OQvoXjfA4unLcmdFk9rClgTwg6mInAxDm2yQr5/xv/c3pwH4nCxoECY9ynMnV5VPzYBElrOQ9Du9GFTuanvEiPzPKXFAMsy8fI4qcafQ3I=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by MN2PR12MB4223.namprd12.prod.outlook.com (2603:10b6:208:1d3::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.17; Thu, 27 Jan
 2022 08:55:11 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::d8e7:e6b0:d63c:4a21]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::d8e7:e6b0:d63c:4a21%5]) with mapi id 15.20.4909.019; Thu, 27 Jan 2022
 08:55:11 +0000
Message-ID: <3c6a9126-bf88-0f29-425f-36748271c179@amd.com>
Date: Thu, 27 Jan 2022 09:55:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Lucas De Marchi <lucas.demarchi@intel.com>
References: <20220126203702.1784589-1-lucas.demarchi@intel.com>
 <20220126203702.1784589-3-lucas.demarchi@intel.com>
 <f0dbdcc0-13b5-c484-0bf3-a1f8c3e48954@amd.com>
 <20220127075728.ygwgorhnrwaocdqv@ldmartin-desk2>
 <3066c6a7-fc73-d34d-d209-a3ff6818dfb6@amd.com>
 <20220127081810.6zt6cyib4s7kpa6f@ldmartin-desk2>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20220127081810.6zt6cyib4s7kpa6f@ldmartin-desk2>
X-ClientProxiedBy: AS8P189CA0005.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:31f::18) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3a719322-61cc-43ff-cc7e-08d9e172b9a7
X-MS-TrafficTypeDiagnostic: MN2PR12MB4223:EE_
X-Microsoft-Antispam-PRVS: 
	<MN2PR12MB42232C0EDF3B054F6512DCD383219@MN2PR12MB4223.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ZpbjtRwz1QpQgdUQQ6xM8/TWyC9zvqZxEYONN7F6JVnoPqx15YnJikAr+S6Vm1/ISOgKKtqwIE1DUdsNu/9HAIeyvaFt6RuiY8Cgyr0Ze1drJuSi1y1nOzKbVE8Nr9QyHHmFk5AqfdIxs4z0lb9RsAN90qXFc1JAV28jmpeWFJux79WXmunqzQpcoKQid8uIA+4K3IBwhJXqesTF1vp5ovXmyVC0dvvxWMlBwVVc7YtLplRquu2kp5aQKGED8zLKrzcKBfeUFg6GIuQJI1JSMOfslIK47i90dYhY7q/99tZSTt0hKWTTjQsJ0hUGvXZqOG3NhI0MIkX05Rw/fxKd/IA794vDYhaMWP7iEV1rnGEWJdqtMJOkAmFBvY2jjmQ2q8yWHSsgdUkOICJMXaNoU2Uqcnv4GmdkdsOuMztSv2JUmcU2WI+b3gdZIxR7Tb+g8jgJsj+nF/o3rDliSlSH6Fgbww6x+vAcoIy7Jx73tg5YlgG5xMIzyBiZ6KlvgIuJ2NrcOMn510G9ozQk3fEFcE0xNUlZNZujz+8XFAYR8BsEOUc9O/1ODkT4jIxnSam36VLCYOQbcqr5YRWoqQiRhLJQZl5/dd0eovXuCBXKAmEUtW9ZkwNFoU5Ri2+t15v/uRf53yLNe0lwgdee9nps0d5YusSAX2ut9gdDGDYADV4bJfWuz1f91gM7aPNU24VUOzFgzmjyB4q9dT19LFXPAfKR/ShCTrXJEitChXg05PCQg+onXIL1z4ngV9NVgYXx
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(36756003)(6666004)(2906002)(31686004)(186003)(26005)(6486002)(6916009)(2616005)(316002)(6512007)(6506007)(508600001)(86362001)(66476007)(83380400001)(66946007)(66556008)(4326008)(8936002)(66574015)(8676002)(31696002)(5660300002)(38100700002)(45980500001)(43740500002)(20210929001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?eXRpYXBrZWFoMFJoZW1DMUh3RjZmRVgxazgxR3YrYUlrZDV5eGpzbVN0NW9G?=
 =?utf-8?B?SDBWT3ZXV0x4VmxDaXJETGFTMmt4YW9CTHNVRHM4d3EycVIxL05Xc20xU21Y?=
 =?utf-8?B?Q05XMEtpeDVVdEdHT2dkRzZUckhrajZ5TE5jM1NtOHp5a2RmSnpLalQ5N3FP?=
 =?utf-8?B?aXJwTjRhVjV4Z1FKUVpWWEFhZDg0ZHdiZGI3ZTR6R2RMU2owVnU4S0VtSnY5?=
 =?utf-8?B?TWM2Uk00T01Lc1lBcEJNaWVMb1o1ZTBkZWlTdElEc2Z2dFVNT0gyTE1tTlNh?=
 =?utf-8?B?MmVabDBzQnBLNFJXR2xldHVFcTBiWFI2RUpSem5icnN1eXd1UVkvbnQ1dkZE?=
 =?utf-8?B?UGtiMzM2Wnhobk96QUx4amV2MEhmZmtHVU1oLzZkSEJXMDRkVklqaURaU3p2?=
 =?utf-8?B?cGRLRVB4ZmVPczdMMkFCekZLZFF2NmR5L3hJQlNiMVYvRjM1dklGdktDNUxi?=
 =?utf-8?B?ZERNQ2VQam5ZUnBEYm5iZUJaaXgySDk3TmFRL2ZDMkRONEhDWmx3VG80dElt?=
 =?utf-8?B?NlZUZXp5UC9tbjMwTzFVUCtMalBWdk50UEFQZytOZzFORENRN3dBS3Bpako4?=
 =?utf-8?B?RjNYY0tGUWJHZUc4aWxOaWdDclZaMlZ5RjQvbENIcHdPamI4NHRBeHhwMGVk?=
 =?utf-8?B?VlRuRDRpMnJ5NitZNWFmU2VEblBueFdFUmg0eVpuSHVEWXMrTzRkNEpCKzha?=
 =?utf-8?B?Y01zYUpJbDh2NnQ4WmFFamRqWlhUeUxQam5vU054K0NkUGZReDRxdjNjTUhv?=
 =?utf-8?B?UkxEOGl2VlpMcExVNFJkSDRObmk0RDRzTThaRVF1ZmhhN2Noa1JGM1BQYTdv?=
 =?utf-8?B?RG4xZUNZR0kyRXdySUc2eFNvRWZJbVdwSzVkT3dKdmhkVUxpbGNlQXJlNUJX?=
 =?utf-8?B?V0pLNGVMdW9qeFYzME4yczBlM3Y5WGxMOVRJRjNTMUNleEpNZ0hpR3JORHlq?=
 =?utf-8?B?bU0yenpnUG5IV1ExNzU5UmxEVTlFM3ovTHhaUVVNWnZSdjRDUlFWZmxkT2RK?=
 =?utf-8?B?aTlScERYWEI1dC9oWkV3QkRUbTlEMXpyZjlzTkxLczYrcXRNUFFJSTlFd1lz?=
 =?utf-8?B?dmtQTkZxcktXYzlnaUxvM3FlMWE0c1hhSVNQZDhLYTNyMU5YZHE3RUNLczVi?=
 =?utf-8?B?Y2xUcHZhNVMvOEsvS296MXRQU3pERWhacDRYSm5qa1pWbmE3U1FiYzZwSUto?=
 =?utf-8?B?UGdodmJUM3RnQ3lKbGZpNTlZTmlpTmh1MWJYOTJwQU5UNWNkYjJiRnplMzU4?=
 =?utf-8?B?Z1Z4UUI4M2QrVk8wTkFkTDlvRVRzUVgxYjZuOTB0ajhaRzhZd2ozUTRITVZm?=
 =?utf-8?B?U0lhTE1NM0hvUjUzK1YrTm5OaVFMZkRXWTgwOUlqNFBHekxkWlF2WmpLUEtC?=
 =?utf-8?B?cldhZUdieVNIcW03QzdIenQ3c3grZjJWeUo5Qy9NMHRRSXMwVFNVdWhqMmR2?=
 =?utf-8?B?N0FGSGowK1lYYmRtelR1RzFrVVJhb3pEeWRUQlNLc2ZsS29BR2xEbVlPNVFi?=
 =?utf-8?B?a1JURnhOU1IyRnBlWVhkM2d5bG1iWUZHeE90Tm1PRENQR0pDdzllZVhwQXda?=
 =?utf-8?B?OFFoaUpFSEtpRmFBYkloMlJ6NEUwZHNtSjViZHVIY05WZGYrU1pZWXJlUVVp?=
 =?utf-8?B?SUFGOGQwS1VMenFqMWw2RWZ2R3pIajFZZHNVektNakZJSEVnaXY4bzFORVg2?=
 =?utf-8?B?WWJOZFJDK3BVMGFYRmxMR2hTYk9RdnpRdmpSejJoZFdHZkgwVllqMDYrWEtD?=
 =?utf-8?B?eG9QOXFuYk5IV1pGMGc4S3FrQXd4alhpVTYvWTNubGtLNTRvUnA3TFNiTm5V?=
 =?utf-8?B?cUtuZmkyZExaOUQ4eWwxRS9pbFluVlpqcWRmOXlOTnNrUWR6RUgrMHJRMXBI?=
 =?utf-8?B?d0txeDFxTHVFenZFek9wMHlXNzB6eUk2UmRGcHo5MWV4R29pVFY4UW1YZ1VG?=
 =?utf-8?B?ZXI2NkNtcnA4S25xcFNMakpIRFV6OXk0Q3o3NDZBK0NCZkZ2Vys1KzEwbGR6?=
 =?utf-8?B?YWliT0FoRTFCYnZ1L1UrdlA3NTFnRlI4ZldEWUk5ZDA0alJlVXRSUDVYem1N?=
 =?utf-8?B?d3lPVytYcEMvSzVyaG1EaVdBS1hyVVlubEtOclpRMGthWFY2djJ1YTNyVW1y?=
 =?utf-8?Q?4Hno=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a719322-61cc-43ff-cc7e-08d9e172b9a7
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2022 08:55:11.0220
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P7omnw3Ub/ny4RAV+XkynlCx2dhNScNEwiO0D73JJMgEJuv7gGDokZ8kNgETZhkH
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4223
Message-ID-Hash: XNOGBTFZUUPFPZUHYI2AXFL6JCTBCJQW
X-Message-ID-Hash: XNOGBTFZUUPFPZUHYI2AXFL6JCTBCJQW
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [Intel-gfx] [PATCH 02/19] dma-buf-map: Add helper to initialize second map
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XNOGBTFZUUPFPZUHYI2AXFL6JCTBCJQW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjcuMDEuMjIgdW0gMDk6MTggc2NocmllYiBMdWNhcyBEZSBNYXJjaGk6DQo+IE9uIFRodSwg
SmFuIDI3LCAyMDIyIGF0IDA5OjAyOjU0QU0gKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6
DQo+PiBBbSAyNy4wMS4yMiB1bSAwODo1NyBzY2hyaWViIEx1Y2FzIERlIE1hcmNoaToNCj4+PiBP
biBUaHUsIEphbiAyNywgMjAyMiBhdCAwODoyNzoxMUFNICswMTAwLCBDaHJpc3RpYW4gS8O2bmln
IHdyb3RlOg0KPj4+PiBBbSAyNi4wMS4yMiB1bSAyMTozNiBzY2hyaWViIEx1Y2FzIERlIE1hcmNo
aToNCj4+Pj4+IFtTTklQXQ0KPj4+IGh1bW4uLi4gbm90IHN1cmUgaWYgSSB3YXPCoCBjbGVhci4g
VGhlcmUgaXMgbm8gaW1wb3J0ZXIgYW5kIGV4cG9ydGVyIA0KPj4+IGhlcmUuDQo+Pg0KPj4gWWVh
aCwgYW5kIGV4YWN0bHkgdGhhdCdzIHdoYXQgSSdtIHBvaW50aW5nIG91dCBhcyBwcm9ibGVtIGhl
cmUuDQo+Pg0KPj4gWW91IGFyZSB1c2luZyB0aGUgaW50ZXIgZHJpdmVyIGZyYW1ld29yayBmb3Ig
c29tZXRoaW5nIGludGVybmFsIHRvIA0KPj4gdGhlIGRyaXZlci4gVGhhdCBpcyBhbiBhYnNvbHV0
ZWx5IGNsZWFyIE5BSyENCj4+DQo+PiBXZSBjb3VsZCBkaXNjdXNzIHRoYXQsIGJ1dCB5b3UgZ3V5
cyBhcmUganVzdCBzZW5kaW5nIGFyb3VuZCBwYXRjaGVzIA0KPj4gdG8gZG8gdGhpcyB3aXRob3V0
IGFueSBjb25zZW5zdXMgdGhhdCB0aGlzIGlzIGEgZ29vZCBpZGVhLg0KPg0KPiBzL3lvdSBndXlz
L3lvdS8gaWYgeW91IGhhdmUgdG8gYmxhbWUgYW55b25lIC0gSSdtIHRoZSBvbmx5IHMtby1iIGlu
DQo+IHRoZXNlIHBhdGNoZXMuIEknbSBzZW5kaW5nIHRoZXNlIHRvIF9idWlsZCBjb25zZW5zdXNf
IG9uIHdoYXQgbWF5IGJlIGEgDQo+IGdvb2QNCj4gdXNlIGZvciBpdCBzaG93aW5nIGEgcmVhbCBw
cm9ibGVtIGl0J3MgaGVscGluZyB0byBmaXguDQoNCldlbGwgYSBjb3ZlciBsZXR0ZXIgd291bGQg
aGF2ZSBiZWVuIGhlbHBmdWwsIG15IGltcHJlc3Npb24gd2FzIHRoYXQgeW91IA0KaGF2ZSBhIGxh
cmdlciBzZXQgYW5kIGp1c3Qgd2FudCB0byB1cHN0cmVhbSBzb21lIG1pbm9yIERNQS1idWYgY2hh
bmdlcyANCm5lY2Vzc2FyeSBmb3IgaXQuDQoNCk5vdyBJIGtub3cgd2h5IHBlb3BsZSBhcmUgYnVn
Z2luZyBtZSBhbGwgdGhlIHRpbWUgdG8gYWRkIGNvdmVyIGxldHRlcnMgDQp0byBhZGQgbW9yZSBj
b250ZXh0IHRvIG15IHNldHMuDQoNCj4NCj4gRnJvbSBpdHMgZG9jdW1lbnRhdGlvbjoNCj4NCj4g
wqAqIFRoZSB0eXBlIDpjOnR5cGU6YHN0cnVjdCBkbWFfYnVmX21hcCA8ZG1hX2J1Zl9tYXA+YCBh
bmQgaXRzIGhlbHBlcnMgDQo+IGFyZQ0KPiDCoCogYWN0dWFsbHkgaW5kZXBlbmRlbnQgZnJvbSB0
aGUgZG1hLWJ1ZiBpbmZyYXN0cnVjdHVyZS4gV2hlbiBzaGFyaW5nIA0KPiBidWZmZXJzDQo+IMKg
KiBhbW9uZyBkZXZpY2VzLCBkcml2ZXJzIGhhdmUgdG8ga25vdyB0aGUgbG9jYXRpb24gb2YgdGhl
IG1lbW9yeSB0byANCj4gYWNjZXNzDQo+IMKgKiB0aGUgYnVmZmVycyBpbiBhIHNhZmUgd2F5LiA6
Yzp0eXBlOmBzdHJ1Y3QgZG1hX2J1Zl9tYXAgPGRtYV9idWZfbWFwPmANCj4gwqAqIHNvbHZlcyB0
aGlzIHByb2JsZW0gZm9yIGRtYS1idWYgYW5kIGl0cyB1c2Vycy4gSWYgb3RoZXIgZHJpdmVycyBv
cg0KPiDCoCogc3ViLXN5c3RlbXMgcmVxdWlyZSBzaW1pbGFyIGZ1bmN0aW9uYWxpdHksIHRoZSB0
eXBlIGNvdWxkIGJlIA0KPiBnZW5lcmFsaXplZA0KPiDCoCogYW5kIG1vdmVkIHRvIGEgbW9yZSBw
cm9taW5lbnQgaGVhZGVyIGZpbGUuDQo+DQo+IGlmIHRoZXJlIGlzIG5vIGNvbnNlbnN1cyBhbmQg
YSBiZXR0ZXIgYWx0ZXJuYXRpdmUsIEknbSBwZXJmZWN0bHkgZmluZSBpbg0KPiB0aHJvd2luZyBp
dCBvdXQgYW5kIHVzaW5nIHRoZSBiZXR0ZXIgYXBwcm9hY2guDQoNCldoZW4gVGhvbWFzIFppbW1l
cm1hbm4gdXBzdHJlYW1lZCB0aGUgZG1hX2J1Zl9tYXAgd29yayB3ZSBoYWQgYSANCmRpc2N1c3Np
b24gaWYgdGhhdCBzaG91bGRuJ3QgYmUgaW5kZXBlbmRlbnQgb2YgdGhlIERNQS1idWYgZnJhbWV3
b3JrLg0KDQpUaGUgY29uc2Vuc3VzIHdhcyB0aGF0IGFzIHNvb24gYXMgd2UgaGF2ZSBtb3JlIHdp
ZGVseSB1c2UgZm9yIGl0IHRoaXMgDQpzaG91bGQgYmUgbWFkZSBpbmRlcGVuZGVudC4gU28gYmFz
aWNhbGx5IHRoYXQgaXMgd2hhdCdzIGhhcHBlbmluZyBub3cuDQoNCkkgc3VnZ2VzdCB0aGUgZm9s
bG93aW5nIGFwcHJvYWNoOg0KMS4gRmluZCBhIGZ1bmt5IG5hbWUgZm9yIHRoaXMsIHNvbWV0aGlu
ZyBsaWtlIGlvbWVtXywga2lvbWFwXyBvciBzaW1pbGFyLg0KMi4gU2VwYXJhdGUgdGhpcyBmcm9t
IGFsbCB5b3UgZHJpdmVyIGRlcGVuZGVudCB3b3JrIGFuZCBtb3ZlIHRoZSANCmRtYV9idWZfbWFw
IHN0cnVjdHVyZSBvdXQgb2YgRE1BLWJ1ZiBpbnRvIHRoaXMgbmV3IHdoYXRldmVyXyBwcmVmaXgu
DQozLiBQaW5nIFRob21hcywgTEtNTCwgbWUgYW5kIHByb2JhYmx5IGEgY291cGxlIG9mIG90aGVy
IGNvcmUgcGVvcGxlIGlmIA0KdGhpcyBpcyB0aGUgcmlnaHQgaWRlYSBvciBub3QuDQo0LiBXb3Jr
IG9uIGRyb3BwaW5nIHRoZSBtYXAgcGFyYW1ldGVyIGZyb20gZG1hX2J1Zl92dW5tYXAoKS4gVGhp
cyBpcyANCmJhc2ljYWxseSB3aHkgd2UgY2FuJ3QgbW9kaWZ5IHRoZSBwb2ludGVycyByZXR1cm5l
ZCBmcm9tIGRtYV9idWZfdm1hcCgpIA0KYW5kIGhhcyBhbHJlYWR5IGNhdXNlIGEgZmV3IHByb2Js
ZW1zIHdpdGggZG1hX2J1Zl9tYXBfaW5jcigpLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+
DQo+IEx1Y2FzIERlIE1hcmNoaQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

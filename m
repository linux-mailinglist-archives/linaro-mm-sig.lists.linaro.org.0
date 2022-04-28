Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D30512DA9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Apr 2022 10:03:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9E6BA47FCE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Apr 2022 08:03:17 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2054.outbound.protection.outlook.com [40.107.237.54])
	by lists.linaro.org (Postfix) with ESMTPS id 7B2673EBF8
	for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Apr 2022 08:03:12 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mZLvYkcAdncLk+30Ha3gyCQnnMlWuNPYzlOOUN1kNnkxquVFPAEVvlcT9ARgMQjiRDd7aFdBTQ/hGSoBnuS/MCtPszoV4BhGwYX6RwCbPeCMk27SG4qynGhqr/cvoBwMt6/U8nB7/s69mnXvGhA7s4w0T4wpDuh+SHDZ0O9VcUytMvmQOIgu+XBWbV3RVIQxgSsFavB+kwGoGX4xezDx+o0PDq37wBoknQ1cQaeKa7t/klT69VbM0zPNo/baT1Nx1Q34GgSeoy44V3ep0WF47gZNWuO+50zx+Y12K++20PMB5A9Kr9/FLKBODkhEgtJuF1/rCiBDu6IScip56HIBRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kbMazzCskmK5MH/yt3fK0SXhkb+3wZdoZzhPbox96Js=;
 b=iPCqLJ9+1p6XcbAGC/AwcoQ/L+1Ho0vu8xrTTbVgFPeaPJPFATarFNa2CKCpvxM7pFF1pbQGQXGvJ+i7Xv+gW0C8vd36mSEOTsI+dhpv4mdAfNdORqZDkyTz1+meE8xUxvWcJ2BFVRsT0N957uWfpbjMd8cmD7fpibRziLPnM9/E9xXK9qjHUOgxCVFjFJiAstyvOKNCdQC3JRwXSe2VYzoMey8kzqXZNc1JyI/aw6HRASnYP5s+Ye+1Qe96ssEQ7Sn8iXq1CofTtQEDJUrdeyNy9HgX77y5MhTTbKEaPhXMr6S1xfdMJzVOVLLm7io1Qave5kDUvGWhkc3AVTTW/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kbMazzCskmK5MH/yt3fK0SXhkb+3wZdoZzhPbox96Js=;
 b=AUq8XaE+Iu9hSMadqTKQ0cgEdQ3qEHL5NrmuQT+ZJd+pJeY4Fn9oLp/cYTLFz2nwuVHhBb/2Uw/hpsA3CgA7Mi7bt5oTdm5w53kGY9fLpcMOnuj1Ih7U/C8AElN6VAfjetL8c4aZ/Og2meuMg8VrMgNUmWl0M1fgcNtJKgmVYHM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by IA1PR12MB6306.namprd12.prod.outlook.com (2603:10b6:208:3e6::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.20; Thu, 28 Apr
 2022 08:03:11 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::a5fb:7137:5e64:cf8]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::a5fb:7137:5e64:cf8%5]) with mapi id 15.20.5186.021; Thu, 28 Apr 2022
 08:03:11 +0000
Message-ID: <e4e5bd41-df5b-bb65-b92f-47122d1e7738@amd.com>
Date: Thu, 28 Apr 2022 10:03:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Yuanzheng Song <songyuanzheng@huawei.com>, sumit.semwal@linaro.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
References: <20220428063924.3570409-1-songyuanzheng@huawei.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20220428063924.3570409-1-songyuanzheng@huawei.com>
X-ClientProxiedBy: AS9P250CA0002.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:20b:532::6) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 05c5c62b-a968-4919-a004-08da28ed89cb
X-MS-TrafficTypeDiagnostic: IA1PR12MB6306:EE_
X-Microsoft-Antispam-PRVS: 
	<IA1PR12MB6306C04676490AB25B98ACC083FD9@IA1PR12MB6306.namprd12.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	YyThP3670wEI4OsgFX/Lr8q76+IukI/SjlDAFHOTUwQgNSWmdvwLRAufVOA9/gxC9hmjl3LWiUUB6qsjSg/SmxsOI4JNagBHw/s78q6Smpe2AL2DwAopvvxVn0rEa2Ozcztd8uX1XikSoEhGunUmxJO/SemNQVwRm1tRYt0f/0rClmAuTGXGBMaHY4kL3Zvhp4+2F3we4YdZs2OKzlrgALuJSMvB4FU1RUg/PYEgHqpdRNwMTQnq4yn0weS3tt9TuL0lz9Wf4cISDWqQ+VHdXGZHFaMFpwNUQLFfuK5MPAVaQBtMlFBjpN4X10YZADtZymKe5OhnNLKCMZ6QW+ok9bTGKZQi5yvnFsPZZeJjo/jn0HApgj4+6d0fUKqgan30Ny9L1P4japnEywXCSgXrKwutKgtu3EBFe7FYArBjXomB1HLe83Ouv4x5bPdLRkr1B03oQI2U3uWjCtxIjmdOL/MEsts9PKpNUygZdoHLPuePnQRCleoKhAE0C6xGuqzN1DmZSEwKDHhMAEfAmw4AH3n6gexDvd58eepukknv3Uf/EflGIUv9B1amSMQcRHa96RUoj3Lid3TEwAuoe6qLbcYDF+B7QPai86rU8HHuLcW/fTzapmFvk0u4Fvogvmwd73paVfe5EWKkOmk6ZeT50SaBcBie2TvM8dw9o4Euba3jUtBeG+g8mCjL/Eu0QZxzlQW08OtsZDD+qJIL3AiTF5PPih3PakeuePmj6P6XC67iL0XNgwigg9VqCMn3PqvG
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(508600001)(6486002)(316002)(4326008)(66574015)(66556008)(66476007)(8676002)(86362001)(6666004)(31696002)(66946007)(38100700002)(6506007)(5660300002)(2906002)(36756003)(83380400001)(6512007)(26005)(31686004)(186003)(2616005)(8936002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?R1h6SXo4NjVpT1MvVjFFZFBFRUlSajhUclRidHR4czBGZ2NIdzRkckF5SlJk?=
 =?utf-8?B?dTdhSmZ5VFFMM2tFUjZyamNVQUdReE1UaEo4dURtdzl3VXVkOTl3ZTlKVnJ6?=
 =?utf-8?B?TEZRRTRla282blJRb1hacGtmN3JMemVOUE9Ca285ak4xb0FBYXF4UkpvRzBq?=
 =?utf-8?B?L1BqYmk0eE5KVTh4ellnc2E4WUl1NVZrWGNuUXprVGRqT1RmbjNrLzk2MmdP?=
 =?utf-8?B?WFdvNGwreWRPeHdPUTJaVlY5akVxOGpEMzZ4QjRldlNKcXd2SG5MdHRJT3N0?=
 =?utf-8?B?VVczbzcrdThSM1AzLzIxVkZNZXRzbDBNMEhGV0VqYzJqNXJQbStIZGtTc3FV?=
 =?utf-8?B?emxiTmNld1JhaURJUWwyYXRFbFhCNU1TRDI2NXlmdlJ4RFFSZ01LRGgybitT?=
 =?utf-8?B?RkNTaGQvRW9EM29ObUVlQzUzWXNkMmRaTnpaQzZqWEQraEJKc1RVM1FaVGhG?=
 =?utf-8?B?SG1pdkJqeVNsVDNyQzMwU082dTdLYURlQmc0NitOVVRBWkJuL2xlYlMzSGFi?=
 =?utf-8?B?dXZsQlNIN1o1QnpGYjVhc3VVVXgwb3RaOEFqMEJjRWIxYitXYmdENWFPdzlH?=
 =?utf-8?B?RkFsUlNTcG14eVNib2lOL2U4Z1ZoZm9HWDlFLzZLcjdiL251S2I4YzUrZ25v?=
 =?utf-8?B?TkZkeHpLSlhES3JkQWhveWdPS2RIU2t3cHdtOW5aN3B1dklacms4cjBGZUNG?=
 =?utf-8?B?bHZCa1dkNFJwanVldGo1YkkwRlMxSTg2UWVFZG1IYjFBbkh2L0kyQ1pkdWtK?=
 =?utf-8?B?Ujh3M0d1SDhUL0cvODk5Ly81ZmF2YTlNaFNnbDZrUEx2R1YxcnUxOGFUY01o?=
 =?utf-8?B?WkE2cEIxTkczMXdQbmxqU3JJSWFZQ1AzRXJLZHpxak1Rdkc5c0EvSlR3VlRw?=
 =?utf-8?B?SWF2WC8zQldUSlJ4dXQxS3pPRmRlY2l3MDg3MCtZNmthczVEbUlwTG5xQWhv?=
 =?utf-8?B?NE9lMWhDek4wSnduQmhRT1dYRTYvZjJOQWRvTGtTZldoTlBVR1Z1bFFKUWVQ?=
 =?utf-8?B?Zk5GVy9yN3lXeFlKSitXWWxKNHhKbVZDeUtkRWtoUUNyZkswZ3d4dFZkT3pQ?=
 =?utf-8?B?dFhBUDZKcldxaUdGMm1nRk02RjNRMzNHeGw5cmVSYTNiS1lzODI2WUsxK3NW?=
 =?utf-8?B?OXFCa1J3L1E1aTYwMUdrRmIwYkxrRjRPV2tybmxXSCtIaSszWGRtdW5QQ2J3?=
 =?utf-8?B?L2Yrbm1RRjBpOFcwaTExaDZ5TmVZYlFhTGVucU10aVhmd0tJbDFNcUMzcG90?=
 =?utf-8?B?VlJTTDNiUHFBYVd3MDhLcGZFYmxpYk1nWjNmNHJhTG9vcUVDYzZ4QUg2L1Zt?=
 =?utf-8?B?SGpTL2pVZm9QZk4xcUdJVjZCR1F0ckIybEpXcjN3ZEJudXcxOU1lOVMvbDBX?=
 =?utf-8?B?dGtrMnBPMmdxYXAwVnlJWXYvRURJU1k4Wlg5dG1vUWQwT1JjZGdoQzJ0K1VC?=
 =?utf-8?B?WXhuSVN6andMY0xKbUNSOHdSaVEyR1R2T1ZySmFBcDB4Sy9Nd3hTL1VoZFNl?=
 =?utf-8?B?NkRuZ2p5cEhqVS9oOU5LczlzV3VTNVFVcCtOVUUxQ0RWcVV5eENFem5rMGcr?=
 =?utf-8?B?S1VQYnFKc1ZmaG50SUxaU3RDQ2lodE00NE5VaHd4QnZVcklObUxKTEZsZk5p?=
 =?utf-8?B?bnhyeWdCc0VlSDluUWwzVWZVcVlMbGVhL2s1MWJWbEI2Tk9jSXEwRUw2UzAy?=
 =?utf-8?B?cVNFSmlodkNVUjE4aGhnRDFXMWJiajZkYVBpVWJqczI5dVFxcFkvSlhOL1lX?=
 =?utf-8?B?b1Q3WHJ6S0xoRWNuMEtYcmYwTTE4WTRtZU1yaVMxNHFaK3JlR3A2MVl2Q2VF?=
 =?utf-8?B?NU9UT3ZHaWJteFUwTFdoK3lOdFhOaExFZkRBUWxBbERJQVVaeGNpQzBwb2tU?=
 =?utf-8?B?WTNLbUw5VTJ2bWJNdVVLRVJQK3hEMDUxcWhqRzRzbWZaTFRGaVdBRy9wSVpr?=
 =?utf-8?B?bEFwUUNldlhJS2J6bDNSME1BSmh2eDJMRTJNWStyd2wxNWJQMitUekFLQmcv?=
 =?utf-8?B?dzBQeVBEV2NZUzEwT3RTR1hkdVA1THp1ekd5SEx2YTV0eWNlekZlQ0x3bWlt?=
 =?utf-8?B?Z25tcEVPV3FHa1p6L2tXMDdkM3Q5UGIyZkhvOVBzTHB4cXdXUlRBZE5tTEc3?=
 =?utf-8?B?UHJUTTJycEY2ditoYmo5VkNLQVlza2czRlgzdmYzY2o1dDQyVnlkZ2J1Q1Ey?=
 =?utf-8?B?MUF1UDBpNitDZm0zYUpUMStYSXluTVJhTHdZWFYvenNLZkVsY2hxZ1RIakZp?=
 =?utf-8?B?NCtQcEcvN1VUZXBZb3BGYzZhR3NHcU9rN3BvdXE3M0taRjFPVGRkUTNVMDgy?=
 =?utf-8?B?NmZ5TWVBUnJySmhqbjViMldRSWMzTjFrNXdIaFEzYjNyWkFXc1Y5UT09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05c5c62b-a968-4919-a004-08da28ed89cb
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2022 08:03:11.2561
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9QW8ZBK+vaC+B0x9hepI5Qj0+/Ne1Px6B9tY6RAYSZB8iM6gpktyFU4qTcKbDNZE
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB6306
Message-ID-Hash: DQAROOBRFS654GY4TGB2USDOTRIG6XQQ
X-Message-ID-Hash: DQAROOBRFS654GY4TGB2USDOTRIG6XQQ
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: add the name field to the table header
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DQAROOBRFS654GY4TGB2USDOTRIG6XQQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjguMDQuMjIgdW0gMDg6Mzkgc2NocmllYiBZdWFuemhlbmcgU29uZzoNCj4gJ2NhdCAvc3lz
L2tlcm5lbC9kZWJ1Zy9kbWFfYnVmL2J1ZmluZm8nIHdpbGwgcHJpbnQgdGhlIERtYS1idWYNCj4g
T2JqZWN0cycgaW5mb3JtYXRpb24gd2hlbiB0aGUgQ09ORklHX0RFQlVHX0ZTPXkuDQo+IEhvd2V2
ZXIsIHRoZSBwcmludGVkIHRhYmxlIGhlYWRlciBpbmZvcm1hdGlvbiBkb2VzIG5vdCBjb250YWlu
DQo+IHRoZSBuYW1lIGZpZWxkLiBTbyB3ZSBuZWVkIHRvIGFkZCB0aGUgbmFtZSBmaWVsZCB0byB0
aGUgdGFibGUNCj4gaGVhZGVyIGFuZCB1c2UgdGhlICc8bm9uZT4nIHRvIHJlcGxhY2UgdGhlIGVt
cHR5IGJ1Zl9vYmotPm5hbWUuDQo+DQo+IFNpZ25lZC1vZmYtYnk6IFl1YW56aGVuZyBTb25nIDxz
b25neXVhbnpoZW5nQGh1YXdlaS5jb20+DQoNClJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQoNClN1bWl0IGRvIHlvdSB3YW50IHRvIHB1c2gg
dGhpcyBvciBzaG91bGQgSSBnbyBhaGVhZD8NCg0KPiAtLS0NCj4gICBkcml2ZXJzL2RtYS1idWYv
ZG1hLWJ1Zi5jIHwgNCArKy0tDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkNCj4NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVm
LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+IGluZGV4IDc5Nzk1ODU3YmUzZS4uYTJm
OWExODE1ZTM4IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+ICsr
KyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4gQEAgLTEzNTEsNyArMTM1MSw3IEBAIHN0
YXRpYyBpbnQgZG1hX2J1Zl9kZWJ1Z19zaG93KHN0cnVjdCBzZXFfZmlsZSAqcywgdm9pZCAqdW51
c2VkKQ0KPiAgIAkJcmV0dXJuIHJldDsNCj4gICANCj4gICAJc2VxX3B1dHMocywgIlxuRG1hLWJ1
ZiBPYmplY3RzOlxuIik7DQo+IC0Jc2VxX3ByaW50ZihzLCAiJS04c1x0JS04c1x0JS04c1x0JS04
c1x0ZXhwX25hbWVcdCUtOHNcbiIsDQo+ICsJc2VxX3ByaW50ZihzLCAiJS04c1x0JS04c1x0JS04
c1x0JS04c1x0ZXhwX25hbWVcdCUtOHNcdG5hbWVcbiIsDQo+ICAgCQkgICAic2l6ZSIsICJmbGFn
cyIsICJtb2RlIiwgImNvdW50IiwgImlubyIpOw0KPiAgIA0KPiAgIAlsaXN0X2Zvcl9lYWNoX2Vu
dHJ5KGJ1Zl9vYmosICZkYl9saXN0LmhlYWQsIGxpc3Rfbm9kZSkgew0KPiBAQCAtMTM2OCw3ICsx
MzY4LDcgQEAgc3RhdGljIGludCBkbWFfYnVmX2RlYnVnX3Nob3coc3RydWN0IHNlcV9maWxlICpz
LCB2b2lkICp1bnVzZWQpDQo+ICAgCQkJCWZpbGVfY291bnQoYnVmX29iai0+ZmlsZSksDQo+ICAg
CQkJCWJ1Zl9vYmotPmV4cF9uYW1lLA0KPiAgIAkJCQlmaWxlX2lub2RlKGJ1Zl9vYmotPmZpbGUp
LT5pX2lubywNCj4gLQkJCQlidWZfb2JqLT5uYW1lID86ICIiKTsNCj4gKwkJCQlidWZfb2JqLT5u
YW1lID86ICI8bm9uZT4iKTsNCj4gICAJCXNwaW5fdW5sb2NrKCZidWZfb2JqLT5uYW1lX2xvY2sp
Ow0KPiAgIA0KPiAgIAkJZG1hX3Jlc3ZfZGVzY3JpYmUoYnVmX29iai0+cmVzdiwgcyk7DQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=

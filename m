Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E49522CC2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 May 2022 09:04:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2B13C480C6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 May 2022 07:04:02 +0000 (UTC)
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (mail-bn1nam07on2088.outbound.protection.outlook.com [40.107.212.88])
	by lists.linaro.org (Postfix) with ESMTPS id 227863EB80
	for <linaro-mm-sig@lists.linaro.org>; Wed, 11 May 2022 07:03:57 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GQ8CvQReG6S7IfuGhVNTsqkwrOG12bfQUmJFOnGgH9usDfpUoTpW5qeVawHtpWWPctz2p+QKMcifpntfSwCjmnbflOdNLrkXnxFcQ+n0aSqab6l6NIO8JMXgS2s2HeIYmBUQBXzTRF6yXwbzifEvviSwUgqwR26dXEoy/+Bt3W2TRC+F2udu2br9w6w8kKXHrbqwPOMP7xGgEfCmErR9Y3//8uq3AoK4LvzSpcjEZMuxEd0X17sv6hSb7anoKahZpuDi0gIStWMCO01oJg631HclOI8Qc62r5Nwi3CeCyNtFqkW/T1jOR5hQf29hZBYJvMZA8gPPBihFFe4P8nH5zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cFvxJO9wdJoCvkCdM4G9vLuXJ3UVbYwzhTOv6DkZKOY=;
 b=Fw0+qiUoAAsAIeIa7JA6pbkUdrWjMyKtw1AL/ECA9FqZB+5X1DLlx56N+uXB3tTGDS0JmbpHXxVr8S743Y5rKGSfxO8QFMtXYcJnTHHAbWMWVciSDBWZgBTbzBvkTT6ECW/Dnp7qnZ4dnIyEWOmuatlSr4kpSP9I2x4hdsBXpv+zCjnkqoGH+ThSl1IfTAcdImIUUJvqJp63NFwR8Z9V0MKOEzkKSV7FKJGks58y57CcUFB4LtFB4yTh3TUKddLG3hANOMW09DZp64gThxrKBjWFwP2VjnED/WPgx/hqeGXL3Mrck2ty9nML/rbd7fH7vzGlbvlI3het7GrI+Z/D1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cFvxJO9wdJoCvkCdM4G9vLuXJ3UVbYwzhTOv6DkZKOY=;
 b=P/mGZMpM0R92ScwU9nSLwJG0cFqz7GLv5I+Y/+rUwHxSuZWf7nlWmdQYVQi23TzfJYmuSeWhzdArH0WB7s474C2G4tUVgXq/LS5L3XcATC9FApJZAaB4ji67WX08WtUC3Id3kN3wr6gCeWCSGqKFcQQ3XMJ4VZDYb9zX+kNyGyo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by IA1PR12MB6306.namprd12.prod.outlook.com (2603:10b6:208:3e6::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5227.22; Wed, 11 May
 2022 07:03:55 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::fdba:2c6c:b9ab:38f]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::fdba:2c6c:b9ab:38f%4]) with mapi id 15.20.5227.023; Wed, 11 May 2022
 07:03:55 +0000
Message-ID: <93103bb7-8d67-a9ae-31c8-d53cb651a027@amd.com>
Date: Wed, 11 May 2022 09:03:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Charan Teja Kalla <quic_charante@quicinc.com>,
 gregkh@linuxfoundation.org, sumit.semwal@linaro.org, hridya@google.com,
 daniel.vetter@ffwll.ch, tjmercier@google.com
References: <1652191562-18700-1-git-send-email-quic_charante@quicinc.com>
 <4ac55be2-7d55-2c3b-0d5e-f61c02c62792@amd.com>
 <6dc59fa7-5885-9ed1-54c3-f2d112786312@quicinc.com>
 <2a0312d3-d576-b5be-c823-938b38096523@amd.com>
 <4d644a01-5259-a063-b5b2-ea95d5e7dd88@quicinc.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <4d644a01-5259-a063-b5b2-ea95d5e7dd88@quicinc.com>
X-ClientProxiedBy: AM6PR01CA0067.eurprd01.prod.exchangelabs.com
 (2603:10a6:20b:e0::44) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 54bd7899-46e2-4176-bfc2-08da331c6925
X-MS-TrafficTypeDiagnostic: IA1PR12MB6306:EE_
X-Microsoft-Antispam-PRVS: 
	<IA1PR12MB63062FE38FB228428D51C39E83C89@IA1PR12MB6306.namprd12.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	aGIErnFc9embB9mtmVg6K9B3Leylr5p881nC3NxCUaWlUDfwwdbVEt1K+sZt0xFg16JXFJoNAOqS5rCKhBurb70T9HISnFa0Soa9ls98us7ojvWghbEWbfT2gJymau+TyUDzCdZnObhE+pEFUe4Yn8lNXIpg99IyzUy2Ooj54T4trZEDn0jAvcWDewV851BfFW7GceCfFIgljfvsB7Pofmdl0ti8C/F1qCbupCkJry5/+dNyV09RUDZlLsGa4eQssDuD4z/5McSXeiaHv/UD1Mm8AdfwSfHGRxGPd6ksGsvXkkiG7SEZvPRBMMKBU4yKbZzFt251zoEALNOJztYS588iE2FqRN6zjt4Umgtr/LW1RdIuE+v2ABbJBu+C5G+h7t1sxrPUVD2xN8OEgq4BAfYmMuHtHbGF4GNO98V3TkpIvAxSDZlEBjVz+ZAWEPaZgq0YntQfAY+rXaokVIU+WdG90cRxj/Tx0OoyPH1EVrk72dRtntTtPqNB2rIFh1nnxO1BBhIJ/8zwhrsKFaojqVP3IHTgtXW0gAHci5iEzomkA0ssSSI3fgnrCQIlQgwz6GvrqXP4unagW1sB5l7dBPoW0pZIUXoUY35WEXFn0XHCCVOu2I5yGNFti4rqqkittbC1fGDmIB3g2CyU5j+GETZLLnpdmX/keIZcoGFM+0nytKTO1NkKC6R2pJapM1KKPJ3rcVLSBkW6mjeGAKZSwLZE70mi2x9kJq2NFF5eI4p6F/Wa7KAhXWJefjyDgJtLncOdkUO2l/usiv2T9o5a3rFKBOAQTY6nmw7pV5hBV/+ujvvVIK+l16jZv8pPga51hR11POqQxY7KFvaMjaYu4l95IZn5/BykKaQi8oDMgW8=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(8676002)(4326008)(6666004)(31696002)(86362001)(66476007)(508600001)(66556008)(66946007)(45080400002)(6486002)(966005)(316002)(66574015)(186003)(6506007)(53546011)(2616005)(26005)(6512007)(31686004)(5660300002)(36756003)(2906002)(7416002)(8936002)(38100700002)(83380400001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?S2s4bUM1NlVLR2RSTXBzZDNJM0JCY3ZSWFErK2hCRlBrU25xdmwrRGF1M1lJ?=
 =?utf-8?B?aUl5YWVKZkZoanR1UlVENGRpSEY2ejQ5WTlGV2dsWjFXN0NWVVVhZkJ5UVBt?=
 =?utf-8?B?Slk1a1pMc0VXRDI1bjc4dmlkemg5RnU2QjNDV1NhN2pKcU9DaHF1bWdTOElQ?=
 =?utf-8?B?bzRTUXBQVU5qNTNYODRaUTdnVjRJTi9PWXBzMVBzcFJObGlKc1NUejhFamJp?=
 =?utf-8?B?VGs1eTRrSWVmOFlxRjZpR2E0TWVLSVlnb1FYRTFZUjFoclZ6V0lqaDNYZ1JP?=
 =?utf-8?B?aWt6WnJWZW1QR25VMEpwRmt0Z0dIc0NaOS8vMWpDRmdUTjR3SDlEam5oY09s?=
 =?utf-8?B?eEVMWm9hbHBGdHNuczVmTThCQnRMYnlUWWIxVy9zMGJCZ2cza08xZUhUdWts?=
 =?utf-8?B?NGcrVzJxaGo0RGRuRkh4WmV3NzRJZWw4OFJjREhQUGZXZHJteFRlc1ZVV3RV?=
 =?utf-8?B?L2NJMENIUFdmS1MrOTF5RmlRM2lNa2d2ZnZHY3lIeHhnbWQydGppZjkxZGxW?=
 =?utf-8?B?cHQyZEdDdWxrR3dXTitNWWtFckhyQVFJNUdPbU1aeDdiZGpwQnF0SnZKYzJm?=
 =?utf-8?B?WXIzbmFtSVo5T2hjdUJUYWFIL3VEamZlYnAyRGFlbS9KR0NzalZhT1ExRURL?=
 =?utf-8?B?Q3UwQXZiZFdoMDlKbnhSL1pHeTU0ckJ1N3lzdWVTem5wVFZoSW1MNEREYlNH?=
 =?utf-8?B?LzBoQ2F0bGVGOHQ0WkFNREp1Q0lRSGJqL1NrTXEyWFNTZUJiQ254bE9vRVNB?=
 =?utf-8?B?ZG9qMUgrMTdDZURBZ2ZCOWRrV3BFYnN4SCtveVNnbEFjU2JUUTNrbmtFZE1P?=
 =?utf-8?B?QWxlUnQ3L0l4Y1czME1OUUJNVWpjRXJvc2JKbE84d01FS2ZtQmV5ejRoMHla?=
 =?utf-8?B?RmVVdHpHMi8raFJob0IvbU5jRWhYQjRHRVgrSDBhTW5EdTVLdC82K0QyeVFD?=
 =?utf-8?B?QmpxTXUxRHcxb1REMFhSdnovazVKbTFGTEtoSUh2L1dOejZnalZJR0lOMW4r?=
 =?utf-8?B?dFlVekxzM0d2MGlDRXBLM1JFYy9RaW5WV21VQnBqOEhpT0xhd1J1ZUwrZU01?=
 =?utf-8?B?SHNuTi92UVExOXQwYUlmdExONGhTR0U3eVlYemp4V2lWaXQzUnlpT2U3eFg2?=
 =?utf-8?B?MWQwU1ViMUx5OEs2MzNMbGtaYlhWNlhqRW1UQk9ZZHQrY3g2QWU1ZUtiZHlt?=
 =?utf-8?B?dnk1V0tXOW1RbW9YM1pXWncybjlDZFk4dGF0ZSsxWXNoaWx1QXhuZXlwV05U?=
 =?utf-8?B?ckZlVWF6S1Z0NWdDZ2pncWFpZTljdXlqeThxbWNVY0ViTnA5S0FETUZzaGdV?=
 =?utf-8?B?ODdLcUhtWmsyR1pyWVFXdTJCbzcrZ1U3QXBqckpwMU1xdVVtcHo0bDNaVG84?=
 =?utf-8?B?M0tDeDNtSmI0b3lPc0ZHTVBrY1NTVmZmUkkvUlNHWTErQlQ1US9BV1JaVjlr?=
 =?utf-8?B?ZFNHV0lvbGpWVXNKQzZTL096bkc5ZytXanR4V2llaGEweWpNbTg0SUlteW1q?=
 =?utf-8?B?bnhmYTJXTmVlZm0rZ2s4K1BFaUFCRTdid3BscHdJeDdaVkE5S24vQUxjbENL?=
 =?utf-8?B?RkRpTjROQjZicEtBZzRNYnBsdTBXMkdKdExJb3JyR2YvTnBwREtjQUVySjFN?=
 =?utf-8?B?OGRWS0Vxa3ZYdWJHYmFPdTRzYjl4SG15R3lFS25Qa1BHM2Ftcy95cjJqdTkx?=
 =?utf-8?B?Z1Vjbm9veThvUUZjUjRNc1ZYZlRrV0o4eDhEa2F1MWpCb1lRL2Q4Vno3NjVh?=
 =?utf-8?B?WmJRQXlzQlNzNWs2ajdRbks3Z29rTWxGNFRxZGh2c0s1b0hIRnNLamxITkU3?=
 =?utf-8?B?ZVJIbTF6aEZGK2Q5dyswNENUclN6djlHMkl2MEZoblg0d1p0dVFwbi9DaTFJ?=
 =?utf-8?B?Wnl2M21SYXFxSUV5VmRXUlZwdUgrQmhHTWNSaVpMWEJDN3pFUXhWekUyT01N?=
 =?utf-8?B?dGJ3d0huL3RORVlHZ0k5RTBuV0h5UzluSytKczZWUzc3MjVsZXhkZlAvK2kw?=
 =?utf-8?B?MGZEbmhIbXF2OUo0MlorMWFrQlVzbEV6cmVwRm9XL05nZDNNWlFWV0ZOQXZl?=
 =?utf-8?B?TWRoZGxIRFVmMFVJYlZuRGZsVE5LWjdTYjJ1bFBrYzNiaUFOc2ErVHQ1UEQ4?=
 =?utf-8?B?ZTNMT2NHMmQ2US9peFVMaTgzbmNFcGVVOE42UzUxb2xCUWVzSTd0SkdsOG9G?=
 =?utf-8?B?K3c4ZlVZMHBISUtnckF4ZHlXdUd4enk2Y01NazBTSE5JT21zelRPT09YTUpj?=
 =?utf-8?B?ZGprVzNVS2J5UHlUbng4UkxWcGU1bmJlemVtZW5tbGt1c3oyNlZBYzNWZ1Qv?=
 =?utf-8?B?R0U5eWF5NEhiaU1oZG9PekxtQXE4SzBFbVVVZW12NWJBa1NDbFcyQT09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54bd7899-46e2-4176-bfc2-08da331c6925
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2022 07:03:55.3621
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QCgmeQ1a+unmfvM2Jv0i1KanFUu9S1IvNcb7WJk40h9nXZRSXA4idavdPn18V6Zl
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB6306
Message-ID-Hash: V24UU4H4AXQHFL3EVJAV73HE5OTYTG7Y
X-Message-ID-Hash: V24UU4H4AXQHFL3EVJAV73HE5OTYTG7Y
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V2] dmabuf: ensure unique directory name for dmabuf stats
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/V24UU4H4AXQHFL3EVJAV73HE5OTYTG7Y/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTEuMDUuMjIgdW0gMDg6NDkgc2NocmllYiBDaGFyYW4gVGVqYSBLYWxsYToNCj4gVGhhbmtz
IENocmlzdGlhbiBmb3IgdGhlIGlucHV0cyEhDQo+DQo+IE9uIDUvMTAvMjAyMiAxMDo1MiBQTSwg
Q2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+Pj4+ICDCoMKgIMKgwqDCoMKgwqAgaWYgKCFkbWFi
dWYgfHwgIWRtYWJ1Zi0+ZmlsZSkNCj4+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4g
LUVJTlZBTDsNCj4+Pj4+IEBAIC0xOTIsNyArMTkzLDggQEAgaW50IGRtYV9idWZfc3RhdHNfc2V0
dXAoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikNCj4+Pj4+ICDCoMKgIMKgwqDCoMKgwqAgLyogY3Jl
YXRlIHRoZSBkaXJlY3RvcnkgZm9yIGJ1ZmZlciBzdGF0cyAqLw0KPj4+Pj4gIMKgwqDCoMKgwqDC
oCByZXQgPSBrb2JqZWN0X2luaXRfYW5kX2FkZCgmc3lzZnNfZW50cnktPmtvYmosICZkbWFfYnVm
X2t0eXBlLA0KPj4+Pj4gTlVMTCwNCj4+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgIiVsdSIsIGZpbGVfaW5vZGUoZG1hYnVmLT5maWxlKS0+aV9pbm8pOw0KPj4+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiJWx1LSVsdSIsIGZpbGVfaW5v
ZGUoZG1hYnVmLT5maWxlKS0+aV9pbm8sDQo+Pj4+IFdoeSBub3QganVzdCB1c2UgdGhlIHVuaXF1
ZSB2YWx1ZSBoZXJlPyBPciBpcyB0aGUgaW5vZGUgbnVtYmVyIG5lY2Vzc2FyeQ0KPj4+PiBmb3Ig
c29tZXRoaW5nPw0KPj4+IFRoaXMgd2lsbCBlYXNlIHRoZSBkZWJ1Z2dpbmcgYSBsb3QuIEdpdmVu
IHRoZSBkdW1wLCBJIGNhbiBlYXNpbHkgbWFwDQo+Pj4gd2hpY2ggZG1hYnVmIGJ1ZmZlciB0byB0
aGUgcHJvY2Vzcy4gT24gdGhlIGNyYXNodXRpbHR5IEkganVzdCBoYXZlIHRvDQo+Pj4gc2VhcmNo
IGZvciB0aGlzIGlub2RlIGluIHRoZSBmaWxlcyBvdXRwdXQsIGp1c3Qgb25lIGV4YW1wbGUuDQo+
PiBULkouIE1lcmNpZXIganVzdCBjb25maXJtZWQgbXkgc3VzcGljaW9uIHRoYXQgdGhpcyB3b3Vs
ZCBicmVhayB0aGUgVUFQSS4NCj4+IFNvIHRoYXQgd29uJ3Qgd29yay4NCj4+PiBUaGlzIG5lZWRz
IHRvIGJlIGEgc2luZ2xlIG51bWJlciwgcHJlZmVyYWJsZSBkb2N1bWVudGVkIGFzIHN1Y2guDQo+
IFVzdWFsbHksIFdoYXQgYXJlIHRoZSBjaGFuY2VzIHRoYXQgYSBwYXRjaCBicmVha2luZyBVQVBJ
IHdpbGwgZ2V0DQo+IGFjY2VwdGVkLiBJTU8sIElmIHRoZXJlIGFyZSBmZXcgdXNlcnMsIEkgaGFk
IGxlYXJudCB0aGF0IGl0IGlzIGFsbG93ZWQNCj4gdG8gbWVyZ2UuIChFZzogSW4gWzFdIHdoZXJl
IEFuZHJldywgLW1tIG1haW50YWluZXIsIG1lbnRpb25lZCB0aGF0OiAiSQ0KPiB0aGluayB3ZSBz
aG91bGQganVzdCBhYnNvcmIgYW55IHRyYW5zaXRvcnkgZGFtYWdlIHdoaWNoIHRoaXMgY2F1c2Vz
DQo+IHBlb3BsZS4iIGZvciB0aGUgcGF0Y2ggcG9zdGVkIGJyZWFraW5nIHRoZSBVQVBJKS4gRXZl
biB0aGUgcGF0Y2gNCj4gYzcxNWRlZjUxNTkxICgiZG1hLWJ1ZjogRGVsZXRlIHRoZSBETUEtQlVG
IGF0dGFjaG1lbnQgc3lzZnMgc3RhdGlzdGljcyIpDQo+IGRlbGV0ZWQgdGhlIHN5c2ZzIGVudHJp
ZXMgd2hpY2ggYWxzbyBjb21lcyB1bmRlciB0aGUgVUFQSSBicmVha2FnZSBidXQNCj4gc3RpbGwg
YWxsb3dlZCB0byBtZXJnZS4gT24gdGhvc2UgbGluZXMsIElzIGl0IGZhaXIgdG8gc2F5IElmIGZl
dyB1c2Vycw0KPiBhcmUgdGhlcmUsIHVhcGkgYnJlYWthZ2UgY2hhbmdlcyBhcmUgYWxsb3dlZCB0
byBtZXJnZSBvbiB0aGUgYXNzdW1wdGlvbg0KPiB0aGF0IHVzZXJzcGFjZSBjb2RlIG5lZWRzIHRv
IGJlIGFsaWduZWQgd2l0aCB0aGUgbmV3IHVhcGkgY2hhbmdlcz8gVG8gbXkNCj4ga25vd2xlZGdl
LCBBbmRyb2lkIGlzIHRoZSBvbmx5IHVzZXIgd2hpY2ggaXMganVzdCBnZXR0aW5nIHRoZSBkbWFi
dWYNCj4gc3RhdHMgYXMgcGFydCBvZiB0aGUgZGVidWcgY29kZS4NCg0KSSBkb24ndCB3YW50IHRv
IG9wZW4gdXAgdGhlIGNhbiBvZiB3b3JtcyBkaXNjdXNzaW5nIHVuZGVyIHdoaWNoIGNhc2VzIGFu
IA0KVUFQSSBicmVha2FnZSBpcyBhY2NlcHRhYmxlIGFuZCB1bmRlciB3aGljaCBjYXNlcyBpdCdz
IG5vdC4NCg0KU28gdG8gbWFrZSBpdCBzaG9ydDogV2hlbiB0aGlzIGNhdXNlcyBhIHJlZ3Jlc3Np
b24gZm9yIEFuZHJvaWQgaXQncyBhIA0KY2xlYXIgTkFLLg0KDQo+IFRoZSBzaW5nbGUgbnVtYmVy
IGFwcHJvYWNoLCBnZW5lcmF0ZWQgYnkgYXRvbWljLCB3b3VsZG4ndCBicmVhayB0aGUNCj4gdWFw
aSwgYnV0IHRoYXQgbnVtYmVyIHdvbid0IGdpdmUgYW55IG1lYW5pbmdmdWwgaW5mb3JtYXRpb24g
ZXNwZWNpYWxseQ0KPiB3aGVuIHRoaXMgaXMgdGFyZ2V0ZWQganVzdCBmb3IgZGVidWcgcHVycG9z
ZS4gQW5kIGp1c3QgJ2lub2RlJyBpcyBub3QNCj4gdXNhYmxlIGZvciBhbHJlYWR5IHN0YXRlZCBy
ZWFzb25zLg0KDQpXZWxsLCB3aHkgZG8geW91IHdhbnQgdG8gdXNlIHRoZSBpbm8gaW4gdGhlIGZp
cnN0IHBsYWNlPyBUaGlzIGlzIGFuIA0KYW5vbnltb3VzIGlub2RlIG5vdCBhc3NvY2lhdGVkIHdp
dGggYW55IGZpbGVzeXN0ZW0sIHNvIHRoYXQgbnVtYmVyIGlzIA0KbWVhbmluZ2xlc3MgYW55d2F5
Lg0KDQo+IEhvdyBhYm91dCB1c2luZyB0aGUgYXRvbWljIG51bWJlciBnZW5lcmF0ZWQgaXQgc2Vs
ZiB1c2VkIGFzIGlub2RlDQo+IG51bWJlcj8gSSBzZWUgdG1wZnMgYWxzbyBtYWludGFpbnMgaXRz
IG93biBpbm9kZSBudW1iZXJzIGZvciB0aGUgc2FtZQ0KPiBvdmVyZmxvdyByZWFzb25zWzJdLg0K
DQpZZWFoLCB0aGF0IGNvdWxkIHBvdGVudGlhbGx5IHdvcmsgYXMgd2VsbC4NCg0KUmVnYXJkcywN
CkNocmlzdGlhbi4NCg0KDQo+ICAgVGhlIGNvZGUgd2lsbCBiZSBsaWtlIGJlbG93KHVudGVzdGVk
KToNCj4NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJz
L2RtYS1idWYvZG1hLWJ1Zi5jDQo+IGluZGV4IGE2ZmM5NmUuLmVlZWQ3NzAgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2Rt
YS1idWYuYw0KPiBAQCAtNDA4LDExICs0MDgsMTcgQEAgc3RhdGljIGlubGluZSBpbnQgaXNfZG1h
X2J1Zl9maWxlKHN0cnVjdCBmaWxlICpmaWxlKQ0KPiAgIHN0YXRpYyBzdHJ1Y3QgZmlsZSAqZG1h
X2J1Zl9nZXRmaWxlKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIGludCBmbGFncykNCj4gICB7DQo+
ICAgICAgICAgIHN0cnVjdCBmaWxlICpmaWxlOw0KPiArICAgICAgIHN0YXRpYyBhdG9taWM2NF90
IHVuaXF1ZV9pZCA9IEFUT01JQzY0X0lOSVQoMCk7DQo+ICAgICAgICAgIHN0cnVjdCBpbm9kZSAq
aW5vZGUgPSBhbGxvY19hbm9uX2lub2RlKGRtYV9idWZfbW50LT5tbnRfc2IpOw0KPg0KPiAgICAg
ICAgICBpZiAoSVNfRVJSKGlub2RlKSkNCj4gICAgICAgICAgICAgICAgICByZXR1cm4gRVJSX0NB
U1QoaW5vZGUpOw0KPg0KPiArICAgICAgIC8qDQo+ICsgICAgICAgICogT3ZlcnJpZGUgdGhlIGlu
b2RlLT5pX25vIG51bWJlciB3aXRoIHRoZSB1bmlxdWUNCj4gKyAgICAgICAgKiBkbWFidWYgc3Bl
Y2lmaWMgdmFsdWUNCj4gKyAgICAgICAgKi8NCj4gKyAgICAgICBpbm9kZS0+aV9ubyA9IGF0b21p
YzY0X2FkZF9yZXR1cm4oMSwgJnVuaXF1ZV9pZCk7DQo+ICAgICAgICAgIGlub2RlLT5pX3NpemUg
PSBkbWFidWYtPnNpemU7DQo+ICAgICAgICAgIGlub2RlX3NldF9ieXRlcyhpbm9kZSwgZG1hYnVm
LT5zaXplKTsNCj4NCj4NCj4gWzFdDQo+IGh0dHBzOi8vbmFtMTEuc2FmZWxpbmtzLnByb3RlY3Rp
b24ub3V0bG9vay5jb20vP3VybD1odHRwcyUzQSUyRiUyRnBhdGNod29yay5rZXJuZWwub3JnJTJG
cHJvamVjdCUyRmxpbnV4LW1tJTJGcGF0Y2glMkY0ZjA5MTc3NjE0MmYyZWJmN2I5NDAxODE0NmRl
NzIzMTg0NzRlNjg2LjE2NDcwMDg3NTQuZ2l0LnF1aWNfY2hhcmFudGUlNDBxdWljaW5jLmNvbSUy
RiUyMzI0NzgwMTM5JmFtcDtkYXRhPTA1JTdDMDElN0NjaHJpc3RpYW4ua29lbmlnJTQwYW1kLmNv
bSU3QzYyYzBiMDdmZmIwODQ2MzVkY2JlMDhkYTMzMWE2ODMwJTdDM2RkODk2MWZlNDg4NGU2MDhl
MTFhODJkOTk0ZTE4M2QlN0MwJTdDMCU3QzYzNzg3ODQ4NTc4OTg0ODAyMCU3Q1Vua25vd24lN0NU
V0ZwYkdac2IzZDhleUpXSWpvaU1DNHdMakF3TURBaUxDSlFJam9pVjJsdU16SWlMQ0pCVGlJNklr
MWhhV3dpTENKWFZDSTZNbjAlM0QlN0MzMDAwJTdDJTdDJTdDJmFtcDtzZGF0YT1WNFFkb0tHTDhJ
ZnVxMmd2aE5jUDhvUEp0JTJGSSUyQlBraHpWRGhTWVNoQ1MyTSUzRCZhbXA7cmVzZXJ2ZWQ9MA0K
Pg0KPiBbMl0NCj4gaHR0cHM6Ly9uYW0xMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNv
bS8/dXJsPWh0dHBzJTNBJTJGJTJGZ2l0Lmtlcm5lbC5vcmclMkZwdWIlMkZzY20lMkZsaW51eCUy
Rmtlcm5lbCUyRmdpdCUyRnN0YWJsZSUyRmxpbnV4LmdpdCUyRnBhdGNoJTJGJTNGaWQlM0RlODA5
ZDVmMGI1YzkxMmZlOTgxZGNlNzM4ZjMyODNiMjAxMDY2NWYwJmFtcDtkYXRhPTA1JTdDMDElN0Nj
aHJpc3RpYW4ua29lbmlnJTQwYW1kLmNvbSU3QzYyYzBiMDdmZmIwODQ2MzVkY2JlMDhkYTMzMWE2
ODMwJTdDM2RkODk2MWZlNDg4NGU2MDhlMTFhODJkOTk0ZTE4M2QlN0MwJTdDMCU3QzYzNzg3ODQ4
NTc4OTg0ODAyMCU3Q1Vua25vd24lN0NUV0ZwYkdac2IzZDhleUpXSWpvaU1DNHdMakF3TURBaUxD
SlFJam9pVjJsdU16SWlMQ0pCVGlJNklrMWhhV3dpTENKWFZDSTZNbjAlM0QlN0MzMDAwJTdDJTdD
JTdDJmFtcDtzZGF0YT1WaWQ0VDFuamRPTVp2JTJCMUFES2ZqaWl1enQ4ejYlMkZpRlAlMkJjYlV3
TmNabWR3JTNEJmFtcDtyZXNlcnZlZD0wDQo+DQo+IFRoYW5rcywNCj4gQ2hhcmFuDQoNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=

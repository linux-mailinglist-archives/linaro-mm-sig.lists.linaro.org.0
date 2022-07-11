Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2613E5701FA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Jul 2022 14:25:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 031B647946
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Jul 2022 12:25:28 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2044.outbound.protection.outlook.com [40.107.220.44])
	by lists.linaro.org (Postfix) with ESMTPS id B5F343ED6B
	for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Jul 2022 12:25:22 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oJWCzUJm3CfNBOLkBKC3CBUfDbDY+RKpUNCZKnLoOPo3hoyxaHhGl1z9eZPmClJApHn4ezUStkZ+4Y7ZjnD3bRINb+gbIPi/74OGi/Kfn5ESlupRyNqE/HGDS4pdCiYKuJXgP/XycQbKbalITpYRWc87xqnOzvE9FLeJfjibQD8ARQSR9e3A8tVqPdWNG5w67/9UcT5AWbGSjtKB2vC/m1Y03jumvWamRPkAHVeFHvql3GTwd5eND0qVsufmtDFdDM47RjtqjVCCFlrJmB2K+QXjny9uFuywnZe7KZkGHiZl8WOpDq4Q782NoEfb6gssJHOR+XyPOxrNXFC/MJkIJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JUPecrCVA5XyS6JocfeNrDqI3zWnquh86F4NIYZzyrU=;
 b=MckZ/BzQla/BM0l9Z8/JFZd7IHwpgpfPx3pd6ecSa4Kgk1q9ct20GoBpGf2JPLJB3t4XM8lsxPEtLqb2pCAZwzBUXU2Ws7HsZKZBmZJDXaImLpfG+3GCLx6ieigJ/ugs7CqaPnU9IafGSYQXMn159YPRHdu1roea9+1sP/2b0bWX54aJDMpoqDTJ4HEzDyTwkfdPaXuMLlkjyB/6alQDlT7cZseobYkCP9MDLEBs3vCBLst+bozY1FUCdDHu8tWp9yaBYMaIy7zw7TQsN6DyX6+J7KmjQTbtU5AhnUR2s36nHw7nxKsBrEq3X93MBjWlOn7xzbNhhy4TQ0BbkjwcmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JUPecrCVA5XyS6JocfeNrDqI3zWnquh86F4NIYZzyrU=;
 b=E1tCBTUaBy4SOIHUIScLRubjQcTjXVCvm86mZRVmX/JgfeO9PmONgKhuOUcKrGizfDqogps63s9pH4iPTEEzsRZDpXXR6VHIAW5y1HvN3h+3DNYOczPoLujxkndrDcvsKb/m/KaN86TCawpAzMwILaTOq78qDxo8D8JteZudRtk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by PH7PR12MB5593.namprd12.prod.outlook.com (2603:10b6:510:133::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.26; Mon, 11 Jul
 2022 12:25:20 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39%2]) with mapi id 15.20.5417.025; Mon, 11 Jul 2022
 12:25:20 +0000
Message-ID: <b28cca8f-ea2c-bab9-0de7-b469df121e09@amd.com>
Date: Mon, 11 Jul 2022 14:25:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Karolina Drobnik <karolina.drobnik@intel.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
References: <20220506141009.18047-1-christian.koenig@amd.com>
 <20220506141009.18047-3-christian.koenig@amd.com>
 <f67d23e2-3953-7717-9c41-65075929525c@intel.com>
 <4c9598f0-4ba7-c18e-2ccd-f508769a72e9@amd.com>
 <fe4cfc97-ca20-b28d-8369-5cd404f27e19@intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <fe4cfc97-ca20-b28d-8369-5cd404f27e19@intel.com>
X-ClientProxiedBy: FR3P281CA0043.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4a::15) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d7b870bb-966a-4b62-4432-08da63386b79
X-MS-TrafficTypeDiagnostic: PH7PR12MB5593:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	CAKWagQ6VEwAWcqrJ+MCW/RaOsXa4a702M7xGVZ2+AndUuexmFZ/QoJOeKAwpa6eun5CC9ObC1oMKaSEtMKCbLWIoPexGBJykIPeRijnRt84e1NF/VnYoUPxpAmBnHuhnen+7JbUAH40OMRwOnVGdIvSrPgWjJlJ/MsCK69Oh2a2lnJ5/73+MIKnAH7/x+BcVkktsGb1fFoavxktg5sKuDGiwzjOFOZGrW7yeZLt7io/HTBkSnv0el+fDkeTnPaM/y9GjLOHtsuGXkhoyMc42mdAUPT0gjbTE1BkrHxVh76nKjpJoX7GNwjCDpWuZOns3vpUk3S7B6aITqXuMI/Vh30DMV7PEgQa6JiDEsXNfkQ03OP5IKflPkxOd10Ex93dSV04hkuwCg6p6LzqZfwvcmcNBBkkRptoNm/5ZsMru6MWmL/nyqzYzVySlzNrI85R7ZW0HBi80ZRfAgsJAfRBu4an+4e3hAsdJarQ3xK4d8GN9S14ZURqKYjORbJ/yvs0wANH/aSzwM1OjUuEtnemqqDMmhtQLGbS788adGu9aafuFgJgVo+bMG+bhXkYu80GKRhsAUNozysq94cR0kEJhvU6DrW+th2OlIkjXeEvx0V+KxK+eiE7RWlOhWSkFT5x91jZSRu0w9zcpDpVhiIbQ2xOpqfgt8nF3l9n1k3hInzSUMSc3liku9cmPA7LPuiT+oqxr1Gaq9fA9RWNXHTdybT7/y4RKZL5fN5kCWJvI75g2VDo39xe2pauQccyWI28gVO7mtbrgeJVe7vgCyK72LhCyCTTo2RLLGuA+7Qcnb0=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(136003)(346002)(396003)(376002)(366004)(39860400002)(2616005)(66574015)(186003)(8676002)(4326008)(45080400002)(6666004)(31696002)(41300700001)(66946007)(66556008)(66476007)(478600001)(86362001)(26005)(6486002)(966005)(316002)(6512007)(110136005)(53546011)(31686004)(6506007)(2906002)(83380400001)(38100700002)(36756003)(8936002)(5660300002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WXA5MUc1Y2svRmx5RS9QWXNnSlR1WlZVMlBTNkZkVCt4dHRjNzlEMmtqSVhy?=
 =?utf-8?B?QjZrL29CTytkYWp0eFBxWmIweTFhbElqMndTWDZUSHNSeGN5TVV4NmZpNFM4?=
 =?utf-8?B?MXpwYm9senN3bkl1SHAzanNpNUpVOFBveFZEZVh3UkJ2THBzYjB3Nnl3NEhL?=
 =?utf-8?B?amZ5ZUlWRTB4dFpiM2ZYdzBLRk1sQjIvZStlQ1ZnVHNzNlFCOTBHbC9tajIx?=
 =?utf-8?B?djZ5cStZU2pneVoxZ3p1R1JHWDA0SzVDUXdXVlZ4VHF6NFFDNEFIWGNPeG9n?=
 =?utf-8?B?VU44WG05eTByaDh5RDVsYVNNeWpka1RyZ01sbjk0czNxRE82MFFCSFJ2RThC?=
 =?utf-8?B?b05wZGZqS3ErUHVKUmxDV3FZR1ZKenF2dytxL3hLMU56MVRqV09KVFFnckdt?=
 =?utf-8?B?NkpqVGRyMmdNYXdzTU1lQWZNSVdUK21ISTBmSHplek0ybUgvaUhNMjlJb0U2?=
 =?utf-8?B?T3BnZXlTbDU4cVRUcndMSmJScWZ0M2lJbTFmY0ljODRJZHhXdVd0K1RYNGFU?=
 =?utf-8?B?NTd0SUdWbHBEZHNhMmpzdmNib0RaYXFLTDlpVm5LdENyN1ZXVjBYU3pHcVQr?=
 =?utf-8?B?WThOOVl4TnV6SS9XSUhuVDdDdVkrVCsxYzV3UFgzSmU2NGRPL0p4R2dwcld5?=
 =?utf-8?B?NHBiZm52c3VLSWRNYnN0UkgzUVhCVW9WeXEwR3dEUnFmVHhrWnhMOTdmOXhm?=
 =?utf-8?B?aTZtTVJadVVEbzVQbThIWW92VkRWVUhKTWdubWF6UHNENUZCZUc1M0FpSDBz?=
 =?utf-8?B?Y1pRQmswejJsSDU4aGl6ZWp1djcrb2hOK0UzUHFKYjZzMkN3UGkrbGdxdHFp?=
 =?utf-8?B?RnN4RDgrNy9RZnFJUW9vL3lMbjd4V0wwYTZIS3dZaS9EdEtrMTdvNjh5VGdB?=
 =?utf-8?B?WjJybllRa2FjU1JlQU92YTZDMkJuaE43UTVQMXFqaUg0MnB3elJRTDRiYkNr?=
 =?utf-8?B?TlEyekpIQjZSL2c3M2Qxd2d1eEFBbHhJMXBHMlFjMk51VkNid0VMbVFMeng1?=
 =?utf-8?B?OTUxOHhQQlpKZ2hYeTlQYkdGNC9jR3ZWS3Z3THh1RFBlOTlYTzlUZFdsZldT?=
 =?utf-8?B?S081cThpNmJ0SlhwN3A3MHFsemE0VVJSNDlFQWhFRzdrL0JBM204bmh3UEIr?=
 =?utf-8?B?WWhnY3NoZCtNamdSTGNFQkdnVTYyRmVIcGcwcmFOWmJYOW5wTmVvTWFuUnpp?=
 =?utf-8?B?QWRFTmMxWmE1SDlKNWtTZDdlVGc2R1djalIzeWFCUWc3OWVELzNEay9Cd1Rv?=
 =?utf-8?B?YnhmMExRL1A5R3ljZklHWXR3YVMxUW96My9NL25qZG5UTVZGQTZOd1VaY204?=
 =?utf-8?B?N2FhdmhVK3l3SS9CN29MUGkzTi9yMDFVZnFmL3FZcFNjaU9DTklMV1dWZGwr?=
 =?utf-8?B?V0F2ejRqMGQ3YWozQ05VaWJTY2t5ZTJhZVA0SFNBV3RmYU1LRjduY29mdTdF?=
 =?utf-8?B?aU5BVU1iME0reHRWQWJxY1pTS0U2T3R3WTVweTNKQkQwZzNIQ2xOcjdGZlhS?=
 =?utf-8?B?c2pDRUQrU2dML05wNUpXSE9oNVJieTNHeWQzVEowcWV2WU8vQ3NlU2JESDNF?=
 =?utf-8?B?Z09OUlhRWkNCempldGROOWVHN3VGWEN4V2V0MEQ1ZnlmOHh6eWZxdTZsajFY?=
 =?utf-8?B?L3NQaGkrb09LYzlKcmt4UU1nczlFTHp4aWUwbTYremlwUC9xOU5TRDlWTit1?=
 =?utf-8?B?WGliRVhlTWxGT3VaT21qaVdkYm5qTUVPRU4xZG54STFJbFdwSGZIeloxS3oy?=
 =?utf-8?B?WCt1Q1VIdzZTbDBNazEzU2d3VG81bmoyKzJpalVkRGVSenM0YUdxSk83RTBO?=
 =?utf-8?B?QmMyMktqcXF0VmljMGJqaWhCR0dDd1VFSENrLzFoOHN4cmN6OE93N1ZKK1pV?=
 =?utf-8?B?dVFkMGYrMklRNm5STHZtcFZlWG9pUU1tSTFxUEJIRlZmaGh5QlJNaWRBRTZi?=
 =?utf-8?B?RXdwRzZUcVhaTDBRWTNNL290bXJkZm91SFRGUnJkS2wwcWVMclZtOFVCWlU0?=
 =?utf-8?B?WTNCNGpLYlJHSUl5QXpYNnIwOXVNeWQ4dFZ1OTJEMWlxbkVzK1FvUE9SOVlm?=
 =?utf-8?B?NmdyblZ2UG16c3FoUlViYTFTMEQ0RHRpdGdGaEJTTFlBaHlwYTRkemJtclll?=
 =?utf-8?Q?1E+AVPYLfu0DsyZJyKAaj+0A+?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7b870bb-966a-4b62-4432-08da63386b79
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2022 12:25:20.0336
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t17eCjUMN+aK/DB9Z4mYPCvoYUVM2YOsJvndI3NHCNTQrSQBJ4fO5BAFqgUuVTNB
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB5593
Message-ID-Hash: 556BZ7B4XABLKYW5TEMYFA53CAPMXR6R
X-Message-ID-Hash: 556BZ7B4XABLKYW5TEMYFA53CAPMXR6R
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: daniel@ffwll.ch, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/5] dma-buf: return only unsignaled fences in dma_fence_unwrap_for_each v3
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/556BZ7B4XABLKYW5TEMYFA53CAPMXR6R/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgS2Fyb2xpbmEsDQoNCkFtIDExLjA3LjIyIHVtIDE0OjE3IHNjaHJpZWIgS2Fyb2xpbmEgRHJv
Ym5pazoNCj4gSGkgQ2hyaXN0aWFuLA0KPg0KPiBPbiAxMS4wNy4yMDIyIDExOjU3LCBDaHJpc3Rp
YW4gS8O2bmlnIHdyb3RlOg0KPj4gSGkgS2Fyb2xpbmEsDQo+Pg0KPj4gQW0gMTEuMDcuMjIgdW0g
MTE6NDQgc2NocmllYiBLYXJvbGluYSBEcm9ibmlrOg0KPj4+IEhpIENocmlzdGlhbiwNCj4+Pg0K
Pj4+IEknbSBzb3JyeSBmb3IgZGlnZ2luZyB0aGlzIG9uZSBvdXQgc28gbGF0ZS4NCj4+Pg0KPj4+
IE9uIDA2LjA1LjIwMjIgMTY6MTAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+Pj4+IGRtYV9m
ZW5jZV9jaGFpbiBjb250YWluZXJzIGNsZWFudXAgc2lnbmFsZWQgZmVuY2VzIGF1dG9tYXRpY2Fs
bHksIHNvDQo+Pj4+IGZpbHRlciB0aG9zZSBvdXQgZnJvbSBhcnJheXMgYXMgd2VsbC4NCj4+Pj4N
Cj4+Pj4gdjI6IGZpeCBtaXNzaW5nIHdhbGsgb3ZlciB0aGUgYXJyYXkNCj4+Pj4gdjM6IG1hc3Np
dmVseSBzaW1wbGlmeSB0aGUgcGF0Y2ggYW5kIGFjdHVhbGx5IHVwZGF0ZSB0aGUgZGVzY3JpcHRp
b24uDQo+Pj4+DQo+Pj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4NCj4+Pj4gLS0tDQo+Pj4+IMKgIGluY2x1ZGUvbGludXgvZG1hLWZl
bmNlLXVud3JhcC5oIHwgNiArKysrKy0NCj4+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPj4+Pg0KPj4+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9s
aW51eC9kbWEtZmVuY2UtdW53cmFwLmggDQo+Pj4+IGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2Ut
dW53cmFwLmgNCj4+Pj4gaW5kZXggZTdjMjE5ZGE0ZWQ3Li5hNGQzNDJmZWY4ZTAgMTAwNjQ0DQo+
Pj4+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLXVud3JhcC5oDQo+Pj4+ICsrKyBiL2lu
Y2x1ZGUvbGludXgvZG1hLWZlbmNlLXVud3JhcC5oDQo+Pj4+IEBAIC00Myw5ICs0MywxMyBAQCBz
dHJ1Y3QgZG1hX2ZlbmNlICpkbWFfZmVuY2VfdW53cmFwX25leHQoc3RydWN0IA0KPj4+PiBkbWFf
ZmVuY2VfdW53cmFwICpjdXJzb3IpOw0KPj4+PiDCoMKgICogVW53cmFwIGRtYV9mZW5jZV9jaGFp
biBhbmQgZG1hX2ZlbmNlX2FycmF5IGNvbnRhaW5lcnMgYW5kIGRlZXAgDQo+Pj4+IGRpdmUgaW50
byBhbGwNCj4+Pj4gwqDCoCAqIHBvdGVudGlhbCBmZW5jZXMgaW4gdGhlbS4gSWYgQGhlYWQgaXMg
anVzdCBhIG5vcm1hbCBmZW5jZSBvbmx5IA0KPj4+PiB0aGF0IG9uZSBpcw0KPj4+PiDCoMKgICog
cmV0dXJuZWQuDQo+Pj4+ICsgKg0KPj4+PiArICogTm90ZSB0aGF0IHNpZ25hbGxlZCBmZW5jZXMg
YXJlIG9wcG9ydHVuaXN0aWNhbGx5IGZpbHRlcmVkIG91dCwgDQo+Pj4+IHdoaWNoDQo+Pj4+ICsg
KiBtZWFucyB0aGUgaXRlcmF0aW9uIGlzIHBvdGVudGlhbGx5IG92ZXIgbm8gZmVuY2UgYXQgYWxs
Lg0KPj4+PiDCoMKgICovDQo+Pj4+IMKgICNkZWZpbmUgZG1hX2ZlbmNlX3Vud3JhcF9mb3JfZWFj
aChmZW5jZSwgY3Vyc29yLCBoZWFkKcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgXA0KPj4+PiDCoMKg
wqDCoMKgIGZvciAoZmVuY2UgPSBkbWFfZmVuY2VfdW53cmFwX2ZpcnN0KGhlYWQsIGN1cnNvcik7
IGZlbmNlO8KgwqDCoCBcDQo+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgIGZlbmNlID0gZG1hX2ZlbmNl
X3Vud3JhcF9uZXh0KGN1cnNvcikpDQo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgIGZlbmNlID0gZG1h
X2ZlbmNlX3Vud3JhcF9uZXh0KGN1cnNvcikpIFwNCj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGlmICgh
ZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKGZlbmNlKSkNCj4+Pj4gwqAgwqAgI2VuZGlmDQo+Pj4NCj4+
PiBJdCBsb29rcyBsaWtlIHRoaXMgcGFydGljdWxhciBwYXRjaCBhZmZlY3RzIG1lcmdpbmcgU3lu
YyBGZW5jZXMsIA0KPj4+IHdoaWNoIGlzIHJlZmxlY3RlZCBieSBmYWlsaW5nIElHVCB0ZXN0IChp
Z3RAc3dfc3luYylbMV0uIFRoZSBmYWlsaW5nIA0KPj4+IHN1YnRlc3RzIGFyZToNCj4+PiDCoCAt
IHN5bmNfbWVyZ2UgLSBtZXJnaW5nIGRpZmZlcmVudCBmZW5jZXMgb24gdGhlIHNhbWUgdGltZWxp
bmUsIG5laXRoZXINCj4+PiDCoMKgwqDCoMKgwqDCoMKgIHNpbmdsZSBub3IgbWVyZ2VkIGZlbmNl
cyBhcmUgc2lnbmFsZWQNCj4+Pg0KPj4+IMKgIC0gc3luY19tZXJnZV9zYW1lIC0gbWVyZ2luZyB0
aGUgZmVuY2Ugd2l0aCBpdHNlbGYgb24gdGhlIHNhbWUNCj4+PiDCoMKgwqDCoMKgwqDCoMKgIHRp
bWVsaW5lLCB0aGUgZmVuY2UgZGlkbid0IHNpZ25hbCBhdCBhbGwNCj4+Pg0KPj4+IMKgIC0gc3lu
Y19tdWx0aV90aW1lbGluZV93YWl0IC0gbWVyZ2luZyBkaWZmZXJlbnQgZmVuY2VzIG9uIGRpZmZl
cmVudA0KPj4+IMKgwqDCoMKgwqDCoMKgwqAgdGltZWxpbmVzOyB0aGUgc3VidGVzdCBjaGVja3Mg
aWYgY291bnRpbmcgZmVuY2VzIG9mDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoCB2YXJpb3VzIHN0YXRl
cyB3b3Jrcy4gQ3VycmVudGx5LCBpdCBjYW4gb25seSBzZWUgMg0KPj4+IMKgwqDCoMKgwqDCoMKg
wqAgYWN0aXZlIGZlbmNlcywgMCBzaWduYWxpbmcgKHNob3VsZCBiZSAyIGFjdGl2ZSwNCj4+PiDC
oMKgwqDCoMKgwqDCoMKgIDEgc2lnbmFsaW5nKQ0KPj4+DQo+Pj4gUmV2ZXJ0aW5nIHRoaXMgY29t
bWl0IG9uIHRoZSB0b3Agb2YgZHJtLXRpcCBmaXhlcyB0aGUgaXNzdWUsIGJ1dCBJJ20gDQo+Pj4g
bm90IHN1cmUgaWYgaXQgd291bGRuJ3QgaW1wYWN0IG90aGVyIHBsYWNlcyBpbiB0aGUgY29kZS4g
UGxlYXNlIGxldCANCj4+PiBtZSBrbm93IGlmIEkgY2FuIGJlIG9mIGFueSBoZWxwLg0KPj4NCj4+
DQo+PiBUaGFua3MgZm9yIGxldHRpbmcgbWUga25vdy4gTm90IHN1cmUgd2hhdCdzIGdvaW5nIG9u
IGhlcmUsIGJ1dCBJIGNhbiANCj4+IHRha2UgYSBsb29rIHRvZGF5IGlmIHRpbWUgcGVybWl0cy4N
Cj4NCj4gVGhlIHJlcHJvZHVjdGlvbiB3aXRoIElHVHMgc2hvdWxkIGJlIHF1aXRlIGVhc3kuIFlv
dSdsbCBuZWVkIHRvIA0KPiBjbG9uZS9kb3dubG9hZCB0aGUgSUdUIGNvZGUgYW5kIGZvbGxvdyBp
bnN0cnVjdGlvbnMgZm9yIEJ1aWxkaW5nWzFdIA0KPiB0aGUgcHJvamVjdCAobWFrZSBzdXJlIHlv
dSBoYXZlIG1lc29uIGFuZCBuaW5qYSBpbnN0YWxsZWQpOg0KPg0KPiBodHRwczovL25hbTExLnNh
ZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0ElMkYlMkZnaXRsYWIu
ZnJlZWRlc2t0b3Aub3JnJTJGZHJtJTJGaWd0LWdwdS10b29scyZhbXA7ZGF0YT0wNSU3QzAxJTdD
Y2hyaXN0aWFuLmtvZW5pZyU0MGFtZC5jb20lN0M5YTk1ODdhZWZkMmQ0YWMyZDg2MjA4ZGE2MzM3
NWNiNiU3QzNkZDg5NjFmZTQ4ODRlNjA4ZTExYTgyZDk5NGUxODNkJTdDMCU3QzAlN0M2Mzc5MzEz
ODY2ODM2MTE3NjYlN0NVbmtub3duJTdDVFdGcGJHWnNiM2Q4ZXlKV0lqb2lNQzR3TGpBd01EQWlM
Q0pRSWpvaVYybHVNeklpTENKQlRpSTZJazFoYVd3aUxDSlhWQ0k2TW4wJTNEJTdDMzAwMCU3QyU3
QyU3QyZhbXA7c2RhdGE9NFdzTXV0Y0ZKMkh3QnFsZCUyQlR2OU4xVHg2Y2JGTXdKSlo2a2ptNXJi
Zm9JJTNEJmFtcDtyZXNlcnZlZD0wDQo+DQo+IE9uY2UgeW91IGhhdmUgaXQgdXAgYW5kIHJ1bm5p
bmcsIGdvIHRvIDxpZ3QgcGF0aD4vYnVpbGQvdGVzdHMsIGFuZCBydW4gDQo+IHRoZSBzdWJ0ZXN0
czoNCj4NCj4gwqAgLi9zd19zeW5jIC0tcnVuIHN5bmNfbWVyZ2UNCj4gwqAgLi9zd19zeW5jIC0t
cnVuIHN5bmNfbWVyZ2Vfc2FtZQ0KPiDCoCAuL3N3X3N5bmMgLS1ydW4gc3luY19tdWx0aV90aW1l
bGluZV93YWl0DQo+DQo+IFlvdSBjYW4gcnVuIGFsbCB0aGUgc3VidGVzdHMgd2l0aCAuL3N3X3N5
bmMsIGJ1dCBJIHRoaW5rIHRoZXNlIGFyZSB0aGUgDQo+IG1vc3QgcmVsZXZhbnQgdG8geW91Lg0K
DQpUaGFua3MsIEkndmUgYWxyZWFkeSBtYW5hZ2VkIHRvIHJlcHJvZHVjZSBpdC4NCg0KTm90IHN1
cmUgd2hhdCdzIGdvaW5nIG9uIGhlcmUsIGJ1dCBjb3VsZCBiZSB0aGF0IHRoZSB0ZXN0IGNhc2Ug
d2FzIG5ldmVyIA0KY29ycmVjdCBpbiB0aGUgZmlyc3QgcGxhY2UuIE5lZWQgdG8gZG91YmxlIGNo
ZWNrLg0KDQpUaGFua3MsDQpDaHJpc3RpYW4uDQoNCj4NCj4gTWFueSB0aGFua3MsDQo+IEthcm9s
aW5hDQo+DQo+IC0tLS0tLS0tLS0tLS0tLS0tLQ0KPiBbMV0gLSANCj4gaHR0cHM6Ly9uYW0xMS5z
YWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHBzJTNBJTJGJTJGZ2l0bGFi
LmZyZWVkZXNrdG9wLm9yZyUyRmRybSUyRmlndC1ncHUtdG9vbHMlMjNidWlsZGluZyZhbXA7ZGF0
YT0wNSU3QzAxJTdDY2hyaXN0aWFuLmtvZW5pZyU0MGFtZC5jb20lN0M5YTk1ODdhZWZkMmQ0YWMy
ZDg2MjA4ZGE2MzM3NWNiNiU3QzNkZDg5NjFmZTQ4ODRlNjA4ZTExYTgyZDk5NGUxODNkJTdDMCU3
QzAlN0M2Mzc5MzEzODY2ODM2MTE3NjYlN0NVbmtub3duJTdDVFdGcGJHWnNiM2Q4ZXlKV0lqb2lN
QzR3TGpBd01EQWlMQ0pRSWpvaVYybHVNeklpTENKQlRpSTZJazFoYVd3aUxDSlhWQ0k2TW4wJTNE
JTdDMzAwMCU3QyU3QyU3QyZhbXA7c2RhdGE9RlYwQW82cmE4RU95cjRjT3M0TjdtQ21wT0VVVU9i
VHJneU9yZDB0dkVWOCUzRCZhbXA7cmVzZXJ2ZWQ9MA0KPg0KPj4gRG8geW91IGhhdmUgYSBkZXNj
cmlwdGlvbiBob3cgdG8gZWFzeSByZXByb2R1Y2UgdGhpcz8gRS5nLiBob3cgdG8gcnVuIA0KPj4g
anVzdCB0aG9zZSBzcGVjaWZpYyBpZ3RzPw0KPj4NCj4+IFRoYW5rcywNCj4+IENocmlzdGlhbi4N
Cj4+DQo+Pj4NCj4+PiBBbGwgdGhlIGJlc3QsDQo+Pj4gS2Fyb2xpbmENCj4+Pg0KDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D45DD557526
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Jun 2022 10:14:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 168F43F30E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Jun 2022 08:14:35 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2040.outbound.protection.outlook.com [40.107.236.40])
	by lists.linaro.org (Postfix) with ESMTPS id AAC053EF4B
	for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Jun 2022 08:14:30 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dx5ohH0I4MXl9SosOC0TC5lG9sKGj6lhDq8od/grUaxs4NOwOSaGWiBoQbj41ardG9/HAfLgBl1re2Q+kNXVXG30VG3wWsaVtcUnSQuTm7qOdPl7oXMmk7zYngXqF/2xCCm7xuS2YV9g8zIFB/DXiwimbz4jMV2/oew4A8B2pIVEYB0CkXXV1LTfIvbMuk4RiZvwtTXiviD7KJHTZcOYVprliXcYschPIKj/9kq97F6mx6fTIbgjRHBECRcxd0G3pceF95wcuOXsMBruFfT4iJmfnlWlO62UAliHN8bup7U+vSc24j8pyOurd3uUkNJz09E7Pl9BfwJp2AwraKVkYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hQsFDacx59Iv26uF7bWCBKAa1IdgvG25e5FMtsIF09Y=;
 b=TI3JTQqGXw/VMv9I65zqSw7SyyS8VV6dBx2QMO/8LYq7x9mws5wsHoxpZKtinEfa5zFNJZ371qZ6UnhW7S/fV2furjRWqLcmQbzkRuceVQo4CntVA1jBhNe+GOINFmbc3Q1tje53BAsO/pSjoatC/pLhkq0dK2sm8FvGXDuWy46HXUqCZPnHnGkVFvL5eKWUtYavvPbIJHavO/ovaBqT+vhefG8a1hRge65xr8nMB/JH77IFjvkWK3Np3LoCLR3bjTKhky0kZrwLmejvX1Q7OUR+lhR1h0UUui88WT7/ODAOgXOmVpsEaljTcRSzEZS4d8Iul6K/FDbk/kAH2733HA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hQsFDacx59Iv26uF7bWCBKAa1IdgvG25e5FMtsIF09Y=;
 b=QsWXc6HLytAQBpzXu5kiZ7v/InBLdYFG66Xr1xZFhFNIpfEs3qDOP1SaRtbVP5i6EyUZi/OgK6zlcV9h03c8H36Mrj81eyfjR96M1jEmK0PBb/loUBB2UUOrSQ0xKDkbjiKobkSM8kPjNN3hcRZ4m42gfekNKFbCmUYanNjUduY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by BN6PR1201MB0099.namprd12.prod.outlook.com (2603:10b6:405:5a::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.15; Thu, 23 Jun
 2022 08:14:29 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::e0fd:45cf:c701:2731]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::e0fd:45cf:c701:2731%6]) with mapi id 15.20.5373.015; Thu, 23 Jun 2022
 08:14:28 +0000
Message-ID: <adc626ec-ff5a-5c06-44ce-09111be450cd@amd.com>
Date: Thu, 23 Jun 2022 10:14:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Lucas Stach <l.stach@pengutronix.de>, Pekka Paalanen <ppaalanen@gmail.com>
References: <91ff0bbb-ea3a-2663-3453-dea96ccd6dd8@amd.com>
 <YCuPhOT4GhY3RR/6@phenom.ffwll.local>
 <9178e19f5c0e141772b61b759abaa0d176f902b6.camel@ndufresne.ca>
 <CAPj87rPYQNkgVEdHECQcHcYe2nCpgF3RYQKk_=wwhvJSxwHXCg@mail.gmail.com>
 <c6e65ee1-531e-d72c-a6a6-da7149e34f18@amd.com>
 <20220623101326.18beeab3@eldfell>
 <954d0a9b-29ef-52ef-f6ca-22d7e6aa3f4d@amd.com>
 <4b69f9f542d6efde2190b73c87096e87fa24d8ef.camel@pengutronix.de>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <4b69f9f542d6efde2190b73c87096e87fa24d8ef.camel@pengutronix.de>
X-ClientProxiedBy: AS9P250CA0015.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:20b:532::20) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 117a1a7d-305e-47e3-f4ca-08da54f064c7
X-MS-TrafficTypeDiagnostic: BN6PR1201MB0099:EE_
X-Microsoft-Antispam-PRVS: 
	<BN6PR1201MB00994B914C05FA9662C135BF83B59@BN6PR1201MB0099.namprd12.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	LbewfRMcY0x+xbxQUkJ++PAqByxrYUsbUeodncyrcHVO9Fu9NPWNjQoKmKr7N/J4R6nHfwGRDFro1vPQk2fSiKvmgCeHvH1WTr6j+faRcu/IIDzHa/l0AdCUoy2AvPT15VKZv6BeiMER6nmy46/p7+RxVrpupB7K6d/OQqdOalV/p6QGVCQOPS4ciAj/rbSLfeZbWs0ZWDV0vdXUvu/yjAA+Jbf2YxJpXjTUGRH0+UJnsCyFvoFp6pAda9JBE7aYpLWIFHtR3df7M2LZVIBrDqa6T2Rt0wbfEeRCePCu5jjJuNOptfrt9BArV9Cwqs04kpJFFy6SbOLdo5i7sxHQ/IS9kH9oN5uL5hRMbRbdNCyYGpe0QGvXCs/fNFpZunCZswYnzB5/b1YHDojRnbt+bnTp6FknCZrnxcHk6V0YHpY92Kqo7He7hWgtWtLCfgL0QGtLmUSaipgEtFSJ5lxjBrfdUFBBhe8pGrSQ3Q90CxNmh7ecYBOtxn+iU1qnixxyuzyFXFJITPzpEnG6CIxbz/SzNODAtPS8rMNoH/5tpOmMcb6I7p94BG6f4BK4LoC7mSfakYbfI78ddqfxNrmgG6Pg4W/wFujNnK3RMqKNfAmygbXeV3kdMKcicxCgMeoT2keHTb6DacDpldRrc1OyYY9CX6Gyvvf9hHk3yZ/OkqGlp3bPWaZGYvzPO1x3EXa3WO5WcsHR6LTEv9AJD/ZTmZXbAUkHlBNqlzqHZmFA4Hb/JFAhx54OyULzqfNIecibeVaE6E8jof4pE1UjD2aOsgh3UGa8/7yLVaEq2dJ5VPI=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(136003)(346002)(366004)(39860400002)(396003)(376002)(186003)(66574015)(6512007)(41300700001)(26005)(66556008)(2616005)(6506007)(38100700002)(31696002)(86362001)(316002)(66476007)(6486002)(6666004)(478600001)(8936002)(54906003)(66946007)(2906002)(36756003)(5660300002)(110136005)(8676002)(4326008)(31686004)(83380400001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?emx6Y0F0R0wrTXVhelQxckFQcFp5aTc2RU5ZSnlMeVd3MmJMN2d2R1JSQ2U4?=
 =?utf-8?B?SEJEMGd0T3RLa2FjRm8zVGVaZE5LaGVMTkZlRnB6RFJSV3FFUUxnQk1QZWhv?=
 =?utf-8?B?cUZmYTRTZEZ6d0IyT3FWbkJuQTV3eVc4SGJ3TEFXL3JwOGgvT2drSHpuQzJY?=
 =?utf-8?B?OUhORFNxS2hhSlZCQzVLSExhL3FESTFVdmpaYWtFNjlVb3k2TndoU3ZRWXJU?=
 =?utf-8?B?S2dCWjRTazN3bVpZKzZuK2F5QjhHRkEvaUw3S0pnUnJ2WVZaOE9vZUN4aW1J?=
 =?utf-8?B?ZTNhVCtRYXdhTWRoNmRzV1U0RHFyRTI1T1NzVEg1Wll1VzdwY1ZVdnBWbURC?=
 =?utf-8?B?RHp0MU80SHZWRDBraSsxWE1VMWcvaUl4WUpIbjlyZkRNOHdiMnZLSXhRU04w?=
 =?utf-8?B?cm9JbWtVclZRUjk4NUZnR0tOVkQyRW5hZi9XcVFxRU9wMkR4RFJjVFBrWkRP?=
 =?utf-8?B?ZFhra014bTYxTU8zY0RDcHNXQy9ETU56ZFNIc0hKQ1lPSGh3SFlXYkVHbDNL?=
 =?utf-8?B?b1hJL1REd2J4Uk9WVE5sZzQ3UHVyRUc5M3R5YUFlOVFaV0xPRnJqQUQ3NHcv?=
 =?utf-8?B?MkUwRlFjNit3WlBuZjUvQmpubUVGOTBMZCtqTy9Xak9nMWl6RlhlbkxsTTVQ?=
 =?utf-8?B?a3VrK251UnMvT3dmSVRSdmRTOVVvMWs4aXBHejROZUF3enB3bXhLZVZNRWpZ?=
 =?utf-8?B?VEJFZHdsSk1uTnBaOTZBNUVFeEVvM2pkVVpaVXFFNnZjNDFKUm5Va1lncjNj?=
 =?utf-8?B?TWk4eVI3djFMRXlkZFJQOHdBR0IybDFIZmVJVVF6Y2FleHMwY2R6MGIwRE9k?=
 =?utf-8?B?bWFNYWdSZDlVeThLSW9IMXoxTFdDaVA2RW01UXFYa01IZTBGdWI2QldDOExG?=
 =?utf-8?B?K0Uvb1BDcERpQmNZTld5UE00eGhPUDQ0ZVZGR2dxcjg0RVZYemVaSkNZNmNq?=
 =?utf-8?B?Q1lRSFJzeU9CVi9zSjFTZytvUlZFNEZDSnNBZXppaWcyNmtTaFplWEFJUGZ2?=
 =?utf-8?B?bVl6elJ4dmRnU1lHTlJxNzRrOVpIRjJOUWNEM3VrS2ZKYlA5V0V4RUsvaXB3?=
 =?utf-8?B?OFZ2UWwrRlBtV09ENWZDbFNyT2RkZjVpUWFJeXl6WjJyQ2JXMWdIWXcvR0RZ?=
 =?utf-8?B?OHZWVU5RZ2xDOFpTMEFTT2Nkenp2UFpQc1UzNFd2R1JFK3FtekM4Tk1Ya1N6?=
 =?utf-8?B?ckVXM3owcXNITk44dHJUZUhKY0lscXh1MUZCZWx2Zmp3cVpYSGRqa1dSZm5Z?=
 =?utf-8?B?M2pVV3gxY0ovL3pNanUzODJORlN4RElZMUF2YmVORUNINUc4cWRpb1h3K21k?=
 =?utf-8?B?eU1IeXpjKzlyQmRXQ1VaY1dzRGNiV0UyYXllRHhJbzhZdkJIYkRBMDV3Z01t?=
 =?utf-8?B?dTBkQlYydG9JR2JhU1luamJYVzBBTk5sSExFZXdkY2xMRmF5UXZvTnBNaHBW?=
 =?utf-8?B?Q0ErTFVaVU9HMjRvYk1GY2hvUFI0N3ozazN0cmZoSVVwbUZpWnJ0MlovTm1p?=
 =?utf-8?B?MWhZVHhzczhyL0tvYnlhZ2Npc0ZKMVl2NENwelhoNmdpZk5saDdHdmVsVStn?=
 =?utf-8?B?czllcDY3b28xc1E1SG1qcTFRcVdIZkZNeFBreFE1U0sxb08rRGJwWXVka3JI?=
 =?utf-8?B?T0VZcWxSTDFSL1ZNelFkMDRvYWIwT3V1R0wvQVhJMDdTaFBnYXZCcSt4VlJI?=
 =?utf-8?B?YU5kdENJT0xENWZRWVQ3SEFQcFpScllETXAvNWovV1pSQkxjWlVMOWI2Nzhn?=
 =?utf-8?B?T1EyMkNLNkFEL1IyVmpWMFd3ZnVIMWtwUEc5YmNnTzM3ekVVZENVSFM2Tnoz?=
 =?utf-8?B?a0pCd1NZNy9JZXpQQndza0FPSjByTnUwNDdFeEpLV0F4VzBHY2JDaloyWlhV?=
 =?utf-8?B?c011K3h2R0xmMlBvVERzLzdiNmhRSmVZdFVTN3ljT2szb1NEWUQzbmxmNEhN?=
 =?utf-8?B?Q0c4TEUyWFVKS2JwQ0tib3pCakd1TnVJczAweUlFY25sUC9sNmQ5SDJKRkgx?=
 =?utf-8?B?Y3FpL2VHdm5lL3ZDYlp3ZzArRERFQ2lsNjJnZTJ3VU03RncxMHhqS09hMnJE?=
 =?utf-8?B?S0cxNWJVdnpzbUpsN3BPcGYwYnUwR051dldjSUliTXVnb3BCM2MyaDE3ZlFQ?=
 =?utf-8?Q?7Tv+0nt0l32DfDcRfcN2DoN5G?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 117a1a7d-305e-47e3-f4ca-08da54f064c7
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2022 08:14:28.9181
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: StNkQEZXf1qtcP9fFUqkOgfdYEpaPuagAoHjIq/eLm4rkk8K7bvb0okVi4SuD2pz
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1201MB0099
Message-ID-Hash: PNVWQTE2QTWIKKKTYVASAQPYWISTNS6R
X-Message-ID-Hash: PNVWQTE2QTWIKKKTYVASAQPYWISTNS6R
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Sharma, Shashank" <Shashank.Sharma@amd.com>, lkml <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, Nicolas Dufresne <nicolas@ndufresne.ca>, linaro-mm-sig@lists.linaro.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: DMA-buf and uncached system memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PNVWQTE2QTWIKKKTYVASAQPYWISTNS6R/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjMuMDYuMjIgdW0gMTA6MDQgc2NocmllYiBMdWNhcyBTdGFjaDoNCj4gQW0gRG9ubmVyc3Rh
ZywgZGVtIDIzLjA2LjIwMjIgdW0gMDk6MjYgKzAyMDAgc2NocmllYiBDaHJpc3RpYW4gS8O2bmln
Og0KPj4gQW0gMjMuMDYuMjIgdW0gMDk6MTMgc2NocmllYiBQZWtrYSBQYWFsYW5lbjoNCj4+PiBP
biBUaHUsIDIzIEp1biAyMDIyIDA4OjU5OjQxICswMjAwDQo+Pj4gQ2hyaXN0aWFuIEvDtm5pZyA8
Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4+Pg0KPj4+PiBUaGUgZXhwb3J0ZXIg
aXNuJ3QgZG9pbmcgYW55dGhpbmcgd3JvbmcgaGVyZS4gRE1BLWJ1ZiBhcmUgc3VwcG9zZWQgdG8g
YmUNCj4+Pj4gQ1BVIGNhY2hlZCBhbmQgY2FuIGFsc28gYmUgY2FjaGUgaG90Lg0KPj4+IEhpLA0K
Pj4+DQo+Pj4gd2hhdCBpcyB0aGF0IHN0YXRlbWVudCBiYXNlZCBvbj8NCj4+IE9uIHRoZSBkZXNp
Z24gZG9jdW1lbnRhdGlvbiBvZiBETUEtYnVmIGFuZCB0aGUgYWN0dWFsIGRyaXZlcg0KPj4gaW1w
bGVtZW50YXRpb25zLg0KPj4NCj4+IENvaGVyZW5jeSBhbmQgc25vb3Bpbmcgb2YgdGhlIENQVSBj
YWNoZSBpcyBtYW5kYXRvcnkgZm9yIGRldmljZXMgYW5kDQo+PiByb290IGNvbXBsZXhlcyBpbiB0
aGUgUENJIHNwZWNpZmljYXRpb24uIEluY29oZXJlbnQgYWNjZXNzIGlzIGp1c3QgYW4NCj4+IGV4
dGVuc2lvbi4NCj4+DQo+PiBXZSBpbmhlcml0ZWQgdGhhdCBieSBiYXNpbmcgRE1BLWJ1ZiBvbiB0
aGUgTGludXgga2VybmVsIERNQS1BUEkgd2hpY2ggaW4NCj4+IHR1cm4gaXMgbGFyZ2VseSBiYXNl
ZCBvbiB0aGUgUENJIHNwZWNpZmljYXRpb24uDQo+Pg0KPj4+IFdlcmUgdGhlIChtYW5kYXRvcnkg
Zm9yIENQVSBhY2Nlc3MpIGNwdV9hY2Nlc3NfYmVnaW4vZW5kIGZ1bmN0aW9ucyAmDQo+Pj4gaW9j
dGxzIG5vdCBzdXBwb3NlZCB0byBlbnN1cmUgdGhhdCBDUFUgY2FjaGUgaXMgdXAtdG8tZGF0ZSAv
IENQVSBjYWNoZQ0KPj4+IGlzIGZ1bGx5IGZsdXNoZWQgb3V0Pw0KPj4gTm8sIHRob3NlIGZ1bmN0
aW9ucyBhcmUgdG8gaW5mb3JtIHRoZSBleHBvcnRlciB0aGF0IHRoZSBpbXBvcnRlciBoYXMNCj4+
IHN0YXJ0ZWQgYW5kIGZpbmlzaGVkIGFjY2Vzc2luZyB0aGUgYnVmZmVyIHVzaW5nIHRoZSBDUFUu
DQo+Pg0KPj4gVGhlcmUgaXMgbm8gc2lnbmFsaW5nIGluIHRoZSBvdGhlciBkaXJlY3Rpb24uIElu
IG90aGVyIHdvcmRzIHRoZQ0KPj4gZXhwb3J0ZXIgZG9lc24ndCBpbmZvcm0gdGhlIGltcG9ydGVy
IGFib3V0IENQVSBhY2Nlc3NlcyBiZWNhdXNlIGl0IGlzDQo+PiB0aGUgb3duZXIgb2YgdGhlIGJ1
ZmZlci4NCj4+DQo+PiBJdCdzIHRoZSByZXNwb25zaWJpbGl0eSBvZiB0aGUgaW1wb3J0ZXIgdG8g
bWFrZSBzdXJlIHRoYXQgaXQgY2FuDQo+PiBhY3R1YWxseSBhY2Nlc3MgdGhlIGRhdGEgaW4gdGhl
IGJ1ZmZlci4gSWYgaXQgY2FuJ3QgZ3VhcmFudGVlIHRoYXQgdGhlDQo+PiBpbXBvcnRlciBzaG91
bGRuJ3QgaW1wb3J0IHRoZSBidWZmZXIgaW4gdGhlIGZpcnN0IHBsYWNlLg0KPiBUaGlzIGlzIG5v
dCByZWFsbHkgY29ycmVjdC4gRE1BLWJ1ZiBpbmhlcml0ZWQgdGhlIHRoZSBtYXAvdW5tYXAgcGFy
dA0KPiBmcm9tIHRoZSBETUEgQVBJLCB3aGljaCBvbiBjYWNoZSBjb2hlcmVudCBhcmNoaXRlY3R1
cmUgaXMgbW9zdGx5IGEgbm8tDQo+IG9wIG9yIHRpZXMgaW50byB0aGUgSU9NTVUgaW1wbGVtZW50
YXRpb24gdG8gc2V0IHVwIHRoZSBwYWdldGFibGVzIGZvcg0KPiB0aGUgdHJhbnNsYXRpb24uIE9u
IG5vbiBjYWNoZSBjb2hlcmVudCBhcmNoaXRlY3R1cmVzIHRoaXMgaXMgdGhlIHBvaW50DQo+IHdo
ZXJlIGFueSBhbnkgbmVjZXNzYXJ5IGNhY2hlIG1haW50ZW5hbmNlIGhhcHBlbnMuIERSTSBicmVh
a3MgdGhpcw0KPiBtb2RlbCBieSBjYWNoaW5nIHRoZSBETUEtYnVmIG1hcHBpbmcgZm9yIHBlcmZv
cm1hbmNlIHJlYXNvbnMuDQoNClRoYXQncyBub3Qgb25seSBiZWNhdXNlIG9mIHBlcmZvcm1hbmNl
IHJlYXNvbnMsIGJ1dCBhbHNvIGJlY2F1c2Ugb2YgDQpjb3JyZWN0bmVzcy4NCg0KQXQgbGVhc3Qg
dGhlIFZ1bGthbiBBUEkgYW5kIGEgYnVuY2ggb2YgT3BlbkdMIGV4dGVuc2lvbnMgbWFrZSBpdCAN
Cm1hbmRhdG9yeSBmb3IgdGhlIGJ1ZmZlciB0byBiZSBjYWNoZSBjb2hlcmVudC4gVGhlIGtlcm5l
bCBpcyBzaW1wbHkgbm90IA0KaW5mb3JtZWQgYWJvdXQgZG9tYWluIHRyYW5zZmVycy4NCg0KRm9y
IGV4YW1wbGUgeW91IGNhbiBqdXN0IGRvIGEgQ1BVIGNvcHkgdG8gYSByaW5nIGJ1ZmZlciBhbmQg
dGhlIA0KZXhwZWN0YXRpb24gaXMgdGhhdCBhbiBhbHJlYWR5IHJ1bm5pbmcgc2hhZGVyIHNlZXMg
dGhhdC4NCg0KPiBJbiB0aGUgRE1BIEFQSSBrZWVwaW5nIHRoaW5ncyBtYXBwZWQgaXMgYWxzbyBh
IHZhbGlkIHVzZS1jYXNlLCBidXQgdGhlbg0KPiB5b3UgbmVlZCB0byBkbyBleHBsaWNpdCBkb21h
aW4gdHJhbnNmZXJzIHZpYSB0aGUgZG1hX3N5bmNfKiBmYW1pbHksDQo+IHdoaWNoIERNQS1idWYg
aGFzIG5vdCBpbmhlcml0ZWQuIEFnYWluIHRob3NlIHN5bmMgYXJlIG5vLW9wcyBvbiBjYWNoZQ0K
PiBjb2hlcmVudCBhcmNoaXRlY3R1cmVzLCBidXQgZG8gYW55IG5lY2Vzc2FyeSBjYWNoZSBtYWlu
dGVuYW5jZSBvbiBub24NCj4gY29oZXJlbnQgYXJjaGVzLg0KDQpDb3JyZWN0LCB5ZXMuIENvaGVy
ZW5jeSBpcyBtYW5kYXRvcnkgZm9yIERNQS1idWYsIHlvdSBjYW4ndCB1c2UgDQpkbWFfc3luY18q
IG9uIGl0IHdoZW4geW91IGFyZSB0aGUgaW1wb3J0ZXIuDQoNClRoZSBleHBvcnRlciBjb3VsZCBv
ZiBjb3Vyc2UgbWFrZSB1c2Ugb2YgdGhhdCBiZWNhdXNlIGhlIGlzIHRoZSBvd25lciBvZiANCnRo
ZSBidWZmZXIuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4NCj4gUmVnYXJkcywNCj4gTHVj
YXMNCj4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBs
aXN0cy5saW5hcm8ub3JnCg==

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 446A9557659
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Jun 2022 11:09:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 469E13F30E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Jun 2022 09:09:32 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2060.outbound.protection.outlook.com [40.107.243.60])
	by lists.linaro.org (Postfix) with ESMTPS id 307533EA2E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Jun 2022 09:09:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XSTmVCpckexbFuOO1WmYVhfqDRKJKZ7OnjNqdvWGG4IqZY0Jx9t34NODjknUzOrEv9RvgTCDr+L/Xam16lz/ygfCB5w4kMYICLhcF7ll1XPzyjiufmXtp0pM7Yf2WrSMB5Mdf6FotrcRZFQ0IAw4X0l5NkkwT7W/jJJMz+H5b8fWO+cCZb564JbvVE2d0vSX/dFZcoY5FtDu4g83nMF1qFe6D1arQWGqTrPjmVwK1ISAIuW0e16pqjLEMZnVqblGc86IDrRBCjj2eThy++X4b41i5PtCtF3zu5/Sqp+ggG3f1mbv6A15BryUwwl4ghIrt/9Fybw0OifjLmRCr5mutw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hb7BzAlONp8QWxaeq2BiBfjjhw1SnQWtEXrKTlEy2lE=;
 b=OkZQ26LIQgLmyL5wiD/0HcMaD0wQFmkkvwIiVTXp/BZuapoWW2mT11P7P5Xpby9b1bWsA1qzX7QU+esNIxE83hbZF4UPf11ZcqXrFDtOq5vn0g5MLCO7rFholFlXQznAnH7xmJREawxp/6Ecm4h07xGre6xdIXvioG+83DwwxjlKZCMGAwzjo/Uh4BoSxiTnHx7NX/yFBbRRG+9jSh3cQ+lX+ZlF0Xc8vy/YL8LH7YKtTvGH1C1F5/Kboz0GJnRmt0dpxlMB/xG5sp+yB82QSALYqCSRDzSjj3BbK4jm7Ifs0LJSxwwX9v53J5L7rwuyWzhCTLHLxG1Lkpv4rBp2Sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hb7BzAlONp8QWxaeq2BiBfjjhw1SnQWtEXrKTlEy2lE=;
 b=kyafKdft1TQGMgILoP2vMfO5Lwgh/4mkqMMIQI1NXidwq5jk+XZxMKhuYLNL44oSrWlSk31UTWM2dN9ZJ7qPJgcZ958qSxOKwgLQOE8LDEyBbpyQ0XTDpdj7nfC+44TUP2zj+WdYlsN2Hecdfpl3DA5uAuudcUIx9V9tID7EdeI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by DM5PR12MB2485.namprd12.prod.outlook.com (2603:10b6:4:bb::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5353.16; Thu, 23 Jun
 2022 09:09:25 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::e0fd:45cf:c701:2731]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::e0fd:45cf:c701:2731%6]) with mapi id 15.20.5373.015; Thu, 23 Jun 2022
 09:09:25 +0000
Message-ID: <e691bccc-171d-f674-2817-13a945970f4a@amd.com>
Date: Thu, 23 Jun 2022 11:09:19 +0200
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
 <adc626ec-ff5a-5c06-44ce-09111be450cd@amd.com>
 <fbb228cd78e9bebd7e7921c19e0c4c09d0891f23.camel@pengutronix.de>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <fbb228cd78e9bebd7e7921c19e0c4c09d0891f23.camel@pengutronix.de>
X-ClientProxiedBy: AS9PR06CA0077.eurprd06.prod.outlook.com
 (2603:10a6:20b:464::24) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4178d734-02ef-4281-4d8a-08da54f8115e
X-MS-TrafficTypeDiagnostic: DM5PR12MB2485:EE_
X-Microsoft-Antispam-PRVS: 
	<DM5PR12MB248558243134D1251D389B5983B59@DM5PR12MB2485.namprd12.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	79WkSCg7+xBOe3bjMvmga2qUSKkyz9yXMxGC2NsWb3GDOJ1wZvzpSHxOvgv5/XaYl8Ps0LwMvRMSI6cJivQzgo9s8h85jFxDZFlKVMcBZ48tKgP6HgJmh6pELYVVQdR3gs1xJ/eGbbftIJ4kOZswYvW+gdN47GpqECFuxfX73tJH50j9UHFdNAew+5FaDDRxM0S6cznbrBytWgQf7xNN7vz2v2IyVtSuISIKxlsqPLEWiT3g+BTJyGVaJM0Gv4JguDb25Fv6tXtcS0a7ZVItFYuz9/oWXAuQfx5eyRZwCG1tzv7Xsz0ROTS6SE0wn/ol1hhbf+VDQ1YpaoW96vrRK2qzFXsilwG7FRa4RqLTVcR++cJIBw31R3FzPr3jdZiOXac8eio71Zo4mrVO6v1tVLZPDxGPsvJ/FNoUwIqDphiafZyj4T+KfFRtnYb3kT9no2E2cNrVmogQx68MXhjsYzoLcsvXIhRuqGXN3ctzcy3raCrt7yK7qKd15uqX5Qatun4ZkxVD8qkMOj0yhlgGNpJNbYhG9Y5kAyZImEsNTHGLEbLBa+tIGiU/ntyA7aELuKtBy0Dk4BPf2XlXStQsH2LSo3tiMi/OafnV3gUqyrSLLkIB5XkCswrRkVJsf4f2cPwItFVi+rsVGjVknVeXCqX6B6I983TC8CX8p3Mp8t1FMl5RwZUwAKFmNUyYFG8HFeQE20K6UYfBuUtIsV5w5F755LfH1IlpjLABigUAe1jk/mzgEiTrOmo8d7ou0Y+P86YYrGayCEo8mrDpYtRvA8H6rJrK9eLcuMBe8iAvPvc=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(136003)(396003)(366004)(346002)(376002)(39860400002)(86362001)(66556008)(66574015)(2906002)(110136005)(54906003)(6666004)(36756003)(66946007)(38100700002)(66476007)(31686004)(31696002)(26005)(4326008)(8676002)(316002)(6486002)(6506007)(478600001)(83380400001)(8936002)(5660300002)(186003)(2616005)(6512007)(41300700001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NjQ3NFQ3Mjk2Tm90VUlHUlNWNlpQdmRBVGFwMjE0aDhQanYrZk9SSER0Y3Vi?=
 =?utf-8?B?RXZCZTI3MXlUNzFraWpiRTcvQ3VxaUNKOUZuOTZ2cVBUZkt2VGYwNGQ1S2lm?=
 =?utf-8?B?RTc4c1E4RzZwUVhnOFdSTWg1MEFXU2tkdldkUVdDREdON1BMQXpIQmxtOXRI?=
 =?utf-8?B?dFVSaFdWbWV0NDRiMmF3SEk1RWdxVUZoY3RPOTRXcGErdk1leldRNVdtajN1?=
 =?utf-8?B?NXBEK2lFY3dXUHZCdnoxOHM1RlFhcHMvZEdjdGkwNDVZdDJJbEpxcDU0RHF6?=
 =?utf-8?B?cjE3bVJtamlmUmkreE1kTUw4S1RSMUJ5ekJoWXh1Qi82VFZzV2d4cWljZERN?=
 =?utf-8?B?YXBPTjNBQ1MvbHlZYVlLNlZPS25TdEp6L2N3dFVrUUFPV0lKMlA1NlhMaUpX?=
 =?utf-8?B?Q1RMekU3clowUzc0R2NkZEJLdGxxZHN1eXgyMjlBbE1ORVkrVTlqbElwVkJq?=
 =?utf-8?B?TjRIaUl0YzE1OXQyNDJKUWlwc2NBZHg0QWhkZzhXdndOdEUyY0picVl3Tjh4?=
 =?utf-8?B?OXdLZFFJM1NZTDZPekhXbUdubzI1N1ZhTzMvZVFvOXZGREFJUTBLem1RcEZm?=
 =?utf-8?B?L21mbjlJb2tPV1hDYnNsakhyTU1jcnV6NWZkWU1XMmYxeS94OEpnTUwwbEli?=
 =?utf-8?B?bktSZVZsMVdSeWJETk5Uc2cyeWFyVXdTRlhNS0JXZEJSdURYdUZRanhGSUhP?=
 =?utf-8?B?VkxJWGNsbzBWTnQvb3RDQzF0NGNFUHZFNjVEUTI3U004cC9ObTZ2eUdFcGF0?=
 =?utf-8?B?VGVqWUYyWk15cHFRQytUL1E2MFVkU2hMcHkweTN2OUR6RkIwRitqUVVKSlYx?=
 =?utf-8?B?TkdhSkVJemxPQ1puNEl1elFGczdFMTI3NCtTblorNVQ3SDN2UURITUNUOEV2?=
 =?utf-8?B?Mmh3ODI3bHdnMktPcldSWms5bFdhTkdvcG1HbTlSUlZkcXNyRVUwYlNUcFE0?=
 =?utf-8?B?T205dllvSmoyTll6UGFTaFJYREl6UmJIeTFqKzFFK1lFNmtQR1g4R1FmTXlC?=
 =?utf-8?B?OHUxd2ZNeWVJNjZzekJ5ZzNiR1oxZ0IwNUVna1pWZjBNWk51S0VGeUlHQzBR?=
 =?utf-8?B?WEg2REJjSGEyYnhvR1lmZGovNTArUDNZdEJkdzk1bVhiUGR4WUNQbDBGdVFl?=
 =?utf-8?B?YlZnU0duRUdYMWRmR3I3dmhYZ1RyL2tIbnNzZ2Z4VmtpSnprNnZPNjUvOW1O?=
 =?utf-8?B?azhWb1BYNWlSQzR4UytQZmVCOFBoS0I1V3RuNUp1UktZczJaZE4rQjFlT3hO?=
 =?utf-8?B?VTJaSDdDbGtpc1N0STdrRyttNi9pU01YdmxhakUwQXVrRjU3SGVCMWRRZmlo?=
 =?utf-8?B?cFdJU0haM3YyNFhQVlM2cWJCSjNnQXBKT0E5UG1YdWgwU2M5a3c3MDF5aUhQ?=
 =?utf-8?B?dnRUSHI4K3pPTGNIWXRvekJ2Qmd4bmRBWHlEcGErWVhLa0wzN1dadGNJRTlH?=
 =?utf-8?B?YVJNNlBWZm9iQkkwWDltdkNOaEo5cEZxNWVsT01DWklJMGQ1WGg3Sk0rem9i?=
 =?utf-8?B?LzR1SkZjZUZkZFIvdFZwSVMwb2RBVnhON3grT2dFZlAydFlaNCtCVzFBb2wx?=
 =?utf-8?B?YzhxSDVJNGN4Q254TVMxd25BbGtwdmNjTm5MWkljQ2puMkRZcmVGaFgvSTRh?=
 =?utf-8?B?eTlyd3pBNWZXTXo0VEVURzNHZk5vMm9BU0FBbUxPeHBXMHFaM1dUZ3psOHpX?=
 =?utf-8?B?V1Fxd3JGdUxKeE9FaVgwMFlQK2dPc3VQWFgxQldWbmh1RzVoa2NaREFHMWFm?=
 =?utf-8?B?b2hXbHFKSEdRanNGWEc3YUp1VDVyOWRPOHMzenNCK1RuWjY1T09EelZZSmxW?=
 =?utf-8?B?VjlML0QzQW13aC92YUNCQ3VMRDhzQ3FpK1NCdTdGdVNydWdDWU5lR3RjUVNx?=
 =?utf-8?B?WEdQOFZJdDZFLzJsOEhIeXgzQXJDbGk1N0JNcjEvY3cycTRybHkwUGgvV0VF?=
 =?utf-8?B?QzV1TGpPaVRwSjEwcmFoS21oOXVVNDJwVDM3UFdnY1crVkZvSllVaEplSExn?=
 =?utf-8?B?eXA1TTUrN0tWM3JCQW0vdWJNZExua2tWTDAvdndFWTZ3clFYN3dFdW5wdFlI?=
 =?utf-8?B?TVdJUkpCQkNHdzJyYTZ0UWRlZER2LzZHOWdrQVNwOHkvd2NubWxsM1BUYXRE?=
 =?utf-8?Q?Bcxix3cKj8zsjgkNR0OaEdS5h?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4178d734-02ef-4281-4d8a-08da54f8115e
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2022 09:09:24.8861
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nq8L6qXdxVRpG9r4LYfbJDJeo6X5gt+e9KtUdYdjX5E30Z44hvVLPIYUMiq2Lqw+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB2485
Message-ID-Hash: ULKLRIPHPZH6D57H5SNCY7GEAASENZOZ
X-Message-ID-Hash: ULKLRIPHPZH6D57H5SNCY7GEAASENZOZ
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Sharma, Shashank" <Shashank.Sharma@amd.com>, lkml <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, Nicolas Dufresne <nicolas@ndufresne.ca>, linaro-mm-sig@lists.linaro.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: DMA-buf and uncached system memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ULKLRIPHPZH6D57H5SNCY7GEAASENZOZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjMuMDYuMjIgdW0gMTA6NTggc2NocmllYiBMdWNhcyBTdGFjaDoNCj4gQW0gRG9ubmVyc3Rh
ZywgZGVtIDIzLjA2LjIwMjIgdW0gMTA6MTQgKzAyMDAgc2NocmllYiBDaHJpc3RpYW4gS8O2bmln
Og0KPj4gQW0gMjMuMDYuMjIgdW0gMTA6MDQgc2NocmllYiBMdWNhcyBTdGFjaDoNCj4+PiBBbSBE
b25uZXJzdGFnLCBkZW0gMjMuMDYuMjAyMiB1bSAwOToyNiArMDIwMCBzY2hyaWViIENocmlzdGlh
biBLw7ZuaWc6DQo+Pj4+IEFtIDIzLjA2LjIyIHVtIDA5OjEzIHNjaHJpZWIgUGVra2EgUGFhbGFu
ZW46DQo+Pj4+PiBPbiBUaHUsIDIzIEp1biAyMDIyIDA4OjU5OjQxICswMjAwDQo+Pj4+PiBDaHJp
c3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPj4+Pj4NCj4+
Pj4+PiBUaGUgZXhwb3J0ZXIgaXNuJ3QgZG9pbmcgYW55dGhpbmcgd3JvbmcgaGVyZS4gRE1BLWJ1
ZiBhcmUgc3VwcG9zZWQgdG8gYmUNCj4+Pj4+PiBDUFUgY2FjaGVkIGFuZCBjYW4gYWxzbyBiZSBj
YWNoZSBob3QuDQo+Pj4+PiBIaSwNCj4+Pj4+DQo+Pj4+PiB3aGF0IGlzIHRoYXQgc3RhdGVtZW50
IGJhc2VkIG9uPw0KPj4+PiBPbiB0aGUgZGVzaWduIGRvY3VtZW50YXRpb24gb2YgRE1BLWJ1ZiBh
bmQgdGhlIGFjdHVhbCBkcml2ZXINCj4+Pj4gaW1wbGVtZW50YXRpb25zLg0KPj4+Pg0KPj4+PiBD
b2hlcmVuY3kgYW5kIHNub29waW5nIG9mIHRoZSBDUFUgY2FjaGUgaXMgbWFuZGF0b3J5IGZvciBk
ZXZpY2VzIGFuZA0KPj4+PiByb290IGNvbXBsZXhlcyBpbiB0aGUgUENJIHNwZWNpZmljYXRpb24u
IEluY29oZXJlbnQgYWNjZXNzIGlzIGp1c3QgYW4NCj4+Pj4gZXh0ZW5zaW9uLg0KPj4+Pg0KPj4+
PiBXZSBpbmhlcml0ZWQgdGhhdCBieSBiYXNpbmcgRE1BLWJ1ZiBvbiB0aGUgTGludXgga2VybmVs
IERNQS1BUEkgd2hpY2ggaW4NCj4+Pj4gdHVybiBpcyBsYXJnZWx5IGJhc2VkIG9uIHRoZSBQQ0kg
c3BlY2lmaWNhdGlvbi4NCj4+Pj4NCj4+Pj4+IFdlcmUgdGhlIChtYW5kYXRvcnkgZm9yIENQVSBh
Y2Nlc3MpIGNwdV9hY2Nlc3NfYmVnaW4vZW5kIGZ1bmN0aW9ucyAmDQo+Pj4+PiBpb2N0bHMgbm90
IHN1cHBvc2VkIHRvIGVuc3VyZSB0aGF0IENQVSBjYWNoZSBpcyB1cC10by1kYXRlIC8gQ1BVIGNh
Y2hlDQo+Pj4+PiBpcyBmdWxseSBmbHVzaGVkIG91dD8NCj4+Pj4gTm8sIHRob3NlIGZ1bmN0aW9u
cyBhcmUgdG8gaW5mb3JtIHRoZSBleHBvcnRlciB0aGF0IHRoZSBpbXBvcnRlciBoYXMNCj4+Pj4g
c3RhcnRlZCBhbmQgZmluaXNoZWQgYWNjZXNzaW5nIHRoZSBidWZmZXIgdXNpbmcgdGhlIENQVS4N
Cj4+Pj4NCj4+Pj4gVGhlcmUgaXMgbm8gc2lnbmFsaW5nIGluIHRoZSBvdGhlciBkaXJlY3Rpb24u
IEluIG90aGVyIHdvcmRzIHRoZQ0KPj4+PiBleHBvcnRlciBkb2Vzbid0IGluZm9ybSB0aGUgaW1w
b3J0ZXIgYWJvdXQgQ1BVIGFjY2Vzc2VzIGJlY2F1c2UgaXQgaXMNCj4+Pj4gdGhlIG93bmVyIG9m
IHRoZSBidWZmZXIuDQo+Pj4+DQo+Pj4+IEl0J3MgdGhlIHJlc3BvbnNpYmlsaXR5IG9mIHRoZSBp
bXBvcnRlciB0byBtYWtlIHN1cmUgdGhhdCBpdCBjYW4NCj4+Pj4gYWN0dWFsbHkgYWNjZXNzIHRo
ZSBkYXRhIGluIHRoZSBidWZmZXIuIElmIGl0IGNhbid0IGd1YXJhbnRlZSB0aGF0IHRoZQ0KPj4+
PiBpbXBvcnRlciBzaG91bGRuJ3QgaW1wb3J0IHRoZSBidWZmZXIgaW4gdGhlIGZpcnN0IHBsYWNl
Lg0KPj4+IFRoaXMgaXMgbm90IHJlYWxseSBjb3JyZWN0LiBETUEtYnVmIGluaGVyaXRlZCB0aGUg
dGhlIG1hcC91bm1hcCBwYXJ0DQo+Pj4gZnJvbSB0aGUgRE1BIEFQSSwgd2hpY2ggb24gY2FjaGUg
Y29oZXJlbnQgYXJjaGl0ZWN0dXJlIGlzIG1vc3RseSBhIG5vLQ0KPj4+IG9wIG9yIHRpZXMgaW50
byB0aGUgSU9NTVUgaW1wbGVtZW50YXRpb24gdG8gc2V0IHVwIHRoZSBwYWdldGFibGVzIGZvcg0K
Pj4+IHRoZSB0cmFuc2xhdGlvbi4gT24gbm9uIGNhY2hlIGNvaGVyZW50IGFyY2hpdGVjdHVyZXMg
dGhpcyBpcyB0aGUgcG9pbnQNCj4+PiB3aGVyZSBhbnkgYW55IG5lY2Vzc2FyeSBjYWNoZSBtYWlu
dGVuYW5jZSBoYXBwZW5zLiBEUk0gYnJlYWtzIHRoaXMNCj4+PiBtb2RlbCBieSBjYWNoaW5nIHRo
ZSBETUEtYnVmIG1hcHBpbmcgZm9yIHBlcmZvcm1hbmNlIHJlYXNvbnMuDQo+PiBUaGF0J3Mgbm90
IG9ubHkgYmVjYXVzZSBvZiBwZXJmb3JtYW5jZSByZWFzb25zLCBidXQgYWxzbyBiZWNhdXNlIG9m
DQo+PiBjb3JyZWN0bmVzcy4NCj4+DQo+PiBBdCBsZWFzdCB0aGUgVnVsa2FuIEFQSSBhbmQgYSBi
dW5jaCBvZiBPcGVuR0wgZXh0ZW5zaW9ucyBtYWtlIGl0DQo+PiBtYW5kYXRvcnkgZm9yIHRoZSBi
dWZmZXIgdG8gYmUgY2FjaGUgY29oZXJlbnQuIFRoZSBrZXJuZWwgaXMgc2ltcGx5IG5vdA0KPj4g
aW5mb3JtZWQgYWJvdXQgZG9tYWluIHRyYW5zZmVycy4NCj4+DQo+PiBGb3IgZXhhbXBsZSB5b3Ug
Y2FuIGp1c3QgZG8gYSBDUFUgY29weSB0byBhIHJpbmcgYnVmZmVyIGFuZCB0aGUNCj4+IGV4cGVj
dGF0aW9uIGlzIHRoYXQgYW4gYWxyZWFkeSBydW5uaW5nIHNoYWRlciBzZWVzIHRoYXQuDQo+IFll
cywgdGhhdCBvbmUgaXMgbm90IHJlYWxseSBhbiBpc3N1ZSBhcyB5b3Uga25vdyB0aGF0IGF0IGJ1
ZmZlcg0KPiBjcmVhdGlvbiB0aW1lIGFuZCBjYW4gbWFrZSBzdXJlIHRvIG1hcCB0aG9zZSBidWZm
ZXJzIHVuY2FjaGVkIG9uIG5vbg0KPiBjb2hlcmVudCBhcmNoZXMuIElmIHRoZXJlIGFyZSBubyBl
eHBsaWNpdCBkb21haW4gdHJhbnNmZXIgcG9pbnRzIG5vbg0KPiBjb2hlcmVudCBtdXN0IGJpdGUg
dGhlIGJ1bGxldCBhbmQgYnlwYXNzIHRoZSBDUFUgY2FjaGVzLCBydW5uaW5nDQo+IHBlcmZvcm1h
bmNlIGludG8gdGhlIGdyb3VuZC4NCg0KWWVzLCBleGFjdGx5IHRoYXQgd2FzIHdoYXQgdGhpcyBt
YWlsIHRocmVhZCB3YXMgYWJvdXQuIEJ1dCB0aGlzIGNhc2UgaXMgDQpjdXJyZW50bHkgbm90IHN1
cHBvcnRlZCBieSBETUEtYnVmLg0KDQpJbiBvdGhlciB3b3JkcywgY2FjaGUgY29oZXJlbmN5IGlz
IGN1cnJlbnRseSBtYW5kYXRvcnkgZm9yIGV2ZXJ5Ym9keSANCmludm9sdmVkLg0KDQo+Pj4gSW4g
dGhlIERNQSBBUEkga2VlcGluZyB0aGluZ3MgbWFwcGVkIGlzIGFsc28gYSB2YWxpZCB1c2UtY2Fz
ZSwgYnV0IHRoZW4NCj4+PiB5b3UgbmVlZCB0byBkbyBleHBsaWNpdCBkb21haW4gdHJhbnNmZXJz
IHZpYSB0aGUgZG1hX3N5bmNfKiBmYW1pbHksDQo+Pj4gd2hpY2ggRE1BLWJ1ZiBoYXMgbm90IGlu
aGVyaXRlZC4gQWdhaW4gdGhvc2Ugc3luYyBhcmUgbm8tb3BzIG9uIGNhY2hlDQo+Pj4gY29oZXJl
bnQgYXJjaGl0ZWN0dXJlcywgYnV0IGRvIGFueSBuZWNlc3NhcnkgY2FjaGUgbWFpbnRlbmFuY2Ug
b24gbm9uDQo+Pj4gY29oZXJlbnQgYXJjaGVzLg0KPj4gQ29ycmVjdCwgeWVzLiBDb2hlcmVuY3kg
aXMgbWFuZGF0b3J5IGZvciBETUEtYnVmLCB5b3UgY2FuJ3QgdXNlDQo+PiBkbWFfc3luY18qIG9u
IGl0IHdoZW4geW91IGFyZSB0aGUgaW1wb3J0ZXIuDQo+Pg0KPj4gVGhlIGV4cG9ydGVyIGNvdWxk
IG9mIGNvdXJzZSBtYWtlIHVzZSBvZiB0aGF0IGJlY2F1c2UgaGUgaXMgdGhlIG93bmVyIG9mDQo+
PiB0aGUgYnVmZmVyLg0KPiBJbiB0aGUgZXhhbXBsZSBnaXZlbiBoZXJlIHdpdGggVVZDIHZpZGVv
LCB5b3UgZG9uJ3Qga25vdyB0aGF0IHRoZQ0KPiBidWZmZXIgd2lsbCBiZSBleHBvcnRlZCBhbmQg
bmVlZHMgdG8gYmUgY29oZXJlbnQgd2l0aG91dA0KPiBzeW5jaHJvbml6YXRpb24gcG9pbnRzLCBk
dWUgdG8gdGhlIG1hcHBpbmcgY2FjaGUgYXQgdGhlIERSTSBzaWRlLiBTbw0KPiBWNEwyIG5hdHVy
YWxseSBhbGxvY2F0ZXMgdGhlIGJ1ZmZlcnMgZnJvbSBDUFUgY2FjaGVkIG1lbW9yeS4gSWYgdGhl
DQo+IGV4cGVjdGF0aW9uIGlzIHRoYXQgdGhvc2UgYnVmZmVycyBhcmUgZGV2aWNlIGNvaGVyZW50
IHdpdGhvdXQgcmVseWluZw0KPiBvbiB0aGUgbWFwL3VubWFwX2F0dGFjaG1lbnQgY2FsbHMsIHRo
ZW4gVjRMMiBuZWVkcyB0byBhbHdheXMNCj4gc3luY2hyb25pemUgY2FjaGVzIG9uIERRQlVGIHdo
ZW4gdGhlICBidWZmZXIgaXMgYWxsb2NhdGVkIGZyb20gQ1BVDQo+IGNhY2hlZCBtZW1vcnkgYW5k
IGEgc2luZ2xlIERNQS1idWYgYXR0YWNobWVudCBleGlzdHMuIEFuZCB3aGlsZSB3cml0aW5nDQo+
IHRoaXMgSSByZWFsaXplIHRoYXQgdGhpcyBpcyBwcm9iYWJseSBleGFjdGx5IHdoYXQgVjRMMiBz
aG91bGQgZG8uLi4NCg0KTm8sIHRoZSBleHBlY3RhdGlvbiBpcyB0aGF0IHRoZSBpbXBvcnRlciBj
YW4gZGVhbCB3aXRoIHdoYXRldmVyIHRoZSANCmV4cG9ydGVyIHByb3ZpZGVzLg0KDQpJZiB0aGUg
aW1wb3J0ZXIgY2FuJ3QgYWNjZXNzIHRoZSBETUEtYnVmIGNvaGVyZW50bHkgaXQncyBoaXMgam9i
IHRvIA0KaGFuZGxlIHRoYXQgZ3JhY2VmdWxseS4NCg0KU2VlIGZvciBleGFtcGxlIG9uIEFNRC9J
bnRlbCBoYXJkd2FyZSBtb3N0IG9mIHRoZSBlbmdpbmVzIGNhbiBwZXJmZWN0bHkgDQpkZWFsIHdp
dGggY2FjaGUgY29oZXJlbnQgbWVtb3J5IGFjY2Vzc2VzLiBPbmx5IHRoZSBkaXNwbGF5IGVuZ2lu
ZXMgY2FuJ3QuDQoNClNvIG9uIGltcG9ydCB0aW1lIHdlIGNhbid0IGV2ZW4gc2F5IGlmIHRoZSBh
Y2Nlc3MgY2FuIGJlIGNvaGVyZW50IGFuZCANCnNub29wIHRoZSBDUFUgY2FjaGUgb3Igbm90IGJl
Y2F1c2Ugd2UgZG9uJ3Qga25vdyBob3cgdGhlIGltcG9ydGVkIA0KRE1BLWJ1ZiB3aWxsIGJlIHVz
ZWQgbGF0ZXIgb24uDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4NCj4gUmVnYXJkcywNCj4g
THVjYXMNCj4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==

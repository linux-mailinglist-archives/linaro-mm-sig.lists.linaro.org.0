Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B37F5F58CC
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Oct 2022 19:03:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4DE923F4FC
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Oct 2022 17:03:34 +0000 (UTC)
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (mail-dm3nam02on2059.outbound.protection.outlook.com [40.107.95.59])
	by lists.linaro.org (Postfix) with ESMTPS id E6A0C3F607
	for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Aug 2022 12:03:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UimPin2EiP40JpnzyEPXzyTbuv1fyZO3hXbaTmr+TyoGyAReLF3pC5djycPw1ic2rzMy+LYJ47WWYJBrbp/g+DJofMy1y4cCt2K93lMxyi8WBJTSTV7XMcHdwm9X+IKqXaEWHvvvFH4yPLaJe5Ao93mE/4c5YrDrEBbwn3Hw5xiVKXcUNYuq3LDaR45p2TMQMGQjtvdVnddp+98k9642OOb9OwMPp/Ll13bvbSEkBHYkNgyO362avkdUYofIZQEvqoIlV/9mVTBfMxvr2ngdSbwWlHgB++s6HhVNie0qH/mNtlqCTeHC7a5ZwJF4EPEAu8d65N83wv9GbzWLjU2Yhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YideKR8mq+sGCCarDUTIEGfWSSQf4V8wIykVjq4nJgw=;
 b=NGzDEQtJARCJZOUmhZoUV4dvpO6tkW2iMnzyxAR+z1/6RVttTqz6FX013C24zywriZSAH/0aT13TbRyR1uQT12ahRKEI9xPRUgc0u621iuvHUX8XvCMtTo531R3Nh5gFUYHYff/3KHGdBUk+msO9ioCpuzTmmLlKod5YpQ0zlfflH58oymtm3zhSZD8VM6FUzrOJqVAMCYVQ86jFfaDkEeXVaDoQ5BLOzMyWIbmq/n3TOPUdUP0+knixTi19l1Tew9zukDJKj/+HyO3kOa2U/1cKVCS79bzaDzj3zgy+Hh/fIDAjoW9yushvWv1luln+YMLbcNkaTmWcoGyDxZGI9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YideKR8mq+sGCCarDUTIEGfWSSQf4V8wIykVjq4nJgw=;
 b=TTyCU4CoXQkRRalu5u2evJqbPl8gzQvbn5axgRhR9lEUEJae1xY8YorCpSYlNBUnIC5Q1UDLZd5UgfisEHaASw7yldlSJwshAlFcA4Gkb0uAO+7xkoleTE0inTpYjCmwP4PuhxYfESFEMOLumSfD3ijlZsm8vgJ0gGTD++BoNQm3n8f1z5IV3bdHBlftPEGpIgk3SqmUTcnjLx4Kb1ZrX8FY4FjkTiq85qCp+swhJG49NpBTF7viG97KTaB+HbBxZNQMPuLcfsdOsYRbMX+uj1rBqKsU9qTM6hjW9ePZR9yhkzYN1IKrqAAb1Jg2NplbjwhvxXsbtd1110WyOyK1Zw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from MN2PR12MB4192.namprd12.prod.outlook.com (2603:10b6:208:1d5::15)
 by SA0PR12MB4557.namprd12.prod.outlook.com (2603:10b6:806:9d::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.19; Thu, 18 Aug
 2022 12:03:33 +0000
Received: from MN2PR12MB4192.namprd12.prod.outlook.com
 ([fe80::462:7fe:f04f:d0d5]) by MN2PR12MB4192.namprd12.prod.outlook.com
 ([fe80::462:7fe:f04f:d0d5%6]) with mapi id 15.20.5525.019; Thu, 18 Aug 2022
 12:03:33 +0000
Date: Thu, 18 Aug 2022 09:03:32 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <Yv4qlOp9n78B8TFb@nvidia.com>
References: <0-v1-9e6e1739ed95+5fa-vfio_dma_buf_jgg@nvidia.com>
 <921de79a-9cb3-4217-f079-4b23958a16aa@amd.com>
Content-Disposition: inline
In-Reply-To: <921de79a-9cb3-4217-f079-4b23958a16aa@amd.com>
X-ClientProxiedBy: BL1PR13CA0230.namprd13.prod.outlook.com
 (2603:10b6:208:2bf::25) To MN2PR12MB4192.namprd12.prod.outlook.com
 (2603:10b6:208:1d5::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f728a750-6cc7-4e08-6995-08da8111ac67
X-MS-TrafficTypeDiagnostic: SA0PR12MB4557:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	YRhSmc4DRIh6CX9RgXUFJv6YYccirKpUki+amWIa0U3NhZdgvqemTcbAUKFzQ7/oqyd1NqbttOtcXsltXHFFicAXJOsGfYUN0UDNAD6G/N6wpXwktBjLBa+J6NkdA/tOx1ddX4XaRJ0gujiShWr7r0Tc0r58gjSLFkO05Qqr6l17yPVbiedibbqXhiWglFmlYbQgJQhDAZAB9uQ5yW7sB7R8rQ0XNi93bjwSfEJEdY8lSlU4oZp9YTq1dzkg+sUJxKWMWARcYkb8RDP4iwuAvU2PTim+ygQlk4DZqCLHQiYITralE6iDl27Ee0ae6TwPMxhN2NsujhqxqcJlzbfx7x/UWkzhLmXQ6Q9XtigubfDO+tQtXyizUSWcwztJmE5blRfWMBqi5DBc85RRhLIHfdi8WFetlz2jjFscCjDiTIEmdylDpFHOV8v4o5rcilwg/N9QXekZ3tdwjGv017ba7J+h1pPm7f1PcNdnlvM/kl0QQyEzAmXkpmAUvXO1yXnMrOoekoKEj1b4b3rgT0dHSJjbHgelpFACsh9ZS8Kb15oEs2UU6WFjU6BNeCJpWT8xYDjg5NZsIRHDkx//clUMJfRso6nKMsH1hbNPz3cgfQjV8IjCk66tfGAQg+GpQpiUragaqVV0BCQN8/bku8PTzqXHFskVtbE/emlBTgk3T/nCiF1UglYpz1CgKBDJQjxWcxkAiO15gmrfkE6a4AFvwA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB4192.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(366004)(376002)(136003)(346002)(396003)(39860400002)(6486002)(54906003)(6916009)(4326008)(66476007)(66946007)(478600001)(66556008)(36756003)(8676002)(8936002)(41300700001)(86362001)(5660300002)(2616005)(7416002)(316002)(2906002)(6506007)(26005)(6512007)(38100700002)(186003)(66574015)(83380400001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dFdWazZ0SHZqM3VIbnhJWHkrdjVFK05WaTVSbVRJM25ybXJaS29zSkVEbnZy?=
 =?utf-8?B?YUNOYS95cU1WbGZHZ2ZiVnIwb1dKbnBEOEdXbWtPWllGdWZ0TUFpWFRqV3Mr?=
 =?utf-8?B?RFBJNlZ6K29HQkZIb2g2UFp2eHJ1ZG9kcTQweDVoNm5NQWlsQ3ExTjVJWTdI?=
 =?utf-8?B?RGJrc2JqWHBaYTl0K2pSRTJ4VjFwbXdXMktjbk1GaVpYUlU1ZWVwRWlDS09h?=
 =?utf-8?B?N0FMMU1wdklVUHFmbjhBZnhKNjlPVWpHS0lCQW00REV2djV3K1NBV1lveFRo?=
 =?utf-8?B?SSt3eStjVU5VbjdZaVdEcllMblV6ZzI2MFRieEdpazVhNTlLM2xXNnhrdEhu?=
 =?utf-8?B?N3ozSUNmK25pdmtKYVc2VDlNRXN6SWhnbTcvZUFjK21EZjEwYXc1ZGFpUGYv?=
 =?utf-8?B?bFNOVytMeDJ1NGdqMjhGellKa01iNndGVmR3aXhHc2JVaUV2elN0bHE5bGl2?=
 =?utf-8?B?M29pQWRqNmgzZkt2eklpTXIvcFF3RGVkMm1ObEZCZjlDcDQwMW1DT1YyZWFN?=
 =?utf-8?B?bENNK0FjSzNabkNUdmQ3c0RtbTZjd3J5L2k5MEtiZUROQ2IyQWNTSlpyb2R4?=
 =?utf-8?B?czdLYWJaRjBZdENTcVdkSVlNNHUwZDk5NGx4dUI1ckFuMHAvaGdrQ2RLVjJk?=
 =?utf-8?B?cmNzcERwN0pYM1Z2QkJhMVU5QlRDK044azh4NTJXQ0JDWTNZSFpUVWwrR3NJ?=
 =?utf-8?B?bDhyK2hjUlJ5VCtVbVBVbG9rTU1qMlYwaVhUOTJtZGJIQjZqWC96SDBLcFJ3?=
 =?utf-8?B?UVp3Vk52eTJweXIrQ1FuTW8wK24wKzQ2aGxRVjI2b1l0WUpXbnpXSW5zMUN1?=
 =?utf-8?B?Y0dSU0QxL2hWTjdsVERXQ3BQQkhxaVV3U2NVRC9WK2diZFQwcWJ6SjJvOGpK?=
 =?utf-8?B?UGUrOCtmTTBkSDVPMitWTmJsTE9TVm1aOTRKZENlREJ0Nzd3WXhIeUp0ZmlB?=
 =?utf-8?B?TmVYbkhwMHNUUlVNcXE4WlFONTVZaFZkeGxGaHk1REdhbWNPUkVzMjl0emJT?=
 =?utf-8?B?TTV4elcweTdocmo4Z1lkN3hOS2dOUVFIVUxyU2JmNTlkRlY3ZS9GS1ViQlps?=
 =?utf-8?B?T1BYdDFWL3NlZHJScXNrY1Y3bjhDQlVTcnpnOE5neFd1RlgzYm5iKzc5WGd6?=
 =?utf-8?B?RTA2Sk9HMmVQYis2Ynlia0hSYU1HWTZoR2E1dHBVZU1ud3pxMkNHWGd3RlE2?=
 =?utf-8?B?ZGI0VlZ1ejFNeFJBZUdTV1BHWHJ5VndyQitYZXZrRDlsYUZtMDdyb1ZaYmlh?=
 =?utf-8?B?SUJlMnQ3R3VyMC9VZm4rTitpYzJPYzFCN3BLNmhUYVJRT1ZVY0Nob0JMdnND?=
 =?utf-8?B?ZFdyMTUvNWZRcDZaVTF5R3UzS2c0bE9CS1Q3OTNxdU40M1NTdmpLYmJMYWdR?=
 =?utf-8?B?TUNZblVYRWErV3NpUm16bW4yOHhzeTN0Uk5oMUEvU2FTSkVzTVNqd2dWUmE5?=
 =?utf-8?B?TXlWRllsNEEzZzJCM0llcG5HZVNYK1RUdDBaaCtDS09GUGtoS2k0VkM0Rm9t?=
 =?utf-8?B?WEFSa1g4WGtoVXhKTXJJa3owZVJWd1EvRHRNeFBOOFRHc01uNnBZUjU2NmZv?=
 =?utf-8?B?WFZDbHJhSDN6NFBBZkxYQ1lhZWNmZlloMVhZeW4rcWw0d1dkdnpGTDFqdENN?=
 =?utf-8?B?MEtDOXdndU15cHBTemNwM2lYb3pKdDZQUFlsL0NEV3dtSjRUb3BvaWhwQm01?=
 =?utf-8?B?TzdtU1dLTXRhT3dZYmtFMUcwQ0JlN0FmTEpCWlR5NWRzblV1WGRHcGpVV1F6?=
 =?utf-8?B?ZXc5YVozNDlXYjFEakFUaFoyWERxZWMwY05sTER5NmtrT2pDejJyY1NDNnI4?=
 =?utf-8?B?c0pqNTM1VW5lNHlnMEJ3RUdvVVdOTWFYWXpvVXl5Q2xBSVIwYWN4c3VjczJZ?=
 =?utf-8?B?cktWYmxwUE44a2ZKODNjcnlFTXBJVUk4ZldpaGUyWEJWeWFWRnM3VWdGUjVF?=
 =?utf-8?B?bXZuKytRVkpmMkZKdUNJRVlYVDYwUUs3S0NXTTJrOXo1d3BtN1o1eGhBTitX?=
 =?utf-8?B?a0dOcktDYVZCRzg2Mi8za2MvOWordHU5dmttQU83eHRQRTJEQmxuSHlkU3Qy?=
 =?utf-8?B?ek4yTmg1S09TRldodWM4ZXZxRFJ2VFplMzhpTEVLL3VUcnNmbmR5L0NkYTZI?=
 =?utf-8?Q?+ancfe7QLiujrZNH+3YHv484U?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f728a750-6cc7-4e08-6995-08da8111ac67
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB4192.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2022 12:03:33.5107
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HP22cB9FqEoBhJuKULdNkcA363T/+Sqf9AKv1Zlf4zoxWPM7crDvVPgZqQcODBsx
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR12MB4557
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: P7B2UQQP45QKIPOF52RJJB5W43DMTL67
X-Message-ID-Hash: P7B2UQQP45QKIPOF52RJJB5W43DMTL67
X-Mailman-Approved-At: Wed, 05 Oct 2022 16:59:32 +0000
CC: Alex Williamson <alex.williamson@redhat.com>, Cornelia Huck <cohuck@redhat.com>, dri-devel@lists.freedesktop.org, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org, Maor Gottlieb <maorg@nvidia.com>, Oded Gabbay <ogabbay@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/4] Allow MMIO regions to be exported through dma-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/P7B2UQQP45QKIPOF52RJJB5W43DMTL67/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBBdWcgMTgsIDIwMjIgYXQgMDE6MDc6MTZQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gQW0gMTcuMDguMjIgdW0gMTg6MTEgc2NocmllYiBKYXNvbiBHdW50aG9ycGU6
DQo+ID4gZG1hLWJ1ZiBoYXMgYmVjb21lIGEgd2F5IHRvIHNhZmVseSBhY3F1aXJlIGEgaGFuZGxl
IHRvIG5vbi1zdHJ1Y3QgcGFnZQ0KPiA+IG1lbW9yeSB0aGF0IGNhbiBzdGlsbCBoYXZlIGxpZmV0
aW1lIGNvbnRyb2xsZWQgYnkgdGhlIGV4cG9ydGVyLiBOb3RhYmx5DQo+ID4gUkRNQSBjYW4gbm93
IGltcG9ydCBkbWEtYnVmIEZEcyBhbmQgYnVpbGQgdGhlbSBpbnRvIE1ScyB3aGljaCBhbGxvd3Mg
Zm9yDQo+ID4gUENJIFAyUCBvcGVyYXRpb25zLiBFeHRlbmQgdGhpcyB0byBhbGxvdyB2ZmlvLXBj
aSB0byBleHBvcnQgTU1JTyBtZW1vcnkNCj4gPiBmcm9tIFBDSSBkZXZpY2UgQkFScy4NCj4gPiAN
Cj4gPiBUaGlzIHNlcmllcyBzdXBwb3J0cyBhIHVzZSBjYXNlIGZvciBTUERLIHdoZXJlIGEgTlZN
ZSBkZXZpY2Ugd2lsbCBiZSBvd25lZA0KPiA+IGJ5IFNQREsgdGhyb3VnaCBWRklPIGJ1dCBpbnRl
cmFjdGluZyB3aXRoIGEgUkRNQSBkZXZpY2UuIFRoZSBSRE1BIGRldmljZQ0KPiA+IG1heSBkaXJl
Y3RseSBhY2Nlc3MgdGhlIE5WTWUgQ01CIG9yIGRpcmVjdGx5IG1hbmlwdWxhdGUgdGhlIE5WTWUg
ZGV2aWNlJ3MNCj4gPiBkb29yYmVsbCB1c2luZyBQQ0kgUDJQLg0KPiA+IA0KPiA+IEhvd2V2ZXIs
IGFzIGEgZ2VuZXJhbCBtZWNoYW5pc20sIGl0IGNhbiBzdXBwb3J0IG1hbnkgb3RoZXIgc2NlbmFy
aW9zIHdpdGgNCj4gPiBWRklPLiBJIGltYWdpbmUgdGhpcyBkbWFidWYgYXBwcm9hY2ggdG8gYmUg
dXNhYmxlIGJ5IGlvbW11ZmQgYXMgd2VsbCBmb3INCj4gPiBnZW5lcmljIGFuZCBzYWZlIFAyUCBt
YXBwaW5ncy4NCj4gDQo+IEluIGdlbmVyYWwgbG9va3MgZ29vZCB0byBtZSwgYnV0IHdlIHJlYWxs
eSBuZWVkIHRvIGdldCBhd2F5IGZyb20gdXNpbmcNCj4gc2dfdGFibGVzIGZvciB0aGlzIGhlcmUu
DQo+IA0KPiBUaGUgb25seSB0aGluZyBJJ20gbm90IDEwMCUgY29udmluY2VkIG9mIGlzIGRtYV9i
dWZfdHJ5X2dldCgpLCBJJ3ZlIHNlZW4NCj4gdGhpcyBpbmNvcnJlY3RseSB1c2VkIHNvIG1hbnkg
dGltZXMgdGhhdCBJIGNhbid0IGNvdW50IHRoZW0gYW55IG1vcmUuDQo+IA0KPiBXb3VsZCB0aGF0
IGJlIHNvbWVob3cgYXZvaWRhYmxlPyBPciBjb3VsZCB5b3UgYXQgbGVhc3QgZXhwbGFpbiB0aGUg
dXNlIGNhc2UNCj4gYSBiaXQgYmV0dGVyLg0KDQpJIGRpZG4ndCBzZWUgYSB3YXksIG1heWJlIHlv
dSBrbm93IG9mIG9uZQ0KDQpWRklPIG5lZWRzIHRvIG1haW50YWluIGEgbGlzdCBvZiBkbWFidWYg
RkRzIHRoYXQgaGF2ZSBiZWVuIGNyZWF0ZWQgYnkNCnRoZSB1c2VyIGF0dGFjaGVkIHRvIGVhY2gg
dmZpb19kZXZpY2U6DQoNCmludCB2ZmlvX3BjaV9jb3JlX2ZlYXR1cmVfZG1hX2J1ZihzdHJ1Y3Qg
dmZpb19wY2lfY29yZV9kZXZpY2UgKnZkZXYsIHUzMiBmbGFncywNCgkJCQkgIHN0cnVjdCB2Zmlv
X2RldmljZV9mZWF0dXJlX2RtYV9idWYgX191c2VyICphcmcsDQoJCQkJICBzaXplX3QgYXJnc3op
DQp7DQoJZG93bl93cml0ZSgmdmRldi0+bWVtb3J5X2xvY2spOw0KCWxpc3RfYWRkX3RhaWwoJnBy
aXYtPmRtYWJ1ZnNfZWxtLCAmdmRldi0+ZG1hYnVmcyk7DQoJdXBfd3JpdGUoJnZkZXYtPm1lbW9y
eV9sb2NrKTsNCg0KQW5kIGRtYWJ1ZiBGRCdzIGFyZSByZW1vdmVkIGZyb20gdGhlIGxpc3Qgd2hl
biB0aGUgdXNlciBjbG9zZXMgdGhlIEZEOg0KDQpzdGF0aWMgdm9pZCB2ZmlvX3BjaV9kbWFfYnVm
X3JlbGVhc2Uoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikNCnsNCgkJZG93bl93cml0ZSgmcHJpdi0+
dmRldi0+bWVtb3J5X2xvY2spOw0KCQlsaXN0X2RlbF9pbml0KCZwcml2LT5kbWFidWZzX2VsbSk7
DQoJCXVwX3dyaXRlKCZwcml2LT52ZGV2LT5tZW1vcnlfbG9jayk7DQoNCldoaWNoIHRoZW4gcG9z
ZXMgdGhlIHByb2JsZW06IEhvdyBkbyB5b3UgaXRlcmF0ZSBvdmVyIG9ubHkgZG1hX2J1ZidzDQp0
aGF0IGFyZSBzdGlsbCBhbGl2ZSB0byBleGVjdXRlIG1vdmU/DQoNClRoaXMgc2VlbXMgbmVjZXNz
YXJ5IGFzIHBhcnRzIG9mIHRoZSBkbWFfYnVmIGhhdmUgYWxyZWFkeSBiZWVuDQpkZXN0cm95ZWQg
YnkgdGhlIHRpbWUgdGhlIHVzZXIncyByZWxlYXNlIGZ1bmN0aW9uIGlzIGNhbGxlZC4NCg0KV2hp
Y2ggSSBzb2x2ZWQgbGlrZSB0aGlzOg0KDQoJZG93bl93cml0ZSgmdmRldi0+bWVtb3J5X2xvY2sp
Ow0KCWxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZShwcml2LCB0bXAsICZ2ZGV2LT5kbWFidWZzLCBk
bWFidWZzX2VsbSkgew0KCQlpZiAoIWRtYV9idWZfdHJ5X2dldChwcml2LT5kbWFidWYpKQ0KCQkJ
Y29udGludWU7DQoNClNvIHRoZSBzY2VuYXJpb3MgcmVzb2x2ZSBhczoNCiAtIENvbmN1cnJlbnQg
cmVsZWFzZSBpcyBub3QgaW4gcHJvZ3Jlc3M6IGRtYV9idWZfdHJ5X2dldCgpIHN1Y2NlZWRzDQog
ICBhbmQgcHJldmVudHMgY29uY3VycmVudCByZWxlYXNlIGZyb20gc3RhcnRpbmcNCiAtIFJlbGVh
c2UgaGFzIHN0YXJ0ZWQgYnV0IG5vdCByZWFjaGVkIGl0cyBtZW1vcnlfbG9jazoNCiAgIGRtYV9i
dWZfdHJ5X2dldCgpIGZhaWxzDQogLSBSZWxlYXNlIGhhcyBzdGFydGVkIGJ1dCBwYXNzZWQgaXRz
IG1lbW9yeV9sb2NrOiBkbWFidWYgaXMgbm90IG9uDQogICB0aGUgbGlzdCBzbyBkbWFfYnVmX3Ry
eV9nZXQoKSBpcyBub3QgY2FsbGVkLg0KDQpKYXNvbg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==

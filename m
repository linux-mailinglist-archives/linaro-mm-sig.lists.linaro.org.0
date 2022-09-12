Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 945A05B5696
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Sep 2022 10:49:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BF679479DA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Sep 2022 08:48:59 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2050.outbound.protection.outlook.com [40.107.223.50])
	by lists.linaro.org (Postfix) with ESMTPS id 588153ED8A
	for <linaro-mm-sig@lists.linaro.org>; Mon, 12 Sep 2022 08:48:57 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ELGYozPbftZ4qzwNqRJsIGu6yn+jV7XWkVmaouaR00bFRBLzjheLpZOVefF1eDdjvO0D2MG1kcu3Qnq4ngAbciq8+qOpF+avkliAeFiKFBpJUZMmdTtHS6qb3tYWIV8Yp+ObXB4SJX7y2DFZ2BZhxzup9DF0qYSMIiF9rwd13gEL0nQ/Xy+DAbitkxd+Fk27q3flxghYZgrcG14Um9o/kHJ6jFgunE5QDTbumUn7SK9aZ+M/EIX6tqgzPejqZLPagP7nObw8XgF9OXc3RjMN0Ry7JrI/YaYU6OBbYdrROzVRLA57RWJEydmnGuXB4EzDyyULMmmm46RIup71jkX01A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TV588lQOFB8OXXEpDXP5ZlLgBZdx1/c5OoTXnsSCExg=;
 b=gfWvMT3kFlDmwf/0SEgx9ZYqrUVDUradNu7DLTCwFOCEA3atCzYpA/6an+t2/6Hsbw6urWZiAVWjz2G2gmTiIa7daUyprbtbzhkNAsgB+wdJEBHhvOyfUPrDLB5dBkL5M32vQUCgSlcH6Bc9FLXdgNKR21Ywa1oTz1C/c46mvATwhFib3+FMs6p8YzLkzSxL6T4hnxYe60swYZnwPLtHVGF4oKhv+8udxankYQscFvZWG9cZ+m6eTiLIY+tSjMkT3sNH/RfA9EOkuWQyTcz5uE6MtuZhS+7SPPBgg82KqlMriHnTku7tckTXdidbXLEI7GURSVYAp6hobwiVFxZIMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TV588lQOFB8OXXEpDXP5ZlLgBZdx1/c5OoTXnsSCExg=;
 b=3MF2Mfi81f/j2MfOA3YxtOWJlobGyDVUb4kFUI4Rghng3IAZ2UcJfugDV0LcUOtjyo6D+Ae7sMoQlOXR2PNNr0dFV+QBTTNinMYdwwqCVwfz2Z1M4lH3QENWmmODWp5W26r3BostBZCj9Hdg5UG6GpnD5mETitNOxACRxcDtGEA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by BN9PR12MB5323.namprd12.prod.outlook.com (2603:10b6:408:104::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.19; Mon, 12 Sep
 2022 08:48:56 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::653f:e59b:3f40:8fed]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::653f:e59b:3f40:8fed%6]) with mapi id 15.20.5612.022; Mon, 12 Sep 2022
 08:48:55 +0000
Message-ID: <671e3417-db4d-1c6e-a0c7-ecab81d91022@amd.com>
Date: Mon, 12 Sep 2022 10:48:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Arvind Yadav <Arvind.Yadav@amd.com>, andrey.grodzovsky@amd.com,
 shashank.sharma@amd.com, amaranath.somalapuram@amd.com,
 Arunpravin.PaneerSelvam@amd.com, sumit.semwal@linaro.org,
 gustavo@padovan.org, airlied@linux.ie, daniel@ffwll.ch,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20220909170845.4946-1-Arvind.Yadav@amd.com>
 <20220909170845.4946-7-Arvind.Yadav@amd.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20220909170845.4946-7-Arvind.Yadav@amd.com>
X-ClientProxiedBy: AM7PR02CA0026.eurprd02.prod.outlook.com
 (2603:10a6:20b:100::36) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|BN9PR12MB5323:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c503623-56a2-44be-3c05-08da949ba03b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	H1XS4hyt9RfP1Saco/OLV5BEwkwWKzaDI0bwBFmm3iFMjxAtzDlMFH88gL6bB1JRPjeaZWN2WoRD/WjQNie8veF3/d3nwzX4D/Zxt4hDzNf4gSoSGhIsR1dpfFQXddAB3m7oM2A8CKxQG+CPEKIEzU6u3EjsLEKpzZbZjt5VD4gxBiWrZbLWv2lvd5u64R/KC2Ny4KRBHrzGrYlW/q45JjpIDovNoWGwCenUIPHtY/kKpXx1P19ndyQjBM2RTeGHUtmcolv7BR9xDHx9QSxG3UUQuQee6clKW03ob0TRfp7r1+59nLh/3jVtvIcQbLvc0nbIj17GNKdRhnFi2qQC00ZMpXf91UPI6hsHq9vAh9j+/68wQCse76fRTPpBYM0f16NbUR4fN+8XJ3V7BkaUOcPnkkScAHf3q4uJUd9ln7E++Dm2ACaUgIZjpT2gcGoRxAoFrSPCIyd9+L1VmxVrldDiTlNKa/KrruW5JdkypgUU5VoxA5r+BL7llWLAfLwByDFQKBlE6OQ/QKk8l+twFNo9g55RHPOvQ//ZTKIvxqB4R34EQzY/L9HSZy9sSCv4jwlF7pz+NRoHM2Gj40JHKMG97g+wIrTPEzp7mFOcFFekGt3jhDvxrQK7YNaIsqBF//qSqaiXuVs7dUbEbSWRm+OCV0qx0qcDOzIEh3yiW59VyGAQKAW6ACyO0a7if0Itkdi2Ejh32hi4BQrG/nkL9Wutsuy7LZqWM2T47VWkQr3TWaCtF+vSf1/zGduBJCZoSxvu6iFPhJyOe98ExTWMdh4GIxuqDeyy5dLC6DrmC4ArGTkNzGZR7sC/uhdHofYq
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(366004)(376002)(396003)(136003)(39860400002)(346002)(6512007)(41300700001)(86362001)(31696002)(6666004)(6506007)(6486002)(478600001)(2616005)(186003)(921005)(83380400001)(8936002)(5660300002)(38100700002)(36756003)(66556008)(2906002)(31686004)(66476007)(8676002)(66946007)(316002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VDlTYm81QjdkWVZ0T0oyc3NLUk9KU0hmSG96K0REcUN2azlQQllxRzNPN3Fv?=
 =?utf-8?B?Mk5qZ3pwZlYrWS9IN2I5QzJuWHRrY0VCa3hnbVVRZStHQnQ0RjlZWG9VdDVo?=
 =?utf-8?B?U1Y2bjlFQ0c3QjRqU1JnWi9BT2pQT1pEZVpBRHFFc21GUjE3VmF6ZkpWRXVQ?=
 =?utf-8?B?cm5xNXg2MFpUcGFCVndBcXBxUVdRT3lKWUc4TEgwMEVUZWhJQnkxR2JQcXRP?=
 =?utf-8?B?ckFBanpUWGZ2cGp5S2pWVC9URDVUK0haa1BCb2VQaUV2dnIxYy9aeUx5cVVn?=
 =?utf-8?B?dmhyWjR3aGdic2tNNnh4UGFiMEVsQnBZc2RLSXpNK0UyV2tzMWl2VmFYdk1o?=
 =?utf-8?B?Z1o2SUUzbXNVM1pOWW5XZzVsclMvSk5mNjNsOUFmbjgvZ3FuVXIvandTdGJM?=
 =?utf-8?B?eWJQU1Z3a2JZYUNpcVllSkJmM04xOFNIdzdSYUFrem8zQ3hoT3hIK3IwR3VD?=
 =?utf-8?B?ckRCb0pTaG1aaEcwSWUzZ0JYOGZLQlFxc01XNVJ2QUdpVDBzWFVKVGRzWVRZ?=
 =?utf-8?B?aXpMVFcvd2tlQWZwanNhM0RKekw4WnZEWkU3Nnk3WmMrNkVNcGRBOTN2QzVa?=
 =?utf-8?B?d3pNbHRlTHVLSG15ODQrUjFRck5qd1RYNFRwZk1RNytZMWFCRWdrTEhTZ05q?=
 =?utf-8?B?bU11bXg0dU94R3IzcytCK0ZzUHBISkJVSGIxZWozZXFOZXVReU5JUkpBWkFq?=
 =?utf-8?B?SVdVYjVLVjdBSUp6dmlRR01LaFBNY3Z6VVl2SkxnYXJrbmx6eHVLNVlqU2o4?=
 =?utf-8?B?NFlvMnU1aThJcnRka1V0WktpbzIxUGZpQXhobmJpN2pOaWgwYkhQemhTQU1K?=
 =?utf-8?B?Z084WlR6bVBvVEVIdHJUeTU4UjBGTVAvR1JuTUtwQUVzdGg5NHhqK1dUUlRr?=
 =?utf-8?B?SFhFZDB6cmNFMTBWeVNKbmxCRjE5QXh6NjY2RU9iK3BnUE9WdGlYUFZ0NVll?=
 =?utf-8?B?OUg1eHVZTngxZ0J0M2ZVYmVVSkVSOWc2YzM3dm5panNLUEtFQnVYQng3OTU5?=
 =?utf-8?B?b0l5RmJOZndRN2wzMStIa0k2c0FXQ0FuZnE1ZGRvYTFJalF4c280R2RFejJv?=
 =?utf-8?B?Um5vZGxsSmI2VVpIOWp2R09teFkvQVpScFNlQytpeVAxcEN2SUI4M1dNc3dv?=
 =?utf-8?B?TDlMVHIrZTV2cnhTZ25jek5hOVloNjhLSUNiUC9JS1A3dFBxNXNFZUErOWVH?=
 =?utf-8?B?ZU5TZGVWWUxBM0cyQ3Q2K2U2RllYdUhTMUpCSW9WeFY3bTEvWVAwSmJRUnow?=
 =?utf-8?B?d3krdXgwK2U4TUVEOUhJS0xvK2ZlY3ovWC8rYVFFaWxBQVZDMklyUUZ0dmti?=
 =?utf-8?B?RFc0NGpuYmdsOUJkaWV4NTJVeFVQM1o5ZG5Rem5ER0dCYkk2ck5lLzhjdE9O?=
 =?utf-8?B?MmpwNS9rZWVUM2RuYzJteHZ4S2hWUFJYMzdaUzRqZHdSL2Iwd2VDV081bmNB?=
 =?utf-8?B?SUdQR2tMT1BvSHVLWVFWeUsrQU1BU2FsbWl6VWYyVjRVZ3JnQ0N4V1N6bXFv?=
 =?utf-8?B?c2Qzald0KzN6ZlRYL1ZZd1cxUm4wK2RscjMwaUNRU09kTlNTM015VjJYdUR5?=
 =?utf-8?B?SmZDTGxpNTAxYjlYdGJWMHJJQVZmeHY3Y1BKOEdnVXI5SzJaY3NwSTFYR3Nu?=
 =?utf-8?B?ZHNVcE9HekYxSTJNT1RudWFpRDhYV0JKcHkyNGJHdVRrVDZJTkVsUHZkVm05?=
 =?utf-8?B?S25rMDA4MjcyWjBzWWV1V1ovT1lmVjJ1N3VjQUNXbHNLOGZBbEVOQ0xuZWQ4?=
 =?utf-8?B?WWNqVitTdXoyQmIrWlRkNm5iMWFTNUtYZkpQT1gxOFI4eGgwMzNDaGdwa1N0?=
 =?utf-8?B?cmh6TWx2MnZ1ZHprMWhDQVNQendxU2N3QlkrQ0pld2E5aXBMaFZNSXBxQldk?=
 =?utf-8?B?SjRMeHZOV0dDMjJTVTN4c2NRWHc4cHllaUJiUWZ2ZjUvUVFIcmUzbnNLdVhJ?=
 =?utf-8?B?SnRCMlBpVlNsWkh0b3NwRy9wQ3BlS1kyNUc5Z1V1dm45U0NMb2drQ21MNVJS?=
 =?utf-8?B?SytTUk01aXovZWU1R2lwdFJvNVU3VXpMQm5nSW5ZWGI3TnE2ekh0UUdzQmJV?=
 =?utf-8?B?SU83d0JUSzNZN1p0S216NFJEaEZWeDhHOUh1dEFNYzRvRDJ0VnFlZ0gyajF3?=
 =?utf-8?B?RHFsYXhVS1BmRVd6dU80YVVKZGZsV3NITFZoM0J0R1Q5b2M4RnNIOG9aQjh3?=
 =?utf-8?Q?ANEkTsw8MAARsipPlQ3vpOrGcZftv47ovXS8RK+QE9Y6?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c503623-56a2-44be-3c05-08da949ba03b
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2022 08:48:55.8237
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B+NdHh5EaeVOb8qqyLJ5Q/fqt2BXGgS7whPflrMKm8rRpYA2sWP8YTAc5sBeRHVr
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR12MB5323
Message-ID-Hash: ZVBV5JJLYCVAAFORWMIQEAXS2YYY2PSW
X-Message-ID-Hash: ZVBV5JJLYCVAAFORWMIQEAXS2YYY2PSW
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 6/6] dma-buf: Check status of enable-signaling bit on debug
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZVBV5JJLYCVAAFORWMIQEAXS2YYY2PSW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDkuMDkuMjIgdW0gMTk6MDggc2NocmllYiBBcnZpbmQgWWFkYXY6DQo+IEZlbmNlIHNpZ25h
bGluZyBtdXN0IGJlIGVuYWJsZWQgdG8gbWFrZSBzdXJlIHRoYXQNCj4gdGhlIGRtYV9mZW5jZV9p
c19zaWduYWxlZCgpIGZ1bmN0aW9uIGV2ZXIgcmV0dXJucyB0cnVlLg0KPiBTaW5jZSBkcml2ZXJz
IGFuZCBpbXBsZW1lbnRhdGlvbnMgc29tZXRpbWVzIG1lc3MgdGhpcyB1cCwNCj4gdGhpcyBlbnN1
cmVzwqBjb3JyZWN0IGJlaGF2aW91ciB3aGVuIERFQlVHX1dXX01VVEVYX1NMT1dQQVRIDQo+IGlz
IHVzZWQgZHVyaW5nIGRlYnVnZ2luZy4NCj4gVGhpcyBzaG91bGQgbWFrZSBhbnkgaW1wbGVtZW50
YXRpb24gYnVncyByZXN1bHRpbmcgaW4gbm90DQo+IHNpZ25hbGVkIGZlbmNlcyBtdWNoIG1vcmUg
b2J2aW91cy4NCj4NCj4gU2lnbmVkLW9mZi1ieTogQXJ2aW5kIFlhZGF2IDxBcnZpbmQuWWFkYXZA
YW1kLmNvbT4NCj4gLS0tDQo+DQo+IENoYW5nZXMgaW4gdjEsdjIgOg0KPiAxLSBBZGRyZXNzaW5n
IENocmlzdGlhbidzIGNvbW1lbnQgdG8gcmVwbGFjZQ0KPiBDT05GSUdfREVCVUdfV1dfTVVURVhf
U0xPV1BBVEggaW5zdGVhZCBvZiBDT05GSUdfREVCVUdfRlMuDQo+IDItIEFzIHBlciBDaHJpc3Rp
YW4ncyBjb21tZW50IG1vdmluZyB0aGlzIHBhdGNoIGF0IGxhc3Qgc28NCj4gVGhlIHZlcnNpb24g
b2YgdGhpcyBwYXRjaCBpcyBhbHNvIGNoYW5nZWQgYW5kIHByZXZpb3VzbHkNCj4gaXQgd2FzIFtQ
QVRDSCAxLzRdDQo+DQo+IC0tLQ0KPiAgIGluY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggfCA1ICsr
KysrDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQ0KPg0KPiBkaWZmIC0tZ2l0
IGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaCBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgN
Cj4gaW5kZXggNzc1Y2RjMGI0ZjI0Li5iYTFkZGMxNGM1ZDQgMTAwNjQ0DQo+IC0tLSBhL2luY2x1
ZGUvbGludXgvZG1hLWZlbmNlLmgNCj4gKysrIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0K
PiBAQCAtNDI4LDYgKzQyOCwxMSBAQCBkbWFfZmVuY2VfaXNfc2lnbmFsZWRfbG9ja2VkKHN0cnVj
dCBkbWFfZmVuY2UgKmZlbmNlKQ0KPiAgIHN0YXRpYyBpbmxpbmUgYm9vbA0KPiAgIGRtYV9mZW5j
ZV9pc19zaWduYWxlZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCj4gICB7DQo+ICsjaWZkZWYg
Q09ORklHX0RFQlVHX1dXX01VVEVYX1NMT1dQQVRIDQoNCkFzIGJ5IHJldmlldyBjb21tZW50IGZy
b20gVHZydGtvIFVyc3VsaW4gbGV0J3MgYWRkIGEgc2VwYXJhdGUgY29uZmlnIA0Kb3B0aW9uIGZv
ciB0aGlzIGludG8gZHJpdmVycy9kbWEtYnVmL0tjb25maWcNCg0KVGhhbmtzLA0KQ2hyaXN0aWFu
Lg0KDQo+ICsJaWYgKCF0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19FTkFCTEVfU0lHTkFMX0JJVCwg
JmZlbmNlLT5mbGFncykpDQo+ICsJCXJldHVybiBmYWxzZTsNCj4gKyNlbmRpZg0KPiArDQo+ICAg
CWlmICh0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19TSUdOQUxFRF9CSVQsICZmZW5jZS0+ZmxhZ3Mp
KQ0KPiAgIAkJcmV0dXJuIHRydWU7DQo+ICAgDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

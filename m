Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 836907F0F9C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Nov 2023 11:00:06 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2E3B040B2D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Nov 2023 10:00:05 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2057.outbound.protection.outlook.com [40.107.220.57])
	by lists.linaro.org (Postfix) with ESMTPS id 285243ED8E
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Nov 2023 09:59:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="ZXDVaxP/";
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.220.57 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KSNoqBDHIQ7VRGPH3wrOZh78CCxdqKAiCa49ky/Z0OOjUhIIBrhRqtxZp0kofZnPWTIywZ0IZuGo8cmX/OCQvhpMn/uyF5p2l38MYnznc3pY1QK+ype5jk/y8y0ol1q6mXXqq85xG3gTPYMCzzJrb+r8v1+6znzCYGjNkGlA/1rfx0OkEtttv7pLB/MdCiFzTNS7TnLGB0TMWwh2HbPKJE343gXr6kfpHYYIns5fGduX08oZtsD+JXwn/KlQzj61ij1+GctlOgrTU4HPQznc/k1BK4v3IbkSMg4HFSBtdMVlZgtmTUMDdLbdP4JCSHR8WF64ByDINp8rpVHWOqPvFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AFrh/sC7ndqdMaGUxMamCl3xy+XKX/8AaSQFawSJf2c=;
 b=hZouQWpLBmO+SZcFwSsHnxZjaPkx68RIDQpPmPCG3XneW3vuEd77FFmAoNvRzjsFx/8osje9c7cCzEOj4mmEdCy2CMZI9YE61dguO/SiKq2p5Y9b5Td97458DWLHQAPOyLQMqnhfB1tkODkvnixadloVaCwCv4aE6wEbcT2D5kgSZydKHlGlGc1qPJ/si+2nd75OC3gGVfq6t8rzFjCXMkk+7w6tpMF+WiijDnuQ47Wa/QLJ38dT2MfMNXvpCzhFE2ipQFoAOaHLiiX8lqCxtW6ldJ50+rSuwWzTeM8OA1P1HYvbCJsPuvUzDU96sipMVolwL25uh9Fr5MXZGT7rHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AFrh/sC7ndqdMaGUxMamCl3xy+XKX/8AaSQFawSJf2c=;
 b=ZXDVaxP/IDbd7mUlciA5kKraxuIUlZIWqmTJ3O7irmcqdvERKi5yyqMAZKUkbcZygAkjVqCYRu76YlUoXZKMO7EeUTF+cXVXthQ+0k4hc/WmV0dzOT7kA3Gy+JcR3JxJAVvNOo5rESyd5Qg7hcyAYDMGE7ogT/6PyQwAWJhiW48=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by MW3PR12MB4523.namprd12.prod.outlook.com (2603:10b6:303:5b::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.27; Mon, 20 Nov
 2023 09:59:50 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::ca80:8f1c:c11:ded3]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::ca80:8f1c:c11:ded3%7]) with mapi id 15.20.7002.027; Mon, 20 Nov 2023
 09:59:50 +0000
Message-ID: <4ff92772-9194-42db-b8af-8024e1fdf59f@amd.com>
Date: Mon, 20 Nov 2023 10:59:45 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "T.J. Mercier" <tjmercier@google.com>, Kees Cook <keescook@chromium.org>
References: <20231116191409.work.634-kees@kernel.org>
 <CABdmKX1oNw+quAd+ALcgGoz-PPsvy=O6YM4f2_SmP+dQBddzAA@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <CABdmKX1oNw+quAd+ALcgGoz-PPsvy=O6YM4f2_SmP+dQBddzAA@mail.gmail.com>
X-ClientProxiedBy: FR3P281CA0154.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a2::7) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|MW3PR12MB4523:EE_
X-MS-Office365-Filtering-Correlation-Id: 8fd0e950-2d36-4e28-a66b-08dbe9af6f43
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	jvhKcHeoH3d+DNh2eztHUQeuZdT67txD0KPKCwosdqLqoWYGcKuisRlvSOB1EhGcTXXRLGOLHMoCiLeF6+kXMg9q1h1nH38KuqmMPuqMLboH9RXD6KL267RDH81CLjLn4bS5tkAaeWJbSG9DkO8TxqRd60dmgjtkMMbfA5HTwBGw+aLGf7xkJol59/jhlgyk0G0NW4ElT7fOS4YEwL6Lbrl4QD/CU7wGMNnuQAUtDobBW+YlqlVhxUDnm/SI+tUbxYRoEQtkEbZcmqQyGaLZsPm518UrI7UJsqKWUAC61FS8mD/9g5mzq+MXNDp4+K7a+R0w7ClaVfnMexdsvyjLRvqk21Euz2hf2/r/Zz6d32TdUTKhYotGDcRFgScp/I46w324BldTRqMT7kDtZDkFl/ZFIIhsiO2corWHMQenD/8FPgwWA0W5RD/Wtse8JwyRavCXWBU+noaQm+Y2hEhmfIUcMocSGc8LHAifX1ujrapkf6jQABQRtBnRWroG0WIHpiM+YdSoPTggM+EhhIjESCCQHTvycZSXXSHXFlY9FZ3jn6yb8gbGM//NYZmoxcji4mZYB4Xm+3IHeHtVSBXYPXDg3Qfs/5FUEcDdcSqfyxNXkki3FrnphSxkEbnRNg7dKTblCAC05oBkSfUQAieSlZbZHIVtQxcy2vVZJSHh7MeRUzr1ORyBFQJbERxO9Ju6
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(366004)(136003)(396003)(376002)(39860400002)(230922051799003)(64100799003)(451199024)(186009)(1800799012)(2906002)(8936002)(4326008)(8676002)(5660300002)(38100700002)(86362001)(31696002)(41300700001)(36756003)(2616005)(6512007)(26005)(6666004)(53546011)(6506007)(31686004)(83380400001)(66574015)(478600001)(66556008)(66946007)(66476007)(54906003)(110136005)(316002)(966005)(6486002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MjA2ekIwZDhNemZFYVArYmNkdWVwZ3EvYWswek83eGpDYi8xUUM2MWJlWndt?=
 =?utf-8?B?bXZBV0szeU9Yb1dKbjVNTDhWRDI0SnBjT0VKMVdFRGVNUVBXU3NuaGtqM0ly?=
 =?utf-8?B?a0ZYRzZmU1ZVSmFhbmhwL2dPcmRhS3pRZktoUHAzbVZGamR6Z0crbXNUZHR6?=
 =?utf-8?B?SVQ2SWxsZ3NCQ2p3alkrOU15R3lLN24xb0hhWnpLVE9ZajdKMGE2NzlVbDRS?=
 =?utf-8?B?Nkl5WnNPeURHSFFuSkpBLzM2MU8wRUNqYUVPc1YrQ0s0eXNFdnQwanpoT1NC?=
 =?utf-8?B?NCtuM0VVMGZJb29FN2QzYkltdHhZdzM2RDdWVG1KY3ZWRGFSSG5ZdTlqcSt5?=
 =?utf-8?B?QVlMc3Axd3NKcmdwUVloa0VLanZHSkpDRldvSWR6SUNCQUtscGl5SWVCOUR2?=
 =?utf-8?B?M3RURE1PeHJjcXBnSWtNVmpaeWdzWDFETmIzQkJNMzhZcVRTbklSMHg1Y3py?=
 =?utf-8?B?L2lvbzJjZlFDK0lCcGorYzdhTHpmaVYvZUNIcWpnYkd0clBYeXJSclJDQ2Nk?=
 =?utf-8?B?Yk1xcWFrd3o4djhTQjloNHlBZUZHNHpXazlyTTdiMUtnZUp1OFhQc3p2YVRk?=
 =?utf-8?B?RDUrZTRXUXJBUXNWVlIvT2NVM09UMGJ0TWFiVEdpRmNVZG1SOExMVWpUK3ho?=
 =?utf-8?B?OTdzcmI4MklwSTJxaGIyUEhQYTU0MCtYOFJLN2JhV3kyaEMwdzIyZ3BlcnIw?=
 =?utf-8?B?aTJUOEdqU3ZEU0JJMWFDUkxjZHUrRW5tMitZVDcvdngwdnRHTHZITHl5b0s0?=
 =?utf-8?B?R2EvOVVvc0pjRTdCMXRPQWtFVktNMmdoSmNsbVRNTFlsRC9xZTd4NmxXbkl4?=
 =?utf-8?B?eVZVYURucXNnMTY2QVZGSXlyeUkrVkcyYUN0VGdjWG1kUlZwUkdqNW90UWZI?=
 =?utf-8?B?Wk1BQ2xXSjZTRVBWUTQ0bk45TmkwNTk5cUdFb3BOVUdFaDd2VlRCSWJZQk43?=
 =?utf-8?B?aGRCZGJiZXNhVWZoWDQ0MjlEbFh0S3grVkRwVG5GSFRBQ0k1NzROaGVYU1l1?=
 =?utf-8?B?UU5VZUY5YVI3RCthY0ZPL0Yxekg4YkdoaVVPbXNDNzh5YkZkZ2NMVzhkcEJY?=
 =?utf-8?B?VUFpR05wWTBYTTFjYlRpR0NsUXNRaVRHUjFrNmxRSmk0Z2lweXhOOVBwTTI0?=
 =?utf-8?B?YUF5U1VpSjBhZW1MaU9qcXY2V3dMSnN1bFRjUmkxKzhQTXNUUEdnZXRRemUv?=
 =?utf-8?B?ZDcrUE8yYkt0cmh5WFJXWS9tT3YrdmEyRE9wRkY5TEw2M1pLREVZcGJnK2FS?=
 =?utf-8?B?anRjOTZzeEhGOFVTT0VqWG0xcURNTCszZjRXK2JwTlFUcFZjR2VDM1ljbmdo?=
 =?utf-8?B?YjU0VUtZYnJCd1V5WGNRWnRHNFprTzhKQU9pN3J5dEdQYjVSK3lEVGpFdSs4?=
 =?utf-8?B?MlRSK0lzOExsVzljdEJ1K3NwQ1B2ZzJ4VEJQeTZjL2h4OTlpU3ZoZEpxcnA3?=
 =?utf-8?B?dzlPb1dMY3N2WE1hNWlaOWxuZ2NNMnQxS1dxTUZTS0VkUVJzZFNrQmh1TkRs?=
 =?utf-8?B?WlQvQ01nVFZUNE0zeFBLUmpQWlZlRG9yM3h0eUQxK1ZQY3RrM0gxNTdyYUl1?=
 =?utf-8?B?dU5PMHVvZVBqZlplaUFDSUJmWHp5QVhETUdUWlcyWEtyYzVrWTloUVVqUlhw?=
 =?utf-8?B?N3ZCZnd6MklaNlNwTlRUUE1sMERWOE1RQm11MmVabUVtVmM5QUZXYVB2eHVN?=
 =?utf-8?B?aGcwZTl5ZGp5a01jWTdPeGE0NHpRVlU1Q2RwN1ZsKzFjbk9lcDhoOVFlcHpG?=
 =?utf-8?B?OUFMaThzcVpVajFNcWFOblN2Yjk4MXRLeVhvalpRVks4aUU3UGlTNERxRXVw?=
 =?utf-8?B?dTBMbEJxdVl3ZWEzb0lNVi8rVzgzYnp1TDczR29SRW5hc2c2L1ZQRUEzSUh4?=
 =?utf-8?B?a04xL0dxYkl3KzNUUjVHbGFFK0w3WEszOW8wZ1kxU3JId3cvTGg4elBhYlls?=
 =?utf-8?B?QVhpMXFlS2IybmhqRUZRTnpMVFdTNFBvRFdDTkRWR1o4MDdudnkrZFdpYnBE?=
 =?utf-8?B?azJOQUZKNWkvM1VxanVmZWFrVmdPbEw0YWZUNDloaEV6cVBhSWxYRnhBUDA3?=
 =?utf-8?B?K1VmTWduTU41ZHhkTE16MkRKRjMyOE5zdFZxOGpwYkUzQ0I0TVBtOWNpQUJt?=
 =?utf-8?Q?2lhY=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8fd0e950-2d36-4e28-a66b-08dbe9af6f43
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2023 09:59:50.0857
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YivVTmkAJGrSyJapH69LLPoAr4pkBBTerGKFYT/cSU663UBMeAQMIDt+MwVkPc45
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR12MB4523
X-Rspamd-Queue-Id: 285243ED8E
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.99 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.220.57:from];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,vger.kernel.org,lists.freedesktop.org,gmail.com,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: MLEUO744UZI2BGR6KTB55TTH7PVLZOU5
X-Message-ID-Hash: MLEUO744UZI2BGR6KTB55TTH7PVLZOU5
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Azeem Shaikh <azeemshaikh38@gmail.com>, linaro-mm-sig@lists.linaro.org, linux-hardening@vger.kernel.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Replace strlcpy() with strscpy()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MLEUO744UZI2BGR6KTB55TTH7PVLZOU5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTcuMTEuMjMgdW0gMTk6NTAgc2NocmllYiBULkouIE1lcmNpZXI6DQo+IE9uIFRodSwgTm92
IDE2LCAyMDIzIGF0IDExOjE04oCvQU0gS2VlcyBDb29rIDxrZWVzY29va0BjaHJvbWl1bS5vcmc+
IHdyb3RlOg0KPj4gc3RybGNweSgpIHJlYWRzIHRoZSBlbnRpcmUgc291cmNlIGJ1ZmZlciBmaXJz
dC4gVGhpcyByZWFkIG1heSBleGNlZWQNCj4+IHRoZSBkZXN0aW5hdGlvbiBzaXplIGxpbWl0LiBU
aGlzIGlzIGJvdGggaW5lZmZpY2llbnQgYW5kIGNhbiBsZWFkDQo+PiB0byBsaW5lYXIgcmVhZCBv
dmVyZmxvd3MgaWYgYSBzb3VyY2Ugc3RyaW5nIGlzIG5vdCBOVUwtdGVybWluYXRlZFsxXS4NCj4+
IEFkZGl0aW9uYWxseSwgaXQgcmV0dXJucyB0aGUgc2l6ZSBvZiB0aGUgc291cmNlIHN0cmluZywg
bm90IHRoZQ0KPj4gcmVzdWx0aW5nIHNpemUgb2YgdGhlIGRlc3RpbmF0aW9uIHN0cmluZy4gSW4g
YW4gZWZmb3J0IHRvIHJlbW92ZSBzdHJsY3B5KCkNCj4+IGNvbXBsZXRlbHlbMl0sIHJlcGxhY2Ug
c3RybGNweSgpIGhlcmUgd2l0aCBzdHJzY3B5KCkuDQo+Pg0KPj4gTGluazogaHR0cHM6Ly93d3cu
a2VybmVsLm9yZy9kb2MvaHRtbC9sYXRlc3QvcHJvY2Vzcy9kZXByZWNhdGVkLmh0bWwjc3RybGNw
eSBbMV0NCj4+IExpbms6IGh0dHBzOi8vZ2l0aHViLmNvbS9LU1BQL2xpbnV4L2lzc3Vlcy84OSBb
Ml0NCj4+IENjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KPj4gQ2M6
ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4gQ2M6IEF6
ZWVtIFNoYWlraCA8YXplZW1zaGFpa2gzOEBnbWFpbC5jb20+DQo+PiBDYzogbGludXgtbWVkaWFA
dmdlci5rZXJuZWwub3JnDQo+PiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
Pj4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZw0KPj4gU2lnbmVkLW9mZi1ieTog
S2VlcyBDb29rIDxrZWVzY29va0BjaHJvbWl1bS5vcmc+DQo+IFJldmlld2VkLWJ5OiBULkouIE1l
cmNpZXIgPHRqbWVyY2llckBnb29nbGUuY29tPg0KPg0KPiBzdHJzY3B5IHJldHVybnMgLUUyQklH
IHdoZW4gaXQgdHJ1bmNhdGVzIC8gZm9yY2UgbnVsbC10ZXJtaW5hdGVzIHdoaWNoDQo+IHdvdWxk
IHByb3ZpZGUgdGhlIHdyb25nIGFyZ3VtZW50IGZvciBkeW5hbWljX2RuYW1lLCBidXQNCj4gZG1h
X2J1Zl9zZXRfbmFtZXtfdXNlcn0gbWFrZXMgc3VyZSB3ZSBoYXZlIGEgbnVsbC10ZXJtaW5hdGVk
IHN0cmluZyBvZg0KPiB0aGUgYXBwcm9wcmlhdGUgbWF4aW11bSBzaXplIGluIGRtYWJ1Zi0+bmFt
ZS4NCg0KVGhhbmtzIGZvciB0aGF0IGJhY2tncm91bmQgY2hlY2ssIEkgd2FzIGFib3V0IHRvIG5v
dGUgdGhhdCB0aGlzIG1pZ2h0IA0Kbm90IGJlIGEgZ29vZCBpZGVhLg0KDQpMaW51cyBwcmV0dHkg
Y2xlYXJseSBzdGF0ZWQgdGhhdCBoZSBkb2Vzbid0IHdhbnQgdG8gc2VlIHBhdGNoZXMgbGlrZSAN
CnRoYXQgb25lIGhlcmUsIHNlZSB0aGlzIGFydGljbGUgYXMgd2VsbC4gaHR0cHM6Ly9sd24ubmV0
L0FydGljbGVzLzY1OTIxNC8NCg0KSSB0aGluayB0aGUgY29tbWl0IG1lc3NhZ2UgZ2l2ZXMgZW5v
dWdoIHJlYXNvbiB0byBtZXJnZSB0aGUgcGF0Y2gsIHNvIA0KSSdtIGdvaW5nIHRvIHB1c2ggaXQg
dG8gZHJtLW1pc2MtbmV4dC4gQnV0IHBsZWFzZSBtYWtlIHN1cmUgdG8gdHJpcGxlIA0KY2hlY2sg
c3R1ZmYgbGlrZSB0aGlzIGJlZm9yZSBzZW5kaW5nLg0KDQpUaGFua3MsDQpDaHJpc3RpYW4uDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK

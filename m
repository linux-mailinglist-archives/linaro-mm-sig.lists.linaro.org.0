Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8EC6378F9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Nov 2022 13:38:01 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B4EF73EE96
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Nov 2022 12:38:00 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2051.outbound.protection.outlook.com [40.107.94.51])
	by lists.linaro.org (Postfix) with ESMTPS id 4B1BA3EBE4
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Nov 2022 12:37:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=YcXrh5i2;
	arc=pass ("microsoft.com:s=arcselector9901:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.94.51 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hFvhN1xHfwlvfg/JW5Jc4sHRsDe26IKJT/yBpJ/pyQei2eUdYPrVCSj/7wONKALQvQxqnOhuFMTJFkt6uDrqdIQP60T3KeuWb8o21gG0pk/R2Zh9U4YV3MYVXxJja/e9C4pVEYaYU+Gl2YOKH2wmpnvkfsRHMHv+hkYBSUj2vTpm2T0+kE1cnaHth8pmr3/Wm8nqppVdNqE8KTR50lKV/SC6IoGht0V1RbAoJntiAKTRB8ZK384KD9YXRlN2xI1brF1MCh/18SV7Zuq+3+H1/mhTi+rkdmMKYdeqA9/JxaDMnoke5dy+t7OtMnw6kKgGUSoxd4wbyjUCnIYJYo64jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kOeLNjOt/AkC1Px+fUVueqEskL2XhcFRi+cecQ4lGXI=;
 b=Q7VFwceF/qhvTFa/0kWaUmkdrCA6/ccFj00WnA6428TXpUKTu6iE2Dos09pA4bfj/gIeowqbJIL/qHVQ28ypUb8OzwB5lLSEZHVVZyPJGndtmkJW4u8DDTnSf9YBVotIYzlHroxheyqYDRf8ydjZvSKNwARCnMfaP1Ew0c4jFRQB4iavmcoxcZQK+DtZmWA9euiCeR3eAomINtCm7TCIYogoak61XH6UgJraTbDX+nm2QTJUGvTuVan1uEuwQxitxmWHnvAVap0rUIjwcjqauniw2nQ5GeLZV68P/G3XAfNwHFLZhxM6wgecCJHjfeOyF5veGw3nnzMaDtq4zReamg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kOeLNjOt/AkC1Px+fUVueqEskL2XhcFRi+cecQ4lGXI=;
 b=YcXrh5i2INpi3kOXcfrRlDGYrZgH2pdGrE1zMWTCxJoXUqNg9YKbBU9u5fotyrNfl53ci2hS39Qe/M8w9ukmQj0VWoyLBr8NnQ3vB+WUE0/x914P1fbqKz1V0PhB5azTnEgwRxq5aX1D0n9l9QoFYFHq67pWnViIfHZ8GqkuWjs=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by CH2PR12MB4086.namprd12.prod.outlook.com (2603:10b6:610:7c::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.19; Thu, 24 Nov
 2022 12:37:46 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::7d43:3f30:4caf:7421]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::7d43:3f30:4caf:7421%7]) with mapi id 15.20.5857.019; Thu, 24 Nov 2022
 12:37:46 +0000
Message-ID: <689ad89b-0e34-3743-24c9-3f92856720f8@amd.com>
Date: Thu, 24 Nov 2022 13:37:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: cuigaosheng <cuigaosheng1@huawei.com>,
 Charan Teja Kalla <quic_charante@quicinc.com>,
 "T.J. Mercier" <tjmercier@google.com>
References: <20221117062152.3029018-1-cuigaosheng1@huawei.com>
 <f12a5dbe-4626-f6c7-236b-30bb16be1dd6@quicinc.com>
 <99d3aee6-ba3e-5333-6f79-ddbcfc0e8843@amd.com>
 <CABdmKX1UMB0L0PmHB59nijReZef6LUQ3XKXitHZo2YnUrJTz9Q@mail.gmail.com>
 <2c9fa595-e788-5474-4f2b-ffbd08a70d13@amd.com>
 <CABdmKX0KJJV0iQwy0aUNXcLc1DGyLjmh6_Y53asHEoh-uyHzAA@mail.gmail.com>
 <83944425-c177-7918-bcde-9cf7296a613f@amd.com>
 <e12784da-b3e3-ddec-0e84-f968d60097c4@quicinc.com>
 <b2d5d904-99f2-7974-a22d-63a6cf864973@huawei.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <b2d5d904-99f2-7974-a22d-63a6cf864973@huawei.com>
X-ClientProxiedBy: FR2P281CA0022.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:14::9) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|CH2PR12MB4086:EE_
X-MS-Office365-Filtering-Correlation-Id: e014ea8d-b097-4a64-f69b-08dace18b09b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	LzV4DXbWNBXCS3dG+CoHAvW28niVUDumJBpaaiFtX7TgBFrRa//p0movGXAJ1/pbbFCzHEssCrrNX/OCY5/e60HznO8z3NhMAChElUPUhNQi6egCBZyIJeTZME5x4WsWMDsYS233RPIPLkQxrpEeOxINY7+iz/ej0bn25XRrPdki75AjnZ7D83u3Y7tl336Z8a080GA5IOnGWIDuwQkMm5zxZa2AiObbAIW02oQx1OAj9UjCCytQIxPcFBe+OCLi98SSesewu5eUhWnCm4QlpjPCT12G/Ch+FZOJPhhMJfDeYjw5RDq29XbOkYB/MtPKnPQH9sjU5UhXLTAQpW31thUTZvMKMkiVwMEAkE0ARCFn9dmFNgCTwFjKBFcFOZDkvxInxAwcRL7s0czLUsJKhgmIU9nnRmmAqK/vtcroPXLPqQhmzXEzXgXwFH5arR0u6y5VALJtjwSgy0K1+t+tzsZzKkyGFuAyys3/lsEubf0tM/aMZracg+ACdaXccUvcaPO96/LDH1+5PO+3qf6729lGBtTpfBzXnQgFP0itw5/7H5GhqqI4z3WpXIbk+KGMp4Rooe/N8I+PmF6g0T9z50e37W2NOL0Q3HRH5LyndEZPROBAYG+2hMxu7C0HqwD6se7Hq2oe1SpVMa4FzwQX1GwQiBIfKJqxK/SO75qnBky2hgjD1uq95EnXR0NAtzpJi18aHufh8fg9ETUMzfbNCZxqUkeDmixp6iwNGFBJC9M=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(396003)(39860400002)(136003)(366004)(346002)(376002)(451199015)(5660300002)(2906002)(31686004)(83380400001)(66946007)(36756003)(4326008)(66476007)(8676002)(66556008)(110136005)(86362001)(31696002)(316002)(54906003)(8936002)(41300700001)(6486002)(478600001)(6506007)(26005)(6666004)(53546011)(6512007)(2616005)(186003)(66574015)(38100700002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?R2tKODZHUHNhMHlVNUNHdy9JU1BwQW1KV0hBVWlzQVBiaU1uc2MxUVdHUi84?=
 =?utf-8?B?Wm4vVGhsc3BCT1BNc2tWWmo2c3V1T2pqbVk1ekE3REtUNFFQbVNPNFpHSmQy?=
 =?utf-8?B?YjdtRFJjcnprMmxTZzVZQjF4WmNpNnY2ZzVHbmlOd0RJMk80QVpVR0FmV3JE?=
 =?utf-8?B?d1MxaDAzVW5LUnRXZWR1TEJzT1UrSFRHVk9nZUp0M3VRbE1TU0t5RXdOZEI3?=
 =?utf-8?B?dFBzTEpjQkRuNVdXSFVkeFNKbnp4NWhhblJVK3NkcFN0RDdsS1RkMTJqSEJn?=
 =?utf-8?B?UHF2U0doQng3VUZIWk1waUVrd0JLYkpWMkd0dTBXK2hmR2F5V0lPY1UxREhP?=
 =?utf-8?B?NDhweVFnT1BYc0lPUSt2d3B6WHRoak0xTWdsVWhlcDFrTklTcUphcFlyT0NY?=
 =?utf-8?B?Vm1ZVThZU3BRMDdOSWhNTTY2RkNjQXlGVUpKL01wR1NoN2tYYUZOYmt5cFNx?=
 =?utf-8?B?YmMra0crYzA3MWhCN29tSVJYS2xST3lHcU12L3VEb01ndlpLN2FXdk1YZ0N1?=
 =?utf-8?B?Uy9pak03OG9nVTdVWk1xeURMQ2lNcHhTemdCRzBmSjhqd2F6Ty9USWR6Y0dz?=
 =?utf-8?B?NU9QcDZhVjMwc040Y0Y0UmJjOVh1bHpSUzduMmFlUE5KTytXTWdBRVNpSU1O?=
 =?utf-8?B?VDRFU2FPdEJvVFVmakFFQ1EwU3VENUxlR2RHMjdlbktyeFB6aGNaMDdjdHlP?=
 =?utf-8?B?RlNRM3FTY2lWakFKeEI5dTJhaDJOSktmUEpSSHpZUjExTDZNN0pIRUgzRktQ?=
 =?utf-8?B?L05Bd3M5clNrR29lVkxINDN1K1pJaDFTY21wRCsvc0hUT2JSWFBGVmV5YmJU?=
 =?utf-8?B?V0xKYW81MGR2QzdkRmpkMFlBUTUvb2JKU0M0V2xGL25IcFBDTTJXVTZHby8y?=
 =?utf-8?B?QWswQXE3elRuZmpTRFhwRXZrYWtuemxzRFRMN3Z0SFZpM3dnQ0FTZ1NwekE0?=
 =?utf-8?B?d01QRElGckVEeURTckcySk9SMkR6SVhEZHFqOFE5SDNaQndEZ0J2R1lYM2px?=
 =?utf-8?B?S05PK0ZhQXBROXhXOG5JYWhGeWEvK250Sk5EbzhDTGpCQUEwSDZrNXVRWE1Z?=
 =?utf-8?B?QUFZeldDeUtnWW9VNy9NQTBxWDNnVVU1dHVTMzZsMVhDZ1o0OU1kWnpWRkY0?=
 =?utf-8?B?ZG5nSXlZN29qbkU2VUp1d2VGbVFOREFRLzlsaXdhcVdTTjZ5azdZamlsSEtH?=
 =?utf-8?B?YlRkYkRBajhvTjErQjZRVzVEeS8wa1pGLzZXMlVSRkRZak5iRkRVOE40REN4?=
 =?utf-8?B?VmM5V3lSdXFVV1hPZHJIaGF2WUlNbk1rZ1RRRWZna2JxS2t1UkV5d3ByYTRa?=
 =?utf-8?B?b0F1Zit1Ym9nQWcydUZaRFljVXN5VnJmY25yVjZ0dGE0RHdYQkp4d0tvemNv?=
 =?utf-8?B?T05YRzVSNm1aZ0l6OEZIRnBtQkNmMDQ1bDAyM3pCdWJuOHpHb0VoWnRJOVVo?=
 =?utf-8?B?TDAwTVhsZ1lML0xLdHNhMXJkY0N2MzBENWxiV2tlSGFya1pvS3VCNW5Qd0ZE?=
 =?utf-8?B?U3dQdWVjTFU5WlM5TTVpSndtaGZDeE0vMWdKUEJ5ems3R0E1WEozMjJGZk1D?=
 =?utf-8?B?UmNUN0dsUXBBSHVQc3RSckpMejJXVWVGY1pxUVl0MWlWNVJ4cEhWNUxmeW13?=
 =?utf-8?B?K1BUTEY2a0k3bUxXUEUwSkhiV0FsVlJ6M2QrRG1sbHBtaW5HMEtNN3A1K1pZ?=
 =?utf-8?B?aEtCMWtJZm55M3FyM3Evd0V1R2Joa2hKZnBoTlEwb1pOSTlvcjBVWEw1MFdD?=
 =?utf-8?B?U0Zhdm4vNjdzV3A4T3N2Y2g1djBGRkVVSGVvbExjd1VxNFRIS25hNDh4Nktt?=
 =?utf-8?B?NWN5NVpCR3NUMVEvaVBrbFJKc3Q4SlNrOGFqN0gvODZOYVJsazVENm1iOXla?=
 =?utf-8?B?azlRcGo1VWltY2pqUDJTMkNpTnJxS2F6SGo4OHp5SUZoZHh6Q3BQeHdka3kx?=
 =?utf-8?B?c2pHQzFBTWdnK005R1FGZ21JeUI0Q1psT0xLQm1uMDk2allGMUNkcjYxbk1D?=
 =?utf-8?B?cGRkbTN0MkJLdktJVVZNeTN4bmdFeXFWZnNuWjRmVTVtRmJkM1JvdW9xYUhl?=
 =?utf-8?B?RlZxNG9HS2RmK1ZKR1dReTFzN0kvUU96NEVZOHl4aU9reXJ5alJPajlBeTRQ?=
 =?utf-8?Q?yqWM=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e014ea8d-b097-4a64-f69b-08dace18b09b
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Nov 2022 12:37:46.6394
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UoPgDK+GNvk9+N/C6XvBmDGQvJARz5k0m4hGeexzQ2F8IPraZ7XIcO/6ThzIcDZs
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB4086
X-Rspamd-Queue-Id: 4B1BA3EBE4
X-Spamd-Bar: ----------
X-Spamd-Result: default: False [-11.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	RCVD_IN_DNSWL_HI(-1.00)[2603:10b6:408:43::13:received,40.107.94.51:from];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.932];
	DKIM_TRACE(0.00)[amd.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[mail-mw2nam10on2051.outbound.protection.outlook.com:rdns];
	RCPT_COUNT_SEVEN(0.00)[9];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.94.51:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: JZUQSHGDFZOFULEE3FCGHBOQJLMAKER2
X-Message-ID-Hash: JZUQSHGDFZOFULEE3FCGHBOQJLMAKER2
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: sumit.semwal@linaro.org, Dan Carpenter <dan.carpenter@oracle.com>, Pavan Kondeti <quic_pkondeti@quicinc.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Fix possible UAF in dma_buf_export
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JZUQSHGDFZOFULEE3FCGHBOQJLMAKER2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQoNCkFtIDI0LjExLjIyIHVtIDEzOjA1IHNjaHJpZWIgY3VpZ2Fvc2hlbmc6DQo+IFNvbWUgdGlw
czoNCj4gwqDCoMKgIEJlZm9yZSB3ZSBjYWxsIHRoZSBkbWFfYnVmX3N0YXRzX3NldHVwKCksIHdl
IGhhdmUgdG8gZmluaXNoIA0KPiBjcmVhdGluZyB0aGUgZmlsZSwNCj4gb3RoZXJ3aXNlIGRtYV9i
dWZfc3RhdHNfc2V0dXAoKSB3aWxsIHJldHVybiAtRUlOVkFMLCBtYXliZSB3ZSBuZWVkIHRvIA0K
PiB0aGluayBhYm91dA0KPiB0aGlzIHdoZW4gbWFraW5nIGEgbmV3IHBhdGNoLg0KDQpJIHdhcyBh
bHJlYWR5IHdvbmRlcmluZyB3aHkgdGhlIG9yZGVyIGlzIHRoaXMgd2F5Lg0KDQpXaHkgaXMgZG1h
X2J1Zl9zdGF0c19zZXR1cCgpIG5lZWRpbmcgdGhlIGZpbGUgaW4gdGhlIGZpcnN0IHBsYWNlPw0K
DQpUaGFua3MsDQpDaHJpc3RpYW4uDQoNCj4NCj4gSG9wZSB0aGVzZSB0aXBzIGFyZSB1c2VmdWws
IHRoYW5rcyENCj4NCj4gT24gMjAyMi8xMS8yNCAxMzo1NiwgQ2hhcmFuIFRlamEgS2FsbGEgd3Jv
dGU6DQo+PiBUaGFua3MgVC5KIGFuZCBDaHJpc3RpYW4gZm9yIHRoZSBpbnB1dHMuDQo+Pg0KPj4g
T24gMTEvMTkvMjAyMiA3OjAwIFBNLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4+PiDCoMKg
wqDCoCBZZXMsIGV4YWN0bHkgdGhhdCdzIHRoZSBpZGVhLg0KPj4+Pg0KPj4+PiDCoMKgwqDCoCBU
aGUgb25seSBhbHRlcm5hdGl2ZXMgSSBjYW4gc2VlIHdvdWxkIGJlIHRvIGVpdGhlciBtb3ZlIA0K
Pj4+PiBhbGxvY2F0aW5nDQo+Pj4+IMKgwqDCoMKgIHRoZQ0KPj4+PiDCoMKgwqDCoCBmaWxlIGFu
ZCBzbyBjb21wbGV0aW5nIHRoZSBkbWFfYnVmIGluaXRpYWxpemF0aW9uIGxhc3QgYWdhaW4gDQo+
Pj4+IG9yIGp1c3QNCj4+Pj4gwqDCoMKgwqAgaWdub3JlIGVycm9ycyBmcm9tIHN5c2ZzLg0KPj4+
Pg0KPj4+PiDCoMKgwqDCoCA+IElmIHdlIHN0aWxsIHdhbnQgdG8gYXZvaWQgY2FsbGluZyANCj4+
Pj4gZG1hYnVmLT5vcHMtPnJlbGVhc2UoZG1hYnVmKSBpbg0KPj4+PiDCoMKgwqDCoCA+IGRtYV9i
dWZfcmVsZWFzZSBsaWtlIHRoZSBjb21tZW50IHNheXMgSSBndWVzcyB3ZSBjb3VsZCB1c2UNCj4+
Pj4gwqDCoMKgwqAgc3lzZnNfZW50cnkNCj4+Pj4gwqDCoMKgwqAgPiBhbmQgRVJSX1BUUiB0byBm
bGFnIHRoYXQsIG90aGVyd2lzZSBpdCBsb29rcyBsaWtlIHdlJ2QgbmVlZCANCj4+Pj4gYSBiaXQN
Cj4+Pj4gwqDCoMKgwqAgPiBzb21ld2hlcmUuDQo+Pj4+DQo+Pj4+IMKgwqDCoMKgIE5vLCB0aGlz
IHNob3VsZCBiZSBkcm9wcGVkIGFzIGZhciBhcyBJIGNhbiBzZWUuIFRoZSBzeXNmcyBjbGVhbnVw
DQo+Pj4+IMKgwqDCoMKgIGNvZGUNCj4+Pj4gwqDCoMKgwqAgbG9va3MgbGlrZSBpdCBjYW4gaGFu
ZGxlIG5vdCBpbml0aWFsaXplZCBrb2JqIHBvaW50ZXJzLg0KPj4+Pg0KPj4+Pg0KPj4+PiBZZWFo
IHRoZXJlIGlzIGFsc28gdGhlIG51bGwgY2hlY2sgaW4gZG1hX2J1Zl9zdGF0c190ZWFyZG93bigp
IHRoYXQNCj4+Pj4gd291bGQgcHJldmVudCBpdCBmcm9tIHJ1bm5pbmcsIGJ1dCBJIHVuZGVyc3Rv
b2QgdGhlIGNvbW1lbnQgdG8gYmUNCj4+Pj4gcmVmZXJyaW5nIHRvIHRoZSByZWxlYXNlKCkgZG1h
X2J1Zl9vcHMgY2FsbCBpbnRvIHRoZSBleHBvcnRlciB3aGljaA0KPj4+PiBjb21lcyByaWdodCBh
ZnRlciB0aGUgdGVhcmRvd24gY2FsbC4gVGhhdCBsb29rcyBsaWtlIGl0J3MgcHJldmVudGluZw0K
Pj4+PiB0aGUgZnB1dCB0YXNrIHdvcmsgY2FsbGluZyBiYWNrIGludG8gdGhlIGV4cG9ydGVyIGFm
dGVyIHRoZSBleHBvcnRlcg0KPj4+PiBhbHJlYWR5IGdvdCBhbiBlcnJvciBmcm9tIGRtYV9idWZf
ZXhwb3J0KCkuIE90aGVyd2lzZSB0aGUgZXhwb3J0ZXINCj4+Pj4gc2VlcyBhIHJlbGVhc2UoKSBm
b3IgYSBidWZmZXIgdGhhdCBpdCBkb2Vzbid0IGtub3cgYWJvdXQgLyB0aGlua3MNCj4+Pj4gc2hv
dWxkbid0IGV4aXN0LiBTbyBJIGNvdWxkIGltYWdpbmUgYW4gZXhwb3J0ZXIgdHJ5aW5nIHRvIGRv
dWJsZSBmcmVlOg0KPj4+PiBvbmNlIGZvciB0aGUgZmFpbGVkIGRtYV9idWZfZXhwb3J0KCkgY2Fs
bCwgYW5kIGFnYWluIHdoZW4gdGhlDQo+Pj4+IHJlbGVhc2UoKSBvcCBpcyBjYWxsZWQgbGF0ZXIu
DQo+Pj4NCj4+PiBPaCwgdmVyeSBnb29kIHBvaW50IGFzIHdlbGwuIFllYWgsIHRoZW4gY3JlYXRp
bmcgdGhlIGZpbGUgc2hvdWxkDQo+Pj4gcHJvYmFibHkgY29tZSBsYXN0Lg0KPj4+DQo+PiBAR2Fv
c2hlbmc6IENvdWxkIHlvdSBwbGVhc2UgbWFrZSB0aGVzZSBjaGFuZ2VzIG9yIHlvdSBsZXQgbWUg
dG8gZG8/DQo+Pg0KPj4+IFJlZ2FyZHMsDQo+Pj4gQ2hyaXN0aWFuLg0KPj4gLg0KDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

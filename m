Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EBDC0640957
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  2 Dec 2022 16:27:25 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AC9923F457
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  2 Dec 2022 15:27:24 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2063.outbound.protection.outlook.com [40.107.93.63])
	by lists.linaro.org (Postfix) with ESMTPS id 68DF23EF3A
	for <linaro-mm-sig@lists.linaro.org>; Fri,  2 Dec 2022 15:27:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=IgpXW59d;
	arc=pass ("microsoft.com:s=arcselector9901:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.93.63 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O2hTy2vUfBVq8O9mp06DG9qtNIhhMIjzqxF0thLZJNbzWQv+YSN9rCaszmH8tkwNFjBs/q6LmsZAUXfPHG9VTueL7g3J8Zh9GfqroAqJEdGKG/50bj8owgMI0ObcY/tB/BcD+slnAty+KwLxe61KLyCxRERqhbYWKCzUDoojsTDpda230wE/K6docQXgYczFSNKjX5haIVF5Ur9vWowPX8xcs0VwanlEO+2QFPy49bQ6ORPRusNF06MQMS/hKm0YmyPZ8xkGZRaSFh4+5/rToQi7bFy++HfbI758TdP0KEzMKDRo4LJANxzBA1RHSSDgL16ayS3Y1Qcw0oXI0w1atw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/6/T41cufqScErBNRsJJ522pVjWCwKnJqFN7ZXboSpw=;
 b=P9j55mhdx4u86RifeJtC0lWV4u9YtJjp22z8W2+CA2jFD0sUwOOoQ0EfZpDvF6N8qKGTqSnY8S5lkHMtzUAsqjb4ePLXgkgUX0xkVrO4GSH25rsO5dDGeEGJ9ZPf9GYNH6qQUSytHkrLiOPkjMxIsIAUDA+4/qionzD2QPV01rzlWvdmj9fieQo2vKpg2kBIz2v99TzWIh6ozA3Xpd3Hna9oJbWN86fKcU173OZXuJh0T5nQiiwzrvM9NVmP8g0ToxHYVKxqdkOFFlbZCuCb970FtEiu/QNil2pjc/r2WJn98Og5feLPKpymoY/huLSruo7TngQB2hDZnBTs4emasw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/6/T41cufqScErBNRsJJ522pVjWCwKnJqFN7ZXboSpw=;
 b=IgpXW59d52PyPr5/p0fsJ7XtuQsS4UfVHglm0EcqPlyszHsfE3S50s4bS/hyWLpgsLLwgAro6KQAe/ekOg61piZ8DcfcHt7WY/l5Oehjm//qGJ3T9p3wbp6SnKYw/qqzrq2tj4mrNz7WgNuIc0VtrLq9bQGFUfGArtjWeiL6ujQ=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by DS7PR12MB6359.namprd12.prod.outlook.com (2603:10b6:8:94::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Fri, 2 Dec
 2022 15:27:13 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::7d43:3f30:4caf:7421]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::7d43:3f30:4caf:7421%7]) with mapi id 15.20.5880.010; Fri, 2 Dec 2022
 15:27:13 +0000
Message-ID: <24b660e2-ea38-7038-c182-156e1371fdcb@amd.com>
Date: Fri, 2 Dec 2022 16:27:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Daniel Vetter <daniel@ffwll.ch>, Nicolas Dufresne <nicolas@ndufresne.ca>
References: <1e2a6750-9849-e9ee-69d6-e4bfdcfb64f3@gmail.com>
 <CAAFQd5B+VHs62M5Wf2L-xOw=_PoaXT+akAySkeZc75HeA3d0jQ@mail.gmail.com>
 <b2dec9b3-03a7-e7ac-306e-1da024af8982@amd.com>
 <346d6ad023ef8697aafd93ac1b100890f3637e44.camel@ndufresne.ca>
 <CAF6AEGuqgWi0T=B9cb+Uy7aoWBPGQmZ3JbwFcK_45GbkY2nHPg@mail.gmail.com>
 <Y3zeYnufgXJHQAbN@phenom.ffwll.local>
 <ae9ba9ba-3ad3-af23-be66-1540862bf571@amd.com>
 <20221123103338.238571e1@eldfell> <Y35LcspZ385IC4lJ@phenom.ffwll.local>
 <ba6e42f04c436d93bfa71d5dee7fd35ef2245073.camel@ndufresne.ca>
 <Y4cw36MUO+ftP468@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <Y4cw36MUO+ftP468@phenom.ffwll.local>
X-ClientProxiedBy: FR3P281CA0113.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a3::12) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|DS7PR12MB6359:EE_
X-MS-Office365-Filtering-Correlation-Id: dbeb40b7-f000-4788-7bbc-08dad479afea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	7F3iFuf4ct+id2++ncHgb0O0205V20FDNdmm01ePVusHpOk3beZN0eXRja6g4WMc3Yo/qsgk5NSftBRQ8Mcf9pGrrY/RGFJ82RzEKiV7gENpDnHSovUrsRjuMSbMJLdT600Lv0rP4m+Qu8Ok2gamwPHD/5W6P4Y+pX5OJMMwYFaJ1yKNeN/bMaJPJY3Az05BrYmsV/eQczhzJQsnO/qE1w2NonmhTHToOjncHIlL6ow1S3Jz0+GyVWw3jzSWJIP+nWmHrRJqaxddENfa1ry0Jv1RMkpQcPHqrZQA/8b6MCe0iqhOuNCuWzYu5PNrBeVzO0X38OP1cDjJl+wV+4FZkUWTNra3x8/Oz+x8ANmWPWbXLhyPUNp0gqHuz5exHdgu4ENcuQ3JlyN6mQ9oJ+H2HxRBqiQmZwDMXlexsQJ5NPkpcEeOBtv0ZSzn+Uqzq2VeljnTWhGNEUiNZiTu0IWbw/D9zZ2PewJImyTnQxhfHAtxtVuk0Pno8/xfnlg78fbhTXtz3kRAQXVptmsjvPFlOtUYEWjuCc63xzITOv11RDIsHCfNcaqxiaPXVTB+BcKrzHWI4yGoEuvO7P6UGKFDo5QXF6dsdqsB3RkrEsbZUGImUbLpS0pBHjk4LPxJZnvrfWaz6y/l5mF5izLfS1NXG1KUM/qrEy6I0nRX1xe4vJxi6Uleh6gMuE0j1MuQn2Nzke154w+ilBUEcOQjbAqmgou1Pa7ajuGk8oP86sOMmdFARYADzUfqjdSmI2EMnBkm
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(366004)(136003)(396003)(376002)(346002)(451199015)(316002)(966005)(6666004)(6486002)(478600001)(5660300002)(7416002)(36756003)(45080400002)(8936002)(2906002)(6512007)(38100700002)(6506007)(66574015)(2616005)(186003)(54906003)(110136005)(31696002)(31686004)(4326008)(8676002)(41300700001)(86362001)(66556008)(66946007)(66476007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WEgrWkNrQzFMS2ZySWpiU2wxWWQyL1hhU1JiY0FvS2NLUGpOWmpKZDlyR2o3?=
 =?utf-8?B?d21INVRNWWJhL3Z3ZW9mSXZoM014ek5RWlV2S1V5dXQ1Ym9PeFlEOFdRT3dx?=
 =?utf-8?B?QjJvOFNGdkhYUktqN1Z3S05Ick8xRjlTZ0tkZ2Vrc3BtOWJLVENkTGhwS3Ew?=
 =?utf-8?B?d2RWUSs1ODcxMXlJeEE1dVVuTjNCK0J5bzY5b0tCTmNpblRURUlTNHRWUzhm?=
 =?utf-8?B?NG5MMFlsNmM0bk0xMDJKbjNrWThIOTY4UzNJdHlGeFhEeVNGSUIrUTdBNUdZ?=
 =?utf-8?B?aEs1SGw4SCtXWW82N2R1Mkp2ZTRTME1QU2dRdjF0S2QycEJhZTNZbmRjcFlx?=
 =?utf-8?B?dXJ3VXlGZitsTzVXYyt6MFlZZmN2QTRwMkQwWCtFT2p3MVV3YXZVcG5LVzF3?=
 =?utf-8?B?bmFDTm9FY2Fka0g5aG84RFJyNzlIckdXc240czJMK2JWcThLVm5mTWU3WnRq?=
 =?utf-8?B?VkZpQTQxd0wxaWRSRGx0NEVQcGR2OFRSSWFlVXY0ZVFqbkdFY3R2N1gyd1hR?=
 =?utf-8?B?dElvdzBodjFtTkZmQ0dQeEFjWnF3c0kydnYxWEM0am9QSTh1MW5TTVQ0NzlP?=
 =?utf-8?B?UzlHc0hqMmxxNGsycTlqUVhieVJrUk9QZ1RyamJIN3lkS3lINjNVejY2OWtB?=
 =?utf-8?B?eU9Ga1JObHBWbXJnUkJET2NoMVovYkRlbTV3ZWtJaTdNa3B6a2o5RHFvd1lj?=
 =?utf-8?B?RFd3eEQ5VWwvUU1GamE1bG5tSzJXYVpnZFA3clFUdjg4RHBvN1pMdHFSaU5Q?=
 =?utf-8?B?dHJOL1JRT2hJM2dNL3dmZkhNcUQwVnpVenpVRGdScnFiNEVKSkE5WDR2VWRD?=
 =?utf-8?B?cEt2TWloRWFqMDNXNmI1MWsvL0xadUtzSExhd0xWTm02aTlTYVUxZlZQMHFp?=
 =?utf-8?B?RjdWUTFVbWZRcVZrYS9SWGQyejByYWFabGNJbHRYclFJbUplcTVDRVJwQXZK?=
 =?utf-8?B?UDBoMFpDR0RXek43aFc5YVBkRVZLZUFvMkI0SkdwY1B3alRWY2lvTlV3VVRS?=
 =?utf-8?B?YVZybUdSRXZhdlZ4bzlneHAzYkxMZ3IyTkUxYVJPc2pZcEpod2lRQVQyN0Jr?=
 =?utf-8?B?TTlQZjFTWGdYUTBSOHY2M3RuZUl2dENDOHBySkRJUFA1ZUdHeW1UaW5TbEtx?=
 =?utf-8?B?WlBtSmQ3TmFzQ1pLL096dEtvY2dFYVBKUzdyWHRjOFdvNThxUW1tbFdJeHFq?=
 =?utf-8?B?a1NjT2NZbWUvOEdGM2M1YnA4TTQ0cENSOWJpalIvLy9GOWdnT1lxTFVMS25I?=
 =?utf-8?B?OWxmODJTZGdFaEcvblBiZFZMaFlUMEtTTTBaM20yRjVuZEVrUTZ2UGtGMmtY?=
 =?utf-8?B?RTJpSU9ibm9FNkdrb1lMY2lvellxK0ZKb0pJTHFPMjhLdTVJSWZtY3JqUVN4?=
 =?utf-8?B?MnFVWTJhNmpJdC9wYmdJbGhrV0hsaHdmTzZkNkZQWG5LeDU5aUhqaTZQV1VE?=
 =?utf-8?B?T0JHWjZST3g4Zng3MzIrQ29yVVBjSXcxOVh4QkM5R0cxcTBaZi8rT3JxaXhm?=
 =?utf-8?B?TUlnalZCaFZmQnZzVmNFeWw2ZEErUGtTaHNMYVVoQlREdmxWb1BRNi9MRldR?=
 =?utf-8?B?RzdOU1dIb3drNnRObFBUZXNWbFRUQU56K0lUVUlxaFZMUVhhK203SDJUN3JL?=
 =?utf-8?B?NSs3Vjcza1B5a2xOVnpreWZBSE9rTkR1WlJUT3hBQm42bWhPWEFHSHFEelVo?=
 =?utf-8?B?b0NXcGpTckRsOEluSnJDbldoR0FSMFV3aVFXVnpNSUl6ZXNPNjNYSGNIODZ0?=
 =?utf-8?B?bXFQdjl4SWI0K1VwSEd4YWc3ektWVWhpY3RmTlpIOFMyUXNFMVVlbTJLdk03?=
 =?utf-8?B?cFVSZ2R2clhwTGNBTU1RQmFYU2wxQ2JuMXpoL3d4K1YxUVNEUjdwTG9lSzIx?=
 =?utf-8?B?TGZNQjNsYXVwMTJadENmUHVQZGQzWUh3YTF3eXJxRzVzM2JiWWlCYmtGclhx?=
 =?utf-8?B?ZnhKKzdrcDRUZC9DYjhJVm1VV3hSU0E5U3UzMllYZUViNGRBaks1NUF3d2Rh?=
 =?utf-8?B?K1NrUitON29HS0pJT3JWV2hsalk0VVRla3FybVF1ZEVZZlB6U01PYkZJSEk4?=
 =?utf-8?B?bDFjTWxqRUw0blIzK2ZQR0dnaU9pdldFcFhVWXV2SXFKZmxIYW5CNnZaQzhR?=
 =?utf-8?B?aXp4WVZhcXVpMHNqYWlrNnFOSXNubXovNjBIcWlzUUVTUVg4dll5RUtHSHBN?=
 =?utf-8?Q?h8k3bCQLy8VhoTJGlXRj4RA1Jg1xCHc6BO8pLehUcxpD?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dbeb40b7-f000-4788-7bbc-08dad479afea
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2022 15:27:13.6826
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SYT5Fqp43cNOSylF871+ESTcsIHzMLKKnpjhZgH2Yw4bX3+0Q5CiLGJ9kx9CbVTU
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR12MB6359
X-Rspamd-Queue-Id: 68DF23EF3A
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_IN_DNSWL_HI(-1.00)[40.107.93.63:from,2603:10b6:408:43::13:received];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	FREEMAIL_CC(0.00)[gmail.com,chromium.org,pengutronix.de,fooishbar.org,linaro.org,lists.freedesktop.org,lists.linaro.org,vger.kernel.org];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.93.63:from];
	DBL_BLOCKED_OPENRESOLVER(0.00)[NAM10-DM6-obe.outbound.protection.outlook.com:helo];
	RCVD_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: S27NGIGCZLDT2Q3IJELY3W7AJX2TVVQE
X-Message-ID-Hash: S27NGIGCZLDT2Q3IJELY3W7AJX2TVVQE
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Pekka Paalanen <ppaalanen@gmail.com>, Rob Clark <robdclark@gmail.com>, Tomasz Figa <tfiga@chromium.org>, Daniel Stone <daniel@fooishbar.org>, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Try to address the DMA-buf coherency problem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/S27NGIGCZLDT2Q3IJELY3W7AJX2TVVQE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMzAuMTEuMjIgdW0gMTE6MzAgc2NocmllYiBEYW5pZWwgVmV0dGVyOg0KPiBPbiBGcmksIE5v
diAyNSwgMjAyMiBhdCAxMTo0MDowNEFNIC0wNTAwLCBOaWNvbGFzIER1ZnJlc25lIHdyb3RlOg0K
Pj4gTGUgbWVyY3JlZGkgMjMgbm92ZW1icmUgMjAyMiDDoCAxNzozMyArMDEwMCwgRGFuaWVsIFZl
dHRlciBhIMOpY3JpdMKgOg0KPj4+IE9uIFdlZCwgTm92IDIzLCAyMDIyIGF0IDEwOjMzOjM4QU0g
KzAyMDAsIFBla2thIFBhYWxhbmVuIHdyb3RlOg0KPj4+PiBPbiBUdWUsIDIyIE5vdiAyMDIyIDE4
OjMzOjU5ICswMTAwDQo+Pj4+IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1k
LmNvbT4gd3JvdGU6DQo+Pj4+DQo+Pj4+PiBXZSBzaG91bGQgaGF2ZSBjb21lIHVwIHdpdGggZG1h
LWhlYXBzIGVhcmxpZXIgYW5kIG1ha2UgaXQgY2xlYXIgdGhhdA0KPj4+Pj4gZXhwb3J0aW5nIGEg
RE1BLWJ1ZiBmcm9tIGEgZGV2aWNlIGdpdmVzIHlvdSBzb21ldGhpbmcgZGV2aWNlIHNwZWNpZmlj
DQo+Pj4+PiB3aGljaCBtaWdodCBvciBtaWdodCBub3Qgd29yayB3aXRoIG90aGVycy4NCj4+Pj4+
DQo+Pj4+PiBBcGFydCBmcm9tIHRoYXQgSSBhZ3JlZSwgRE1BLWJ1ZiBzaG91bGQgYmUgY2FwYWJs
ZSBvZiBoYW5kbGluZyB0aGlzLg0KPj4+Pj4gUXVlc3Rpb24gbGVmdCBpcyB3aGF0IGRvY3VtZW50
YXRpb24gaXMgbWlzc2luZyB0byBtYWtlIGl0IGNsZWFyIGhvdw0KPj4+Pj4gdGhpbmdzIGFyZSBz
dXBwb3NlZCB0byB3b3JrPw0KPj4+PiBQZXJoYXBzIHNvbWV3aGF0IHJlbGF0ZWQgZnJvbSBEYW5p
ZWwgU3RvbmUgdGhhdCBzZWVtcyB0byBoYXZlIGJlZW4NCj4+Pj4gZm9yZ290dGVuOg0KPj4+PiBo
dHRwczovL25hbTExLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMl
M0ElMkYlMkZsb3JlLmtlcm5lbC5vcmclMkZkcmktZGV2ZWwlMkYyMDIxMDkwNTEyMjc0Mi44NjAy
OS0xLWRhbmllbHMlNDBjb2xsYWJvcmEuY29tJTJGJmFtcDtkYXRhPTA1JTdDMDElN0NjaHJpc3Rp
YW4ua29lbmlnJTQwYW1kLmNvbSU3QzQ1Nzg2YTA4ZTZkYzRhZjI4MTY1MDhkYWQyYmRmOTU3JTdD
M2RkODk2MWZlNDg4NGU2MDhlMTFhODJkOTk0ZTE4M2QlN0MwJTdDMCU3QzYzODA1NDAxMTI5MzUy
MTYyNCU3Q1Vua25vd24lN0NUV0ZwYkdac2IzZDhleUpXSWpvaU1DNHdMakF3TURBaUxDSlFJam9p
VjJsdU16SWlMQ0pCVGlJNklrMWhhV3dpTENKWFZDSTZNbjAlM0QlN0MzMDAwJTdDJTdDJTdDJmFt
cDtzZGF0YT1HanNvSkdOb1BvelRTMlNXZWVpclVSelFhdEk1dmZsOSUyQiUyQmZ6b2F2Z1RidyUz
RCZhbXA7cmVzZXJ2ZWQ9MA0KPj4+Pg0KPj4+PiBJdCBhaW1lZCBtb3N0bHkgYXQgdXNlcnNwYWNl
LCBidXQgc291bmRzIHRvIG1lIGxpa2UgdGhlIGNvaGVyZW5jeSBzdHVmZg0KPj4+PiBjb3VsZCB1
c2UgYSBzZWN0aW9uIG9mIGl0cyBvd24gdGhlcmU/DQo+Pj4gSG0geWVhaCBpdCB3b3VsZCBiZSBn
cmVhdCB0byBsYW5kIHRoYXQgYW5kIHRoZW4gZXZlbnR1YWxseSBleHRlbmQuIERhbmllbD8NCj4+
IFRoZXJlIGlzIGEgbG90IG9mIHRoaW5ncyBkb2N1bWVudGVkIGluIHRoaXMgZG9jdW1lbnQgdGhh
dCBoYXZlIGJlZW4gc2FpZCB0byBiZQ0KPj4gY29tcGxldGVseSB3cm9uZyB1c2VyLXNwYWNlIGJl
aGF2aW91ciBpbiB0aGlzIHRocmVhZC4gQnV0IGl0IHNlZW1zIHRvIHByZS1kYXRlDQo+PiB0aGUg
RE1BIEhlYXBzLiBUaGUgZG9jdW1lbnQgYWxzbyBhc3N1bWUgdGhhdCBETUEgSGVhcHMgY29tcGxl
dGVseSBzb2x2ZXMgdGhlIENNQQ0KPj4gdnMgc3lzdGVtIG1lbW9yeSBpc3N1ZS4gQnV0IGl0IGFs
c28gdW5kZXJsaW5lIGEgdmVyeSBpbXBvcnRhbnQgYXNwZWN0LCB0aGF0DQo+PiB1c2VybGFuZCBp
cyBub3QgYXdhcmUgd2hpY2ggb25lIHRvIHVzZS4gV2hhdCB0aGlzIGRvY3VtZW50IHN1Z2dlc3Qg
dGhvdWdoIHNlZW1zDQo+PiBtb3JlIHJlYWxpc3QgdGhlbiB3aGF0IGhhcyBiZWVuIHNhaWQgaGVy
ZS4NCj4+DQo+PiBJdHMgb3ZlcmFsbCBhIGdyZWF0IGRvY3VtZW50LCBpdCB1bmZvcnR1bmF0ZSB0
aGF0IGl0IG9ubHkgbWFrZXMgaXQgaW50byB0aGUgRFJNDQo+PiBtYWlsaW5nIGxpc3QuDQo+IFRo
ZSBkb2MgaXMgbW9yZSBhYm91dCBkb2N1bWVudCB0aGUgY3VycmVudCBzdGF0dXMgcXVvL2Jlc3Qg
cHJhY3RpY2VzLA0KPiB3aGljaCBpcyB2ZXJ5IG11Y2ggbm90IHVzaW5nIGRtYS1oZWFwcy4NCj4N
Cj4gVGhlIGlzc3VlIHRoZXJlIGlzIHRoYXQgY3VycmVudGx5IHVzZXJzcGFjZSBoYXMgbm8gaWRl
YSB3aGljaCBkbWEtaGVhcCB0bw0KPiB1c2UgZm9yIHNoYXJlZCBidWZmZXJzLCBwbHVzIG5vdCBh
bGwgYWxsb2NhdG9ycyBhcmUgZXhwb3NlZCB0aHJvdWdoIGhlYXBzDQo+IHRvIGJlZ2luIHdpdGgu
IFdlIGhhZCB0aGlzIG5vdGVkIGFzIGEgdG9kbyBpdGVtIChhZGQgc29tZSBkZXZpY2UtPmhlYXAN
Cj4gc3lzZnMgbGlua3Mgd2FzIHRoZSBpZGVhKSwgdW50aWwgdGhhdCdzIGRvbmUgYWxsIHlvdSBj
YW4gZG8gaXMgaGFyZGNvZGUNCj4gdGhlIHJpZ2h0IGhlYXBzIGZvciB0aGUgcmlnaHQgdXNhZ2Ug
aW4gdXNlcnNwYWNlLCB3aGljaCBpcyB3aGF0IGFuZHJvaWQNCj4gZG9lcy4gUGx1cyBhbmRyb2lk
IGRvZXNuJ3QgaGF2ZSBkZ3B1LCBzbyBkb2Vzbid0IG5lZWQgdGhlIG1pc3NpbmcgdHRtDQo+IGhl
YXAuDQoNCkh1aT8gV2h5IGRvIHlvdSB0aGluayB3ZSBzaG91bGQgaGF2ZSBhIFRUTSBoZWFwIGlu
IHRoZSBmaXJzdCBwbGFjZT8NCg0KQXMgZmFyIGFzIEkgY2FuIHNlZSB3ZSBuZWVkIHRocmVlIGRp
ZmZlcmVudCB3YXlzIG9mIGFsbG9jYXRpb246DQoxLiBOb3JtYWwgc3lzdGVtIG1lbW9yeS4NCjIu
IENNQSBiYXNlZC4NCjMuIERldmljZSBzcGVjaWZpYy4NCg0KV2hlbiBhbnkgb2YgdGhlIHBhcnRp
Y2lwYXRpbmcgZGV2aWNlcyBuZWVkcyBDTUEgdGhlbiB1c2VyIHNwYWNlIG11c3QgdXNlIA0KdGhl
IENNQSBoZWFwLCB3aGVuIGFueSBvZiB0aGUgcGFydGljaXBhdGluZyBkZXZpY2VzIG5lZWRzIGRl
dmljZSANCnNwZWNpZmljIG1lbW9yeSB0aGVuIHVzZXIgc3BhY2UgbXVzdCB1c2UgZGV2aWNlIHNw
ZWNpZmljIG1lbW9yeSAoZnJvbSANCnRoYXQgZGV2aWNlKS4NCg0KSXQgc3RpbGwgY2FuIGJlIHRo
YXQgdHdvIGRldmljZXMgY2FuJ3QgdGFsayB3aXRoIGVhY2ggb3RoZXIgYmVjYXVzZSBib3RoIA0K
bmVlZHMgdGhlIGJ1ZmZlciB0byBiZSBhbGxvY2F0ZWQgZnJvbSBkZXZpY2Ugc3BlY2lmaWMgbWVt
b3J5IGZvciBhIA0KcGFydGljdWxhciB1c2UgY2FzZSwgYnV0IGF0IGxlYXN0IGFsbCB0aGUgY2Fz
ZXMgZm9yIGJvdGggbm9uZSBDUFUgY2FjaGUgDQpjb2hlcmVudCBBUk0gZGV2aWNlcyBhcyB3ZWxs
IGFzIGRldmljZSBzcGVjaWZpYyBtZW1vcnkgZm9yIHNjYW5vdXQgDQpzaG91bGQgYmUgaGFuZGxl
ZCB3aXRoIHRoaXMuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4NCj4gQnV0IHllYWggdGhl
IGxvbmctdGVybSBhc3BpcmF0aW9uIGFsc28gaGFzbid0IGNoYW5nZWQsIGJlY2F1c2UgdGhlDQo+
IGRtYS1oZWFwIHRvZG8gbGlzdCBpcyBhbHNvIHZlcnksIHZlcnkgb2xkIGJ5IG5vdyA6LS8NCj4g
LURhbmllbA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZl
QGxpc3RzLmxpbmFyby5vcmcK

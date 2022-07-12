Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A623571B16
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Jul 2022 15:23:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 691504795C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Jul 2022 13:23:50 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2040.outbound.protection.outlook.com [40.107.236.40])
	by lists.linaro.org (Postfix) with ESMTPS id 25AE03F2FE
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Jul 2022 13:23:45 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=En8Y2NEfrYd7K9lolfe/o+wejE1UdqmnRsofiW4Ux3QfRfguKMgNGiv0hTWPUbIImUotIlqOJmCKO8eqe1YQEk7FTQVpDR5hQQv7nQPlidw3FMUig53bZVrb20Y0OZXzn0JLHMiRchymKO3lo/lGimNwOo4VY3lu67y0VdDc5jF/PSzsZWe0vLUZ3T3/eyHXsJJPsmplJrQy5MczOyr/pf1Tjq2zU63YcmkEArV2t68Evq9Lpjt2hsN8jJDCK53gMSK5tiy414GQ07puAUbsBlokhc20w4pcK+xqAza4CNA8AqceA5O7aZfGJ6yvp1EDA/DUqaATK++TSRshEIvBcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WlOo49upum9PVzCKj+wdGX6OUcbUCyH2WFN3XSLn+88=;
 b=GApyPRMh3JqQz+aFle/UiLPQmBJ8gPjOOMn8E0fucLrntCNn80mZeUs+2bnLrh9iB2Del0bQ+0IshCyeB/wMC3fEVKQNzRkfVda1t/w4mH3d2e3VoQJZmpkxXH64e/koBiDWIpavSS1r8uCfQDrrYrmk6zt8EBDCTKOAvRKYuL1yKYAY6TKIeSlf9XGhAcTSHgjWk2ffUea5IDl44jvkO5riGiwrAX5n94HxEM44wWkk6KqurbN6TEdSmAeHOJzF1u2sI38H/c9R+L3hzokjy/8tlug096Nww/jhdb4l7tLu2lJEQmpngnt8vXTfLn7ZHCXkv5/7UJzPraNpcIYDLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WlOo49upum9PVzCKj+wdGX6OUcbUCyH2WFN3XSLn+88=;
 b=Uqjre4GcrhB8zctgC1T557H1213ut8HEJyoAh4YnsMuEyJ7wruDBfnyy9hoi9qcBUEt152N33tgeERNyUtQt9nizi5CpWLC6RtlwLvpmGCMiyjDZORl8wqjwmBUZaCw79Z4cGI/FS5UIuxMn5YEfJvL90rep/OksBeaC5BZ7qkQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by MN2PR12MB3374.namprd12.prod.outlook.com (2603:10b6:208:c9::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.23; Tue, 12 Jul
 2022 13:23:43 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39%2]) with mapi id 15.20.5417.026; Tue, 12 Jul 2022
 13:23:43 +0000
Message-ID: <a3dfc73f-5867-d442-b74d-a890a42753bd@amd.com>
Date: Tue, 12 Jul 2022 15:23:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Alex Deucher <alexdeucher@gmail.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
References: <20220712131201.131475-1-christian.koenig@amd.com>
 <CADnq5_PSECF0b_ynF=UhXu3Os0hYZcvcQtk1pD+T3q+Z1g-Hgg@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <CADnq5_PSECF0b_ynF=UhXu3Os0hYZcvcQtk1pD+T3q+Z1g-Hgg@mail.gmail.com>
X-ClientProxiedBy: AS9PR05CA0055.eurprd05.prod.outlook.com
 (2603:10a6:20b:489::6) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fa661a41-8e5d-4638-a3eb-08da6409bdbb
X-MS-TrafficTypeDiagnostic: MN2PR12MB3374:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	KuZDSGNqUTvXRMzxbmO4dVv+71SmXYmpgstA8qXmgSNxT0vyaXHf+Gcr+Um2chQ0BkMTyijUzypM/ZmnX90ygkrpsdx/4fnCKIBukXG6cMId0fCEvEP5iSd8JRJwKytRghnEx8Q+T5QP42fd2R5uXtZWZWca967u6binRgbOJ+gvmvwg715zsWdUpAHRZgygHeWg9APV1IFpMkINEioJR735WLGyM1731oun4PSrHuq+mp5mUM2EqDhOPtgi91noUH0eLYxB4bqMo3bQxMQq6wzbt+ZwhUOkenLDf4XwuIsak9DHZffKd2CaohsD+Wh87xGQK4ji5DBj6DwyR0AwpUh7FUi5AdmX/S2yWDePe6h8etaBxUtoeGeIjPzw48/rpWg/UwVehbqScjpLDdqBzfI1kjaiVFF4zNqqMrIJyfQox3clhGXrFVPSK5nzVnM3AvxsevMKuSfT5AwiTqUqQxan8PK1yXXOTPLo2tMceQEGZFWChiMucV/lo7YzWljr3r2Bt4Gfu/ToGCxtD7ardqurD77dR6YM6TIAlJOHe3OTx4nJuUHiUwvE6ITjbPkPi/BVi5A1mfJQvGhCNfmiWKoHZdZ7fa4oAU0dcHkuOXnzdv00XPJrQmhu/8Huk1cCwar+ZrT9QOQHqSzy6jLp2Zs52ibwqnSaR30oTgicSadzNmbcclj7q2aiJkiNj1h71Lkiu1Q/GSrPHHxaJxf3eDSECkb542+m16mYMK93y2TqaZT1pmxbqCLUWQ03njuSPWWhAXeyjPIF9jhIWYK2Z5jS5m50smC1K5FYmwo+hGurQXkz3EW6JGYSa0zDg57CsVaSUZjN3rMp2pi65ReTPz7fw9Hg/5Sfd7YN5NdlsjI=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(39860400002)(376002)(396003)(136003)(366004)(346002)(6666004)(2616005)(41300700001)(26005)(6506007)(53546011)(186003)(38100700002)(8676002)(6512007)(31696002)(478600001)(5660300002)(15650500001)(66946007)(31686004)(2906002)(83380400001)(36756003)(86362001)(54906003)(66476007)(4326008)(316002)(66556008)(6486002)(110136005)(8936002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZWxVTFFyTVNKcWZjU0hIWU52TmJ0dXdudGVrUmVpcWlLY1czSEprbzM0dGRS?=
 =?utf-8?B?V1dkK1BrNGJYc0VvRUJqamR4bnkyWUlQdTZxZXFTNDJSNTJpcjFvK1hZMVVP?=
 =?utf-8?B?YnpsQ29USk5MSFAyTUlUU1pCSnM3Zm9wS2hQZ1FvdkNpNHZYTzFWT0J2TVJE?=
 =?utf-8?B?Ujh3S3d2bFZOMHdHWlFKZmN3a21sUkN1Vzlucy95bEFqbnRZU25jZXMvTU5L?=
 =?utf-8?B?RlpJa3pWRkp3MVdKanFWcERLb0t3M0tMeGYxc2hHeE5RbHJGd3ZxOGI3YU9q?=
 =?utf-8?B?R1NTbk02WmZ0bUcwWDdTYWs3ZXNXVUk0MDVlWmJ4cGEyOWZ2QzRnRUp6Slpi?=
 =?utf-8?B?SXoxTnZkMmJISWpvRUJOSDgrZnIrUzFVV2ltS0lva1hFSGlkdW55WTBIa3FT?=
 =?utf-8?B?MzdCZEQ1YTZnYXJUZURwYVNtZTRReHg4cU03QkI5Q2c3M3ZWZzFqdlQ5UFBE?=
 =?utf-8?B?U2hYNHJaSVhhQmlGNkpUa0tBbUEvK0NwUVIxL1BpMTFOODBBejJuWTZmZTlM?=
 =?utf-8?B?N0VpKzZHQVdwRVlRUUZkK0h6SkdERWpYVFhyNWpYK1hJQ1FyQkR4QUhEemYv?=
 =?utf-8?B?cGVxWDlXTzhod1VtR2Ewc1VSQTFVU0tzbDFEWG1VdGZPQi9OcEJSUkRZdXRV?=
 =?utf-8?B?eGlILzFnRXNEMG1YeTBFU1FBdTFmVGgrRUVvVTRxWTJwcGZ4SlJtZ2h3ZE4r?=
 =?utf-8?B?bE9zMTZZZFU1bGNyTjZMV0M5RG9oOCtBUWIyTlljeDRwYlhpbEpjSE5KS2dm?=
 =?utf-8?B?VG5iVEdOMTZWVFgwaEs2WVNGVHhWbVM2RVVrYWEzR05YUlhickprd2xObVEv?=
 =?utf-8?B?dGlGbTJzTU5Kc05TQWhnZ1dLN0xWV3lOd1Rack5MWVZSRXQwN2NWYWt6SGlE?=
 =?utf-8?B?UVdHbUtRdE56a0ZtSzgva2tIdjJEWFhiUU9GNC94d0RWMnhjN3NpZ2haK3M3?=
 =?utf-8?B?ZXVMNUlRK1FaUHRVS1ZOa3U5ZlphY25tNThlbU9SckVBRCtoR1lmRVNxbzJG?=
 =?utf-8?B?T3RXVkNzc3MzL1BNTFhBYmVFeVU2Q2ZIaE5maGZmVTRqRlNrbVQ5S3BlcmZp?=
 =?utf-8?B?ci9pUzl0a25EdlJlTFVCMkova3BvZmdUUXdCQnNvUFRta3RXWDk1cE9lNnhx?=
 =?utf-8?B?OUU3cGZKMWJQODFab29rS1BUQ2l5VXZBanFUSndsVUVkNk4zMitYRVI0dlhw?=
 =?utf-8?B?dCswNDcrOUtxL0t2TDZBaGcybjVKc0hrZFFNY2piZC9Zb0E2V0V1ZXp6dmJ1?=
 =?utf-8?B?WmZpVFArMHNSN1VWTFV0L2Mwa2ZiY2o5SG9mL2pOd0Y1bE5FcHFlOE05OENC?=
 =?utf-8?B?QmMxVTdTSE5ZanRWZFF5bnNBQ0hoZkV4OXFmcHV0dHo4STFKb0hWY01oTEtK?=
 =?utf-8?B?ZkZZcC9xbVRYTktQaHNwL3pzU1p0UktyTHV5djhXaVdtcXhDQTNmejBYaElF?=
 =?utf-8?B?R0ZjWDdLMm83VFJGUkErZ2I3ZHUvVjhlaERnU0JpMnhCME4yTXBQMWhUMjRx?=
 =?utf-8?B?VHdaSjkxeWVwVGRUdVc3OFpRa205TW01Wlo4NWtBZDFIc0xURUQ2YUxwZUxq?=
 =?utf-8?B?ZndUZHRuaEtCTEJBMWU0L0tiMC9BcmNCNW5sZkI5R01DUWJKZERFdkhFck5M?=
 =?utf-8?B?TEgvUWhibDFZZWZwRXEvRXFhUjlieTJMdkRXcXErWUljNFpjVE0rY2FZQzRu?=
 =?utf-8?B?ZXlHTTV2dDZnT1ZwZTltQUZnU2JEM0ViNTV3dk9HVVJKM2dzSkI5czlYY2ZI?=
 =?utf-8?B?emxyZ1Rkak5kRkpDa0piZHpPTllzY0dTbFJSdnp2MDVZajZhTVNubXREb05a?=
 =?utf-8?B?b2lFOFhja3ZvUzZYbWJzbDdwWlJqSUpSVXc1aXIyMStDWVo0anpmd0x0STBU?=
 =?utf-8?B?Y3FlaUoyb21lbGtmM2k1V1MxcjNZRFlqamlXV2d1SzNzWGt6cEROdjJKcTha?=
 =?utf-8?B?dWdXdTdIQlJFazZlam5raXM0WHRwMmRqZ2NUaDdTVkppRFhxc0t6NTVxN1FS?=
 =?utf-8?B?Q2JtVmwwYzUxdUxJTFp0bkU3ZTU3UFlkVXc3OXJQS3dlQVM0bDFSbkttZDd4?=
 =?utf-8?B?b0ZTMk9pS2R5NG5veDVpY2VEWjM2STFpSzd2OFVKeEZUdzYyMWFpY1FsU3pI?=
 =?utf-8?Q?7r2VfMQ+O8nLu2NA7wRonWASh?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa661a41-8e5d-4638-a3eb-08da6409bdbb
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2022 13:23:42.9676
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y7J9ly4Iad6hN7wvLl4byivjdqZaOHB8YdB8m1nIwhWvcnMPAc29CcjFTol0M7Mm
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3374
Message-ID-Hash: BDVKYCDYDSNHNUO42YRGP4BQXTWYUX6M
X-Message-ID-Hash: BDVKYCDYDSNHNUO42YRGP4BQXTWYUX6M
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, linux-media <linux-media@vger.kernel.org>, Maling list - DRI developers <dri-devel@lists.freedesktop.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Daniel Vetter <daniel@ffwll.ch>, Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf/dma_resv_usage: update explicit sync documentation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BDVKYCDYDSNHNUO42YRGP4BQXTWYUX6M/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTIuMDcuMjIgdW0gMTU6MjAgc2NocmllYiBBbGV4IERldWNoZXI6DQo+IE9uIFR1ZSwgSnVs
IDEyLCAyMDIyIGF0IDk6MTIgQU0gQ2hyaXN0aWFuIEvDtm5pZw0KPiA8Y2tvZW5pZy5sZWljaHR6
dW1lcmtlbkBnbWFpbC5jb20+IHdyb3RlOg0KPj4gTWFrZSBpdCBjbGVhciB0aGF0IERNQV9SRVNW
X1VTQUdFX0JPT0tNQVJLIGNhbiBiZSB1c2VkIGZvciBleHBsaWNpdCBzeW5jZWQNCj4gRE1BX1JF
U1ZfVVNBR0VfQk9PS0tFRVA/DQoNCkNyYXBweSBhdXRvY29ycmVjdCBhbmQgY29weSZwYXN0ZS4g
VGhhbmtzIGZvciBwb2ludGluZyB0aGF0IG91dC4NCg0KQ2hyaXN0aWFuLg0KDQo+DQo+PiB1c2Vy
IHNwYWNlIHN1Ym1pc3Npb25zIGFzIHdlbGwgYW5kIGRvY3VtZW50IHRoZSBydWxlcyBhcm91bmQg
YWRkaW5nIHRoZQ0KPj4gc2FtZSBmZW5jZSB3aXRoIGRpZmZlcmVudCB1c2FnZXMuDQo+Pg0KPj4g
U2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
Pg0KPj4gLS0tDQo+PiAgIGluY2x1ZGUvbGludXgvZG1hLXJlc3YuaCB8IDE2ICsrKysrKysrKysr
KystLS0NCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25z
KC0pDQo+Pg0KPj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaCBiL2luY2x1
ZGUvbGludXgvZG1hLXJlc3YuaA0KPj4gaW5kZXggYzhjY2JjOTRkNWQyLi4yNjRlMjdlNTZkZmYg
MTAwNjQ0DQo+PiAtLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgNCj4+ICsrKyBiL2luY2x1
ZGUvbGludXgvZG1hLXJlc3YuaA0KPj4gQEAgLTYyLDYgKzYyLDExIEBAIHN0cnVjdCBkbWFfcmVz
dl9saXN0Ow0KPj4gICAgKiBGb3IgZXhhbXBsZSB3aGVuIGFza2luZyBmb3IgV1JJVEUgZmVuY2Vz
IHRoZW4gdGhlIEtFUk5FTCBmZW5jZXMgYXJlIHJldHVybmVkDQo+PiAgICAqIGFzIHdlbGwuIFNp
bWlsYXIgd2hlbiBhc2tlZCBmb3IgUkVBRCBmZW5jZXMgdGhlbiBib3RoIFdSSVRFIGFuZCBLRVJO
RUwNCj4+ICAgICogZmVuY2VzIGFyZSByZXR1cm5lZCBhcyB3ZWxsLg0KPj4gKyAqDQo+PiArICog
QWxyZWFkeSB1c2VkIGZlbmNlcyBjYW4gYmUgcHJvbW90ZWQgaW4gdGhlIHNlbnNlIHRoYXQgYSBm
ZW5jZSB3aXRoDQo+PiArICogRE1BX1JFU1ZfVVNBR0VfQk9PS01BUksgY291bGQgYmVjb21lIERN
QV9SRVNWX1VTQUdFX1JFQUQgYnkgYWRkaW5nIGl0IGFnYWluDQo+IFNhbWUgaGVyZS4NCj4NCj4g
V2l0aCB0aGF0IGZpeGVkLA0KPiBBY2tlZC1ieTogQWxleCBEZXVjaGVyIDxhbGV4YW5kZXIuZGV1
Y2hlckBhbWQuY29tPg0KPg0KPiBBbGV4DQo+DQo+PiArICogd2l0aCB0aGlzIHVzYWdlLiBCdXQg
ZmVuY2VzIGNhbiBuZXZlciBiZSBkZWdyYWRlZCBpbiB0aGUgc2Vuc2UgdGhhdCBhIGZlbmNlDQo+
PiArICogd2l0aCBETUFfUkVTVl9VU0FHRV9XUklURSBjb3VsZCBiZWNvbWUgRE1BX1JFU1ZfVVNB
R0VfUkVBRC4NCj4+ICAgICovDQo+PiAgIGVudW0gZG1hX3Jlc3ZfdXNhZ2Ugew0KPj4gICAgICAg
ICAgLyoqDQo+PiBAQCAtOTgsMTAgKzEwMywxNSBAQCBlbnVtIGRtYV9yZXN2X3VzYWdlIHsNCj4+
ICAgICAgICAgICAqIEBETUFfUkVTVl9VU0FHRV9CT09LS0VFUDogTm8gaW1wbGljaXQgc3luYy4N
Cj4+ICAgICAgICAgICAqDQo+PiAgICAgICAgICAgKiBUaGlzIHNob3VsZCBiZSB1c2VkIGJ5IHN1
Ym1pc3Npb25zIHdoaWNoIGRvbid0IHdhbnQgdG8gcGFydGljaXBhdGUgaW4NCj4+IC0gICAgICAg
ICogaW1wbGljaXQgc3luY2hyb25pemF0aW9uLg0KPj4gKyAgICAgICAgKiBhbnkgaW1wbGljaXQg
c3luY2hyb25pemF0aW9uLg0KPj4gKyAgICAgICAgKg0KPj4gKyAgICAgICAgKiBUaGUgbW9zdCBj
b21tb24gY2FzZSBhcmUgcHJlZW1wdGlvbiBmZW5jZXMsIHBhZ2UgdGFibGUgdXBkYXRlcywgVExC
DQo+PiArICAgICAgICAqIGZsdXNoZXMgYXMgd2VsbCBhcyBleHBsaWNpdCBzeW5jZWQgdXNlciBz
dWJtaXNzaW9ucy4NCj4+ICAgICAgICAgICAqDQo+PiAtICAgICAgICAqIFRoZSBtb3N0IGNvbW1v
biBjYXNlIGFyZSBwcmVlbXB0aW9uIGZlbmNlcyBhcyB3ZWxsIGFzIHBhZ2UgdGFibGUNCj4+IC0g
ICAgICAgICogdXBkYXRlcyBhbmQgdGhlaXIgVExCIGZsdXNoZXMuDQo+PiArICAgICAgICAqIEV4
cGxpY2l0IHN5bmNlZCB1c2VyIHVzZXIgc3VibWlzc2lvbnMgY2FuIGJlIHByb21vdGVkIHRvDQo+
PiArICAgICAgICAqIERNQV9SRVNWX1VTQUdFX1JFQUQgb3IgRE1BX1JFU1ZfVVNBR0VfV1JJVEUg
YXMgbmVlZGVkIHVzaW5nDQo+PiArICAgICAgICAqIGRtYV9idWZfaW1wb3J0X3N5bmNfZmlsZSgp
IHdoZW4gaW1wbGljaXQgc3luY2hyb25pemF0aW9uIHNob3VsZA0KPj4gKyAgICAgICAgKiBiZWNv
bWUgbmVjZXNzYXJ5IGFmdGVyIGluaXRpYWwgYWRkaW5nIG9mIHRoZSBmZW5jZS4NCj4+ICAgICAg
ICAgICAqLw0KPj4gICAgICAgICAgRE1BX1JFU1ZfVVNBR0VfQk9PS0tFRVANCj4+ICAgfTsNCj4+
IC0tDQo+PiAyLjI1LjENCj4+DQo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXw0KPj4gTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnDQo+PiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZw0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

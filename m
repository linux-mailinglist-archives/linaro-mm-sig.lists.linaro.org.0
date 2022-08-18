Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 12841598384
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Aug 2022 14:58:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 411F43F61A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Aug 2022 12:58:25 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2056.outbound.protection.outlook.com [40.107.94.56])
	by lists.linaro.org (Postfix) with ESMTPS id B2C4F3E9D1
	for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Aug 2022 12:58:21 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NMCaiu/Q7ATXdrhBIql9hU8ud0zTvfiHRq+IWosAo3atUpYDsITXIOCLBQ4ixGGevVhLDr2UwNEBYvwXwcxkp6d2bhneLFI+JAizgLxpPPcnKaD9jEKT7RF29dHr2wXNLBT40aJx2uOF3dkdcBn8OfxTfxtgdoG8MQLxZbyh9QOnfOlN5FiA5ellrefooe2EDPL9xAALXNItWI0W/9AXc1aO9mWiApov+zYqB/3U+DS+IE4BS7I6YpS7cfkgJ/s/l4J6EqzZc4ScqOqcTnuHR01Hqgv5iymXgx866mWJqTFYNQ8t2MAN+iR6zrrQGENH7fxNh+feUWuN4fpzMDzVTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lIPs/IsdXnNc9z50f5GGLkCzHreGuc7Pb+vyFs1Y7yQ=;
 b=Nq+eaRldviwW1fKDe3s+rDn1kGrgXfKBZyuYHsuJ9snH+NKmaGtQSeZ2F/ZLfm0QT28/rKhqzonz84vjDUuWIU73aApDOe8vV6+ZX9jO1sb0HQzqXKUdosT2eRNJSrY6gzQ5YEX+5Y6gNQWGRirW2BPrjMClBojKWTlP0RuoYfVvfy7BdVc6L8kM1i0w3Qkz8EpyBQL7qkSXdWE5ODJI9AvbmwC+/GkbIbWhZPpVEamQhptU2KChbNLyQZ3eJ/QIQxXDix4KnhW/RBlfbZePCJ6vspjule4/okdzEsNm/1mJo9cYiYd2q6f/6Iq2gW6RCQz/ayfwXZRbArjhnyf5fA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lIPs/IsdXnNc9z50f5GGLkCzHreGuc7Pb+vyFs1Y7yQ=;
 b=kg4i994i5P2iKEH/WGURNIEp8JPGYqYAF+UCgUe3YExPV1JKm3GhFRxqe2H1qZ3IjcUJWgt9+lb+gqY/dnH9oLpiOY5qJKAs3mJln7ovhxvBT/OOGGqdrt/M06CZLVZrp5Gsas2gSFoijCmWjp+ltTAHDB3AhNMPNU21b90sORY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by BN6PR12MB1619.namprd12.prod.outlook.com (2603:10b6:405:f::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.10; Thu, 18 Aug
 2022 12:58:18 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39%2]) with mapi id 15.20.5504.020; Thu, 18 Aug 2022
 12:58:18 +0000
Message-ID: <d12fdf94-fbef-b981-2eff-660470ceca22@amd.com>
Date: Thu, 18 Aug 2022 14:58:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Jason Gunthorpe <jgg@nvidia.com>
References: <0-v1-9e6e1739ed95+5fa-vfio_dma_buf_jgg@nvidia.com>
 <921de79a-9cb3-4217-f079-4b23958a16aa@amd.com> <Yv4qlOp9n78B8TFb@nvidia.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <Yv4qlOp9n78B8TFb@nvidia.com>
X-ClientProxiedBy: AS8PR04CA0033.eurprd04.prod.outlook.com
 (2603:10a6:20b:312::8) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 56987e2d-df19-4da1-c001-08da8119525f
X-MS-TrafficTypeDiagnostic: BN6PR12MB1619:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	i1XOE8iLaRqjf0erimBlctNdZj8NPO2GjDdmAwNaYoFubl8TnlslwhilhwFxNH08jt1fUvVEwxBRPF0JnE4hbIFjrGlTvQqI716TMAnh3YBvOzRKLTzaNHZOtfRiK69+jMWx6s9iE5lXaozkpWCg5i4cSyXlKR9d09NWs3kRrRnSsbpcSpC3yCi64fYwGdZDNy+KlUrYgAKp7jKLrGrp4wlVQ1T0HcektUQLOwGbVXwV/RF6WLAY+yuA76UcQjT+zaBWH158pTTGhcmH5vosuLbuEOMfdwbShWAQOcWEF+Uo72Cvhq1IaGXwKBKRZ89ZcMFiatuC06UMlbktK00hlO308ZBnvhtCVrxhi3uXf7OpvfkvI+Su8gs8o/FxI9Xx0Pme+fPNW+hIQgg92SuFI39RmgdrMN0+iSjxC7XfMA4KvKx4L5nA/q8PT3VoR2jz35gXjez2Yb+4xDAYWn1LMhNcqGfIbiMAz9e2lhJ9+tgh60lU9MSCnO5FkiRUerUlELpb3+ma1Wpu10v0eolCuuWaqlcUnRx75tGTBSk8IezsU0eZlxmZmzF21hney79JkctAsHjuA1v3YvMeDliO2r7ZWgMNNRJ7oyGdNvwMLm2338tZrAznzfvY9umgO3Co5WTE/0VNel/UZO/KzfWYN80B9Px1g4c15N+H2tE2ilJO05oGH2Rbcg4BiQu1wtoqWcqTuU8XxBadwuzi4O2ZHlb+UmvvV/KgoKhIrznFVaVTllB9zgr4rZifshlit7jBK4GLBu2+BiNPXI9UOhCCwHdDkYkEvk+5uD3LCuKCarw=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(376002)(136003)(346002)(39860400002)(366004)(396003)(6506007)(54906003)(5660300002)(41300700001)(6916009)(6666004)(316002)(66556008)(31696002)(31686004)(66476007)(7416002)(86362001)(4326008)(8676002)(6512007)(36756003)(66946007)(2906002)(26005)(8936002)(66574015)(2616005)(186003)(83380400001)(38100700002)(478600001)(6486002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VjBGR3NQcDJkQW9ucTJTRFl5K1hvaS9UWGlBekdFMXF1TzRlSHlWQnFQZlZ5?=
 =?utf-8?B?MTQ0YmlERlp2L0pGRHd3UGtJWmorL2hId2diY3VrNHVQdVc1amIvd0k5NnBW?=
 =?utf-8?B?ZEQra1M4NURvSkZwWmQ2bEhFSTFlODlKWGR4blp4VEx0ZWlrVFZNem9LZmJi?=
 =?utf-8?B?Z1hwU2FGU2hzWFE3cWg3V3VSeGZaMFZPcGVET1UxYVZOWVZoY29PRkVGb0pD?=
 =?utf-8?B?MmFQWFgzVmczTW1nL0dBWWdPcTdpSXIwS1dRVnYweG83TjVVeFdPTThJYnFq?=
 =?utf-8?B?UGFqOHk1V05Kc0J4ak1FczFuNDk2ajdYVEt2ZkZSWWQ1djRqSDE1ZFBBcmxF?=
 =?utf-8?B?T0RSRTZpSEVTcTBXTmdmV1RWcFRzc05vYWpZYVpFbVVFY3VPc0xQN0pyZ3hL?=
 =?utf-8?B?S2cza0cwMjlTUmw5MlEvVkhFQmxDMWZkeEVSaHNRS1Q4TEQyeXZnMXVjV1NL?=
 =?utf-8?B?SW5XV2lnWllKdlppV0dUclkzREdiN1ZSUlg5NzRVaW1NWlRxQUtPT3BySlFR?=
 =?utf-8?B?Z1UxTWl5NXR3KzBkbjA2REtJM3VnN3BPS3pSM1FCRGxNNVRhOXdqU21MM2hZ?=
 =?utf-8?B?SmlJVGU5dmUvRVVURVBpeUFtdFkrQ3ZKajUwdzNLY2RPWnRRbjVJMmdFUXM5?=
 =?utf-8?B?MnpsVnQveEEyY3VOZ1RFdGErSjdrZVRxeHZnVGpISHYxcThPeG1PckpJZy94?=
 =?utf-8?B?STdsN1A2NmZHQWlhSmpRYlplcEtLMDd1dmd1WjVFL1V5REloYWVrazU4cFFv?=
 =?utf-8?B?dmhKOGJkSVFuVlcyVGxrZlBrYU8wVHBWRkFtRTE3MmNIVlliOTFJQlVFa0pS?=
 =?utf-8?B?V1MwbkVVNDBnY0k1UEFkbE1WV0MxNG9QU3ByOThsSDVENHRxWW44Q1RYRVFs?=
 =?utf-8?B?SW82YWZmSXBsR1krMzFsRUdBRDRmRldQVnRKYTZ3MnFxZlJqMWdGVFpLa1lR?=
 =?utf-8?B?NEszNG1JTzF5MmgyQTVDUGM4Mi9aUDFzRUdEWVBySWNOa0JqTHJ4WXJqTm4w?=
 =?utf-8?B?L3NDSC9DQlgwT0xmMnBOL1B2NGdSbDhYcHkyZHY3WUd2WWFkTS90ZjZhblFB?=
 =?utf-8?B?VzRERHhJelVhZ1R1R1BFZW53WWV0ZXJDN1V6R0ZqZGJvdzhzNXkySktvSkZ2?=
 =?utf-8?B?TlIzMmd1amdpMDlGUFMxL2lLVExQRzRWVk1TR3FOamttUU5SeE8zMDZ2QU5E?=
 =?utf-8?B?ak1jRU1LazlxYVFmZlJHZy83Y1hEYVVoN2Qzd3luNkFRUy9tZkRGcXUxWWRF?=
 =?utf-8?B?Zk9NZnJGWlVxS2pkMG1GdjFzWUpQOUIrTTd6WmFEZUFsMjJURzRNRVFWUGt0?=
 =?utf-8?B?c1JRSmtrNlVkOERybWhzUGduR1ZrdWVWN2JnQVhUdXczc0hqOXAvdU1nNTVZ?=
 =?utf-8?B?N3dxZTlzNkdkRTF2VDZJdzE2QjBRclkwNkYrcjYxb1lwdEh0Rjc0cEhGb1ZJ?=
 =?utf-8?B?eU5XaEZhbXdCMUp0OHNUMHFDM0R2bjA1eHpFU1NySkM1MXJoamhXRCtEd0JO?=
 =?utf-8?B?R0hPTnJHZXNuclZmanpKL3pJWVliK3J5N094RmlLdFc2YTdZTGM3VXBMQjFD?=
 =?utf-8?B?QmkxRys5ODVaTmpmR091SXpiZ0xRUVlydmhQSlliQ3NqQys0UEVsRGI2OTln?=
 =?utf-8?B?UzI1Ym1xeDk4bDgzY293aTg2dDUwUVhIWjBCQjhadEhrYS9pWXFiV2NGSlB5?=
 =?utf-8?B?bFJGQ09TaVZEeE1lUlBHa0VJalhUazZEL3U1bk5oOHY2dkNyeEhWV2hMcGp3?=
 =?utf-8?B?eUk0VjEyK2xtYXpoN2MwREdOSHBMM2EzNm1LT2RObXROdjhOS0puM0RCOWNz?=
 =?utf-8?B?RFVpQVVBZnlyRlVkTnJoUjcxY1h4NzlwSTdyS1h6TmM2OUdxbWRySzRrWCtr?=
 =?utf-8?B?WG9LR1dDQ2c1QTF5QTZTNnlGWlVoNE16b3h1d2E3K3N0L25NRHdRWEtYK25v?=
 =?utf-8?B?eVNuWjRQOFFNV0s4T2FibzlMTlRLaUs4a0RWb1ZzcXJwUEZzZ2VSUklpNGsx?=
 =?utf-8?B?K1VtZnZERHIvQ2J1VWNzU3hlSXNsZi9HeDg5WXZYYy9zOW9JeU1yYlE1MTM3?=
 =?utf-8?B?aFptd2hzSURpWVhUeVMrVXZrdklHTjlWaHJwbWdFNlRRb1NzSjB1Mis3cHdl?=
 =?utf-8?Q?RGFYGJN1/vkNId18Yq1rAQyQa?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56987e2d-df19-4da1-c001-08da8119525f
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2022 12:58:18.5331
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zzWAUlME2ibZjlmrhZCq+3jPnSJvV1+9EENb3V2FsPOVGbmuS2LIsSejsft5FTts
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR12MB1619
Message-ID-Hash: WFGZTYAJPN6NE757L6DEE7GVGS7A2P2L
X-Message-ID-Hash: WFGZTYAJPN6NE757L6DEE7GVGS7A2P2L
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Alex Williamson <alex.williamson@redhat.com>, Cornelia Huck <cohuck@redhat.com>, dri-devel@lists.freedesktop.org, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org, Maor Gottlieb <maorg@nvidia.com>, Oded Gabbay <ogabbay@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/4] Allow MMIO regions to be exported through dma-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WFGZTYAJPN6NE757L6DEE7GVGS7A2P2L/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQoNCkFtIDE4LjA4LjIyIHVtIDE0OjAzIHNjaHJpZWIgSmFzb24gR3VudGhvcnBlOg0KPiBPbiBU
aHUsIEF1ZyAxOCwgMjAyMiBhdCAwMTowNzoxNlBNICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdy
b3RlOg0KPj4gQW0gMTcuMDguMjIgdW0gMTg6MTEgc2NocmllYiBKYXNvbiBHdW50aG9ycGU6DQo+
Pj4gZG1hLWJ1ZiBoYXMgYmVjb21lIGEgd2F5IHRvIHNhZmVseSBhY3F1aXJlIGEgaGFuZGxlIHRv
IG5vbi1zdHJ1Y3QgcGFnZQ0KPj4+IG1lbW9yeSB0aGF0IGNhbiBzdGlsbCBoYXZlIGxpZmV0aW1l
IGNvbnRyb2xsZWQgYnkgdGhlIGV4cG9ydGVyLiBOb3RhYmx5DQo+Pj4gUkRNQSBjYW4gbm93IGlt
cG9ydCBkbWEtYnVmIEZEcyBhbmQgYnVpbGQgdGhlbSBpbnRvIE1ScyB3aGljaCBhbGxvd3MgZm9y
DQo+Pj4gUENJIFAyUCBvcGVyYXRpb25zLiBFeHRlbmQgdGhpcyB0byBhbGxvdyB2ZmlvLXBjaSB0
byBleHBvcnQgTU1JTyBtZW1vcnkNCj4+PiBmcm9tIFBDSSBkZXZpY2UgQkFScy4NCj4+Pg0KPj4+
IFRoaXMgc2VyaWVzIHN1cHBvcnRzIGEgdXNlIGNhc2UgZm9yIFNQREsgd2hlcmUgYSBOVk1lIGRl
dmljZSB3aWxsIGJlIG93bmVkDQo+Pj4gYnkgU1BESyB0aHJvdWdoIFZGSU8gYnV0IGludGVyYWN0
aW5nIHdpdGggYSBSRE1BIGRldmljZS4gVGhlIFJETUEgZGV2aWNlDQo+Pj4gbWF5IGRpcmVjdGx5
IGFjY2VzcyB0aGUgTlZNZSBDTUIgb3IgZGlyZWN0bHkgbWFuaXB1bGF0ZSB0aGUgTlZNZSBkZXZp
Y2Uncw0KPj4+IGRvb3JiZWxsIHVzaW5nIFBDSSBQMlAuDQo+Pj4NCj4+PiBIb3dldmVyLCBhcyBh
IGdlbmVyYWwgbWVjaGFuaXNtLCBpdCBjYW4gc3VwcG9ydCBtYW55IG90aGVyIHNjZW5hcmlvcyB3
aXRoDQo+Pj4gVkZJTy4gSSBpbWFnaW5lIHRoaXMgZG1hYnVmIGFwcHJvYWNoIHRvIGJlIHVzYWJs
ZSBieSBpb21tdWZkIGFzIHdlbGwgZm9yDQo+Pj4gZ2VuZXJpYyBhbmQgc2FmZSBQMlAgbWFwcGlu
Z3MuDQo+PiBJbiBnZW5lcmFsIGxvb2tzIGdvb2QgdG8gbWUsIGJ1dCB3ZSByZWFsbHkgbmVlZCB0
byBnZXQgYXdheSBmcm9tIHVzaW5nDQo+PiBzZ190YWJsZXMgZm9yIHRoaXMgaGVyZS4NCj4+DQo+
PiBUaGUgb25seSB0aGluZyBJJ20gbm90IDEwMCUgY29udmluY2VkIG9mIGlzIGRtYV9idWZfdHJ5
X2dldCgpLCBJJ3ZlIHNlZW4NCj4+IHRoaXMgaW5jb3JyZWN0bHkgdXNlZCBzbyBtYW55IHRpbWVz
IHRoYXQgSSBjYW4ndCBjb3VudCB0aGVtIGFueSBtb3JlLg0KPj4NCj4+IFdvdWxkIHRoYXQgYmUg
c29tZWhvdyBhdm9pZGFibGU/IE9yIGNvdWxkIHlvdSBhdCBsZWFzdCBleHBsYWluIHRoZSB1c2Ug
Y2FzZQ0KPj4gYSBiaXQgYmV0dGVyLg0KPiBJIGRpZG4ndCBzZWUgYSB3YXksIG1heWJlIHlvdSBr
bm93IG9mIG9uZQ0KDQpGb3IgR0VNIG9iamVjdHMgd2UgdXN1YWxseSBkb24ndCB1c2UgdGhlIHJl
ZmVyZW5jZSBjb3VudCBvZiB0aGUgRE1BLWJ1ZiwgDQpidXQgcmF0aGVyIHRoYXQgb2YgdGhlIEdF
TSBvYmplY3QgZm9yIHRoaXMuIEJ1dCB0aGF0J3Mgbm90IGFuIGlkZWFsIA0Kc29sdXRpb24gZWl0
aGVyLg0KDQo+DQo+IFZGSU8gbmVlZHMgdG8gbWFpbnRhaW4gYSBsaXN0IG9mIGRtYWJ1ZiBGRHMg
dGhhdCBoYXZlIGJlZW4gY3JlYXRlZCBieQ0KPiB0aGUgdXNlciBhdHRhY2hlZCB0byBlYWNoIHZm
aW9fZGV2aWNlOg0KPg0KPiBpbnQgdmZpb19wY2lfY29yZV9mZWF0dXJlX2RtYV9idWYoc3RydWN0
IHZmaW9fcGNpX2NvcmVfZGV2aWNlICp2ZGV2LCB1MzIgZmxhZ3MsDQo+IAkJCQkgIHN0cnVjdCB2
ZmlvX2RldmljZV9mZWF0dXJlX2RtYV9idWYgX191c2VyICphcmcsDQo+IAkJCQkgIHNpemVfdCBh
cmdzeikNCj4gew0KPiAJZG93bl93cml0ZSgmdmRldi0+bWVtb3J5X2xvY2spOw0KPiAJbGlzdF9h
ZGRfdGFpbCgmcHJpdi0+ZG1hYnVmc19lbG0sICZ2ZGV2LT5kbWFidWZzKTsNCj4gCXVwX3dyaXRl
KCZ2ZGV2LT5tZW1vcnlfbG9jayk7DQo+DQo+IEFuZCBkbWFidWYgRkQncyBhcmUgcmVtb3ZlZCBm
cm9tIHRoZSBsaXN0IHdoZW4gdGhlIHVzZXIgY2xvc2VzIHRoZSBGRDoNCj4NCj4gc3RhdGljIHZv
aWQgdmZpb19wY2lfZG1hX2J1Zl9yZWxlYXNlKHN0cnVjdCBkbWFfYnVmICpkbWFidWYpDQo+IHsN
Cj4gCQlkb3duX3dyaXRlKCZwcml2LT52ZGV2LT5tZW1vcnlfbG9jayk7DQo+IAkJbGlzdF9kZWxf
aW5pdCgmcHJpdi0+ZG1hYnVmc19lbG0pOw0KPiAJCXVwX3dyaXRlKCZwcml2LT52ZGV2LT5tZW1v
cnlfbG9jayk7DQo+DQo+IFdoaWNoIHRoZW4gcG9zZXMgdGhlIHByb2JsZW06IEhvdyBkbyB5b3Ug
aXRlcmF0ZSBvdmVyIG9ubHkgZG1hX2J1ZidzDQo+IHRoYXQgYXJlIHN0aWxsIGFsaXZlIHRvIGV4
ZWN1dGUgbW92ZT8NCj4NCj4gVGhpcyBzZWVtcyBuZWNlc3NhcnkgYXMgcGFydHMgb2YgdGhlIGRt
YV9idWYgaGF2ZSBhbHJlYWR5IGJlZW4NCj4gZGVzdHJveWVkIGJ5IHRoZSB0aW1lIHRoZSB1c2Vy
J3MgcmVsZWFzZSBmdW5jdGlvbiBpcyBjYWxsZWQuDQo+DQo+IFdoaWNoIEkgc29sdmVkIGxpa2Ug
dGhpczoNCj4NCj4gCWRvd25fd3JpdGUoJnZkZXYtPm1lbW9yeV9sb2NrKTsNCj4gCWxpc3RfZm9y
X2VhY2hfZW50cnlfc2FmZShwcml2LCB0bXAsICZ2ZGV2LT5kbWFidWZzLCBkbWFidWZzX2VsbSkg
ew0KPiAJCWlmICghZG1hX2J1Zl90cnlfZ2V0KHByaXYtPmRtYWJ1ZikpDQo+IAkJCWNvbnRpbnVl
Ow0KDQpXaGF0IHdvdWxkIGhhcHBlbiBpZiB5b3UgZG9uJ3Qgc2tpcCBkZXN0cm95ZWQgZG1hLWJ1
ZnMgaGVyZT8gSW4gb3RoZXIgDQp3b3JkcyB3aHkgZG8geW91IG1haW50YWluIHRoYXQgbGlzdCBp
biB0aGUgZmlyc3QgcGxhY2U/DQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4NCj4gU28gdGhl
IHNjZW5hcmlvcyByZXNvbHZlIGFzOg0KPiAgIC0gQ29uY3VycmVudCByZWxlYXNlIGlzIG5vdCBp
biBwcm9ncmVzczogZG1hX2J1Zl90cnlfZ2V0KCkgc3VjY2VlZHMNCj4gICAgIGFuZCBwcmV2ZW50
cyBjb25jdXJyZW50IHJlbGVhc2UgZnJvbSBzdGFydGluZw0KPiAgIC0gUmVsZWFzZSBoYXMgc3Rh
cnRlZCBidXQgbm90IHJlYWNoZWQgaXRzIG1lbW9yeV9sb2NrOg0KPiAgICAgZG1hX2J1Zl90cnlf
Z2V0KCkgZmFpbHMNCj4gICAtIFJlbGVhc2UgaGFzIHN0YXJ0ZWQgYnV0IHBhc3NlZCBpdHMgbWVt
b3J5X2xvY2s6IGRtYWJ1ZiBpcyBub3Qgb24NCj4gICAgIHRoZSBsaXN0IHNvIGRtYV9idWZfdHJ5
X2dldCgpIGlzIG5vdCBjYWxsZWQuDQo+DQo+IEphc29uDQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

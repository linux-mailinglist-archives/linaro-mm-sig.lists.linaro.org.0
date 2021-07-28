Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C3CB73D9435
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Jul 2021 19:23:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A5DEB63525
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Jul 2021 17:23:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9A99B6451D; Wed, 28 Jul 2021 17:23:40 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8F28363504;
	Wed, 28 Jul 2021 17:23:37 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6FF8B634FF
 for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Jul 2021 17:23:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 61E0763504; Wed, 28 Jul 2021 17:23:35 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2074.outbound.protection.outlook.com [40.107.236.74])
 by lists.linaro.org (Postfix) with ESMTPS id 5572D634FF
 for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Jul 2021 17:23:33 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z9XHi84v4L6jYC968/sxA+FjdfH0T3zCEqZcjFbAvc+rn5gMkaASE094mNHs/TQHTW2eSyQdOz3XMCX4B/7o6hqQ0PmRAm+YFsPCr7q20tNypwKAZZ09+T6DfbRyu/FhLFfB61FkhgxB/0b574jc5BNj5FyEq2lnUOlOwI18KWYQEZdSnllhYuPDhKlFa6iZB3rPh6Cg+Sx0qB6LTiT4zfhOtDLTlcmwTajo+51ZGO+RsBwTZ0TIcD9+zq89EJJm30XOtBGJGeZFFcOg2q8w3PEwkcDjietc0w9tdZD0J5DpM9IBKUyFPsop6GkuJZPKl0kIi6cAL8rh9lwPqlg1+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gHvCFqusIjDUbm4DizGlfLBzSTzguf1WF6hdf5DPIsY=;
 b=NQ68Yen026jlTUVqc4/JY23zJLpQP8Lert/Yl7PEWQAdQsT4Vfu6LP5e9mY7r3E6n38ZsmQCxHROvf7jLGJ4OS62AHN18eOv7lMZwqCfVMrqKfsFjb42ti3tV9viOUMzBVmJuleHMr9Ao2pnoEa/PRakbI20LCwneVfAYFxRbSRISdB4e8pz7YihtacIt7F0opAkbq+vl04dn7GlhmlZGm/p0og00X8StTix13b5X3il0eoxiR7Xd4CfbTenvqOOTGe+nU1CkiSD/ZOaTSJpxPZZN0jl34a0AZlZagVBnTJLxHePieAzCSLHamYLhwUWzzoPDKx7YFu5zy4CIi/rDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gHvCFqusIjDUbm4DizGlfLBzSTzguf1WF6hdf5DPIsY=;
 b=xsFIKMFOtYFebI31F1AsgKgYzonRqQes5l20JQHRY4HIvM8zrKa2B/ktJz0XCyno13QDkxCa/JuHtTnuedqbbdYTOOE+c5/DCKPVPYiT+XEEeD9pbJFc7LxciZmYcGB7A3bwENbvtksspRc0rBRiB1I88R1Io8vN+r3X7jwnAik=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4142.namprd12.prod.outlook.com (2603:10b6:208:1dd::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.29; Wed, 28 Jul
 2021 17:23:31 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756%5]) with mapi id 15.20.4352.031; Wed, 28 Jul 2021
 17:23:31 +0000
To: Rob Clark <robdclark@gmail.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
References: <20210726233854.2453899-1-robdclark@gmail.com>
 <20210726233854.2453899-2-robdclark@gmail.com>
 <50b181fe-6605-b7ac-36a6-8bcda2930e6f@gmail.com>
 <CAF6AEGuNxi_aeYE37FT3a-atCUWgepxs-9EwxMfpiMaU7wgqdQ@mail.gmail.com>
 <9edd7083-e6b3-b230-c273-8f2fbe76ca17@amd.com>
 <703dc9c3-5657-432e-ca0b-25bdd67a2abd@gmail.com>
 <CAF6AEGvSpvc2po93b2eKB2cSzx_a+BtPWhQgRs-1NFFZfUbJNw@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <e5e71356-1c58-04ac-2609-70d268941b8d@amd.com>
Date: Wed, 28 Jul 2021 19:23:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <CAF6AEGvSpvc2po93b2eKB2cSzx_a+BtPWhQgRs-1NFFZfUbJNw@mail.gmail.com>
Content-Language: en-US
X-ClientProxiedBy: FR3P281CA0026.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1c::17) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:f1e3:17b4:fe37:19a9]
 (2a02:908:1252:fb60:f1e3:17b4:fe37:19a9) by
 FR3P281CA0026.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:1c::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4373.7 via Frontend Transport; Wed, 28 Jul 2021 17:23:29 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f79703f8-4193-49b3-aa32-08d951ec6bc3
X-MS-TrafficTypeDiagnostic: MN2PR12MB4142:
X-Microsoft-Antispam-PRVS: <MN2PR12MB4142081B090722518468AF8383EA9@MN2PR12MB4142.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HUCMD9z2QGAsvz09t6sTflAjGO92E7LkSEUqgE5K5GI6FlA+FTkaoKcwvoIVpxW99mrL1pXPewsiguv+Wq42qTgfKs6ZtTARwkMm8YC8Z1Fnx49f6MWodfnmWj1veoVOMGS+JnM28H45SDti/DqfQ15Q2OPP//PL+7f0VO51uQBjVW1zUqAce2npMBrBrSro48935wTpeQq85QK1hA7qC8pjttiw5LCjWrv97eYTv1lrrpuq8GqJq5ipvQW6awTC1JiXatIeZT4KNrbXCPXhKiYxEZdPzUQ9wwdkWGk9/84obErHTDqnbO9trAPLn12dLLuh8MylJfacsUpFn/vk8aMNKmRhchWSuOiF2bSuhJ64/5TAoE/DsH84XVWU5xGwi4ko2rinn4cOG9P17KUEC/DguLffNwKgEngW2MXVlcKgLsDDA8SVc6Cj2I0Tzu69tl5iJBGlHOKWX9vwcEX7rdRzG10Ruj/hZ5CZdmHdOvcVXmX9sjAH9Nvzi356aohyKfb3pwCKLqPSsa9XKVNNBC7xjmYxS/zYvkSJ69pCGmAWUJxmJCFR5tZnX/Ocf16FcWhfth7w6EZeggwPIyXwW7eZ2gBvw5NzwB6YB8dfuyir9oGAQUrZn2M8SXYW9BQhddFzmJJx9zlKX14c23eMtHWkF2pQ47/tXyllYluSlyBcdxgKwh+ohsPAVGNO0Hmh7fxtIGSsoOTVD8q9FKOlFKVkLWv9e2At3i1mGVURp7CnETYWNYCIsiGswaLfZuhD
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(376002)(39860400002)(396003)(346002)(136003)(38100700002)(31686004)(53546011)(66574015)(83380400001)(2906002)(186003)(4326008)(6666004)(86362001)(31696002)(6486002)(45080400002)(36756003)(8676002)(7416002)(2616005)(478600001)(5660300002)(966005)(8936002)(66556008)(110136005)(54906003)(316002)(66476007)(66946007)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b0hGUzB4QWJuL3Bkdzh1dDRCWVVwb3pZRHdXWldhVW5FWkk4RDZ5YmQ2ZmFH?=
 =?utf-8?B?MDRyaFJxQ2E0cHZRK0w4N21DeFNxcWgrWnBidEVYNzJYbVBUOEhMZEdiMHZD?=
 =?utf-8?B?UXArek5WTzVEY2h4dkFOeTNjckpjazYrQlp1Nk5iZ3B0L0NNZzBlRm10V0VX?=
 =?utf-8?B?Z0ZJM1pXRlR2UTFDbjZnb0R6NHlpRnd5UzRKeU93NWVQbHMyNWlBbWhaaVVo?=
 =?utf-8?B?cTNVRzFVQVFzT005N05iTUFkYnZDZ29ONURTVG11U1EvOUZkMzhad04wTkJy?=
 =?utf-8?B?ekVSclpFbm43QWtqK200b010YWl2ZjBkN00yemMrQ0VCMjBrYzdHTTZHcHND?=
 =?utf-8?B?aHFicUxBR2lURmNxUFRoVWo0WDc3UEU1S21WWk5Gek5LRmFXSHhGYUZndVJI?=
 =?utf-8?B?Uk1NWHdkWTJNRzhneEdFbUJ2SGFnNVF0amdmcmd1MnFlOS9tZmRyM0VaYk13?=
 =?utf-8?B?Y2d4RFZXSG1leTB5TVJ5WUtRT3hwSStXL1A0RG5FMnRXdnJEWGdIbm05aFZK?=
 =?utf-8?B?VGQ5bXB4VURCUFJHeThwb1UvSGRkSStyaXVvaGVVVmMrWFVEOGM0ZFB3ZExo?=
 =?utf-8?B?eG4vNnlWRVBsMElWOGpUci9JcXRtekJtb3ZkMmtNOHNpUUc0Sy9JSzEwT3d5?=
 =?utf-8?B?UUpudjNLMDlwaFgyMmNWbEdUZEo4Q3lWM2YvTjdoTnlvaXdxeFdUSTFoWTFn?=
 =?utf-8?B?R0wvTzlqaUNTRXF0aFZZT3ZQZGlYZEI4TU4vOHRRMDJyVlhyVTZaUXRkR2dB?=
 =?utf-8?B?VGdHZkdyQkpPdEVVN2xzU0ZuY3QvMTNXVklTelpxUWtTNDZVRmRXWGdvVHpY?=
 =?utf-8?B?UmpKWkkyTDU1TFp5amZoY1R4YnYweW00Wjdoak9PTG5HMUpRc3R1MTVpdmhn?=
 =?utf-8?B?ZEsrRDZubUZmcWMvRHlPOCsrV1pXUUlVeTE4Tmw2dFUybHo5ZUJRZmRHbC9I?=
 =?utf-8?B?MjAvaFpyRUtBNTdLaGFRMzJsVTZReC9HT3dTMU91Qk0rWGhTckZqOEdjYWFx?=
 =?utf-8?B?bUtMMkJGbUpBK29rTXlHbVR4MG1xSVRCdDZSWmdiMDlmdVRTVzFGbVRBOXl6?=
 =?utf-8?B?alR2RDYrVGUreTBhTTRSb1AvVG96a2hiUlcwb0VBL0pLdVNkSW5Tczd4andk?=
 =?utf-8?B?eGgrR1cxUFlkeVhVQ0RhRDRPK3p4RFpFcjduVE02c0hRcFUyd1U0RDJKRW8v?=
 =?utf-8?B?aTlYS0paTmQrZGQweWJKR0h4aE1uUnhVMFZYdU5UQXFmY0tMT0FtZFNvdUMw?=
 =?utf-8?B?eEUza0ZSRlVlTktKdDE2dmNGRVcvdERQc3VHUHZwbXlVY0dVL1I3Y1YvOTdV?=
 =?utf-8?B?THgvUDhRMmZtWGFxTDQwNUthVElxN0w2RGIwb0ZxeUE5QlN4TnhiaEtpN2xz?=
 =?utf-8?B?YTlsUkNMOG5uZE03NTJaZ2xZNm1qVUJPUVpPa0N1Y3d0QndqQ2RqbzlrVUUw?=
 =?utf-8?B?eTNEUUhqTG16UjhvZm1RamdYQlFZUktFWGRxNUlJZ2NYSmxFSzM5S2xCMk5N?=
 =?utf-8?B?aXdXOXdFUG1CK3JKNzFZc3lGU211WlU0RHA0RmhxMnh5V2RMME1zaG5VWVNQ?=
 =?utf-8?B?MUR0VFF0bU8yQTNrczhzMk9EcjRVdThGcWl1Y3F1bXBvK3FxQjJwT2l0RDVv?=
 =?utf-8?B?aE9weWo0aDYxQms5a3J3Wks4NWhrdlBxMXE3aXd4TlZRNlJQWlZlcFloMTdC?=
 =?utf-8?B?V0pscjAwblVKWTcyT2lTZEthK2xhQm1sKzIrUXJrcnNYc08rMzV0RjZOekFp?=
 =?utf-8?B?MDN5RW9HN3hkOENqYStqa1hZOTFKYklkVjNqLy9PbUVuSzdZVVVmd3dhZUlG?=
 =?utf-8?B?ZjNhSUtYaGkrcWtER2hTOWxvNkRnL0pabkRzVXZudzdrU0Ixd29ONGczNzIr?=
 =?utf-8?Q?nD9QwsWLhaF1N?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f79703f8-4193-49b3-aa32-08d951ec6bc3
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2021 17:23:31.3251 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sJJjo4RSLh27jC5/wTxkRl9mqUv8ueLI5dBFNMRJF3aww6hjYTd2ud84Y8uAMrOe
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4142
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [RFC 1/4] dma-fence: Add deadline awareness
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: Matthew Brost <matthew.brost@intel.com>, Rob Clark <robdclark@chromium.org>,
 Gustavo Padovan <gustavo@padovan.org>,
 open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

CgpBbSAyOC4wNy4yMSB1bSAxNzoxNSBzY2hyaWViIFJvYiBDbGFyazoKPiBPbiBXZWQsIEp1bCAy
OCwgMjAyMSBhdCA0OjM3IEFNIENocmlzdGlhbiBLw7ZuaWcKPiA8Y2tvZW5pZy5sZWljaHR6dW1l
cmtlbkBnbWFpbC5jb20+IHdyb3RlOgo+PiBBbSAyOC4wNy4yMSB1bSAwOTowMyBzY2hyaWViIENo
cmlzdGlhbiBLw7ZuaWc6Cj4+PiBBbSAyNy4wNy4yMSB1bSAxNjoyNSBzY2hyaWViIFJvYiBDbGFy
azoKPj4+PiBPbiBUdWUsIEp1bCAyNywgMjAyMSBhdCAxMjoxMSBBTSBDaHJpc3RpYW4gS8O2bmln
Cj4+Pj4gPGNrb2VuaWcubGVpY2h0enVtZXJrZW5AZ21haWwuY29tPiB3cm90ZToKPj4+Pj4gQW0g
MjcuMDcuMjEgdW0gMDE6Mzggc2NocmllYiBSb2IgQ2xhcms6Cj4+Pj4+PiBGcm9tOiBSb2IgQ2xh
cmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+Cj4+Pj4+Pgo+Pj4+Pj4gQWRkIGEgd2F5IHRvIGhp
bnQgdG8gdGhlIGZlbmNlIHNpZ25hbGVyIG9mIGFuIHVwY29taW5nIGRlYWRsaW5lLAo+Pj4+Pj4g
c3VjaCBhcwo+Pj4+Pj4gdmJsYW5rLCB3aGljaCB0aGUgZmVuY2Ugd2FpdGVyIHdvdWxkIHByZWZl
ciBub3QgdG8gbWlzcy4gVGhpcyBpcyB0bwo+Pj4+Pj4gYWlkCj4+Pj4+PiB0aGUgZmVuY2Ugc2ln
bmFsZXIgaW4gbWFraW5nIHBvd2VyIG1hbmFnZW1lbnQgZGVjaXNpb25zLCBsaWtlIGJvb3N0aW5n
Cj4+Pj4+PiBmcmVxdWVuY3kgYXMgdGhlIGRlYWRsaW5lIGFwcHJvYWNoZXMgYW5kIGF3YXJlbmVz
cyBvZiBtaXNzaW5nCj4+Pj4+PiBkZWFkbGluZXMKPj4+Pj4+IHNvIHRoYXQgY2FuIGJlIGZhY3Rv
cmVkIGluIHRvIHRoZSBmcmVxdWVuY3kgc2NhbGluZy4KPj4+Pj4+Cj4+Pj4+PiBTaWduZWQtb2Zm
LWJ5OiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+Cj4+Pj4+PiAtLS0KPj4+Pj4+
ICAgICBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgfCAzOQo+Pj4+Pj4gKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKwo+Pj4+Pj4gICAgIGluY2x1ZGUvbGludXgvZG1hLWZl
bmNlLmggICB8IDE3ICsrKysrKysrKysrKysrKysKPj4+Pj4+ICAgICAyIGZpbGVzIGNoYW5nZWQs
IDU2IGluc2VydGlvbnMoKykKPj4+Pj4+Cj4+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEt
YnVmL2RtYS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jCj4+Pj4+PiBpbmRl
eCBjZTBmNWVmZjU3NWQuLjJlMGQyNWFiNDU3ZSAxMDA2NDQKPj4+Pj4+IC0tLSBhL2RyaXZlcnMv
ZG1hLWJ1Zi9kbWEtZmVuY2UuYwo+Pj4+Pj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5j
ZS5jCj4+Pj4+PiBAQCAtOTEwLDYgKzkxMCw0NSBAQCBkbWFfZmVuY2Vfd2FpdF9hbnlfdGltZW91
dChzdHJ1Y3QgZG1hX2ZlbmNlCj4+Pj4+PiAqKmZlbmNlcywgdWludDMyX3QgY291bnQsCj4+Pj4+
PiAgICAgfQo+Pj4+Pj4gICAgIEVYUE9SVF9TWU1CT0woZG1hX2ZlbmNlX3dhaXRfYW55X3RpbWVv
dXQpOwo+Pj4+Pj4KPj4+Pj4+ICsKPj4+Pj4+ICsvKioKPj4+Pj4+ICsgKiBkbWFfZmVuY2Vfc2V0
X2RlYWRsaW5lIC0gc2V0IGRlc2lyZWQgZmVuY2Utd2FpdCBkZWFkbGluZQo+Pj4+Pj4gKyAqIEBm
ZW5jZTogICAgdGhlIGZlbmNlIHRoYXQgaXMgdG8gYmUgd2FpdGVkIG9uCj4+Pj4+PiArICogQGRl
YWRsaW5lOiB0aGUgdGltZSBieSB3aGljaCB0aGUgd2FpdGVyIGhvcGVzIGZvciB0aGUgZmVuY2Ug
dG8gYmUKPj4+Pj4+ICsgKiAgICAgICAgICAgIHNpZ25hbGVkCj4+Pj4+PiArICoKPj4+Pj4+ICsg
KiBJbmZvcm0gdGhlIGZlbmNlIHNpZ25hbGVyIG9mIGFuIHVwY29taW5nIGRlYWRsaW5lLCBzdWNo
IGFzCj4+Pj4+PiB2YmxhbmssIGJ5Cj4+Pj4+PiArICogd2hpY2ggcG9pbnQgdGhlIHdhaXRlciB3
b3VsZCBwcmVmZXIgdGhlIGZlbmNlIHRvIGJlIHNpZ25hbGVkCj4+Pj4+PiBieS4gIFRoaXMKPj4+
Pj4+ICsgKiBpcyBpbnRlbmRlZCB0byBnaXZlIGZlZWRiYWNrIHRvIHRoZSBmZW5jZSBzaWduYWxl
ciB0byBhaWQgaW4gcG93ZXIKPj4+Pj4+ICsgKiBtYW5hZ2VtZW50IGRlY2lzaW9ucywgc3VjaCBh
cyBib29zdGluZyBHUFUgZnJlcXVlbmN5IGlmIGEgcGVyaW9kaWMKPj4+Pj4+ICsgKiB2Ymxhbmsg
ZGVhZGxpbmUgaXMgYXBwcm9hY2hpbmcuCj4+Pj4+PiArICovCj4+Pj4+PiArdm9pZCBkbWFfZmVu
Y2Vfc2V0X2RlYWRsaW5lKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBrdGltZV90Cj4+Pj4+PiBk
ZWFkbGluZSkKPj4+Pj4+ICt7Cj4+Pj4+PiArICAgICB1bnNpZ25lZCBsb25nIGZsYWdzOwo+Pj4+
Pj4gKwo+Pj4+Pj4gKyAgICAgaWYgKGRtYV9mZW5jZV9pc19zaWduYWxlZChmZW5jZSkpCj4+Pj4+
PiArICAgICAgICAgICAgIHJldHVybjsKPj4+Pj4+ICsKPj4+Pj4+ICsgICAgIHNwaW5fbG9ja19p
cnFzYXZlKGZlbmNlLT5sb2NrLCBmbGFncyk7Cj4+Pj4+PiArCj4+Pj4+PiArICAgICAvKiBJZiB3
ZSBhbHJlYWR5IGhhdmUgYW4gZWFybGllciBkZWFkbGluZSwga2VlcCBpdDogKi8KPj4+Pj4+ICsg
ICAgIGlmICh0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19IQVNfREVBRExJTkVfQklULCAmZmVuY2Ut
PmZsYWdzKSAmJgo+Pj4+Pj4gKyAgICAgICAgIGt0aW1lX2JlZm9yZShmZW5jZS0+ZGVhZGxpbmUs
IGRlYWRsaW5lKSkgewo+Pj4+Pj4gKyAgICAgICAgICAgICBzcGluX3VubG9ja19pcnFyZXN0b3Jl
KGZlbmNlLT5sb2NrLCBmbGFncyk7Cj4+Pj4+PiArICAgICAgICAgICAgIHJldHVybjsKPj4+Pj4+
ICsgICAgIH0KPj4+Pj4+ICsKPj4+Pj4+ICsgICAgIGZlbmNlLT5kZWFkbGluZSA9IGRlYWRsaW5l
Owo+Pj4+Pj4gKyAgICAgc2V0X2JpdChETUFfRkVOQ0VfRkxBR19IQVNfREVBRExJTkVfQklULCAm
ZmVuY2UtPmZsYWdzKTsKPj4+Pj4+ICsKPj4+Pj4+ICsgICAgIHNwaW5fdW5sb2NrX2lycXJlc3Rv
cmUoZmVuY2UtPmxvY2ssIGZsYWdzKTsKPj4+Pj4+ICsKPj4+Pj4+ICsgICAgIGlmIChmZW5jZS0+
b3BzLT5zZXRfZGVhZGxpbmUpCj4+Pj4+PiArICAgICAgICAgICAgIGZlbmNlLT5vcHMtPnNldF9k
ZWFkbGluZShmZW5jZSwgZGVhZGxpbmUpOwo+Pj4+Pj4gK30KPj4+Pj4+ICtFWFBPUlRfU1lNQk9M
KGRtYV9mZW5jZV9zZXRfZGVhZGxpbmUpOwo+Pj4+Pj4gKwo+Pj4+Pj4gICAgIC8qKgo+Pj4+Pj4g
ICAgICAqIGRtYV9mZW5jZV9pbml0IC0gSW5pdGlhbGl6ZSBhIGN1c3RvbSBmZW5jZS4KPj4+Pj4+
ICAgICAgKiBAZmVuY2U6IHRoZSBmZW5jZSB0byBpbml0aWFsaXplCj4+Pj4+PiBkaWZmIC0tZ2l0
IGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaCBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgK
Pj4+Pj4+IGluZGV4IDZmZmI0YjJjNjM3MS4uNGU2Y2ZlNGU2ZmJjIDEwMDY0NAo+Pj4+Pj4gLS0t
IGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaAo+Pj4+Pj4gKysrIGIvaW5jbHVkZS9saW51eC9k
bWEtZmVuY2UuaAo+Pj4+Pj4gQEAgLTg4LDYgKzg4LDcgQEAgc3RydWN0IGRtYV9mZW5jZSB7Cj4+
Pj4+PiAgICAgICAgICAgICAgICAgLyogQHRpbWVzdGFtcCByZXBsYWNlZCBieSBAcmN1IG9uCj4+
Pj4+PiBkbWFfZmVuY2VfcmVsZWFzZSgpICovCj4+Pj4+PiAgICAgICAgICAgICAgICAgc3RydWN0
IHJjdV9oZWFkIHJjdTsKPj4+Pj4+ICAgICAgICAgfTsKPj4+Pj4+ICsgICAgIGt0aW1lX3QgZGVh
ZGxpbmU7Cj4+Pj4+IE1obSwgYWRkaW5nIHRoZSBmbGFnIHNvdW5kcyBvayB0byBtZSBidXQgSSdt
IGEgYml0IGhlc2l0YXRpbmcgYWRkaW5nCj4+Pj4+IHRoZQo+Pj4+PiBkZWFkbGluZSBhcyBleHRy
YSBmaWVsZCBoZXJlLgo+Pj4+Pgo+Pj4+PiBXZSB0dW5lZCB0aGUgZG1hX2ZlbmNlIHN0cnVjdHVy
ZSBpbnRlbnRpb25hbGx5IHNvIHRoYXQgaXQgaXMgb25seSA2NAo+Pj4+PiBieXRlcy4KPj4+PiBI
bW0sIHRoZW4gSSBndWVzcyB5b3Ugd291bGRuJ3QgYmUgYSBmYW4gb2YgYWxzbyBhZGRpbmcgYW4g
aHJ0aW1lcj8KPj4+Pgo+Pj4+IFdlIGNvdWxkIHB1c2ggdGhlIGt0aW1lX3QgKGFuZCB0aW1lcikg
ZG93biBpbnRvIHRoZSBkZXJpdmVkIGZlbmNlCj4+Pj4gY2xhc3MsIGJ1dCBJIHRoaW5rIHRoZXJl
IGlzIGdvaW5nIHRvIG5lZWQgdG8gYmUgc29tZSBleHRyYSBzdG9yYWdlCj4+Pj4gKnNvbWV3aGVy
ZSouLiBtYXliZSB0aGUgZmVuY2Ugc2lnbmFsZXIgY291bGQgZ2V0IGF3YXkgd2l0aCBqdXN0Cj4+
Pj4gc3RvcmluZyB0aGUgbmVhcmVzdCB1cGNvbWluZyBkZWFkbGluZSBwZXIgZmVuY2UtY29udGV4
dCBpbnN0ZWFkPwo+Pj4gSSB3b3VsZCBqdXN0IHB1c2ggdGhhdCBpbnRvIHRoZSBkcml2ZXIgaW5z
dGVhZC4KPj4+Cj4+PiBZb3UgbW9zdCBsaWtlbHkgZG9uJ3Qgd2FudCB0aGUgZGVhZGxpbmUgcGVy
IGZlbmNlIGFueXdheSBpbiBjb21wbGV4Cj4+PiBzY2VuYXJpb3MsIGJ1dCByYXRoZXIgcGVyIGZy
YW1lLiBBbmQgYSBmcmFtZSBpcyB1c3VhbGx5IGNvbXBvc2VkIGZyb20KPj4+IG11bHRpcGxlIGZl
bmNlcy4KPiBSaWdodCwgSSBlbmRlZCB1cCBrZWVwaW5nIHRyYWNrIG9mIHRoZSBuZWFyZXN0IGRl
YWRsaW5lIGluIHBhdGNoIDUvNAo+IHdoaWNoIGFkZGVkIGRybS9tc20gc3VwcG9ydDoKPgo+ICAg
IGh0dHBzOi8vbmFtMTEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRw
cyUzQSUyRiUyRnBhdGNod29yay5mcmVlZGVza3RvcC5vcmclMkZwYXRjaCUyRjQ0NzEzOCUyRiZh
bXA7ZGF0YT0wNCU3QzAxJTdDY2hyaXN0aWFuLmtvZW5pZyU0MGFtZC5jb20lN0NjZTZhY2U4NTI2
M2Q0NDhiYmM5ZjA4ZDk1MWQ5ZjA2YyU3QzNkZDg5NjFmZTQ4ODRlNjA4ZTExYTgyZDk5NGUxODNk
JTdDMCU3QzAlN0M2Mzc2MzA4MTk2MDY0MjczMDYlN0NVbmtub3duJTdDVFdGcGJHWnNiM2Q4ZXlK
V0lqb2lNQzR3TGpBd01EQWlMQ0pRSWpvaVYybHVNeklpTENKQlRpSTZJazFoYVd3aUxDSlhWQ0k2
TW4wJTNEJTdDMzAwMCZhbXA7c2RhdGE9YW1lc3pBT2xDbGFaTmVVRGxZcjM3WmRJeXRWWE5naUVV
S3VjdGpYTHFaMCUzRCZhbXA7cmVzZXJ2ZWQ9MAo+Cj4gQnV0IGlmIHdlIGRvIGhhdmUgdGhlIGt0
aW1lX3QgaW4gZG1hX2ZlbmNlIGluIGRtYV9mZW5jZSwgd2UgY2FuIGFkZAo+IHNvbWUgY2hlY2tz
IGFuZCBhdm9pZCBjYWxsaW5nIGJhY2sgdG8gdGhlIGRyaXZlciBpZiBhIGxhdGVyIGRlYWRsaW5l
Cj4gaXMgc2V0IG9uIGEgZmVuY2UgdGhhdCBhbHJlYWR5IGhhcyBhbiBlYXJsaWVyIGRlYWRsaW5l
LiAgT1RPSCBJCj4gc3VwcG9zZSBJIGNhbiBwdXNoIGFsbCB0aGF0IGJhY2sgdG8gdGhlIGRyaXZl
ciB0byBzdGFydCwgYW5kIHdlIGNhbgo+IHJldmlzaXQgb25jZSB3ZSBoYXZlIG1vcmUgZHJpdmVy
cyBpbXBsZW1lbnRpbmcgZGVhZGxpbmUgc3VwcG9ydC4KCkkgc3RpbGwgdGhpbmsgdGhhdCBhbGwg
b2YgdGhpcyBpcyByYXRoZXIgc3BlY2lmaWMgdG8geW91ciB1c2UgY2FzZSBhbmQgCmhhdmUgc3Ry
b25nIGRvdWJ0IHRoYXQgYW55Ym9keSBlbHNlIHdpbGwgaW1wbGVtZW50IHRoYXQuCgo+PiBUaGlu
a2luZyBtb3JlIGFib3V0IGl0IHdlIGNvdWxkIHByb2JhYmx5IGtpbGwgdGhlIHNwaW5sb2NrIHBv
aW50ZXIgYW5kCj4+IG1ha2UgdGhlIGZsYWdzIDMyYml0IGlmIHdlIGFic29sdXRlbHkgbmVlZCB0
aGF0IGhlcmUuCj4gSWYgd2UgaGFkIGEgJ3N0cnVjdCBkbWFfZmVuY2VfY29udGV4dCcgd2UgY291
bGQgcHVzaCB0aGUgc3BpbmxvY2ssIG9wcwo+IHBvaW50ZXIsIGFuZCB1NjQgY29udGV4dCBpbnRv
IHRoYXQgYW5kIHJlcGxhY2Ugd2l0aCBhIHNpbmdsZQo+IGRtYV9mZW5jZV9jb250ZXh0IHB0ciwg
ZndpdwoKVGhhdCB3b24ndCB3b3JrLiBXZSBoYXZlIGEgbG90IG9mIHVzZSBjYXNlcyB3aGVyZSB5
b3UgY2FuJ3QgYWxsb2NhdGUgCm1lbW9yeSwgYnV0IG11c3QgYWxsb2NhdGUgYSBjb250ZXh0LgoK
Q2hyaXN0aWFuLgoKPgo+IEJSLAo+IC1SCj4KPj4gQnV0IEkgc3RpbGwgZG9uJ3Qgc2VlIHRoZSBu
ZWVkIGZvciB0aGF0LCBlc3BlY2lhbGx5IHNpbmNlIG1vc3QgZHJpdmVycwo+PiBwcm9iYWJseSB3
b24ndCBpbXBsZW1lbnQgaXQuCj4+Cj4+IFJlZ2FyZHMsCj4+IENocmlzdGlhbi4KPj4KPj4+IFJl
Z2FyZHMsCj4+PiBDaHJpc3RpYW4uCj4+Pgo+Pj4+IEJSLAo+Pj4+IC1SCj4+Pj4KPj4+Pj4gUmVn
YXJkcywKPj4+Pj4gQ2hyaXN0aWFuLgo+Pj4+Pgo+Pj4+Pj4gICAgICAgICB1NjQgY29udGV4dDsK
Pj4+Pj4+ICAgICAgICAgdTY0IHNlcW5vOwo+Pj4+Pj4gICAgICAgICB1bnNpZ25lZCBsb25nIGZs
YWdzOwo+Pj4+Pj4gQEAgLTk5LDYgKzEwMCw3IEBAIGVudW0gZG1hX2ZlbmNlX2ZsYWdfYml0cyB7
Cj4+Pj4+PiAgICAgICAgIERNQV9GRU5DRV9GTEFHX1NJR05BTEVEX0JJVCwKPj4+Pj4+ICAgICAg
ICAgRE1BX0ZFTkNFX0ZMQUdfVElNRVNUQU1QX0JJVCwKPj4+Pj4+ICAgICAgICAgRE1BX0ZFTkNF
X0ZMQUdfRU5BQkxFX1NJR05BTF9CSVQsCj4+Pj4+PiArICAgICBETUFfRkVOQ0VfRkxBR19IQVNf
REVBRExJTkVfQklULAo+Pj4+Pj4gICAgICAgICBETUFfRkVOQ0VfRkxBR19VU0VSX0JJVFMsIC8q
IG11c3QgYWx3YXlzIGJlIGxhc3QgbWVtYmVyICovCj4+Pj4+PiAgICAgfTsKPj4+Pj4+Cj4+Pj4+
PiBAQCAtMjYxLDYgKzI2MywxOSBAQCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyB7Cj4+Pj4+PiAgICAg
ICAgICAqLwo+Pj4+Pj4gICAgICAgICB2b2lkICgqdGltZWxpbmVfdmFsdWVfc3RyKShzdHJ1Y3Qg
ZG1hX2ZlbmNlICpmZW5jZSwKPj4+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgY2hhciAqc3RyLCBpbnQgc2l6ZSk7Cj4+Pj4+PiArCj4+Pj4+PiArICAgICAvKioKPj4+Pj4+
ICsgICAgICAqIEBzZXRfZGVhZGxpbmU6Cj4+Pj4+PiArICAgICAgKgo+Pj4+Pj4gKyAgICAgICog
Q2FsbGJhY2sgdG8gYWxsb3cgYSBmZW5jZSB3YWl0ZXIgdG8gaW5mb3JtIHRoZSBmZW5jZQo+Pj4+
Pj4gc2lnbmFsZXIgb2YgYW4KPj4+Pj4+ICsgICAgICAqIHVwY29taW5nIGRlYWRsaW5lLCBzdWNo
IGFzIHZibGFuaywgYnkgd2hpY2ggcG9pbnQgdGhlCj4+Pj4+PiB3YWl0ZXIgd291bGQKPj4+Pj4+
ICsgICAgICAqIHByZWZlciB0aGUgZmVuY2UgdG8gYmUgc2lnbmFsZWQgYnkuICBUaGlzIGlzIGlu
dGVuZGVkIHRvCj4+Pj4+PiBnaXZlIGZlZWRiYWNrCj4+Pj4+PiArICAgICAgKiB0byB0aGUgZmVu
Y2Ugc2lnbmFsZXIgdG8gYWlkIGluIHBvd2VyIG1hbmFnZW1lbnQKPj4+Pj4+IGRlY2lzaW9ucywg
c3VjaCBhcwo+Pj4+Pj4gKyAgICAgICogYm9vc3RpbmcgR1BVIGZyZXF1ZW5jeS4KPj4+Pj4+ICsg
ICAgICAqCj4+Pj4+PiArICAgICAgKiBUaGlzIGNhbGxiYWNrIGlzIG9wdGlvbmFsLgo+Pj4+Pj4g
KyAgICAgICovCj4+Pj4+PiArICAgICB2b2lkICgqc2V0X2RlYWRsaW5lKShzdHJ1Y3QgZG1hX2Zl
bmNlICpmZW5jZSwga3RpbWVfdCBkZWFkbGluZSk7Cj4+Pj4+PiAgICAgfTsKPj4+Pj4+Cj4+Pj4+
PiAgICAgdm9pZCBkbWFfZmVuY2VfaW5pdChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgY29uc3Qg
c3RydWN0Cj4+Pj4+PiBkbWFfZmVuY2Vfb3BzICpvcHMsCj4+Pj4+PiBAQCAtNTg2LDYgKzYwMSw4
IEBAIHN0YXRpYyBpbmxpbmUgc2lnbmVkIGxvbmcgZG1hX2ZlbmNlX3dhaXQoc3RydWN0Cj4+Pj4+
PiBkbWFfZmVuY2UgKmZlbmNlLCBib29sIGludHIpCj4+Pj4+PiAgICAgICAgIHJldHVybiByZXQg
PCAwID8gcmV0IDogMDsKPj4+Pj4+ICAgICB9Cj4+Pj4+Pgo+Pj4+Pj4gK3ZvaWQgZG1hX2ZlbmNl
X3NldF9kZWFkbGluZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwga3RpbWVfdAo+Pj4+Pj4gZGVh
ZGxpbmUpOwo+Pj4+Pj4gKwo+Pj4+Pj4gICAgIHN0cnVjdCBkbWFfZmVuY2UgKmRtYV9mZW5jZV9n
ZXRfc3R1Yih2b2lkKTsKPj4+Pj4+ICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICpkbWFfZmVuY2VfYWxs
b2NhdGVfcHJpdmF0ZV9zdHViKHZvaWQpOwo+Pj4+Pj4gICAgIHU2NCBkbWFfZmVuY2VfY29udGV4
dF9hbGxvYyh1bnNpZ25lZCBudW0pOwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbmFyby1tbS1zaWcK

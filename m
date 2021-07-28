Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD0C3D887C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Jul 2021 09:03:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7DDB7634FD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Jul 2021 07:03:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F29D96354D; Wed, 28 Jul 2021 07:03:48 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F146F634D8;
	Wed, 28 Jul 2021 07:03:44 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CD3466048D
 for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Jul 2021 07:03:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CB2C0634D8; Wed, 28 Jul 2021 07:03:41 +0000 (UTC)
Received: from NAM04-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam08on2067.outbound.protection.outlook.com [40.107.100.67])
 by lists.linaro.org (Postfix) with ESMTPS id BC95B60EFE
 for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Jul 2021 07:03:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MBRzaFHyGPALPlsaboj5IOiw3J9m8hzkvvrwnYgtm4i9i45Q0r2Wgs8GNmOFwY0HJvPgQJdSCLZmedIJX+t4eLsaXWTZXr7U7bepm9YDuv8yQkIwiEHHiMRRk27H134kTPN1PqjSRomJ1k5VcJaKzMvXMszEg0Qukaezrd0dWTMVAGu8j7rpvKDppsngFWfFtF1IIdQzSnVRPkqqFL/c4/nWw7AQo9vREd7id59cpOudM5vOdjqIbP8Jt6qzIuZzisN/m+LUjZ6bM0Lh5e/LWZhbBDIEKejBVR6ssUc1uzPOAKFc48NTASUyYF7VojOl6sxIUhm76f/PWQuFSWiK4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ApZxqGkfiOsV0PmpN0LKkConFj2WGLKHwb3FKfKgfpc=;
 b=S18GCDkq4juT4nxPTxNKdxDstii20+KO5axd/cgOVBtAeXvs5rXFDYZJgTWG51mmAwtwMfLYpB/wzL/qWVTDDwAGzfZ5rCRJMOzqkWl8TiWrGsqGgYZM3rWgO8nLG3E6byl5tacYfdmB8xmh22OdD/p6HlHaPibAATV4W+unnh3GPwHbYm02iwqN3PA0Jksv/IRXmErS+pOTbjq99gsFbzYDuQ8OF5zkWH6xoiYB3yVvVkyEOad3p9mJnpySanTnPsoaffXOrYcZnsSNYwgaeqaTHvs0NJHrNJEu0oMiL0NFPfBHIpQAz5vipH/EuSwYt0WPvTDO7JmOlKKtXnQOHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ApZxqGkfiOsV0PmpN0LKkConFj2WGLKHwb3FKfKgfpc=;
 b=Af9Jg0I/XEqsiy6FC6VwlC9ZHH62jqEaN0HT1rr9CmbS9Xhd2kAe880ijilMUSAU07M200g6pRn/2y21JgVF8zTHAcV79rLNF505j0cSZm4/Hy0ubj/Bsjm3qvaVllGIoTT9I4gdGUbjVOPwZUa6HvtzIgq5VJ09ZBcmVpeRpsM=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4303.namprd12.prod.outlook.com (2603:10b6:208:198::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18; Wed, 28 Jul
 2021 07:03:36 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756%5]) with mapi id 15.20.4352.031; Wed, 28 Jul 2021
 07:03:36 +0000
To: Rob Clark <robdclark@gmail.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
References: <20210726233854.2453899-1-robdclark@gmail.com>
 <20210726233854.2453899-2-robdclark@gmail.com>
 <50b181fe-6605-b7ac-36a6-8bcda2930e6f@gmail.com>
 <CAF6AEGuNxi_aeYE37FT3a-atCUWgepxs-9EwxMfpiMaU7wgqdQ@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <9edd7083-e6b3-b230-c273-8f2fbe76ca17@amd.com>
Date: Wed, 28 Jul 2021 09:03:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <CAF6AEGuNxi_aeYE37FT3a-atCUWgepxs-9EwxMfpiMaU7wgqdQ@mail.gmail.com>
Content-Language: en-US
X-ClientProxiedBy: FR3P281CA0037.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4a::21) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:502c:190e:1ca:e49a]
 (2a02:908:1252:fb60:502c:190e:1ca:e49a) by
 FR3P281CA0037.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:4a::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4373.11 via Frontend Transport; Wed, 28 Jul 2021 07:03:34 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6e7b0b10-c926-443b-1cab-08d95195d1aa
X-MS-TrafficTypeDiagnostic: MN2PR12MB4303:
X-Microsoft-Antispam-PRVS: <MN2PR12MB43031EF1CA2DB0E76C0339D483EA9@MN2PR12MB4303.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hBNq720/Z8L1SDFEuQLCYSfgTnvpHnxb0jaqLkYR9aipl4nilJoWNd4daIJImqVNNOSHCb18EVuAFfKccRhTEyHW5ImaAVOgxNHJdyJJu4GG8lnDE/wmJQ9GQ283RfBsnAr1AGwKKmj+gFDqYVrXO8fzMZCwyCYPCahdYf+uGHCV6DUydhdFByZMgdKXQphIesKC9vGMl4kT0cnN29Kn1JzT5qhGj+hFHIVegHXx2rP198EIIXATvQW+rKZswdFTlPIv1MMaJUjTNr+7WCLjK1DI+YadRxzhfdKWAznK1RmCe0uQXY47/jJfi0bti8fUvufP1aNYVoo3NnroeiRQkdLkaYBOEFMpTLGIvjsX6fwTMrSPSxqJI5HHfbupPsAtGihdmINbNnTLKepnqaK0ENUA0nShllNiSldB3X+gnyNZJ69mT7BO8vd1Qb1gQ0fG9KwIhoS0HBnJvmZ72y99SXPvYCFADxAi65wNJ2bH1rrt7ANXSIZIFKyNf0wnGX/LSYza1PL7O6bwT/80QoHMD8nU6zUA8SOjf8f360HnMR1c3gjiLDhBsaeNsPhosufqnbETMV7xRisthesNzh6WCmwBHbVgOazeo6JgafcC4rbcAwfAtkMOVsXW8OjpEKMuvFD4YDuspx4Gsu/kSqB+1RtQ86vzQ/TTT3/H5kRldknQ0YeB3/PKUklZQasQz4o49R9uANR35huzLarR4y7t+VSb/5xVPHD3CGcbWrruPPw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(136003)(346002)(376002)(366004)(39860400002)(6666004)(2616005)(38100700002)(53546011)(66574015)(5660300002)(86362001)(31696002)(36756003)(4326008)(66556008)(66946007)(6486002)(186003)(54906003)(110136005)(83380400001)(8936002)(2906002)(478600001)(66476007)(31686004)(8676002)(7416002)(316002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RWVQS1YwcWlNNDdTdWxTOWYxUVZodHh3ZDBKRXBCR295NlJ3TDdySnQwNWNQ?=
 =?utf-8?B?bVVuRnZLK2hSeGhzY3FXSHNOQkxLZW84TEFiQTVGbUd4TlhIWlFJeXFDRVF6?=
 =?utf-8?B?bGxZUXFpNHlsRWMzaDZ3MDZTeTF1QUdhUnovTFp3aGU2dnNqaVphdGx0NC90?=
 =?utf-8?B?S0VzcmdQaXJvdVBXUWFzcmtjeno0NWt3RjZnQnZwaDdVUUpHQjZRem1QZjdD?=
 =?utf-8?B?cm1GZEdWdkJuOTB2blE0eXMxWE5jQlJpdUd3aFQvalQxOWVVdGdYeGtCTnEy?=
 =?utf-8?B?cTZZN3Q5TlRVYXdEejFqSDJRakZEL1RvcE1uZEZuemFmWkJPV3UxZzUvVElL?=
 =?utf-8?B?Wk1Obm1wbFZMNDMvN1B4cUNqTlRHQXVlbU85eUI1Tys5VmtkaUlINGRoTEJn?=
 =?utf-8?B?TnpKWGtVbWMwQW9ReEFMUVczdXc5MGVROGZiZ3UxVHEyTXk1ZmdzcVEvUUtv?=
 =?utf-8?B?QjFhN1RzMjRZUXdFd2gwRU9DK2ZGcXRTbVVqN3NIZEVLU2oxS0tYQTJVRnBL?=
 =?utf-8?B?a0ZqOXpoSU9RZkNSY1BYYVZpbVBXTFNUZFRsamFGVlFYVXVjdU5Qb2dPeW1s?=
 =?utf-8?B?ZVJVazNHaXdwdGNSMEE3aVVJMnJaMGVKcWdoM3BwenkxM0pIcXpMNTFiWDZN?=
 =?utf-8?B?VjhPY3pObFN3bVg5YVdlQlUyU2RlaWt1akxEd205QXBTMU5ORE0zVFRtK0F6?=
 =?utf-8?B?Q0V1RDJMNENNWnFEOENLcjdkb3Q2Ty9BRGJXQzhBYnVOMHZGV1Z0S3pCcno5?=
 =?utf-8?B?Mk1HRmRWbGNWTkFNdENSNzVFb2Y0SUE1Y1NPQ3RnR0RTeThwQndNanRQK2pR?=
 =?utf-8?B?NHY2N0YxNXpGandFVEF3YzZMWUlwVXdwbmp4QVhEc1ZpTXNsYm4xcWRtc3Jq?=
 =?utf-8?B?N0toZ2NDMC9ZMTIrNlhhNk5QOUJtYW9jS0M3Qng2aHNTQzdpYVhCNTJjU0RD?=
 =?utf-8?B?ejVxMENob3R4eUp3eGErZjROWXBoRnhKOFFJTEFhck1TTHBBMUM1Y21uODEz?=
 =?utf-8?B?MjB5Q0FCZXg1c3Y4RDNmWjAyS3paRGN4a2ZZM01OdklaR2VYcGJHN0tURlZ4?=
 =?utf-8?B?dmh4TnNNcm50OFRMb3lvSWcwUm9pdmRRb2ZMS1pSaDk4eWx1Z1czLzNJbzhM?=
 =?utf-8?B?eUFjZHRTNHJOY0xhdlBNWEJzVjlBOTlVaEFwcGZISDBzY2VzZnk2OE91b09p?=
 =?utf-8?B?SFBMK2FVVkxoR1lrdmEyZGFTd0JlWTYwS05JYVVFMjdqdVphSkRwenVuTkQ2?=
 =?utf-8?B?NlhPNUk5U3poNVhZbkE5UXIwRUZud2t3enp6RTRMWktTY2ZpWnU2ejB6V3d4?=
 =?utf-8?B?c1QzQVB2Z2xxWWREbzdyTlBxTlprVzJ0cGdNdHVISlBVdkFaaUljQ3hoNFEx?=
 =?utf-8?B?aTE5Ym5XeW16R01DT1Z6RXhGb01sMXliOENpU1dHZ3I1ZXlhS3hQNEE0bjhZ?=
 =?utf-8?B?T1lGWDZ2TUY4TGNWRmdoN1hHL2VBb2dicHNzY0RhemNmeVl2WGcyMVA0WEU2?=
 =?utf-8?B?aXBJMzBxVkVNM3ovSlRpeGRqVDVWL1ozTGc4dFFDZmdaREJ5NUhFZkNNNExO?=
 =?utf-8?B?TWNyLzdxcFZmb0EyajhpOEtFRm9jck5MdWNNTk5abVJSK2Y0MTdPL2ZlSkV5?=
 =?utf-8?B?bGFrT0VBZStsclR3Nk5JK1EveURDNXUvbzd6SDArTFAyYnZURXd1RGQ3TWJu?=
 =?utf-8?B?bkkwVnVaeEF2amplWmY2RXhYQU5CS2hudTNoeWd1WGtxWW4rUXVQL0wwQnlX?=
 =?utf-8?B?Ukp2MGJGeHd5TXlUM002NUJDajAyNS9IQ25TQ3ZST3oyTlJoRGYzSjJyTXZX?=
 =?utf-8?B?OXgxdExUUmxnUEpqNWNCK3crN2RUUmN2S2d6OVpvY0JibThWVFllWHVTUUR5?=
 =?utf-8?Q?95Yfoa5lTDsa5?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e7b0b10-c926-443b-1cab-08d95195d1aa
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2021 07:03:36.1478 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4JU0xxeZ+5OImXd1ZSMb9XausE16zdAtSRquTtPsvylTho1aPNZ+EwKxJszeVJxi
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4303
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

QW0gMjcuMDcuMjEgdW0gMTY6MjUgc2NocmllYiBSb2IgQ2xhcms6Cj4gT24gVHVlLCBKdWwgMjcs
IDIwMjEgYXQgMTI6MTEgQU0gQ2hyaXN0aWFuIEvDtm5pZwo+IDxja29lbmlnLmxlaWNodHp1bWVy
a2VuQGdtYWlsLmNvbT4gd3JvdGU6Cj4+IEFtIDI3LjA3LjIxIHVtIDAxOjM4IHNjaHJpZWIgUm9i
IENsYXJrOgo+Pj4gRnJvbTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPgo+Pj4K
Pj4+IEFkZCBhIHdheSB0byBoaW50IHRvIHRoZSBmZW5jZSBzaWduYWxlciBvZiBhbiB1cGNvbWlu
ZyBkZWFkbGluZSwgc3VjaCBhcwo+Pj4gdmJsYW5rLCB3aGljaCB0aGUgZmVuY2Ugd2FpdGVyIHdv
dWxkIHByZWZlciBub3QgdG8gbWlzcy4gIFRoaXMgaXMgdG8gYWlkCj4+PiB0aGUgZmVuY2Ugc2ln
bmFsZXIgaW4gbWFraW5nIHBvd2VyIG1hbmFnZW1lbnQgZGVjaXNpb25zLCBsaWtlIGJvb3N0aW5n
Cj4+PiBmcmVxdWVuY3kgYXMgdGhlIGRlYWRsaW5lIGFwcHJvYWNoZXMgYW5kIGF3YXJlbmVzcyBv
ZiBtaXNzaW5nIGRlYWRsaW5lcwo+Pj4gc28gdGhhdCBjYW4gYmUgZmFjdG9yZWQgaW4gdG8gdGhl
IGZyZXF1ZW5jeSBzY2FsaW5nLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IFJvYiBDbGFyayA8cm9i
ZGNsYXJrQGNocm9taXVtLm9yZz4KPj4+IC0tLQo+Pj4gICAgZHJpdmVycy9kbWEtYnVmL2RtYS1m
ZW5jZS5jIHwgMzkgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+Pj4gICAg
aW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaCAgIHwgMTcgKysrKysrKysrKysrKysrKwo+Pj4gICAg
MiBmaWxlcyBjaGFuZ2VkLCA1NiBpbnNlcnRpb25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYwo+
Pj4gaW5kZXggY2UwZjVlZmY1NzVkLi4yZTBkMjVhYjQ1N2UgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2
ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMKPj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVu
Y2UuYwo+Pj4gQEAgLTkxMCw2ICs5MTAsNDUgQEAgZG1hX2ZlbmNlX3dhaXRfYW55X3RpbWVvdXQo
c3RydWN0IGRtYV9mZW5jZSAqKmZlbmNlcywgdWludDMyX3QgY291bnQsCj4+PiAgICB9Cj4+PiAg
ICBFWFBPUlRfU1lNQk9MKGRtYV9mZW5jZV93YWl0X2FueV90aW1lb3V0KTsKPj4+Cj4+PiArCj4+
PiArLyoqCj4+PiArICogZG1hX2ZlbmNlX3NldF9kZWFkbGluZSAtIHNldCBkZXNpcmVkIGZlbmNl
LXdhaXQgZGVhZGxpbmUKPj4+ICsgKiBAZmVuY2U6ICAgIHRoZSBmZW5jZSB0aGF0IGlzIHRvIGJl
IHdhaXRlZCBvbgo+Pj4gKyAqIEBkZWFkbGluZTogdGhlIHRpbWUgYnkgd2hpY2ggdGhlIHdhaXRl
ciBob3BlcyBmb3IgdGhlIGZlbmNlIHRvIGJlCj4+PiArICogICAgICAgICAgICBzaWduYWxlZAo+
Pj4gKyAqCj4+PiArICogSW5mb3JtIHRoZSBmZW5jZSBzaWduYWxlciBvZiBhbiB1cGNvbWluZyBk
ZWFkbGluZSwgc3VjaCBhcyB2YmxhbmssIGJ5Cj4+PiArICogd2hpY2ggcG9pbnQgdGhlIHdhaXRl
ciB3b3VsZCBwcmVmZXIgdGhlIGZlbmNlIHRvIGJlIHNpZ25hbGVkIGJ5LiAgVGhpcwo+Pj4gKyAq
IGlzIGludGVuZGVkIHRvIGdpdmUgZmVlZGJhY2sgdG8gdGhlIGZlbmNlIHNpZ25hbGVyIHRvIGFp
ZCBpbiBwb3dlcgo+Pj4gKyAqIG1hbmFnZW1lbnQgZGVjaXNpb25zLCBzdWNoIGFzIGJvb3N0aW5n
IEdQVSBmcmVxdWVuY3kgaWYgYSBwZXJpb2RpYwo+Pj4gKyAqIHZibGFuayBkZWFkbGluZSBpcyBh
cHByb2FjaGluZy4KPj4+ICsgKi8KPj4+ICt2b2lkIGRtYV9mZW5jZV9zZXRfZGVhZGxpbmUoc3Ry
dWN0IGRtYV9mZW5jZSAqZmVuY2UsIGt0aW1lX3QgZGVhZGxpbmUpCj4+PiArewo+Pj4gKyAgICAg
dW5zaWduZWQgbG9uZyBmbGFnczsKPj4+ICsKPj4+ICsgICAgIGlmIChkbWFfZmVuY2VfaXNfc2ln
bmFsZWQoZmVuY2UpKQo+Pj4gKyAgICAgICAgICAgICByZXR1cm47Cj4+PiArCj4+PiArICAgICBz
cGluX2xvY2tfaXJxc2F2ZShmZW5jZS0+bG9jaywgZmxhZ3MpOwo+Pj4gKwo+Pj4gKyAgICAgLyog
SWYgd2UgYWxyZWFkeSBoYXZlIGFuIGVhcmxpZXIgZGVhZGxpbmUsIGtlZXAgaXQ6ICovCj4+PiAr
ICAgICBpZiAodGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdfSEFTX0RFQURMSU5FX0JJVCwgJmZlbmNl
LT5mbGFncykgJiYKPj4+ICsgICAgICAgICBrdGltZV9iZWZvcmUoZmVuY2UtPmRlYWRsaW5lLCBk
ZWFkbGluZSkpIHsKPj4+ICsgICAgICAgICAgICAgc3Bpbl91bmxvY2tfaXJxcmVzdG9yZShmZW5j
ZS0+bG9jaywgZmxhZ3MpOwo+Pj4gKyAgICAgICAgICAgICByZXR1cm47Cj4+PiArICAgICB9Cj4+
PiArCj4+PiArICAgICBmZW5jZS0+ZGVhZGxpbmUgPSBkZWFkbGluZTsKPj4+ICsgICAgIHNldF9i
aXQoRE1BX0ZFTkNFX0ZMQUdfSEFTX0RFQURMSU5FX0JJVCwgJmZlbmNlLT5mbGFncyk7Cj4+PiAr
Cj4+PiArICAgICBzcGluX3VubG9ja19pcnFyZXN0b3JlKGZlbmNlLT5sb2NrLCBmbGFncyk7Cj4+
PiArCj4+PiArICAgICBpZiAoZmVuY2UtPm9wcy0+c2V0X2RlYWRsaW5lKQo+Pj4gKyAgICAgICAg
ICAgICBmZW5jZS0+b3BzLT5zZXRfZGVhZGxpbmUoZmVuY2UsIGRlYWRsaW5lKTsKPj4+ICt9Cj4+
PiArRVhQT1JUX1NZTUJPTChkbWFfZmVuY2Vfc2V0X2RlYWRsaW5lKTsKPj4+ICsKPj4+ICAgIC8q
Kgo+Pj4gICAgICogZG1hX2ZlbmNlX2luaXQgLSBJbml0aWFsaXplIGEgY3VzdG9tIGZlbmNlLgo+
Pj4gICAgICogQGZlbmNlOiB0aGUgZmVuY2UgdG8gaW5pdGlhbGl6ZQo+Pj4gZGlmZiAtLWdpdCBh
L2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oCj4+
PiBpbmRleCA2ZmZiNGIyYzYzNzEuLjRlNmNmZTRlNmZiYyAxMDA2NDQKPj4+IC0tLSBhL2luY2x1
ZGUvbGludXgvZG1hLWZlbmNlLmgKPj4+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgK
Pj4+IEBAIC04OCw2ICs4OCw3IEBAIHN0cnVjdCBkbWFfZmVuY2Ugewo+Pj4gICAgICAgICAgICAg
ICAgLyogQHRpbWVzdGFtcCByZXBsYWNlZCBieSBAcmN1IG9uIGRtYV9mZW5jZV9yZWxlYXNlKCkg
Ki8KPj4+ICAgICAgICAgICAgICAgIHN0cnVjdCByY3VfaGVhZCByY3U7Cj4+PiAgICAgICAgfTsK
Pj4+ICsgICAgIGt0aW1lX3QgZGVhZGxpbmU7Cj4+IE1obSwgYWRkaW5nIHRoZSBmbGFnIHNvdW5k
cyBvayB0byBtZSBidXQgSSdtIGEgYml0IGhlc2l0YXRpbmcgYWRkaW5nIHRoZQo+PiBkZWFkbGlu
ZSBhcyBleHRyYSBmaWVsZCBoZXJlLgo+Pgo+PiBXZSB0dW5lZCB0aGUgZG1hX2ZlbmNlIHN0cnVj
dHVyZSBpbnRlbnRpb25hbGx5IHNvIHRoYXQgaXQgaXMgb25seSA2NCBieXRlcy4KPiBIbW0sIHRo
ZW4gSSBndWVzcyB5b3Ugd291bGRuJ3QgYmUgYSBmYW4gb2YgYWxzbyBhZGRpbmcgYW4gaHJ0aW1l
cj8KPgo+IFdlIGNvdWxkIHB1c2ggdGhlIGt0aW1lX3QgKGFuZCB0aW1lcikgZG93biBpbnRvIHRo
ZSBkZXJpdmVkIGZlbmNlCj4gY2xhc3MsIGJ1dCBJIHRoaW5rIHRoZXJlIGlzIGdvaW5nIHRvIG5l
ZWQgdG8gYmUgc29tZSBleHRyYSBzdG9yYWdlCj4gKnNvbWV3aGVyZSouLiBtYXliZSB0aGUgZmVu
Y2Ugc2lnbmFsZXIgY291bGQgZ2V0IGF3YXkgd2l0aCBqdXN0Cj4gc3RvcmluZyB0aGUgbmVhcmVz
dCB1cGNvbWluZyBkZWFkbGluZSBwZXIgZmVuY2UtY29udGV4dCBpbnN0ZWFkPwoKSSB3b3VsZCBq
dXN0IHB1c2ggdGhhdCBpbnRvIHRoZSBkcml2ZXIgaW5zdGVhZC4KCllvdSBtb3N0IGxpa2VseSBk
b24ndCB3YW50IHRoZSBkZWFkbGluZSBwZXIgZmVuY2UgYW55d2F5IGluIGNvbXBsZXggCnNjZW5h
cmlvcywgYnV0IHJhdGhlciBwZXIgZnJhbWUuIEFuZCBhIGZyYW1lIGlzIHVzdWFsbHkgY29tcG9z
ZWQgZnJvbSAKbXVsdGlwbGUgZmVuY2VzLgoKUmVnYXJkcywKQ2hyaXN0aWFuLgoKPgo+IEJSLAo+
IC1SCj4KPj4gUmVnYXJkcywKPj4gQ2hyaXN0aWFuLgo+Pgo+Pj4gICAgICAgIHU2NCBjb250ZXh0
Owo+Pj4gICAgICAgIHU2NCBzZXFubzsKPj4+ICAgICAgICB1bnNpZ25lZCBsb25nIGZsYWdzOwo+
Pj4gQEAgLTk5LDYgKzEwMCw3IEBAIGVudW0gZG1hX2ZlbmNlX2ZsYWdfYml0cyB7Cj4+PiAgICAg
ICAgRE1BX0ZFTkNFX0ZMQUdfU0lHTkFMRURfQklULAo+Pj4gICAgICAgIERNQV9GRU5DRV9GTEFH
X1RJTUVTVEFNUF9CSVQsCj4+PiAgICAgICAgRE1BX0ZFTkNFX0ZMQUdfRU5BQkxFX1NJR05BTF9C
SVQsCj4+PiArICAgICBETUFfRkVOQ0VfRkxBR19IQVNfREVBRExJTkVfQklULAo+Pj4gICAgICAg
IERNQV9GRU5DRV9GTEFHX1VTRVJfQklUUywgLyogbXVzdCBhbHdheXMgYmUgbGFzdCBtZW1iZXIg
Ki8KPj4+ICAgIH07Cj4+Pgo+Pj4gQEAgLTI2MSw2ICsyNjMsMTkgQEAgc3RydWN0IGRtYV9mZW5j
ZV9vcHMgewo+Pj4gICAgICAgICAqLwo+Pj4gICAgICAgIHZvaWQgKCp0aW1lbGluZV92YWx1ZV9z
dHIpKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLAo+Pj4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIGNoYXIgKnN0ciwgaW50IHNpemUpOwo+Pj4gKwo+Pj4gKyAgICAgLyoqCj4+PiAr
ICAgICAgKiBAc2V0X2RlYWRsaW5lOgo+Pj4gKyAgICAgICoKPj4+ICsgICAgICAqIENhbGxiYWNr
IHRvIGFsbG93IGEgZmVuY2Ugd2FpdGVyIHRvIGluZm9ybSB0aGUgZmVuY2Ugc2lnbmFsZXIgb2Yg
YW4KPj4+ICsgICAgICAqIHVwY29taW5nIGRlYWRsaW5lLCBzdWNoIGFzIHZibGFuaywgYnkgd2hp
Y2ggcG9pbnQgdGhlIHdhaXRlciB3b3VsZAo+Pj4gKyAgICAgICogcHJlZmVyIHRoZSBmZW5jZSB0
byBiZSBzaWduYWxlZCBieS4gIFRoaXMgaXMgaW50ZW5kZWQgdG8gZ2l2ZSBmZWVkYmFjawo+Pj4g
KyAgICAgICogdG8gdGhlIGZlbmNlIHNpZ25hbGVyIHRvIGFpZCBpbiBwb3dlciBtYW5hZ2VtZW50
IGRlY2lzaW9ucywgc3VjaCBhcwo+Pj4gKyAgICAgICogYm9vc3RpbmcgR1BVIGZyZXF1ZW5jeS4K
Pj4+ICsgICAgICAqCj4+PiArICAgICAgKiBUaGlzIGNhbGxiYWNrIGlzIG9wdGlvbmFsLgo+Pj4g
KyAgICAgICovCj4+PiArICAgICB2b2lkICgqc2V0X2RlYWRsaW5lKShzdHJ1Y3QgZG1hX2ZlbmNl
ICpmZW5jZSwga3RpbWVfdCBkZWFkbGluZSk7Cj4+PiAgICB9Owo+Pj4KPj4+ICAgIHZvaWQgZG1h
X2ZlbmNlX2luaXQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGNvbnN0IHN0cnVjdCBkbWFfZmVu
Y2Vfb3BzICpvcHMsCj4+PiBAQCAtNTg2LDYgKzYwMSw4IEBAIHN0YXRpYyBpbmxpbmUgc2lnbmVk
IGxvbmcgZG1hX2ZlbmNlX3dhaXQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGJvb2wgaW50cikK
Pj4+ICAgICAgICByZXR1cm4gcmV0IDwgMCA/IHJldCA6IDA7Cj4+PiAgICB9Cj4+Pgo+Pj4gK3Zv
aWQgZG1hX2ZlbmNlX3NldF9kZWFkbGluZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwga3RpbWVf
dCBkZWFkbGluZSk7Cj4+PiArCj4+PiAgICBzdHJ1Y3QgZG1hX2ZlbmNlICpkbWFfZmVuY2VfZ2V0
X3N0dWIodm9pZCk7Cj4+PiAgICBzdHJ1Y3QgZG1hX2ZlbmNlICpkbWFfZmVuY2VfYWxsb2NhdGVf
cHJpdmF0ZV9zdHViKHZvaWQpOwo+Pj4gICAgdTY0IGRtYV9mZW5jZV9jb250ZXh0X2FsbG9jKHVu
c2lnbmVkIG51bSk7CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1t
LXNpZwo=

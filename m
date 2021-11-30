Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D96F946395E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Nov 2021 16:07:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4B34360EC3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Nov 2021 15:07:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7DA8D60EA2; Tue, 30 Nov 2021 15:07:50 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CAD5960245;
	Tue, 30 Nov 2021 15:07:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6AB3D602FB
 for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Nov 2021 15:03:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 65AA360B82; Tue, 30 Nov 2021 15:03:03 +0000 (UTC)
Received: from NAM02-BN1-obe.outbound.protection.outlook.com
 (mail-bn1nam07on2052.outbound.protection.outlook.com [40.107.212.52])
 by lists.linaro.org (Postfix) with ESMTPS id 3BD50602FB
 for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Nov 2021 15:03:01 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GK6wLJUB+a5IbZ1VJgJ28E+AjBwirpkT/47oqeQy3/l6m9p/SHkXmmWxPMgy/clmBEnmdBTfz38gFjAg9dBVilQ1YjliwE+A/cZkAocEOnWTRV9lFSRwxNbtb3i6l/TFdvuZrEu3aZ8qt3dadOYT7GLLG3NQzrrtvv5Sy5tKOxKlAJrF524R8v4KuFOXyBRxC+ZHzd06yKK716bLFrsrP1vaV1XrN357UQDehGtIRIQep5zWYwMU4b8DhFVHNGmmSxXESwHy2JBxN+FKcQkmiOSs14KDvUCxhJtuOcHwxhWAxPvkQaIeZAXy3yC8w9z6MHYdmGFFfevmH4Kl5fCnsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0t0YpecFyVI3C40vlLv0WinXtbStdrQbOvnfhYpQ6vc=;
 b=gCAQTb8m3/dOCv9nE96O8l5UKAx+8RsI1AM8gcg9PRkz4pYEJhxYFYRqQUmioDpQ6VhOkVEDF4Vc4qzy8cALjXNYfx4UGS+Q99wDjHWFt4AgnsssRU5eB6OAcUBTgBsrdZsrVg5ONCKJR0mKn7TbVRqgFkB0kbVQbSMFwnoT0Ji7aa7+BV40WkShwMB1DCcEfqdn5Rbzw2Azo3zoZ3eF5YOyuiDONIIxMRBHp+fLlEvIu2yZHGmLjANu8YgaeNuDmDLRNVAiD/NuMBsxj6Gk029h3X4F/eqQQ7w3nWPOznhF3VXPOH/FwgxIuyfUwqyOzNkHiP1rwH2u1YvnO4fkPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0t0YpecFyVI3C40vlLv0WinXtbStdrQbOvnfhYpQ6vc=;
 b=JfqutIc54Qywg54zuJX3G5JsPW3HOkrNKmWpd0UR42wwywK0HtuI7RMV3f8fJHbTUfMWAdrUgBIKpUVTNlqzi/XClYinHVl8JO8TEo/jM+tlYT/EnlJUXMA9M5E6a7a/8wCfTLiRiRzf6Ir2xv6F3VbOFQcY3KEPHfA/6ty6sm4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from MWHPR1201MB0192.namprd12.prod.outlook.com
 (2603:10b6:301:5a::14) by MWHPR12MB1679.namprd12.prod.outlook.com
 (2603:10b6:301:f::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.23; Tue, 30 Nov
 2021 15:02:59 +0000
Received: from MWHPR1201MB0192.namprd12.prod.outlook.com
 ([fe80::2d02:26e7:a2d0:3769]) by MWHPR1201MB0192.namprd12.prod.outlook.com
 ([fe80::2d02:26e7:a2d0:3769%5]) with mapi id 15.20.4713.027; Tue, 30 Nov 2021
 15:02:59 +0000
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20211130121936.586031-1-thomas.hellstrom@linux.intel.com>
 <20211130121936.586031-2-thomas.hellstrom@linux.intel.com>
 <c7502701-e85c-39f0-c249-702d029faa9e@linux.intel.com>
 <b440cfbc-2b9a-1aa2-76d6-17337f835777@linux.intel.com>
 <52a7cf8c-59c7-fec0-2274-d19bdc505314@amd.com>
 <57df8b0b-1d65-155f-a9a6-8073bbd4f28f@linux.intel.com>
 <2551da4d-2e51-cc24-7d4a-84ae00a1547c@amd.com>
 <29d096c91d720fbe5d410124580a02b663155b56.camel@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <250a8e47-2093-1a98-3859-0204ec4e60e6@amd.com>
Date: Tue, 30 Nov 2021 16:02:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <29d096c91d720fbe5d410124580a02b663155b56.camel@linux.intel.com>
Content-Language: en-US
X-ClientProxiedBy: AM6PR05CA0017.eurprd05.prod.outlook.com
 (2603:10a6:20b:2e::30) To MWHPR1201MB0192.namprd12.prod.outlook.com
 (2603:10b6:301:5a::14)
MIME-Version: 1.0
Received: from [IPv6:2a02:908:1252:fb60:fa20:e17b:e063:b6d3]
 (2a02:908:1252:fb60:fa20:e17b:e063:b6d3) by
 AM6PR05CA0017.eurprd05.prod.outlook.com (2603:10a6:20b:2e::30) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4734.20 via Frontend Transport; Tue, 30 Nov 2021 15:02:56 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 156980cb-0d01-4e0f-844a-08d9b4127f13
X-MS-TrafficTypeDiagnostic: MWHPR12MB1679:
X-Microsoft-Antispam-PRVS: <MWHPR12MB167928FB516C955D1F5DEFBA83679@MWHPR12MB1679.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ASLbeJgpTvwPE8qX9iTW4SSxWsxNenyq2sNLmmFVtgP3+gKRT96APX40b2u2jE7MFKwMWpoBeXb+0l3Fixiolmh9KaKg3LsbAE8VpyK6sU86m7JB/yFV36ipnTQ0+3nL2YRZkCqy+h9vM1Gudq4OQC2OBxwka2LAEIDdq0NGUSaZ4P/WXISd1aJ9+d83SkOPij7Q+lpQ1By2xFtBpFQJ9sEFwHIalqS9Qzb1I3szzeyEjwmQbmsULNCJDHdZUClb7xNjheks+q45YZVPv+1R0rs5oAA6EXcmxBMZ9KkEOMIBxt4XZrIc0/efU1cmt/YUzFpSssKe/puUDAqRjtcdNPtujMV26eALYEAgA2lXHIJEscBfwgmFz2h0OrQyltiJbY0AoWVCb0nTA93TN/5o+0dDApTkbP3D12jjUkCd5wYketghFRJnx7XP9oJruq3k0Yg1Z4YuxuC44Ok6Q5cMcsTNFnfjKwmjD9m1cEgLisR1z2X/TCvHr25xiC+X/f0QwI92Xh7tUSRdJCTu8syYDtzyLb/QVY9BnXfM6Gqd5/6hprfyT3+5/2XK7J5f9QJiNZRQJAbz0Pa1SwModLliRVHx7IrmCnFfEV4MjCdF/08u446YsF1H/vmo0fQ5elk9eRFWc8TBjemPUNBTEoCqq3xtFgO7QdCEkiPDpJy2ZRpAXjq4U1x/frZ0SqyC5tRGV4VLLgl1AtuXKeuSC3g7A6+fHdQTK6C/c8DVhZn37krtX2qwrVUNFy45AaxO1H5H
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1201MB0192.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(4001150100001)(110136005)(316002)(66556008)(66476007)(66946007)(6666004)(66574015)(31686004)(86362001)(186003)(83380400001)(31696002)(2906002)(8936002)(6486002)(36756003)(4326008)(5660300002)(53546011)(38100700002)(2616005)(508600001)(8676002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dXlFQ3pxTnZnRkxpUk1WSm1Wc2lVN3ZEQ3BrNkgzUFhsQVVBTzZQd1JBb2RG?=
 =?utf-8?B?YWtUZDhaM2ZUOHhyZHpZSElKUG5UYURPWUpqMFdvTk9KOUc0Z0dQZFJBaktE?=
 =?utf-8?B?Uk1KdDVaZjZVTWsxWmlCQUU1VUtmenNKNS9QbVBHNDJHVlhmdEhadUt2TlBi?=
 =?utf-8?B?REhCRVVTcGFRWTQ0QStJa1FPQ2JiM1hCK0RuQkVQNmZZNWRJWjFPTGRpZVBT?=
 =?utf-8?B?aUIrMlR2aGh5Zi9CcnlzbForQnNlT2E3bVk3MFdkWG1wSkdvZ0xyWTc2akhW?=
 =?utf-8?B?bUlSZExNWlFsZERJOFNTcDFFL2srQUNJZ1MycnhYSlZ2U3BPOFJTRHBTYSs0?=
 =?utf-8?B?TFZWMDBSd2c5M29DL3psQVRXZERPaGcvK0JGVHF4OWdNclRjQ0dJd3ptNWsv?=
 =?utf-8?B?dGQ4V3pwR3lWbzhJMkVENFhXOVNvdGF1TEdzQnEvTEs4ZFkvVlpXQUh1UFh5?=
 =?utf-8?B?cGUvSGJXVzhraldoOFUwNFV4RmtJOFUxR1EyWHpFT2s2ektCWW9yOUMxM00y?=
 =?utf-8?B?WkFJY0JNK3B1Zmo3MVlzb3JNSzJlUjVNbEd0d2pDVDdkcitWSit3cWZROHZr?=
 =?utf-8?B?dmtva1NOeUlOYlI2TlZyeEdnbXd5QzQwOGEzbytiNmNlZjZsUkR6MjNvZUIy?=
 =?utf-8?B?QmJobXpHWDl5Rk1vR3VwQTBZZm00bi9hd2hTZmFTNEtUcytkZzFQTnZ1WHh4?=
 =?utf-8?B?VFFITS9hV3U4RHhTS1E2a2h3OXlDNVdyZkwzMjQ0RDBEM3liQUZiaWJUMFVP?=
 =?utf-8?B?ejNnazZTS3BRd2pZMHhiQmhWSWpxRHZTcm1raXVVNFVSdFpySDh3U0VsOHFP?=
 =?utf-8?B?WTU5ZUxiMXRoQ1piYTZOU0lFdU1rOS9aWWNkUFY0UTc5QnlVTkNPZ1pTVEZn?=
 =?utf-8?B?ZTRMVEIyS0xQTG5xWnBaNFdzTzlWMDluQUZTNjFiaGorQ2dlaTJvRU12c3pK?=
 =?utf-8?B?K203SmRWY2FjZExqSjF2a3dvZnkxalFROVZ0WlFWem82S0YvTUl1enl4b2dG?=
 =?utf-8?B?dlFZTWxGM0ZvcC92YXBzenlSUUVxb0lOeEdBZk5aaFREeXNHdTlVampMdXJx?=
 =?utf-8?B?aENHbFpIV3hmUDZvaXFCNklEN0psOG92ZVBULzJPbVk1cE1wVWJhSXNQcXNU?=
 =?utf-8?B?TFRKaHkva21qY1BXdnEwanN0RFdNYStwbFBqWnZDMEl6RE84cnlKdWkzT3lm?=
 =?utf-8?B?N2E4RXdRQlRPQ1kzYmdnaUpWWTZjVVRhSEQwbGM1bGZoNXc2YXovWjdmUVVo?=
 =?utf-8?B?VmVOT25JRDdmRGhhZG55TmRVQ1cwbFFYWmZCRmpVR3ltRmFpTVNYdmxUUGs1?=
 =?utf-8?B?Q3BNUlpCNmNubWxOZ1JZUlFaaTIvYThQODlORzhTRGUzUU9mTmw2aFV0VDZQ?=
 =?utf-8?B?bDcremg2TUJKZ09HOE9EQzNMRlUrS1pZS3QxQU1NQVBmM1VET2RwSVpMRnli?=
 =?utf-8?B?WFNmazZ3bGZjZW5Pd0h6U2o1ejlvRG5zSWkxOG1Hc1hHUEg0Vk1iMW9kZzFx?=
 =?utf-8?B?MWNmdWJ5RXRXN3J5OWd5T1VyVkpoQ2tMUmdadGMwNWg1azFTWjk3K2pNdnRD?=
 =?utf-8?B?SklRejVuZE43bWY3Rk45YmNMZURnUHpCc2ZIVGNYMHR3eUpMTUpKelovR2Zo?=
 =?utf-8?B?YWR3OXNZeDFKUVFTUzZvQVJIRng0TDJiZVZEOVJaMGhWZXZmTFVpM2xWSlM1?=
 =?utf-8?B?WWt4c3VjcS9scDZta3JVc242QnhvR3dhUm50UVozQTFVSGFmWVNQTHMxbHM3?=
 =?utf-8?B?cUpXbkpCdUJVWmFXNk42SXF2NUNwbjVuQVFMZmRVekNSZGNZVkFEa1UwK1pq?=
 =?utf-8?B?UWlPNzZIckhjcHdmUitXemJLNW0xeFJUQkU4Ym5GbjRxU0RKeElzN1NobDMw?=
 =?utf-8?B?bWQyUlBrY3J2MDV2UVgxVVprYS9KQlhWcmVUSTBsMDJZZi81KzVMbGtlSTRC?=
 =?utf-8?B?L1pEWXJ6RnNTWUV5dnNxN0NMc1U2YUpEZEk3TzNvWDNrU000YXFiSWY1Q1hs?=
 =?utf-8?B?UURydG5ReVpjYVRuWmRGUmp4Y2d1Q2toVUhSSk1UWDdnZmh4ekRDYWhmVXIy?=
 =?utf-8?B?ajJhQTN1MUVkUkMrdzNsdmxIM1ZZdTdNbndaRy9tbGZZVCtUM2psRkFaajM1?=
 =?utf-8?B?d2IrY2NuUGt0OHdiQzBuRC93a29rZ25qeWJDbm5QalozN0Jra1AvL1FHZkV2?=
 =?utf-8?Q?pblhvisyrOB5dwJubSqBVQc=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 156980cb-0d01-4e0f-844a-08d9b4127f13
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1201MB0192.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2021 15:02:58.7890 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P+33jB0Ev7f58OZoDC9V26ZF7AmIBQwVVxjxFAuQ91RgaYm3GP4Ust8Rzh8RGIuU
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR12MB1679
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [RFC PATCH 1/2] dma-fence: Avoid establishing a
 locking order between fence classes
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
Cc: linaro-mm-sig@lists.linaro.org, matthew.auld@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMzAuMTEuMjEgdW0gMTU6MzUgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPiBPbiBUdWUs
IDIwMjEtMTEtMzAgYXQgMTQ6MjYgKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+IEFt
IDMwLjExLjIxIHVtIDEzOjU2IHNjaHJpZWIgVGhvbWFzIEhlbGxzdHLDtm06Cj4+PiBPbiAxMS8z
MC8yMSAxMzo0MiwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4+PiBBbSAzMC4xMS4yMSB1bSAx
MzozMSBzY2hyaWViIFRob21hcyBIZWxsc3Ryw7ZtOgo+Pj4+PiBbU05JUF0KPj4+Pj4+IE90aGVy
IHRoYW4gdGhhdCwgSSBkaWRuJ3QgaW52ZXN0aWdhdGUgdGhlIG5lc3RpbmcgZmFpbHMKPj4+Pj4+
IGVub3VnaCB0bwo+Pj4+Pj4gc2F5IEkgY2FuIGFjY3VyYXRlbHkgcmV2aWV3IHRoaXMuIDopCj4+
Pj4+IEJhc2ljYWxseSB0aGUgcHJvYmxlbSBpcyB0aGF0IHdpdGhpbiBlbmFibGVfc2lnbmFsaW5n
KCkgd2hpY2gKPj4+Pj4gaXMKPj4+Pj4gY2FsbGVkIHdpdGggdGhlIGRtYV9mZW5jZSBsb2NrIGhl
bGQsIHdlIHRha2UgdGhlIGRtYV9mZW5jZSBsb2NrCj4+Pj4+IG9mCj4+Pj4+IGFub3RoZXIgZmVu
Y2UuIElmIHRoYXQgb3RoZXIgZmVuY2UgaXMgYSBkbWFfZmVuY2VfYXJyYXksIG9yIGEKPj4+Pj4g
ZG1hX2ZlbmNlX2NoYWluIHdoaWNoIGluIHR1cm4gdHJpZXMgdG8gbG9jayBhIGRtYV9mZW5jZV9h
cnJheQo+Pj4+PiB3ZSBoaXQKPj4+Pj4gYSBzcGxhdC4KPj4+PiBZZWFoLCBJIGFscmVhZHkgdGhv
dWdodCB0aGF0IHlvdSBjb25zdHJ1Y3RlZCBzb21ldGhpbmcgbGlrZSB0aGF0Lgo+Pj4+Cj4+Pj4g
WW91IGdldCB0aGUgc3BsYXQgYmVjYXVzZSB3aGF0IHlvdSBkbyBoZXJlIGlzIGlsbGVnYWwsIHlv
dSBjYW4ndAo+Pj4+IG1peAo+Pj4+IGRtYV9mZW5jZV9hcnJheSBhbmQgZG1hX2ZlbmNlX2NoYWlu
IGxpa2UgdGhpcyBvciB5b3UgY2FuIGVuZCB1cAo+Pj4+IGluIGEKPj4+PiBzdGFjayBjb3JydXB0
aW9uLgo+Pj4gSG1tLiBPaywgc28gd2hhdCBpcyB0aGUgc3RhY2sgY29ycnVwdGlvbiwgaXMgaXQg
dGhhdCB0aGUKPj4+IGVuYWJsZV9zaWduYWxpbmcoKSB3aWxsIGVuZCB1cCB3aXRoIGVuZGxlc3Mg
cmVjdXJzaW9uPyBJZiBzbywKPj4+IHdvdWxkbid0Cj4+PiBpdCBiZSBtb3JlIHVzYWJsZSB3ZSBi
cmVhayB0aGF0IHJlY3Vyc2lvbiBjaGFpbiBhbmQgYWxsb3cgYSBtb3JlCj4+PiBnZW5lcmFsIHVz
ZT8KPj4gVGhlIHByb2JsZW0gaXMgdGhhdCB0aGlzIGlzIG5vdCBlYXNpbHkgcG9zc2libGUgZm9y
IGRtYV9mZW5jZV9hcnJheQo+PiBjb250YWluZXJzLiBKdXN0IGltYWdpbmUgdGhhdCB5b3UgZHJv
cCB0aGUgbGFzdCByZWZlcmVuY2UgdG8gdGhlCj4+IGNvbnRhaW5pbmcgZmVuY2VzIGR1cmluZyBk
bWFfZmVuY2VfYXJyYXkgZGVzdHJ1Y3Rpb24gaWYgYW55IG9mIHRoZQo+PiBjb250YWluZWQgZmVu
Y2VzIGlzIGFub3RoZXIgY29udGFpbmVyIHlvdSBjYW4gZWFzaWx5IHJ1biBpbnRvCj4+IHJlY3Vy
c2lvbgo+PiBhbmQgd2l0aCB0aGF0IHN0YWNrIGNvcnJ1cHRpb24uCj4gSW5kZWVkLCB0aGF0IHdv
dWxkIHJlcXVpcmUgc29tZSBkZWVwZXIgc3VyZ2VyeS4KPgo+PiBUaGF0J3Mgb25lIG9mIHRoZSBt
YWpvciByZWFzb25zIEkgY2FtZSB1cCB3aXRoIHRoZSBkbWFfZmVuY2VfY2hhaW4KPj4gY29udGFp
bmVyLiBUaGlzIG9uZSB5b3UgY2FuIGNoYWluIGFueSBudW1iZXIgb2YgZWxlbWVudHMgdG9nZXRo
ZXIKPj4gd2l0aG91dCBydW5uaW5nIGludG8gYW55IHJlY3Vyc2lvbi4KPj4KPj4+IEFsc28gd2hh
dCBhcmUgdGhlIG1peGluZyBydWxlcyBiZXR3ZWVuIHRoZXNlPyBOZXZlciB1c2UgYQo+Pj4gZG1h
LWZlbmNlLWNoYWluIGFzIG9uZSBvZiB0aGUgYXJyYXkgZmVuY2VzIGFuZCBuZXZlciB1c2UgYQo+
Pj4gZG1hLWZlbmNlLWFycmF5IGFzIGEgZG1hLWZlbmNlLWNoYWluIGZlbmNlPwo+PiBZb3UgY2Fu
J3QgYWRkIGFueSBvdGhlciBjb250YWluZXIgdG8gYSBkbWFfZmVuY2VfYXJyYXksIG5laXRoZXIg
b3RoZXIKPj4gZG1hX2ZlbmNlX2FycmF5IGluc3RhbmNlcyBub3IgZG1hX2ZlbmNlX2NoYWluIGlu
c3RhbmNlcy4KPj4KPj4gSUlSQyBhdCBsZWFzdCB0ZWNobmljYWxseSBhIGRtYV9mZW5jZV9jaGFp
biBjYW4gY29udGFpbiBhCj4+IGRtYV9mZW5jZV9hcnJheSBpZiB5b3UgYWJzb2x1dGVseSBuZWVk
IHRoYXQsIGJ1dCBEYW5pZWwsIEphc29uIGFuZCBJCj4+IGFscmVhZHkgaGFkIHRoZSBzYW1lIGRp
c2N1c3Npb24gYSB3aGlsZSBiYWNrIGFuZCBjYW1lIHRvIHRoZQo+PiBjb25jbHVzaW9uCj4+IHRv
IGF2b2lkIHRoYXQgYXMgd2VsbCBpZiBwb3NzaWJsZS4KPiBZZXMsIHRoaXMgaXMgYWN0dWFsbHkg
dGhlIHVzZS1jYXNlLiBCdXQgd2hhdCBJIGNhbid0IGVhc2lseSBndWFyYW50ZWUKPiBpcyB0aGF0
IHRoYXQgZG1hX2ZlbmNlX2NoYWluIGlzbid0IGZlZCBpbnRvIGEgZG1hX2ZlbmNlX2FycmF5IHNv
bWV3aGVyZQo+IGVsc2UuIEhvdyBkbyB5b3UgdHlwaWNhbGx5IGF2b2lkIHRoYXQ/Cj4KPiBNZWFu
d2hpbGUgSSBndWVzcyBJIG5lZWQgdG8gdGFrZSBhIGRpZmZlcmVudCBhcHByb2FjaCBpbiB0aGUg
ZHJpdmVyIHRvCj4gYXZvaWQgdGhpcyBhbHRvZ2V0aGVyLgoKSmFzb24gYW5kIEkgY2FtZSB1cCB3
aXRoIGEgZGVlcCBkaXZlIGl0ZXJhdG9yIGZvciBoaXMgdXNlIGNhc2UsIGJ1dCBJIAp0aGluayB3
ZSBkb24ndCB3YW50IHRvIHVzZSB0aGF0IGFueSBtb3JlIGFmdGVyIG15IGRtYV9yZXN2IHJld29y
ay4KCkluIG90aGVyIHdvcmRzIHdoZW4geW91IG5lZWQgdG8gY3JlYXRlIGEgbmV3IGRtYV9mZW5j
ZV9hcnJheSB5b3UgZmxhdHRlbiAKb3V0IHRoZSBleGlzdGluZyBjb25zdHJ1Y3Qgd2hpY2ggaXMg
YXQgd29yc3QgY2FzZSAKZG1hX2ZlbmNlX2NoYWluLT5kbWFfZmVuY2VfYXJyYXktPmRtYV9mZW5j
ZS4KClJlZ2FyZHMsCkNocmlzdGlhbi4KCj4KPiAvVGhvbWFzCj4KPgo+PiBSZWdhcmRzLAo+PiBD
aHJpc3RpYW4uCj4+Cj4+PiAvVGhvbWFzCj4+Pgo+Pj4KPj4+Cj4+Pgo+Pj4+IFJlZ2FyZHMsCj4+
Pj4gQ2hyaXN0aWFuLgo+Pj4+Cj4+Pj4+IEJ1dCBJJ2xsIHVwZGF0ZSB0aGUgY29tbWl0IG1lc3Nh
Z2Ugd2l0aCBhIHR5cGljYWwgc3BsYXQuCj4+Pj4+Cj4+Pj4+IC9UaG9tYXMKPgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGlu
YXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

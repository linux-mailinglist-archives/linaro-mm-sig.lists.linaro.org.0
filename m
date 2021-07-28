Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E453D90A4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Jul 2021 16:30:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 596A760865
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Jul 2021 14:30:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4D46C6354D; Wed, 28 Jul 2021 14:30:32 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3DE4861813;
	Wed, 28 Jul 2021 14:30:29 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4297F60865
 for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Jul 2021 14:30:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4044A61813; Wed, 28 Jul 2021 14:30:27 +0000 (UTC)
Received: from NAM02-BN1-obe.outbound.protection.outlook.com
 (mail-bn1nam07on2061.outbound.protection.outlook.com [40.107.212.61])
 by lists.linaro.org (Postfix) with ESMTPS id 34D7960865
 for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Jul 2021 14:30:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X1suLKUH+E7Y9S4TiAUsh+RpK5u0pxfz+ShfsjTJkpGaWGAgQ/fIcThiWMNH1EN7JwEWIU2EYSZN2kQD3gxNlZ8unDsLrPGQRVYGmT24s9pW1jfLto/5Vs2lHyHVw7Q2GfGeDr/f3+aF0QLbLN5IkPx5kAeE/tjIOjrDAhf5XY4Tx1l142rN47Vd8N6TGKV6TXTFtjPE1TbCg6bAud+vHezYVE3pQ1RPjGiglUJaAElqw0UFuaC9IeDWAmciIuBXOSFPLWAJ92bGTjR5EV+A+5q+HSZvUzui79wogauZVFOVkw+ZNPBxiHZpKswbdAalrp1xpPxC1nrPPibChVseHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dUgJ8evxEa6hPiP5Ch4koYPYcVNOz2CZ25CfrEuERVU=;
 b=gl6lP01UhVWxHiL2nU+PitxwVLOuuS6YIL5vWHz5+TVb+v1C9XaLPmp1PSrZS1r/bcw/DUEzqHaCjL1DRAvH3eqAr17eACrDC7+yaTeJnim1XFwCsJt4AYuAcd821f9fYrkscKus8VbX2WZHI2nKxWOMFOPvLOnns3/j+SfRFPqNnmWJVbSmKDlMdaZwXzEhiVIWqUDKU0TZE45kvJSKCusW9fYoW8br+aZkqukxYfWPapxsdjyVf601OynrA3I8JILa7m/TP7lUTq58VRIXJIUTU2R5Bkj/4UmpidBLaiQitwvJwYf0MC9Px9AOrjqy+b22tZqCUA+FwTIc27APfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dUgJ8evxEa6hPiP5Ch4koYPYcVNOz2CZ25CfrEuERVU=;
 b=5nkyRFXtf3MZUfU3YBRhxIZN3Ouoiv0YhPScZ/pxpYOQG1WMM9fxIeKHI2brFCUBq18Wm0QTgj+Hg3Q78V7fD5MwtGhugd9FH3ET1yQcQOnmWg8DTVQBJQoPMXBUGRyZoKWtx+0fHAlQ3T/kMqYvklrbu4Qb4F+k5hC3dex/QJA=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4320.namprd12.prod.outlook.com (2603:10b6:208:15f::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.17; Wed, 28 Jul
 2021 14:30:20 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756%5]) with mapi id 15.20.4352.031; Wed, 28 Jul 2021
 14:30:20 +0000
To: Pekka Paalanen <ppaalanen@gmail.com>
References: <20210726233854.2453899-1-robdclark@gmail.com>
 <28ca4167-4a65-0ccc-36be-5fb017f6f49d@daenzer.net>
 <CAF6AEGuhQ2=DSDaGGVwBz5O+FoZEjpgoVJOcFecpd--a9yDY1w@mail.gmail.com>
 <99984703-c3ca-6aae-5888-5997d7046112@daenzer.net>
 <CAJs_Fx4O4w5djx3-q5zja51-ko_nQ0X2nEk3qoZB_axpBVSrKA@mail.gmail.com>
 <f6d73ec5-85f9-1b18-f2d2-a5f3b7333efa@gmail.com>
 <c9ee242e-542e-e189-a1ec-c1be34d66c93@daenzer.net>
 <04d44873-d8e6-6ae7-f0f9-17bcb484d697@amd.com>
 <9d5f4415-d470-3bc1-7d52-61ba739706ae@daenzer.net>
 <eedfdc75-72f8-9150-584b-c5e9d16db180@amd.com>
 <20210728165700.38c39cf8@eldfell>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <74e310fa-e544-889f-2389-5abe06f80eb8@amd.com>
Date: Wed, 28 Jul 2021 16:30:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <20210728165700.38c39cf8@eldfell>
Content-Language: en-US
X-ClientProxiedBy: PR3P191CA0059.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:102:55::34) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:af99:e30a:2b7e:eda8]
 (2a02:908:1252:fb60:af99:e30a:2b7e:eda8) by
 PR3P191CA0059.EURP191.PROD.OUTLOOK.COM (2603:10a6:102:55::34) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4308.23 via Frontend Transport; Wed, 28 Jul 2021 14:30:17 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 60b0e911-4efa-4855-e2a6-08d951d43a03
X-MS-TrafficTypeDiagnostic: MN2PR12MB4320:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR12MB4320E1CC78BCE17737AB0CCB83EA9@MN2PR12MB4320.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: H0e1hQrybcbX3FgfDCtSA8zAneQgJmPtNaNSaShhuwy7Ony2gFwO4tkJzjOTsyzmRUwRac9yEv4IoHnD6vJVSstRWxD8VekAr15AoiuJcJ2vA3O2jslLMuLn/uTbq4DFFTLL4PGbym6rSxJJBcsjEDCKawgjzG2fqLfjUDa4zT34lIkJTT/02hK693lsg9rea1Icsl/O+evbmSubzZVYvJt1arlZtuSlE0FQxVXE1I9jGK2PCGw3bKJxYZbiBErUrQZtCQZZcJSH1m7/cXEsBU8iVJ4E38CvmmbWScuvQT+ee3PMizwyuf3bcds5vCnO7zv4cHg02hy0HW0Zwpj2AAU8OCvGlxMlN+uNQOtVzkpxV7T4BlZNTsOwMSVc459sCqKxmQG8kObQ0inUZyjvYo6NSIywYOEl9ClVMXQOVIXJIreP87/0WhycHdmdfJwLUnFHsC3mkHyY3nCdpuNJwFecxKQ0IUZjFZ57DIaZDpWZwcCDRjajSQn+SGIzYJL0EjOzFL4O94NZkSniNGPtXwmCOzbSlUapQR+oozedWyqfMpXouxD/ka7qBF78LLzhdOrvPggALcVwCb2MgC9QKeM4726vt+rJPG93wr+VrYXPkHMKJ4Fil2x1/Ls4m1+rvlxqBnkS013+Z1YXS292w0zotf8bWTQ9FZvuqZS6tBjMVwj0gUNB0rNRwf+0zCYldyxdpw1AeglJ/JBXbV3x8cBYI83CvYkhaXmNvK/fnNc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(396003)(366004)(346002)(39850400004)(376002)(186003)(478600001)(66946007)(8936002)(6486002)(316002)(31696002)(66476007)(31686004)(6916009)(8676002)(54906003)(53546011)(66574015)(2616005)(86362001)(38100700002)(7416002)(4326008)(6666004)(2906002)(66556008)(5660300002)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NjlMc3pKbmZBVjRXQS9kWkVhczVVdTBNcVBzc1RGVkM3WmlOVXErUjZMRVZO?=
 =?utf-8?B?TkZGZGdkdWxSNUR3TWEwWXc2MFA5N29vaTZGSmFzdEFibUE5TmFRYUdDVjU3?=
 =?utf-8?B?RHU3ZnJncjcxdlJEODBIbVB6SGsxaVpRR0IybDU0YXhlbW9SajhucGY3aW9F?=
 =?utf-8?B?dVMxVFVoVkNwRE1Hdlo3RGpLaFNobzd5UzJCN0x0Q2Q5azdZano5MDV3VnVv?=
 =?utf-8?B?MmdiMGJ2Q0M0YXptcDZER0lvRW9pbUtCR2xNcFYvVEtMamFHUEUzT2I0ZFM3?=
 =?utf-8?B?SjdsWG5haUhKMS9xN0xCY2xsZThxSHZpU2MxNDVpRTFBUmJPbjQzcnRESCsw?=
 =?utf-8?B?aDhRWUE1Z2xhYmxNMkM2VjU1b1d6MUFVQ2lhalpSckNzbURQanprNnpIbEpN?=
 =?utf-8?B?amJHdTF4OW1wVXhXK3ZKN2c4dG1TWlM0b3lKODVPZDlVN2dpdHBiVDh3YU9N?=
 =?utf-8?B?R29Kdk9LTGJYU3d2Q1lMOHM4YVlmeXVoQWJjWGRPdjI5bm82WmxPL2NpZllx?=
 =?utf-8?B?S1BtSDIxM3M4NkZFeHVVVVFjd1lyNFkwMXpFS2lOb1Q5Z0ZnT1IwSmRlL3Bu?=
 =?utf-8?B?RHJOazJpaDRoR1kwVEN4VmRMaVJ2ZVR1dFROWlBETHlZN1BNYnRBQlRzelFV?=
 =?utf-8?B?MTVPVG1uZzRVbGdIcEQ5V2ZkUXZZQlFwQ0pHL3ppZUM1Y3h0dWVKdHJKQXVL?=
 =?utf-8?B?Rm1LRmFJdHpuSHpXckQxamcvQXRvMWxERmdvcldpMXJHdmYyOCtwS2x4Smk2?=
 =?utf-8?B?K1hTNkw4Y2I3b3VsNXJ1cllVMWc5SEw2UTdkbGluTjUvYnhaSFhLbWxSVE9T?=
 =?utf-8?B?d1BJMXMxWWYrU0tPSzRvbGtsa1UwTWIvVzVvR0NYRHJPK0w3T0FtY0xyVjVX?=
 =?utf-8?B?UlNaS29nOEpxZHlid0dDZ3BjVm83MHZJNEFoTnVpblRkWTB1Z3VmbUtFT21O?=
 =?utf-8?B?c0lCQzltTCsrNGRlcTZXZXZVS3VzZXFvK3VXZXN0S3hZZ1Zmd2lxdURmdncy?=
 =?utf-8?B?N0ZWTXhENXo1VS9NWGYxR3JLZmJESVQrSjA3NnpDejVKaHhaTURERW1Zdkgv?=
 =?utf-8?B?L0VpbWQ0eklSVGlzcTRFY3BIeEd5dFZPREgvVU5yS0VXYlBaamJNZU15bDVn?=
 =?utf-8?B?M3RVMkI2K2VvSzNsdVJJRGdkSmhsNE42dGZ6cG92cXkvVGh5a2h4L2xHZFJk?=
 =?utf-8?B?MmZweFFpOC9KV3FSU2FXNWFDRFg0eVhDVE91VVlyZGc2MkZDUTUvZFo4QXpM?=
 =?utf-8?B?d2ErSU9GNW1qOExsa001UGFEV29HY2FwQkVMZFZWMTZSSW9paDBsMDRpY2xq?=
 =?utf-8?B?NGxNN0lYdng2STNKNzg1clNzTkhMaDRFemJoMEFDRVluUDRYZ2ZNNktpMFIr?=
 =?utf-8?B?VE9Ed3BoU2pBODdSWDkyOEViMzhGUG1sZkdOei9PUFlNL0xqMVVrQnFBY21W?=
 =?utf-8?B?QUs5RU5OWjNNcFFOOTJ5Smt2VGFBUnZQcy8vVFFGRk8rTnk5eGg4SmZldmpN?=
 =?utf-8?B?c3Z6NVJLTkVNTzNRSHlHUVI4R1RDTnByejRFVmtZYU5hZXQzZk5hK2NTbWE2?=
 =?utf-8?B?TERRMGc4NzgwdEFzZFBGLzF3WTI3cHBJbVEzVEQ3VzB4Z1NQaHYrOHFlY2l3?=
 =?utf-8?B?VVlPa2tsdnMzK1JJNXo5UjVPUUVTWE8xbVFCbE5FZUNwQmY4ZWlmUVdqQjJ5?=
 =?utf-8?B?dzhTZVVya3lic3NJclMxZVByT3ZZTVo2OU1wYnBHWURUZUZwVVpIRzhHOXJI?=
 =?utf-8?B?ek1EV29FYm1ldmZkTFhOLzAzSG9MWVVmNkw1Z2NKWFJTS09QVFVBYjF2M3Zi?=
 =?utf-8?B?bUZBQkMrZDBKd2g3dmE3d2tqY084ZEdiMCtBbFljYkF5cVJxZjNJVTF1bXJX?=
 =?utf-8?Q?6nun/SOBQrsWt?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60b0e911-4efa-4855-e2a6-08d951d43a03
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2021 14:30:20.0853 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lWyrRzqAgJdk5JIA8Hlxflhb1Y7BZ37WVxFFzAOtXoPQ43v5v1CnMC4VvliD5ZWU
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4320
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [RFC 0/4] dma-fence: Deadline awareness
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
Cc: Rob Clark <robdclark@chromium.org>, Matthew Brost <matthew.brost@intel.com>,
 Jack Zhang <Jack.Zhang1@amd.com>,
 =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>,
 open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Luben Tuikov <luben.tuikov@amd.com>, Roy Sun <Roy.Sun@amd.com>,
 Gustavo Padovan <gustavo@padovan.org>,
 Alex Deucher <alexander.deucher@amd.com>, Tian Tao <tiantao6@hisilicon.com>,
 Lee Jones <lee.jones@linaro.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMjguMDcuMjEgdW0gMTU6NTcgc2NocmllYiBQZWtrYSBQYWFsYW5lbjoKPiBPbiBXZWQsIDI4
IEp1bCAyMDIxIDE1OjMxOjQxICswMjAwCj4gQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtv
ZW5pZ0BhbWQuY29tPiB3cm90ZToKPgo+PiBBbSAyOC4wNy4yMSB1bSAxNToyNCBzY2hyaWViIE1p
Y2hlbCBEw6RuemVyOgo+Pj4gT24gMjAyMS0wNy0yOCAzOjEzIHAubS4sIENocmlzdGlhbiBLw7Zu
aWcgd3JvdGU6Cj4+Pj4gQW0gMjguMDcuMjEgdW0gMTU6MDggc2NocmllYiBNaWNoZWwgRMOkbnpl
cjoKPj4+Pj4gT24gMjAyMS0wNy0yOCAxOjM2IHAubS4sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6
Cj4+Pj4+PiBBdCBsZWFzdCBBTUQgaGFyZHdhcmUgaXMgYWxyZWFkeSBjYXBhYmxlIG9mIGZsaXBw
aW5nIGZyYW1lcyBvbiBHUFUgZXZlbnRzIGxpa2UgZmluaXNoaW5nIHJlbmRlcmluZyAob3IgdXBs
b2FkaW5nIGV0YykuCj4+Pj4+Pgo+Pj4+Pj4gQnkgd2FpdGluZyBpbiB1c2Vyc3BhY2Ugb24gdGhl
IENQVSBiZWZvcmUgc2VuZCB0aGUgZnJhbWUgdG8gdGhlIGhhcmR3YXJlIHlvdSBhcmUgY29tcGxl
dGVseSBraWxsaW5nIG9mIHN1Y2ggZmVhdHVyZXMuCj4+Pj4+Pgo+Pj4+Pj4gRm9yIGNvbXBvc2lu
ZyB1c2UgY2FzZXMgdGhhdCBtYWtlcyBzZW5zZSwgYnV0IGNlcnRhaW5seSBub3QgZm9yIGZ1bGwg
c2NyZWVuIGFwcGxpY2F0aW9ucyBhcyBmYXIgYXMgSSBjYW4gc2VlLgo+Pj4+PiBFdmVuIGZvciBm
dWxsc2NyZWVuLCB0aGUgY3VycmVudCBLTVMgQVBJIG9ubHkgYWxsb3dzIHF1ZXVpbmcgYSBzaW5n
bGUgcGFnZSBmbGlwIHBlciBDUlRDLCB3aXRoIG5vIHdheSB0byBjYW5jZWwgb3Igb3RoZXJ3aXNl
IG1vZGlmeSBpdC4gVGhlcmVmb3JlLCBhIFdheWxhbmQgY29tcG9zaXRvciBoYXMgdG8gc2V0IGEg
ZGVhZGxpbmUgZm9yIHRoZSBuZXh0IHJlZnJlc2ggY3ljbGUsIGFuZCB3aGVuIHRoZSBkZWFkbGlu
ZSBwYXNzZXMsIGl0IGhhcyB0byBzZWxlY3QgdGhlIGJlc3QgYnVmZmVyIGF2YWlsYWJsZSBmb3Ig
dGhlIGZ1bGxzY3JlZW4gc3VyZmFjZS4gVG8gbWFrZSBzdXJlIHRoZSBmbGlwIHdpbGwgbm90IG1p
c3MgdGhlIG5leHQgcmVmcmVzaCBjeWNsZSwgdGhlIGNvbXBvc2l0b3IgaGFzIHRvIHBpY2sgYW4g
aWRsZSBidWZmZXIuIElmIGl0IHBpY2tzIGEgbm9uLWlkbGUgYnVmZmVyLCBhbmQgdGhlIHBlbmRp
bmcgcmVuZGVyaW5nIGRvZXMgbm90IGZpbmlzaCBpbiB0aW1lIGZvciB2ZXJ0aWNhbCBibGFuaywg
dGhlIGZsaXAgd2lsbCBiZSBkZWxheWVkIGJ5IGF0IGxlYXN0IG9uZSByZWZyZXNoIGN5Y2xlLCB3
aGljaCByZXN1bHRzIGluIHZpc2libGUgc3R1dHRlcmluZy4KPj4+Pj4KPj4+Pj4gKFVudGlsIHRo
ZSBkZWFkbGluZSBwYXNzZXMsIHRoZSBXYXlsYW5kIGNvbXBvc2l0b3IgY2FuJ3QgZXZlbiBrbm93
IGlmIGEgcHJldmlvdXNseSBmdWxsc2NyZWVuIHN1cmZhY2Ugd2lsbCBzdGlsbCBiZSBmdWxsc2Ny
ZWVuIGZvciB0aGUgbmV4dCByZWZyZXNoIGN5Y2xlKQo+Pj4+IFdlbGwgdGhlbiBsZXQncyBleHRl
bmQgdGhlIEtNUyBBUEkgaW5zdGVhZCBvZiBoYWNraW5nIHRvZ2V0aGVyIHdvcmthcm91bmRzIGlu
IHVzZXJzcGFjZS4KPj4+IFRoYXQncyBpbmRlZWQgYSBwb3NzaWJsZSBzb2x1dGlvbiBmb3IgdGhl
IGZ1bGxzY3JlZW4gLyBkaXJlY3Qgc2Nhbm91dCBjYXNlLgo+Pj4KPj4+IE5vdCBmb3IgdGhlIGdl
bmVyYWwgY29tcG9zaXRpbmcgY2FzZSB0aG91Z2gsIHNpbmNlIGEgY29tcG9zaXRvciBkb2VzIG5v
dCB3YW50IHRvIGNvbXBvc2l0ZSBtdWx0aXBsZSBvdXRwdXQgZnJhbWVzIHBlciBkaXNwbGF5IHJl
ZnJlc2ggY3ljbGUsIHNvIGl0IGhhcyB0byBtYWtlIHN1cmUgdGhlIG9uZSBmcmFtZSBoaXRzIHRo
ZSB0YXJnZXQuCj4+IFllYWgsIHRoYXQncyB0cnVlIGFzIHdlbGwuCj4+Cj4+IEF0IGxlYXN0IGFz
IGxvbmcgYXMgbm9ib2R5IGludmVudHMgYSBtZWNoYW5pc20gdG8gZG8gdGhpcyBkZWNpc2lvbiBv
bgo+PiB0aGUgR1BVIGluc3RlYWQuCj4gVGhhdCB3b3VsZCBtZWFuIHB1dHRpbmcgdGhlIHdob2xl
IHdpbmRvdyBtYW5hZ2VyIGludG8gdGhlIEdQVS4KCk5vdCByZWFsbHkuIFlvdSBvbmx5IG5lZWQg
dG8gZGVjaWRlIGlmIHlvdSB3YW50IHRvIHVzZSB0aGUgbmV3IGJhY2tpbmcgCnN0b3JlIG9yIHRo
ZSBvbGQgb25lIGJhc2VkIG9uIGlmIHRoZSBuZXcgc3VyZmFjZSBpcyByZWFkeSBvciBub3QuCgpB
dCBBTUQgaGFyZHdhcmUgY2FuIGFscmVhZHkgZG8gdGhpcywgd2UganVzdCBkb24ndCBoYXZlIGFu
IE9wZW5HTCAKZXh0ZW5zaW9uIGZvciBpdCAoYnV0IG1heWJlIGFscmVhZHkgaW4gVnVsa2FuKS4K
ClJlZ2FyZHMsCkNocmlzdGlhbi4KCj4KPgo+IFRoYW5rcywKPiBwcQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

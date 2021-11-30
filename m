Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4564B463474
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Nov 2021 13:36:49 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5246961902
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Nov 2021 12:36:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 632826195B; Tue, 30 Nov 2021 12:36:45 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 255E260754;
	Tue, 30 Nov 2021 12:36:43 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 63C9660604
 for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Nov 2021 12:36:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6169760754; Tue, 30 Nov 2021 12:36:41 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2069.outbound.protection.outlook.com [40.107.220.69])
 by lists.linaro.org (Postfix) with ESMTPS id 4B06A60604
 for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Nov 2021 12:36:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NSc7Xzft7h7Nq0yYxQvnyVgB4sMF6aanK6Wx4yHCR8R4QEJSo59QPUdVlRpccXoRrr5cxLHLS3dPljK6kPtm/hdr1+mRpstTn5AeHAZvd5gcNY1LOc/p9oh/igGkKYgMHzwmmMJy9V1vT+HlvaqD6kdOiRKNtpR30+xtLE4k3fq7iGGCyX45XoroPsOXfg733Lt6jngmS/2/xwYXfq0Tdh3aXeSE7Gq7lNL2Ej4m5SLvFGhfOmbSxPZdsQEA5SQkpec6iqPucYIv3sBGM83y9UQQXbtkaAReikd2bIBZIfZbYKisWgo88XqoFQjPtIOFi4Z1rGuloZktQ+8h5z25Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CzknDR0R8at47ku/nY2j8atYIcbZUO0ki9pIcwiz5cA=;
 b=Gb0pnOKcjuC4B2SC/Me44tkZ2djaAPa8mSE59SjLicZ5NGTOqHrS97+Kkwp2rUbj4tKBXyO1oZ2Au5hHbVAQlBvDNnASO9Nm6Kq0tbtXPBTI6RPJeDji1lkBUMdSduc3tpUr+JLMGSsu7Ym49yRHhSmi4VwpegS1ig3HReWWgz6x9njfGgT0tzEcPjM798bgHbRvTv5z6nLwb6u04d19eOSwP88e5DvbVioDuREYGRFNdUGIr//UBNfmNun9FhyhCey7tmasUJrcqQnRDX3xYAp/a29ZxkLpMHN1+kEPcwhzgMUHs/edXOr0SW/WpJ3lPyevWk6PbJkU1p1Z6HmNcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CzknDR0R8at47ku/nY2j8atYIcbZUO0ki9pIcwiz5cA=;
 b=T2991icpRPYWKjtAp5Uhj2E/HxxHmxiMuj4IoCsevEjWasYJYpiUarTWYnOy0gG8e7qqZIYYNV/3q16JS2bhRmy6D29tG5EWsiryY/usUjW8wJT7sP+pa5pz0SYPCldO2g2rpbWXCyZOp2jouLTDWKsc9aUqr3LRm2xJ1q0egC4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from MWHPR1201MB0192.namprd12.prod.outlook.com
 (2603:10b6:301:5a::14) by MWHPR12MB1341.namprd12.prod.outlook.com
 (2603:10b6:300:11::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.23; Tue, 30 Nov
 2021 12:36:37 +0000
Received: from MWHPR1201MB0192.namprd12.prod.outlook.com
 ([fe80::2d02:26e7:a2d0:3769]) by MWHPR1201MB0192.namprd12.prod.outlook.com
 ([fe80::2d02:26e7:a2d0:3769%5]) with mapi id 15.20.4713.027; Tue, 30 Nov 2021
 12:36:30 +0000
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20211130121936.586031-1-thomas.hellstrom@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <01fcbca5-9593-5a44-b4a0-ff237bb8a82c@amd.com>
Date: Tue, 30 Nov 2021 13:36:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <20211130121936.586031-1-thomas.hellstrom@linux.intel.com>
Content-Language: en-US
X-ClientProxiedBy: AM6P195CA0042.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:209:87::19) To MWHPR1201MB0192.namprd12.prod.outlook.com
 (2603:10b6:301:5a::14)
MIME-Version: 1.0
Received: from [IPv6:2a02:908:1252:fb60:fa20:e17b:e063:b6d3]
 (2a02:908:1252:fb60:fa20:e17b:e063:b6d3) by
 AM6P195CA0042.EURP195.PROD.OUTLOOK.COM (2603:10a6:209:87::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4734.22 via Frontend Transport; Tue, 30 Nov 2021 12:36:29 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a36a6e23-1ce7-48f1-85f1-08d9b3fe091f
X-MS-TrafficTypeDiagnostic: MWHPR12MB1341:
X-Microsoft-Antispam-PRVS: <MWHPR12MB1341B44BFB031D517FB5C3EB83679@MWHPR12MB1341.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 61ujrt9XXVJ2pIdi9kiLH1fvDUI4vAcM+bxdMTOYea7d4l85U60Ttwj5x+/lvcuFfuS4ARvabSPHD+zSHsuuyaX3d8FiYOCNtGUhdV6u6U0kPlyMehw8myoNT4BrFg/7Obcgo6uozjpAlErVqo9yAb5gKMrutxmHANvfHPCAcpFVdE2QTblefUB03VrDdJOMtmuGpXRvaMsz91VR+89ds90viabxWE32wyTS2A47tXteU11c1+jzrh5fKE0ANqlgTumKl3ku0PZand6pmvCSmXFo3tUYjPihxtCxpaiwxZO+jkmaBJJLiTNW7KwqSIczGyGT+mB2QWf2L9CJW1U4AkIQu2VRKZeZDQdWyj4yGa0kN1V/t6S2y/+Om3pDv6bl8USKLWyLI4OvtiRVC+RN77Bv8pJSqV/dECT4SLknXUYI0MyJ4lr4Ccz2XxssJ8BynHIbkdquI8H4pXLb7edGNxUt237ZjQ26WsN4WqLyNwq6OtraSkvNcyWrcAy/ohCBE23WMWO7sXMCiCs5s5Q004Cx+ULXN6SGqaDLiLs/GSIFw6fY+okQA+Pu1bxevOJBTEp09c9lyhn2xNaSZ4IT1cVsYSsNJk8xkm7HS9NwvKwz6DnHcxA85sq27T++1FA+uLD1ZmLt3gJR92zypUOKWNoKTI81psAiV8GfbhktBhbm7dqINvHBVUJqTE0L6e/6EeOrnxQWilGRS6hD1OqEaZu5Kj9U3x7Q6LXS/+PFIEeX1wOfT/dsZ2DO5UWYZ+il
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1201MB0192.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(2616005)(31686004)(316002)(5660300002)(6486002)(83380400001)(66574015)(86362001)(508600001)(186003)(66476007)(66946007)(2906002)(6666004)(31696002)(4326008)(66556008)(36756003)(8936002)(38100700002)(8676002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bHFpVGF6RFRsWWRrTGhXdWdwTUlRS0p6K1J6UVVPaXIzVUlPc1VVZThWR2M4?=
 =?utf-8?B?WTNaYkxtd09mY3FxZ1daeElrQUZmMnZJd0FRclN6dDBXRUREUC9kc2M0U0J2?=
 =?utf-8?B?NzIxOFpoZkgxR0drU0pUR0thbDRGK2ZXUjJLc2wrZHg4OUtVQndrR0dxd3d1?=
 =?utf-8?B?TW5RNll4V2ZXTUZtZnJwb1lOYXEvRjMwakVZTWMyaDI0bUJXS0FFcDR3T0M1?=
 =?utf-8?B?V2krL2h1bklSb01BYnlRVExGS25CSXVxcjV2UWd1djFXd09JTmpHYzEyYTdN?=
 =?utf-8?B?ZlIwTUkxNU5idHkvcU9DQ3EwSGpIK01qR2VuUzNNVzRFOGZVZ294ZjlLRzhJ?=
 =?utf-8?B?WU9sMEtoZU5paGVrRmpRL1ZwTjgyMzEvVFh4UitMUkIwQlZrUXcvWW9RL2pN?=
 =?utf-8?B?OVNuTHVkREdhdWtZY3hXWUlSRFNyZXpWR1VDTHE1QlI5bTNFalN1SVVPWHFv?=
 =?utf-8?B?ZmcrOURkQVp3TDNnajB0RTVodG43d2dmSWJKdlhIQkxQYk1Ma3NJUVNFUkdt?=
 =?utf-8?B?eTBPazArUU5OVjB3M3AvVm9LUTV2Vy9pRVVmai9CYmVWSWREN3V0NTZlTk5x?=
 =?utf-8?B?ek5zV0x2aHlCU3pJcWMwdEh1N3JLeitWb0Zlb3F4VWJmKzByb0hzbVJxOE9F?=
 =?utf-8?B?QnpRWmFPZ2pjSzNGcTNSZ0pJNWFmTTBZaVM0ZTBmZlNIWHlWUUlWNEE2TGND?=
 =?utf-8?B?YVJIa3U4U0tJcDBpdDdpOXdMOEtKTWFGV1BGeHB4c2c5RzJxMHBDV080aVFo?=
 =?utf-8?B?WWdsODEvU1plc1dBVFJLUlB6NFlveDkrMEk1QzNpM2ZqQlA3OTZYN1ZML0JD?=
 =?utf-8?B?QThodmdJajkwNUt3bUFyWlJBYUFNcGs0MUhzYzBmSjRTalBWZy9rTW96cEdP?=
 =?utf-8?B?ZjV5WlI4ZEd0eFJhTjBLSGpnQzBBeHZUV0pNNWp0eGsvUEpCYXFOWmY4bGxu?=
 =?utf-8?B?M0VhRXhGUForaVArU0NkQWVuaDFJcnFNV3ZqTnhabDZnRWtNUFNWWU5kRXgx?=
 =?utf-8?B?ZjRyM0t2VEY2b0ZPQkJiZ2phaUxlTE9xRktXRXJKcnA5Nmx4dW93WU9VUE44?=
 =?utf-8?B?NTZMU3liQU8vSkV6KzNUR21Vbjc1UCtXUngzeUppZ2F6UFpHcmV0T2lmb21j?=
 =?utf-8?B?S2I0QUpyRmFYNnR1aiszd2tpRGNTb1JJVzc5T2ExdGVpTlJnMUIxUTdPS0hD?=
 =?utf-8?B?MjBYck9FbUszbWY5azk4K3UvZm5qQVFicGNjNUE0K0lURkVGVUhTN292dWNE?=
 =?utf-8?B?L0VtdW9FaHVIUDN0ZUd3QzluVTE1V0oyYnJpWlQxSGVaU3ZTeTZPMVhoRHN5?=
 =?utf-8?B?RkdpRU5uRC9vRjNzVFRhMDd1eVBkU1ZnZExDQmFVdXdTOU5GQU9IZHlsYkc5?=
 =?utf-8?B?ODJweDNEVHZZN0NLdUV6blNMeVUyV2dzQnFJRlVuWWkrb2UvRVN0QnpHb2Zh?=
 =?utf-8?B?Mkx1TWtNaGJDS3dwMnByU1ZQN0czSGZOaE9xMEFTM2NyVkdtbFlGdjNzUDQy?=
 =?utf-8?B?UVZUcXlXSDJraThYNytjNkxlamVyc0tyY1E4TEFsVjFSaE1JWjc4NFUyQytW?=
 =?utf-8?B?ZmRrKzRpUXBPQ3h5eURSMDNJOGcvNGtaZXNNR1ZFTVJ1UXBJUG15aFBPclBT?=
 =?utf-8?B?cUhFK3FzKzFhUnEyMkNMaGhUb1V1L0JqbEUrVm1aYmM2c2d1dy90TkpKQkJa?=
 =?utf-8?B?WXRldUV3WnBLV2JHZFUzVWJIT0VDNUJJU0tRU0JwS2lBMlJKS3NudmpoelpB?=
 =?utf-8?B?Z3g1QXBkZ0VjVVZabmxSRWQ1ZG5XUVNKbkk3MkxlVTB1VXdXUHAwcTkrWEk0?=
 =?utf-8?B?eU1PcWh3Y1haMTJNSEIvenQ5bXA3ZjdISFFCVWZHZmJ1Vk5Cb3R2dXdwL0x0?=
 =?utf-8?B?ci9ydXR5RjZnMEJPcEVEbDJYSlNoYVNJNmFkVXVhS3RLcm1Oa1l3OGlLSjQ0?=
 =?utf-8?B?cVExSUxGRm5qcVZ4T01sdTRLY0R4VUpKTDhpdG5GQlh4cm4zdDRUTjg0Slgz?=
 =?utf-8?B?Qlg1U2pSRGRxV0VObTViV3kzQy9Nc1dJdXBMQWNmL0I3eDdVMnBiS0pkN1lp?=
 =?utf-8?B?L0xEWmx1S1dvcWRPQ3NHc0VDZTdnVHFrc1ZwelBGY3ptWlZsWjluU2l0UjVh?=
 =?utf-8?B?emZjM2wzUjF1YlFSblNOK0VxY3lqcGIxVU5jT2c5Q1BOeHZpR1JWZ1d2alhO?=
 =?utf-8?Q?qyoV3otLX7UI53o9RH/XErg=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a36a6e23-1ce7-48f1-85f1-08d9b3fe091f
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1201MB0192.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2021 12:36:30.8610 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0Apm8C7Y/8/TRsjguvpsWLWvqBQm1oeWzgnmDQlwpOx1GZFehc9ncyIQ2ZLvwQWA
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR12MB1341
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [RFC PATCH 0/2] Attempt to avoid
 dma-fence-[chain|array] lockdep splats
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
Cc: linaro-mm-sig@lists.linaro.org, maarten.lankhorst@linux.intel.com,
 matthew.auld@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMzAuMTEuMjEgdW0gMTM6MTkgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPiBJbnRyb2R1
Y2luZyBtb3JlIHVzYWdlIG9mIGRtYS1mZW5jZS1jaGFpbiBhbmQgZG1hLWZlbmNlLWFycmF5IGlu
IHRoZQo+IGk5MTUgZHJpdmVyIHdlIHN0YXJ0IHRvIGhpdCBsb2NrZGVwIHNwbGF0cyBkdWUgdG8g
dGhlIHJlY3Vyc2l2ZSBmZW5jZQo+IGxvY2tpbmcgaW4gdGhlIGRtYS1mZW5jZS1jaGFpbiBhbmQg
ZG1hLWZlbmNlLWFycmF5IGNvbnRhaW5lcnMuCj4gVGhpcyBpcyBhIGh1bWJsZSBzdWdnZXN0aW9u
IHRvIHRyeSB0byBlc3RhYmxpc2ggYSBkbWEtZmVuY2UgbG9ja2luZyBvcmRlcgo+IChwYXRjaCAx
KSBhbmQgdG8gYXZvaWQgZXhjZXNzaXZlIHJlY3Vyc2l2ZSBsb2NraW5nIGluIHRoZXNlIGNvbnRh
aW5lcnMKPiAocGF0Y2ggMikKCldlbGwgY29tcGxldGVseSBOQUsgdG8gdGhpcy4KClRoaXMgc3Bs
YXRzIGFyZSBpbnRlbnRpb25hbCBub3RlcyB0aGF0IHNvbWV0aGluZyBpbiB0aGUgZHJpdmVyIGNv
ZGUgaXMgCndyb25nIChvciB3ZSBtZXNzZWQgdXAgdGhlIGNoYWluIGFuZCBhcnJheSBjb250YWlu
ZXJzIHNvbWVob3cpLgoKVGhvc2UgdHdvIGNvbnRhaW5lcnMgYXJlIGludGVudGlvbmFsbHkgY3Jh
ZnRlZCBpbiBhIHdheSB3aGljaCBhbGxvd3MgdG8gCmF2b2lkIGFueSBkZXBlbmRlbmN5IGJldHdl
ZW4gdGhlaXIgc3BpbmxvY2tzLiBTbyBhcyBsb25nIGFzIHlvdSAKY29ycmVjdGx5IHVzZSB0aGVt
IHlvdSBzaG91bGQgbmV2ZXIgc2VlIGEgc3BsYXQuCgpQbGVhc2UgcHJvdmlkZSB0aGUgbG9ja2Rl
cCBzcGxhdCBzbyB0aGF0IHdlIGNhbiBhbmFseXplIHRoZSBwcm9ibGVtLgoKVGhhbmtzLApDaHJp
c3RpYW4uCgo+Cj4gVGhvbWFzIEhlbGxzdHLDtm0gKDIpOgo+ICAgIGRtYS1mZW5jZTogQXZvaWQg
ZXN0YWJsaXNoaW5nIGEgbG9ja2luZyBvcmRlciBiZXR3ZWVuIGZlbmNlIGNsYXNzZXMKPiAgICBk
bWEtZmVuY2U6IEF2b2lkIGV4Y2Vzc2l2ZSByZWN1cnNpdmUgZmVuY2UgbG9ja2luZyBmcm9tCj4g
ICAgICBlbmFibGVfc2lnbmFsaW5nKCkgY2FsbGJhY2tzCj4KPiAgIGRyaXZlcnMvZG1hLWJ1Zi9k
bWEtZmVuY2UtYXJyYXkuYyB8IDIzICsrKysrKystLQo+ICAgZHJpdmVycy9kbWEtYnVmL2RtYS1m
ZW5jZS1jaGFpbi5jIHwgMTIgKysrKy0KPiAgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyAg
ICAgICB8IDc5ICsrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0KPiAgIGluY2x1ZGUvbGlu
dXgvZG1hLWZlbmNlLmggICAgICAgICB8ICA0ICsrCj4gICA0IGZpbGVzIGNoYW5nZWQsIDg5IGlu
c2VydGlvbnMoKyksIDI5IGRlbGV0aW9ucygtKQo+Cj4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwo+IENjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IENo
cmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJv
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

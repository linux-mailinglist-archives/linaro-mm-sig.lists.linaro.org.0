Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDC3243433
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Aug 2020 08:53:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B5E8560EFE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Aug 2020 06:53:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A9324666D5; Thu, 13 Aug 2020 06:53:03 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H2,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3F8F260EFF;
	Thu, 13 Aug 2020 06:52:23 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 38D7A60D77
 for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Aug 2020 06:52:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 24DBF60EFF; Thu, 13 Aug 2020 06:52:20 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2048.outbound.protection.outlook.com [40.107.92.48])
 by lists.linaro.org (Postfix) with ESMTPS id A250560D77
 for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Aug 2020 06:52:18 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AjPkTQrWzPmLsd+XwZ9UNOFvMCREQ5kGY6SB0cw8MWoIfDv4YnMNdgJU205enyIpqQvzPzoCDt3wdi+ORNJjyK4qzA5NXIPXUT2UZb/BCDvy5utLpSatrAQ3UR6MT6NN380jNxxLt9pJ6XZZQt87X8vpHXNjHzer5y5vObN6hmrzDD1JYduwfRBfEu5wHnZbytfUFZFrTDM4PGNWIjAfLunH5qQ0wZp9om1V1mlSB23Y5yRZINw851/OFpHSgnDsXu8mXgp8EcEOgydmRXBLYhqvYKStxlGriaPEa85InIiQBm+Bhj4+vyAGDn9QrKnBaSXBMVYiakVvhRo1gkc5TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WQyYbddJcbaAJotwqUdcIQNKNUPPxaWAlM9co7i7KMo=;
 b=P2Momxa3MvVVzgZbvEtd7srztUuJJWVvESDRc2v17oadFv5i6/+u+ekpWbnGbgz36oHMRVX6iLaVcZVf1eemCjvsEKhvgMjeeHaY+Tys7x97HK4QMK9dFakMztyyi++4FwYs4UhISS/P2G+tQ/lMCXcb8F1m/VLmcWln3Erh7+H7msdexJBsxBJAWgLY5X6wZvk09KX4bjlB0rgx7xR1YDw0YWc3utCVW2sTqxWiVx1bkZF26f5oj/+aIscInNxn9q4AyoddtHeZr6c9zmfHQdwrchP8rqyDvQ1POQbcT/jXc9miDAo2WSYR+dCxW+v4oRZvyTIRWybYZ6uSinnGWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB3936.namprd12.prod.outlook.com (2603:10b6:208:16a::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3261.20; Thu, 13 Aug
 2020 06:52:17 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::a16e:8812:b4c0:918d]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::a16e:8812:b4c0:918d%6]) with mapi id 15.20.3283.015; Thu, 13 Aug 2020
 06:52:17 +0000
To: Jordan Crouse <jcrouse@codeaurora.org>, linux-arm-msm@vger.kernel.org
References: <20200812235544.2289895-1-jcrouse@codeaurora.org>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <439ba3f1-0b0b-7417-f306-c10935dbdb16@amd.com>
Date: Thu, 13 Aug 2020 08:52:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <20200812235544.2289895-1-jcrouse@codeaurora.org>
Content-Language: en-US
X-ClientProxiedBy: AM0PR06CA0101.eurprd06.prod.outlook.com
 (2603:10a6:208:fa::42) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
 (2a02:908:1252:fb60:be8a:bd56:1f94:86e7) by
 AM0PR06CA0101.eurprd06.prod.outlook.com (2603:10a6:208:fa::42) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3283.16 via Frontend Transport; Thu, 13 Aug 2020 06:52:15 +0000
X-Originating-IP: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: ea82b92e-6024-44f7-8403-08d83f556aa6
X-MS-TrafficTypeDiagnostic: MN2PR12MB3936:
X-Microsoft-Antispam-PRVS: <MN2PR12MB3936B49437503FBEC247805983430@MN2PR12MB3936.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9djE00l/vB12ayBykUVyI09oIjuz7A1eU/jfm5locqXLWlDEkYqLKWJWuCQqvZxogbQ5VtyyE99niYa/JXhnqvFv0Lq7V8XNqONl/CseW5MLMu3iFv6qgI+4FU0KF+SEaLxoQlNi9L7Z1CC0o4ciSkWYg/SjxhACOGirVIPuIqSWubXkWCnvCjwYwTHR98UtIlJDLOU59uu/ozHpDhKLKKaL32oZNfEOkiGV484rgTuFErq5o85P6AP+2RDgXvQ1TazB3db3Nq9pq4ncoNq5SwtuUofOCzP+YT9NmrMOzMUy69Yc2To8Wbd3gg2lHVjF8IN8BAtzR+k6qPkYTDIAjo0QBGRAmZ3Ya5H2zcdC/E2lAUlrQassnGkjCf+RIkZ2
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(346002)(39860400002)(376002)(396003)(136003)(8676002)(66946007)(316002)(186003)(8936002)(86362001)(83380400001)(54906003)(66476007)(16526019)(2616005)(52116002)(66556008)(478600001)(2906002)(31686004)(4326008)(31696002)(6666004)(36756003)(5660300002)(6486002)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: PwCKQd2l3q7SKebLip+4ghTfyz4h1A2hAmd1EvLmQP+9c9i8qyz+kDBFi6hEL3IGFHe6Wqmd8uVfBHCFC2h+PHgR+QP6mYMXT0pHDfTlTZoesOb2+0UvWv6vJpwdHoC2Mzp6DdVUcc8U008gWsXdhyr5DG4Fm+blA9mPtcg4fuVi2C2vk/AGc6sWKp0hJJeb+JQBoSWOFxVwpvQN/Ojba5lxva8yO9+E0orNsN7gyXVS3WOtu+RwFfew7OMQXBz5odmszjPCn/xvboBdjSqdXyYyvFa1UIVsfksU6wj+pSym06shmT2QMZBK7Xq1kuZTXXWconKVl9CtIetf76RcASRb3gaLo0HT397SMCh5Luw3xOb239zkcFjvKX6K6z+tstC6umUtRG6zcoI0OyAKXa1w3s+M9qppL1R5tCOVQoMizL9kt7MSfhl4UlqXed/kAq+cFAKKXtHtT7UrGA4uK5ySK0kijBubi2SPBTtldVBbYa9May82+S+AkP5k3Y2+Fa90dKc1PmuaYNsveQsqqAfiFwDjYQUwDc8UJfKBnRSk+tw5jrtwrvh0Z+HgQsCXinyBqWCQ7bCcYEL6Qq3CRxog7ZQQGrips8vyoiegudfSOGNvwFrMcPQWUUavY5diTzgpdhtlVX7qyu9UU1xHZYPDHNSiYZtGu9NddWxdzKyergzumpB0KKpxZryq1EaVbJBpj2tBeEcDj66/i/JSXQ==
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea82b92e-6024-44f7-8403-08d83f556aa6
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2020 06:52:17.1590 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OGDsT0rbBApFGqB22UGCaH3BkSCvhv5jbKaDpI+U9D/E3cCOigA2l/yz1NhC6UK9
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3936
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Gustavo Padovan <gustavo@padovan.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [RFC PATCH v1] dma-fence-array: Deal with
 sub-fences that are signaled late
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMTMuMDguMjAgdW0gMDE6NTUgc2NocmllYiBKb3JkYW4gQ3JvdXNlOgo+IFRoaXMgaXMgYW4g
UkZDIGJlY2F1c2UgSSdtIHN0aWxsIHRyeWluZyB0byBncm9rIHRoZSBjb3JyZWN0IGJlaGF2aW9y
Lgo+Cj4gQ29uc2lkZXIgYSBkbWFfZmVuY2VfYXJyYXkgY3JlYXRlZCB0d28gdHdvIGZlbmNlIGFu
ZCBzaWduYWxfb25fYW55IGlzIHRydWUuCj4gQSByZWZlcmVuY2UgdG8gZG1hX2ZlbmNlX2FycmF5
IGlzIHRha2VuIGZvciBlYWNoIHdhaXRpbmcgZmVuY2UuCgpPaywgdGhhdCBzb3VuZHMgbGlrZSB5
b3Ugc2VlbSB0byBtaXggYSBjb3VwbGUgb2YgdGhpbmdzIHVwIGhlcmUuCgpBIGRtYV9mZW5jZV9h
cnJheSB0YWtlcyB0aGUgcmVmZXJlbmNlIHRvIHRoZSBmZW5jZXMgaXQgY29udGFpbnMgb24gCmNy
ZWF0aW9uLiBUaGVyZSBpcyBvbmx5IG9uZSByZWZlcmVuY2UgdG8gdGhlIGRtYV9mZW5jZV9hcnJh
eSBldmVuIGlmIGl0IApjb250YWlucyBOIHVuc2lnbmFsZWQgZmVuY2VzLgoKV2hhdCB3ZSBkbyBp
cyB0byBncmFiIGEgcmVmZXJlbmNlIHRvIHRoZSBhcnJheSBpbiAKZG1hX2ZlbmNlX2FycmF5X2Vu
YWJsZV9zaWduYWxpbmcoKSwgYnV0IHRoaXMgaXMgYmVjYXVzZSB3ZSBhcmUgCnJlZ2lzdGVyaW5n
IHRoZSBjYWxsYmFjayBoZXJlLgoKPiBXaGVuIHRoZSBjbGllbnQgY2FsbHMgZG1hX2ZlbmNlX3dh
aXQoKSBvbmx5IG9uZSBvZiB0aGUgZmVuY2VzIGlzIHNpZ25hbGVkLgo+IFRoZSBjbGllbnQgcmV0
dXJucyBzdWNjZXNzZnVsbHkgZnJvbSB0aGUgd2FpdCBhbmQgcHV0cyBpdCdzIHJlZmVyZW5jZSB0
bwo+IHRoZSBhcnJheSBmZW5jZSBidXQgdGhlIGFycmF5IGZlbmNlIHN0aWxsIHJlbWFpbnMgYmVj
YXVzZSBvZiB0aGUgcmVtYWluaW5nCj4gdW4tc2lnbmFsZWQgZmVuY2UuCgpJZiBzaWduYWxpbmcg
d2FzIGVuYWJsZWQgdGhlbiB0aGlzIGlzIGNvcnJlY3QsIGJlY2F1c2Ugb3RoZXJ3aXNlIHdlIAp3
b3VsZCBjcmFzaCB3aGVuIHRoZSBvdGhlciBjYWxsYmFja3MgYXJlIGNhbGxlZC4KCj4gTm93IGNv
bnNpZGVyIHRoYXQgdGhlIHVuc2lnbmFsZWQgZmVuY2UgaXMgc2lnbmFsZWQgd2hpbGUgdGhlIHRp
bWVsaW5lIGlzIGJlaW5nCj4gZGVzdHJveWVkIG11Y2ggbGF0ZXIuIFRoZSB0aW1lbGluZSBkZXN0
cm95IGNhbGxzIGRtYV9mZW5jZV9zaWduYWxfbG9ja2VkKCkuIFRoZQo+IGZvbGxvd2luZyBzZXF1
ZW5jZSBvY2N1cnM6Cj4KPiAxKSBkbWFfZmVuY2VfYXJyYXlfY2JfZnVuYyBpcyBjYWxsZWQKPgo+
IDIpIGFycmF5LT5udW1fcGVuZGluZyBpcyAwIChiZWNhdXNlIGl0IHdhcyBzZXQgdG8gMSBkdWUg
dG8gc2lnbmFsX29uX2FueSkgc28gdGhlCj4gY2FsbGJhY2sgZnVuY3Rpb24gY2FsbHMgZG1hX2Zl
bmNlX3B1dCgpIGluc3RlYWQgb2YgdHJpZ2dlcmluZyB0aGUgaXJxIHdvcmsKPgo+IDMpIFRoZSBh
cnJheSBmZW5jZSBpcyByZWxlYXNlZCB3aGljaCBpbiB0dXJuIHB1dHMgdGhlIGxpbmdlcmluZyBm
ZW5jZSB3aGljaCBpcwo+IHRoZW4gcmVsZWFzZWQKPgo+IDQpIGRlYWRsb2NrIHdpdGggdGhlIHRp
bWVsaW5lCgpXaHkgZG8gd2UgaGF2ZSBhIGRlYWRsb2NrIGhlcmU/IFRoYXQgZG9lc24ndCBzZWVt
cyB0byBhZGQgdXAuCgpDaHJpc3RpYW4uCgo+Cj4gSSB0aGluayB0aGF0IHdlIGNhbiBmaXggdGhp
cyB3aXRoIHRoZSBhdHRhY2hlZCBwYXRjaC4gT25jZSB0aGUgZmVuY2UgaXMKPiBzaWduYWxlZCBz
aWduYWxpbmcgaXQgYWdhaW4gaW4gdGhlIGlycSB3b3JrZXIgc2hvdWxkbid0IGh1cnQgYW55dGhp
bmcuIFRoZSBvbmx5Cj4gZ290Y2hhIG1pZ2h0IGJlIGhvdyB0aGUgZXJyb3IgaXMgcHJvcGFnYXRl
ZCAtIEkgd2Fzbid0IHF1aXRlIHN1cmUgdGhlIGludGVudCBvZgo+IGNsZWFyaW5nIGl0IG9ubHkg
YWZ0ZXIgZ2V0dGluZyB0byB0aGUgaXJxIHdvcmtlci4KPgo+IFNpZ25lZC1vZmYtYnk6IEpvcmRh
biBDcm91c2UgPGpjcm91c2VAY29kZWF1cm9yYS5vcmc+Cj4gLS0tCj4KPiAgIGRyaXZlcnMvZG1h
LWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYyB8IDEwICsrKystLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2Vk
LCA0IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1h
cnJheS5jCj4gaW5kZXggZDNmYmQ5NTBiZTk0Li5iODgyOWIwMjQyNTUgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jCj4gKysrIGIvZHJpdmVycy9kbWEtYnVm
L2RtYS1mZW5jZS1hcnJheS5jCj4gQEAgLTQ2LDggKzQ2LDYgQEAgc3RhdGljIHZvaWQgaXJxX2Rt
YV9mZW5jZV9hcnJheV93b3JrKHN0cnVjdCBpcnFfd29yayAqd3JrKQo+ICAgewo+ICAgCXN0cnVj
dCBkbWFfZmVuY2VfYXJyYXkgKmFycmF5ID0gY29udGFpbmVyX29mKHdyaywgdHlwZW9mKCphcnJh
eSksIHdvcmspOwo+ICAgCj4gLQlkbWFfZmVuY2VfYXJyYXlfY2xlYXJfcGVuZGluZ19lcnJvcihh
cnJheSk7Cj4gLQo+ICAgCWRtYV9mZW5jZV9zaWduYWwoJmFycmF5LT5iYXNlKTsKPiAgIAlkbWFf
ZmVuY2VfcHV0KCZhcnJheS0+YmFzZSk7Cj4gICB9Cj4gQEAgLTYxLDEwICs1OSwxMCBAQCBzdGF0
aWMgdm9pZCBkbWFfZmVuY2VfYXJyYXlfY2JfZnVuYyhzdHJ1Y3QgZG1hX2ZlbmNlICpmLAo+ICAg
Cj4gICAJZG1hX2ZlbmNlX2FycmF5X3NldF9wZW5kaW5nX2Vycm9yKGFycmF5LCBmLT5lcnJvcik7
Cj4gICAKPiAtCWlmIChhdG9taWNfZGVjX2FuZF90ZXN0KCZhcnJheS0+bnVtX3BlbmRpbmcpKQo+
IC0JCWlycV93b3JrX3F1ZXVlKCZhcnJheS0+d29yayk7Cj4gLQllbHNlCj4gLQkJZG1hX2ZlbmNl
X3B1dCgmYXJyYXktPmJhc2UpOwo+ICsJaWYgKCFhdG9taWNfZGVjX2FuZF90ZXN0KCZhcnJheS0+
bnVtX3BlbmRpbmcpKQo+ICsJCWRtYV9mZW5jZV9hcnJheV9zZXRfcGVuZGluZ19lcnJvcihhcnJh
eSwgZi0+ZXJyb3IpOwo+ICsKPiArCWlycV93b3JrX3F1ZXVlKCZhcnJheS0+d29yayk7Cj4gICB9
Cj4gICAKPiAgIHN0YXRpYyBib29sIGRtYV9mZW5jZV9hcnJheV9lbmFibGVfc2lnbmFsaW5nKHN0
cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbmFyby1tbS1zaWcK

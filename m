Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0C0169773
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 23 Feb 2020 13:05:05 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 11B1860C4F
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 23 Feb 2020 12:05:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0310460E1B; Sun, 23 Feb 2020 12:05:04 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A6649607BB;
	Sun, 23 Feb 2020 12:04:31 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5429F60654
 for <linaro-mm-sig@lists.linaro.org>; Sun, 23 Feb 2020 12:04:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 46A39607BB; Sun, 23 Feb 2020 12:04:29 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2077.outbound.protection.outlook.com [40.107.244.77])
 by lists.linaro.org (Postfix) with ESMTPS id DC79260654
 for <linaro-mm-sig@lists.linaro.org>; Sun, 23 Feb 2020 12:04:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h3s8o3GB1OFAN5vBhwFVj2a+ailLNDHo0w4aze/Vyi0YoS19yDEGwc21fPSkVMUIYKPQb9UrpFd/lHrSN9ReHhBA88milalKvsiygdr8ILpbSQWTj1L6m8Brc2cz627uQDSxF11cQY4mnGX5BtHVKaoSj3VYh5OF8LyBB10IR0ZaXy6yzdAeoUCcHlvcfMwskum+9C2B2C+ehcg1bEQz55E/1rlrIliWwugHCWPitdF0m0eS6goQhYZI4imU3sbsCkujTc0jmybmr2/in1C+GsUspNUOKoKLJJOIEhQnN/0Xv/dk+T88dTY2pSD27wbUjr1qO2/WEQ72c0ddcf/JrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T7jMdzYGZWZjpE497kC91UPQK1IxaOoJsaEkq12vKJU=;
 b=Ns8+twXNIj82U827Sa6do85j3hSHjoQOYcp/KRw/YdvdXwua5uGfaFnvwz3clt2DHpFYv24kZdxcnUwbibRGrBYMyWpIgQAtRuxBXdQbsW7X2DhgipKHI21JUnDVyf9cGYFjjAS/gW6jnDFbmVHp5u7WPUVHCQhpYjTRJleCCtW6OXsxK+BIMigY4q9Do93ywD2TujvIdGg1f2Xv+78OaXWy9SjOjSk/T7ex2zA+T/CzJ4YQ7RXZXj4a40BKkHVwOhFXEA0a+CdKHjHh6/ihNXEIBezJRFslspg+n26Pkh1xijS/Zh0f842eVgwk/WIZM1VIfJdP9jiuoVwnfU8cxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DM5PR12MB1705.namprd12.prod.outlook.com (2603:10b6:3:10c::22)
 by DM5PR12MB1625.namprd12.prod.outlook.com (2603:10b6:4:b::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21; Sun, 23 Feb 2020 12:04:22 +0000
Received: from DM5PR12MB1705.namprd12.prod.outlook.com
 ([fe80::d40e:7339:8605:bc92]) by DM5PR12MB1705.namprd12.prod.outlook.com
 ([fe80::d40e:7339:8605:bc92%11]) with mapi id 15.20.2750.021; Sun, 23 Feb
 2020 12:04:22 +0000
To: "Pan, Xinhui" <Xinhui.Pan@amd.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
References: <B737F1D5-292E-4FE2-89A5-6EF72CB3EED1@amd.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <7a2eb42a-2dd9-4303-3947-6bbb4de7a888@amd.com>
Date: Sun, 23 Feb 2020 13:04:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
In-Reply-To: <B737F1D5-292E-4FE2-89A5-6EF72CB3EED1@amd.com>
Content-Language: en-US
X-ClientProxiedBy: AM3PR05CA0086.eurprd05.prod.outlook.com
 (2603:10a6:207:1::12) To DM5PR12MB1705.namprd12.prod.outlook.com
 (2603:10b6:3:10c::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
 (2a02:908:1252:fb60:be8a:bd56:1f94:86e7) by
 AM3PR05CA0086.eurprd05.prod.outlook.com (2603:10a6:207:1::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.18 via Frontend Transport; Sun, 23 Feb 2020 12:04:20 +0000
X-Originating-IP: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 7988bf35-994e-4260-608d-08d7b85884c7
X-MS-TrafficTypeDiagnostic: DM5PR12MB1625:|DM5PR12MB1625:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM5PR12MB1625728BCFD8A28EDB459FA383EF0@DM5PR12MB1625.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0322B4EDE1
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(366004)(39860400002)(396003)(376002)(199004)(189003)(86362001)(66946007)(6486002)(6666004)(36756003)(2616005)(478600001)(5660300002)(81166006)(186003)(8676002)(16526019)(66476007)(52116002)(31696002)(316002)(110136005)(54906003)(81156014)(2906002)(4326008)(66556008)(8936002)(31686004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR12MB1625;
 H:DM5PR12MB1705.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: H/uT05tIi3sDc45WnmKaKOEKzRq4/ChSSRS1U1j/cRmKAAQwdTpZ5IjWShz3IoI2OX7hh5JdbF1P9XOJLLxdwgsbR+Iz/Q3eZ0py1m1/nGKefmELkbphm7qutU+hcsjtcnQKrqN4lalBc3HF38IrR1bKS7lUZTRWUNe+nUDkgE3ljsznyEXIJ8gmB7EhVjHDEO5BvPVDEG4AGYOSo7nw+WFhtv0KpzVFr3SmpRAiCUxZVq1eLzCccWaLBtUdoE5rpFmw5lRpfiZY4Gz14TDZRXDjaTtM14jr86K39rGB465wBLzuw94dQYodqSs6lfoUfJ8jPXY4zy+EIvGDv6WpxRegQ++b47U4Yz/pt5qYU4U3KEwmesSnIRq2fNgqC1DT4l5ghVyyWttdhzUtnyxJZ4k91PWF1KayiSwmF467LCz+BsU2R7r2QGgPS5YMAThX
X-MS-Exchange-AntiSpam-MessageData: NmVkClFAZe5lc9iIWc9G9HypLDOn34DsqiuJLZh9ubc0NXB/5ZLvuLuyoEbYk/KgTWwcaLHd1iOSD2QwDUF6BI94mnky3FporMCtAuVsed6/XDIqRP65Wqb80UHSxBJHbYZvONMaE9pyzydPGFzD4jZkke0pammI9snwnOeNjBr+fB0TuwZ9ebjpaxaP3EpcwKp6yz30tmGp5Ikgeh5bdw==
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7988bf35-994e-4260-608d-08d7b85884c7
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2020 12:04:22.2845 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vlGeM6PicH1L/xJy4EzlcrkDm069DYXTxkxnxJkQmwXhdHt0D84Ts2BMxHmcg1Qp
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1625
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: Fix missing excl fence waiting
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

QW0gMjMuMDIuMjAgdW0gMTI6NTYgc2NocmllYiBQYW4sIFhpbmh1aToKPiBJZiBzaGFyZWQgZmVu
Y2UgbGlzdCBpcyBub3QgZW1wdHksIGV2ZW4gd2Ugd2FudCB0byB0ZXN0IGFsbCBmZW5jZXMsIGV4
Y2wgZmVuY2UgaXMgaWdub3JlZC4KPiBUaGF0IGlzIGFidmlvdXNseSB3cm9uZywgc28gZml4IGl0
LgoKWWVhaCB0aGF0IGlzIGEga25vd24gaXNzdWUgYW5kIEkgY29tcGxldGVseSBhZ3JlZSB3aXRo
IHlvdSwgYnV0IG90aGVyIApkaXNhZ3JlZS4KClNlZSB0aGUgc2hhcmVkIGZlbmNlcyBhcmUgbWVh
bnQgdG8gZGVwZW5kIG9uIHRoZSBleGNsdXNpdmUgZmVuY2UuIFNvIGFsbCAKc2hhcmVkIGZlbmNl
cyBtdXN0IGZpbmlzaCBvbmx5IGFmdGVyIHRoZSBleGNsdXNpdmUgb25lIGhhcyBmaW5pc2hlZCBh
cyB3ZWxsLgoKVGhlIHByb2JsZW0gbm93IGlzIHRoYXQgZm9yIGVycm9yIGhhbmRsaW5nIHRoaXMg
aXNuJ3QgbmVjZXNzYXJ5IHRydWUuIEluIApvdGhlciB3b3JkcyB3aGVuIGEgc2hhcmVkIGZlbmNl
IGNvbXBsZXRlcyB3aXRoIGFuIGVycm9yIGl0IGlzIHBlcmZlY3RseSAKcG9zc2libGUgdGhhdCBo
ZSBkb2VzIHRoaXMgYmVmb3JlIHRoZSBleGNsdXNpdmUgZmVuY2UgaXMgZmluaXNoZWQuCgpJJ20g
dHJ5aW5nIHRvIGNvbnZpbmNlIERhbmllbCB0aGF0IHRoaXMgaXMgYSBwcm9ibGVtIGZvciB5ZWFy
cyA6KQoKUmVnYXJkcywKQ2hyaXN0aWFuLgoKPgo+IFNpZ25lZC1vZmYtYnk6IHhpbmh1aSBwYW4g
PHhpbmh1aS5wYW5AYW1kLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5j
IHwgOSArKysrKy0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDQgZGVs
ZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgYi9k
cml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwo+IGluZGV4IDQyNjRlNjQ3ODhjNC4uNDRkYzY0YzU0
N2M2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCj4gKysrIGIvZHJp
dmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKPiBAQCAtNjMyLDE0ICs2MzIsMTQgQEAgc3RhdGljIGlu
bGluZSBpbnQgZG1hX3Jlc3ZfdGVzdF9zaWduYWxlZF9zaW5nbGUoc3RydWN0IGRtYV9mZW5jZSAq
cGFzc2VkX2ZlbmNlKQo+ICAgICovCj4gICBib29sIGRtYV9yZXN2X3Rlc3Rfc2lnbmFsZWRfcmN1
KHN0cnVjdCBkbWFfcmVzdiAqb2JqLCBib29sIHRlc3RfYWxsKQo+ICAgewo+IC0JdW5zaWduZWQg
c2VxLCBzaGFyZWRfY291bnQ7Cj4gKwl1bnNpZ25lZCBpbnQgc2VxLCBzaGFyZWRfY291bnQsIGxl
ZnQ7Cj4gICAJaW50IHJldDsKPiAgIAo+ICAgCXJjdV9yZWFkX2xvY2soKTsKPiAgIHJldHJ5Ogo+
ICAgCXJldCA9IHRydWU7Cj4gICAJc2hhcmVkX2NvdW50ID0gMDsKPiAtCXNlcSA9IHJlYWRfc2Vx
Y291bnRfYmVnaW4oJm9iai0+c2VxKTsKPiArCWxlZnQgPSBzZXEgPSByZWFkX3NlcWNvdW50X2Jl
Z2luKCZvYmotPnNlcSk7Cj4gICAKPiAgIAlpZiAodGVzdF9hbGwpIHsKPiAgIAkJdW5zaWduZWQg
aTsKPiBAQCAtNjQ3LDcgKzY0Nyw3IEBAIGJvb2wgZG1hX3Jlc3ZfdGVzdF9zaWduYWxlZF9yY3Uo
c3RydWN0IGRtYV9yZXN2ICpvYmosIGJvb2wgdGVzdF9hbGwpCj4gICAJCXN0cnVjdCBkbWFfcmVz
dl9saXN0ICpmb2JqID0gcmN1X2RlcmVmZXJlbmNlKG9iai0+ZmVuY2UpOwo+ICAgCj4gICAJCWlm
IChmb2JqKQo+IC0JCQlzaGFyZWRfY291bnQgPSBmb2JqLT5zaGFyZWRfY291bnQ7Cj4gKwkJCWxl
ZnQgPSBzaGFyZWRfY291bnQgPSBmb2JqLT5zaGFyZWRfY291bnQ7Cj4gICAKPiAgIAkJZm9yIChp
ID0gMDsgaSA8IHNoYXJlZF9jb3VudDsgKytpKSB7Cj4gICAJCQlzdHJ1Y3QgZG1hX2ZlbmNlICpm
ZW5jZSA9IHJjdV9kZXJlZmVyZW5jZShmb2JqLT5zaGFyZWRbaV0pOwo+IEBAIC02NTcsMTMgKzY1
NywxNCBAQCBib29sIGRtYV9yZXN2X3Rlc3Rfc2lnbmFsZWRfcmN1KHN0cnVjdCBkbWFfcmVzdiAq
b2JqLCBib29sIHRlc3RfYWxsKQo+ICAgCQkJCWdvdG8gcmV0cnk7Cj4gICAJCQllbHNlIGlmICgh
cmV0KQo+ICAgCQkJCWJyZWFrOwo+ICsJCQlsZWZ0LS07Cj4gICAJCX0KPiAgIAo+ICAgCQlpZiAo
cmVhZF9zZXFjb3VudF9yZXRyeSgmb2JqLT5zZXEsIHNlcSkpCj4gICAJCQlnb3RvIHJldHJ5Owo+
ICAgCX0KPiAgIAo+IC0JaWYgKCFzaGFyZWRfY291bnQpIHsKPiArCWlmICghbGVmdCkgewo+ICAg
CQlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZV9leGNsID0gcmN1X2RlcmVmZXJlbmNlKG9iai0+ZmVu
Y2VfZXhjbCk7Cj4gICAKPiAgIAkJaWYgKGZlbmNlX2V4Y2wpIHsKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

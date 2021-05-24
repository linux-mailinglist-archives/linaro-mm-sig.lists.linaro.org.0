Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7958C391A05
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 16:21:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 506576143F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 14:21:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 414D760A44; Wed, 26 May 2021 14:21:01 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8FAAA669C4;
	Wed, 26 May 2021 14:20:58 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 14EEC60AF9
 for <linaro-mm-sig@lists.linaro.org>; Mon, 24 May 2021 13:36:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 128B960B03; Mon, 24 May 2021 13:36:33 +0000 (UTC)
Received: from szxga05-in.huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by lists.linaro.org (Postfix) with ESMTPS id C1A1060AF9
 for <linaro-mm-sig@lists.linaro.org>; Mon, 24 May 2021 13:36:30 +0000 (UTC)
Received: from dggems706-chm.china.huawei.com (unknown [172.30.72.58])
 by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4FpdSM5pW1zNypK;
 Mon, 24 May 2021 21:32:51 +0800 (CST)
Received: from dggeml759-chm.china.huawei.com (10.1.199.138) by
 dggems706-chm.china.huawei.com (10.3.19.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.1.2176.2; Mon, 24 May 2021 21:36:27 +0800
Received: from [10.174.178.165] (10.174.178.165) by
 dggeml759-chm.china.huawei.com (10.1.199.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2176.2; Mon, 24 May 2021 21:36:26 +0800
To: Dmitry Osipenko <digetx@gmail.com>, Mauro Carvalho Chehab
 <mchehab+huawei@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>, Thierry Reding
 <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, "Philipp
 Zabel" <p.zabel@pengutronix.de>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
References: <20210524133550.2363884-1-weiyongjun1@huawei.com>
 <db911ac9-2d08-ae30-03ea-dfb7db964441@gmail.com>
 <1e05ad22-c4d8-c443-5377-7cd9db024cb9@gmail.com>
From: "weiyongjun (A)" <weiyongjun1@huawei.com>
Message-ID: <20768acd-2ab5-2e7e-263d-d3176268412e@huawei.com>
Date: Mon, 24 May 2021 21:36:26 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1e05ad22-c4d8-c443-5377-7cd9db024cb9@gmail.com>
X-Originating-IP: [10.174.178.165]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 dggeml759-chm.china.huawei.com (10.1.199.138)
X-CFilter-Loop: Reflected
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Wed, 26 May 2021 14:18:46 +0000
Subject: Re: [Linaro-mm-sig] [PATCH -next] media: staging: tegra-vde: Fix
 error return code in tegra_vde_probe()
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
Cc: linux-staging@lists.linux.dev, kernel-janitors@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Hulk
 Robot <hulkci@huawei.com>, linux-tegra@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Cj4gMjQuMDUuMjAyMSAxNjoyNywgRG1pdHJ5IE9zaXBlbmtvINC/0LjRiNC10YI6Cj4+IDI0LjA1
LjIwMjEgMTY6MzUsIFdlaSBZb25nanVuINC/0LjRiNC10YI6Cj4+PiBGaXggdG8gcmV0dXJuIGEg
bmVnYXRpdmUgZXJyb3IgY29kZSBmcm9tIHRoZSBlcnJvciBoYW5kbGluZwo+Pj4gY2FzZSBpbnN0
ZWFkIG9mIDAsIGFzIGRvbmUgZWxzZXdoZXJlIGluIHRoaXMgZnVuY3Rpb24uCj4+Pgo+Pj4gRml4
ZXM6IGRjODI3NmI3ODkxNyAoInN0YWdpbmc6IG1lZGlhOiB0ZWdyYS12ZGU6IHVzZSBwbV9ydW50
aW1lX3Jlc3VtZV9hbmRfZ2V0KCkiKQo+Pj4gUmVwb3J0ZWQtYnk6IEh1bGsgUm9ib3QgPGh1bGtj
aUBodWF3ZWkuY29tPgo+Pj4gU2lnbmVkLW9mZi1ieTogV2VpIFlvbmdqdW4gPHdlaXlvbmdqdW4x
QGh1YXdlaS5jb20+Cj4+PiAtLS0KPj4+ICAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZk
ZS92ZGUuYyB8IDMgKystCj4+PiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3Rl
Z3JhLXZkZS92ZGUuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdyYS12ZGUvdmRlLmMKPj4+
IGluZGV4IGUwMjViNjk3NzZmMi4uMzIxZDE0YmEyZTU2IDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVy
cy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS92ZGUuYwo+Pj4gKysrIGIvZHJpdmVycy9zdGFnaW5n
L21lZGlhL3RlZ3JhLXZkZS92ZGUuYwo+Pj4gQEAgLTEwNzEsNyArMTA3MSw4IEBAIHN0YXRpYyBp
bnQgdGVncmFfdmRlX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+PiAgIAkg
KiBwb3dlci1jeWNsZSBpdCBpbiBvcmRlciB0byBwdXQgaGFyZHdhcmUgaW50byBhIHByZWRpY3Rh
YmxlIGxvd2VyCj4+PiAgIAkgKiBwb3dlciBzdGF0ZS4KPj4+ICAgCSAqLwo+Pj4gLQlpZiAocG1f
cnVudGltZV9yZXN1bWVfYW5kX2dldChkZXYpIDwgMCkKPj4+ICsJZXJyID0gcG1fcnVudGltZV9y
ZXN1bWVfYW5kX2dldChkZXYpOwo+Pj4gKwlpZiAoZXJyIDwgMCkKPj4+ICAgCQlnb3RvIGVycl9w
bV9ydW50aW1lOwo+Pj4gICAKPj4+ICAgCXBtX3J1bnRpbWVfcHV0KGRldik7Cj4+Pgo+PiBwbV9y
dW50aW1lX3Jlc3VtZV9hbmRfZ2V0KCkgZG9lc24ndCByZXR1cm4gcG9zaXRpdmUgdmFsdWVzLCB0
aGUgcHJldmlvdXMKPj4gdmFyaWFudCB3YXMgb2theS4KPj4KPj4gWW91IHNob3VsZCBhbHNvIHZl
cnNpb24geW91ciBwYXRjaGVzIGFuZCBhZGQgY2hhbmdlbG9nLgo+Pgo+IEFoLCBzb3JyeS4gVGhl
IG90aGVyIHBhdGNoIGlzIGZyb20gWWFuZyBZaW5nbGlhbmcuCgoKU29ycnksIGl0IGlzIG15IGJh
ZC4gSSBtaXNzZWQgdGhhdCBwYXRjaC4KCgpSZWdhcmRzLAoKV2VpIFlvbmdqdW4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxp
bmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

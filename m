Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 70269247FB8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 09:47:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9D59B619D1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 07:47:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8E59D65FCE; Tue, 18 Aug 2020 07:47:13 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 86D4A65F8C;
	Tue, 18 Aug 2020 07:46:05 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A89BB60665
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Aug 2020 07:45:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9992565F75; Tue, 18 Aug 2020 07:45:59 +0000 (UTC)
Received: from mailout3.samsung.com (mailout3.samsung.com [203.254.224.33])
 by lists.linaro.org (Postfix) with ESMTPS id 85F1A60665
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Aug 2020 07:45:57 +0000 (UTC)
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200818074554epoutp034a0fb0b3b4719660c847aca90520be8c~sTR0L8tdC0373603736epoutp03V
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Aug 2020 07:45:54 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200818074554epoutp034a0fb0b3b4719660c847aca90520be8c~sTR0L8tdC0373603736epoutp03V
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas2p1.samsung.com (KnoxPortal) with ESMTP id
 20200818074554epcas2p19f579b82774797c41f96c2c7fe4e9759~sTRzoJm6b0149301493epcas2p1z;
 Tue, 18 Aug 2020 07:45:54 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.40.190]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 4BW2yl1BvLzMqYlr; Tue, 18 Aug
 2020 07:45:51 +0000 (GMT)
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
 epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 69.10.18874.E278B3F5; Tue, 18 Aug 2020 16:45:50 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas2p1.samsung.com (KnoxPortal) with ESMTPA id
 20200818074550epcas2p1e12121bc6e38086277766f08a59767ff~sTRwKzPO62831228312epcas2p1h;
 Tue, 18 Aug 2020 07:45:50 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200818074550epsmtrp1d20be4cab1f36e79e6f352e53dbf616f~sTRwJPPI82704027040epsmtrp1r;
 Tue, 18 Aug 2020 07:45:50 +0000 (GMT)
X-AuditID: b6c32a46-503ff700000049ba-82-5f3b872e2517
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 F6.78.08303.E278B3F5; Tue, 18 Aug 2020 16:45:50 +0900 (KST)
Received: from Dabang.dsn.sec.samsung.com (unknown [12.36.155.59]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200818074550epsmtip2b83c1a5c64259b06e112df6e7747129b~sTRv4_JW_2522925229epsmtip2N;
 Tue, 18 Aug 2020 07:45:50 +0000 (GMT)
From: Hyesoo Yu <hyesoo.yu@samsung.com>
To: sumit.semwal@linaro.org
Date: Tue, 18 Aug 2020 17:04:13 +0900
Message-Id: <20200818080415.7531-2-hyesoo.yu@samsung.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200818080415.7531-1-hyesoo.yu@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02Te0xTVxzHc2577y2akmvFecQotY4tuPBot+IBYRJl5G4sER97hBDhDu5a
 XClNW2AwluEq5WVhjJcDQkkEBrXMyWuAjG0FAQER5CWbYAQxccJYQOaDIWspZvz3Ob/f95vv
 +f1ODo8jyCadedFKLatWMgoRsYXb1OHm7e6Zdijca+0UWujNJVHpZTOBvrb0Emi6dxCg+btX
 cWTsHMDRyPICgVYzBnFUk6Uj0JPyaQ7qX3FHNW1PMfR45B6GhltLCXT+x0YcTZnXcFR8fQxD
 VcsLJHph+A2g1J87SdQ7uUSivFvlBCo5mw0CdtKpt1YJ2lxmBvRwtgGjy+vi6DpTBkHXLX5L
 0pnzIxh9Z6yNoHsurHDpu1ndGP3HixkOvdA+StDZDSZA95d3knT37Z8weqlubwgVqvCTs0wU
 qxayysjYqGilzF8UfDL8aLjU20vsLvZBB0VCJRPD+osC3w9xD4pWWFchEsYzijhrKYTRaESe
 b/upY+O0rFAeq9H6i1hVlEIlFqs8NEyMJk4p84iMjfEVe3lJpFZlhEI+N2TGVNf4nz/vuoKn
 gGtbM4EDD1JvwdF7OiwTbOEJqGYAp7LmOPbDIoD5FdkbnSUAWwwGzktL11MTaWMB1QrgXEqg
 XfQEwLHaFMLWIKjXYU9DFbCxE7UbFlVX4zYRh6rhwrG829YGj7edCoZ1xngbcilXOJETYUM+
 5QO7h8T2KBeYWzK5LnagfOHsJR9bmU9tg9e/u8+1Mccq0TWWrN8ZUt87wNRFHWH3BsKUdttk
 Nt4O/+xuIO3sDB/m6Dc4Ad44N43bzecAHCoc3TC/CYsfpK0Hcyg3eLnV04aQ2g87f9/IdYTp
 HaukvcyH6XqB3bgf/lJVxrXzLjhdm4bbmYalS5WEfVEGACd/KATfAGHxpnGKN41T/H9wOeCY
 wCusShMjYzUSlWTz89aB9Y9xIKgZ5M//7WEBGA9YAORxRE78T3oOhgv4UUxiEquODVfHKViN
 BUitm87lOO+IjLX+LKU2XCyVeHt7+UiR1FuCRDv5X+0bPC2gZIyW/YxlVaz6pQ/jOTinYN4J
 zaY9k6Z/ZBHjl97piB5v0v1beb9A+Z5DhShDxeRIRWf21fehrTOO9fo0h6HW1oDn/TmnZ7sn
 dFUdLnj1tmJhwU39cNhRqeuJiy5hZc+aPhLcccz6MGQpaLyo+rHsuGNHYmLCF6VZgSXtVz1i
 5GEPfFrc2CPLa8cbTurmhMllYy6vjeTV7gIS9iiuDsiFeidT2RX3bNe9E/S7SW17gtM/PXax
 8NVj+LP8tBNTu4FFHPrI8JcfX75sNJ6ZHSiNP9VyKFl72PxGjfnszb4C+GWvMRMWTe6wkM3k
 4Rn9BzlM0uoFY/KvydrJh30fd+l8ByqII4/qQ6duJK40rjKVYedFXI2cER/gqDXMfxUIIF+h
 BAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA02Re0hTYRjG+c7Ozo6L0XEaHY2MVhIuXGmGX2omBPWhFUVYUuBcedKVzrWl
 pgWpZZHmSgNn0/QYZbZml5PWqGU1ZzoRcTqj27xVhqGsMkuSLk4J+u/H83t4eOEleWI77k8q
 VUcYjUqRJiGE+P0WyZJg2ZlI+WrH7QDo7igVwKrbJgIWWDsIONzRDeD4wCM+rLF18aFz0k3A
 X2e7+fBG8UkC/mCHebBzOhjesExh8JtzCIO9D6sIeO5OEx/2m/7wocH+AoN1k24B/F3yDMDC
 xzYB7HBNCODFHpaAlfk6ELMQFfb8IpCp2gRQr64EQyyXiTjjWQJxX8sEqGjciaG3LywEaq+Y
 xtFAcRuG3vx+x0Pu5j4C6RqNAHWyNgFqe/kAQxNcwHZqjzAqmUlTZjGaVdFJwtQxhwlTt4qO
 /nx+l58HWucVAS+SpsLo51NGQREQkmLKDGiHrZ+YE360YcKOzbEPPXDKxp8rTQJabzDzPYKg
 VtDtjXXAw77UIlpfXz9b4lEtON1y6+XMEkn6UHE0V5PlQZwKpF+dT/KgiFpHtzlC5uaX0KWV
 LuCJvagI+sPNdZ5YPNMwW8yzF4gob9p+6T3uYd5M/WRTJe8CoAz/KcN/igWYEfgxam16Sro2
 RB2qYrJlWkW6NlOVItufkc6B2W9LpWZgMX6WWQFGAiugSZ7EV7SvPVwuFiUrcnIZTYZck5nG
 aK1gEYlLFoomDbWJYipFcYQ5xDBqRvPPYqSXfx5W8b6J3RwlKwXRmblcaIA0u098VP8tocA9
 mrMq0Nc2ryxx/xf0qqSwxmm/DLt1MKE8PuKq+fvNranjT/SIlYTv7D9W8CgqQ+pUy/3nC5c3
 GEZGwa7G6zVar/j1OSvX+JfuZg9M+y2OG3zWuznYO0E5v3pZc2zteNbd1k/ElbjEjF0Nrd7b
 ZAN9FWO6QP2WjVzxxM7BWz8PnvgY43sh4URP7TUy8bU0llDnlDF1eeuD7q09HuuSj/mEF486
 LkZyC3bkW/cMP3Vkn8ovjzocck3RkGRLUwYNdm3wGaosX+EaZgddyg1TMRHRotOgWpWNm78P
 xVsOWMHI3rA7lqUjmyS4NlURIuVptIq/Intb4VwDAAA=
X-CMS-MailID: 20200818074550epcas2p1e12121bc6e38086277766f08a59767ff
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200818074550epcas2p1e12121bc6e38086277766f08a59767ff
References: <20200818080415.7531-1-hyesoo.yu@samsung.com>
 <CGME20200818074550epcas2p1e12121bc6e38086277766f08a59767ff@epcas2p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 benjamin.gaignard@linaro.org, Brian.Starkey@arm.com,
 Hyesoo Yu <hyesoo.yu@samsung.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linaro-mm-sig@lists.linaro.org, robh+dt@kernel.org,
 john.stultz@linaro.org, pullip.cho@samsung.com, surenb@google.com,
 iamjoonsoo.kim@lge.com, vbabka@suse.cz, linux-kernel@vger.kernel.org,
 lmark@codeaurora.org, minchan@kernel.org, joaodias@google.com,
 akpm@linux-foundation.org, christian.koenig@amd.com
Subject: [Linaro-mm-sig] [PATCH 1/3] dma-buf: add missing
	EXPORT_SYMBOL_GPL() for dma heaps
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

VGhlIGludGVyZmFjZSBvZiBkbWEgaGVhcCBpcyB1c2VkIGZyb20ga2VybmVsIG1vZHVsZSB0bwpy
ZWdpc3RlciBkbWEgaGVhcHMsIG90aGVyd2l6ZSB3ZSB3aWxsIGdldCBjb21waWxlIGVycm9yLgoK
U2lnbmVkLW9mZi1ieTogSHllc29vIFl1IDxoeWVzb28ueXVAc2Ftc3VuZy5jb20+Ci0tLQogZHJp
dmVycy9kbWEtYnVmL2RtYS1oZWFwLmMgICAgICAgICAgIHwgMiArKwogZHJpdmVycy9kbWEtYnVm
L2hlYXBzL2hlYXAtaGVscGVycy5jIHwgMiArKwogMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlv
bnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYyBiL2RyaXZlcnMv
ZG1hLWJ1Zi9kbWEtaGVhcC5jCmluZGV4IGFmZDIyYzkuLmNjNjMzOWMgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5jCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5j
CkBAIC0xODksNiArMTg5LDcgQEAgdm9pZCAqZG1hX2hlYXBfZ2V0X2RydmRhdGEoc3RydWN0IGRt
YV9oZWFwICpoZWFwKQogewogCXJldHVybiBoZWFwLT5wcml2OwogfQorRVhQT1JUX1NZTUJPTF9H
UEwoZG1hX2hlYXBfZ2V0X2RydmRhdGEpOwogCiBzdHJ1Y3QgZG1hX2hlYXAgKmRtYV9oZWFwX2Fk
ZChjb25zdCBzdHJ1Y3QgZG1hX2hlYXBfZXhwb3J0X2luZm8gKmV4cF9pbmZvKQogewpAQCAtMjcy
LDYgKzI3Myw3IEBAIHN0cnVjdCBkbWFfaGVhcCAqZG1hX2hlYXBfYWRkKGNvbnN0IHN0cnVjdCBk
bWFfaGVhcF9leHBvcnRfaW5mbyAqZXhwX2luZm8pCiAJa2ZyZWUoaGVhcCk7CiAJcmV0dXJuIGVy
cl9yZXQ7CiB9CitFWFBPUlRfU1lNQk9MX0dQTChkbWFfaGVhcF9hZGQpOwogCiBzdGF0aWMgY2hh
ciAqZG1hX2hlYXBfZGV2bm9kZShzdHJ1Y3QgZGV2aWNlICpkZXYsIHVtb2RlX3QgKm1vZGUpCiB7
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvaGVhcC1oZWxwZXJzLmMgYi9kcml2
ZXJzL2RtYS1idWYvaGVhcHMvaGVhcC1oZWxwZXJzLmMKaW5kZXggOWY5NjRjYS4uNzQxYmFlMCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL2hlYXAtaGVscGVycy5jCisrKyBiL2Ry
aXZlcnMvZG1hLWJ1Zi9oZWFwcy9oZWFwLWhlbHBlcnMuYwpAQCAtMjQsNiArMjQsNyBAQCB2b2lk
IGluaXRfaGVhcF9oZWxwZXJfYnVmZmVyKHN0cnVjdCBoZWFwX2hlbHBlcl9idWZmZXIgKmJ1ZmZl
ciwKIAlJTklUX0xJU1RfSEVBRCgmYnVmZmVyLT5hdHRhY2htZW50cyk7CiAJYnVmZmVyLT5mcmVl
ID0gZnJlZTsKIH0KK0VYUE9SVF9TWU1CT0xfR1BMKGluaXRfaGVhcF9oZWxwZXJfYnVmZmVyKTsK
IAogc3RydWN0IGRtYV9idWYgKmhlYXBfaGVscGVyX2V4cG9ydF9kbWFidWYoc3RydWN0IGhlYXBf
aGVscGVyX2J1ZmZlciAqYnVmZmVyLAogCQkJCQkgIGludCBmZF9mbGFncykKQEAgLTM3LDYgKzM4
LDcgQEAgc3RydWN0IGRtYV9idWYgKmhlYXBfaGVscGVyX2V4cG9ydF9kbWFidWYoc3RydWN0IGhl
YXBfaGVscGVyX2J1ZmZlciAqYnVmZmVyLAogCiAJcmV0dXJuIGRtYV9idWZfZXhwb3J0KCZleHBf
aW5mbyk7CiB9CitFWFBPUlRfU1lNQk9MX0dQTChoZWFwX2hlbHBlcl9leHBvcnRfZG1hYnVmKTsK
IAogc3RhdGljIHZvaWQgKmRtYV9oZWFwX21hcF9rZXJuZWwoc3RydWN0IGhlYXBfaGVscGVyX2J1
ZmZlciAqYnVmZmVyKQogewotLSAKMi43LjQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW5hcm8tbW0tc2lnCg==

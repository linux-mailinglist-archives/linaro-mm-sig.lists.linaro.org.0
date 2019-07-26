Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E287C76DDC
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Jul 2019 17:37:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0D1E6615EF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Jul 2019 15:37:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0162961617; Fri, 26 Jul 2019 15:37:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 36BD56091D;
	Fri, 26 Jul 2019 15:36:25 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CB41560887
 for <linaro-mm-sig@lists.linaro.org>; Fri, 26 Jul 2019 15:34:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BFE90608ED; Fri, 26 Jul 2019 15:34:21 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id 3A40460887
 for <linaro-mm-sig@lists.linaro.org>; Fri, 26 Jul 2019 15:34:20 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0E6DD2054F;
 Fri, 26 Jul 2019 15:34:19 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Date: Fri, 26 Jul 2019 17:25:11 +0200
Message-Id: <20190726152304.356080005@linuxfoundation.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190726152300.760439618@linuxfoundation.org>
References: <20190726152300.760439618@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, stable@vger.kernel.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 dri-devel@lists.freedesktop.org,
 =?UTF-8?q?St=C3=A9phane=20Marchesin?= <marcheu@chromium.org>,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH 4.19 36/50] dma-buf: balance refcount
	inbalance
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

RnJvbTogSsOpcsO0bWUgR2xpc3NlIDxqZ2xpc3NlQHJlZGhhdC5jb20+Cgpjb21taXQgNWUzODNh
OTc5ODk5MGM2OWZjNzU5YTQ5MzBkZTIyNGJiNDk3ZTYyYyB1cHN0cmVhbS4KClRoZSBkZWJ1Z2Zz
IHRha2UgcmVmZXJlbmNlIG9uIGZlbmNlIHdpdGhvdXQgZHJvcHBpbmcgdGhlbS4KClNpZ25lZC1v
ZmYtYnk6IErDqXLDtG1lIEdsaXNzZSA8amdsaXNzZUByZWRoYXQuY29tPgpDYzogQ2hyaXN0aWFu
IEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgpDYzogRGFuaWVsIFZldHRlciA8ZGFu
aWVsLnZldHRlckBmZndsbC5jaD4KQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFy
by5vcmc+CkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGRyaS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpDYzog
U3TDqXBoYW5lIE1hcmNoZXNpbiA8bWFyY2hldUBjaHJvbWl1bS5vcmc+CkNjOiBzdGFibGVAdmdl
ci5rZXJuZWwub3JnClJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+ClNpZ25lZC1vZmYtYnk6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxp
bmFyby5vcmc+Ckxpbms6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9t
c2dpZC8yMDE4MTIwNjE2MTg0MC42NTc4LTEtamdsaXNzZUByZWRoYXQuY29tClNpZ25lZC1vZmYt
Ynk6IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+CgotLS0K
IGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCAgICAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKQoKLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYworKysgYi9kcml2ZXJz
L2RtYS1idWYvZG1hLWJ1Zi5jCkBAIC0xMDY5LDYgKzEwNjksNyBAQCBzdGF0aWMgaW50IGRtYV9i
dWZfZGVidWdfc2hvdyhzdHJ1Y3Qgc2VxCiAJCQkJICAgZmVuY2UtPm9wcy0+Z2V0X2RyaXZlcl9u
YW1lKGZlbmNlKSwKIAkJCQkgICBmZW5jZS0+b3BzLT5nZXRfdGltZWxpbmVfbmFtZShmZW5jZSks
CiAJCQkJICAgZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKGZlbmNlKSA/ICIiIDogInVuIik7CisJCQlk
bWFfZmVuY2VfcHV0KGZlbmNlKTsKIAkJfQogCQlyY3VfcmVhZF91bmxvY2soKTsKIAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3Rz
LmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F4371B6DC1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 08:02:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6BA56619CF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 06:02:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5EB31619EA; Fri, 24 Apr 2020 06:02:37 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 57FDA665DF;
	Fri, 24 Apr 2020 05:30:15 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A42B061999
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:14:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 986996604F; Tue, 14 Apr 2020 13:14:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id 88CDC61999
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:14:46 +0000 (UTC)
Received: from [2001:4bb8:180:384b:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLON-0006Yn-Hv; Tue, 14 Apr 2020 13:14:20 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>,
 "K. Y. Srinivasan" <kys@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Stephen Hemminger <sthemmin@microsoft.com>, Wei Liu <wei.liu@kernel.org>,
 x86@kernel.org, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Laura Abbott <labbott@redhat.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Minchan Kim <minchan@kernel.org>, Nitin Gupta <ngupta@vflare.org>
Date: Tue, 14 Apr 2020 15:13:27 +0200
Message-Id: <20200414131348.444715-9-hch@lst.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200414131348.444715-1-hch@lst.de>
References: <20200414131348.444715-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Fri, 24 Apr 2020 05:29:38 +0000
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, linux-arch@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-s390@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org, bpf@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH 08/29] mm: remove __get_vm_area
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

U3dpdGNoIHRoZSB0d28gcmVtYWluaW5nIGNhbGxlcnMgdG8gdXNlIF9fZ2V0X3ZtX2FyZWFfY2Fs
bGVyIGluc3RlYWQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxzdC5k
ZT4KQWNrZWQtYnk6IFBldGVyIFppamxzdHJhIChJbnRlbCkgPHBldGVyekBpbmZyYWRlYWQub3Jn
PgotLS0KIGFyY2gvcG93ZXJwYy9rZXJuZWwvcGNpXzY0LmMgfCAzICsrLQogYXJjaC9zaC9rZXJu
ZWwvY3B1L3NoNC9zcS5jICB8IDMgKystCiBpbmNsdWRlL2xpbnV4L3ZtYWxsb2MuaCAgICAgIHwg
MiAtLQogbW0vdm1hbGxvYy5jICAgICAgICAgICAgICAgICB8IDggLS0tLS0tLS0KIDQgZmlsZXMg
Y2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9h
cmNoL3Bvd2VycGMva2VybmVsL3BjaV82NC5jIGIvYXJjaC9wb3dlcnBjL2tlcm5lbC9wY2lfNjQu
YwppbmRleCAyYTk3NjMxNGYxNjkuLmQ5YWM5ODBjMzk4YyAxMDA2NDQKLS0tIGEvYXJjaC9wb3dl
cnBjL2tlcm5lbC9wY2lfNjQuYworKysgYi9hcmNoL3Bvd2VycGMva2VybmVsL3BjaV82NC5jCkBA
IC0xMzIsNyArMTMyLDggQEAgdm9pZCBfX2lvbWVtICppb3JlbWFwX3BoYihwaHlzX2FkZHJfdCBw
YWRkciwgdW5zaWduZWQgbG9uZyBzaXplKQogCSAqIGFkZHJlc3MgZGVjb2RpbmcgYnV0IEknZCBy
YXRoZXIgbm90IGRlYWwgd2l0aCB0aG9zZSBvdXRzaWRlIG9mIHRoZQogCSAqIHJlc2VydmVkIDY0
SyBsZWdhY3kgcmVnaW9uLgogCSAqLwotCWFyZWEgPSBfX2dldF92bV9hcmVhKHNpemUsIDAsIFBI
Ql9JT19CQVNFLCBQSEJfSU9fRU5EKTsKKwlhcmVhID0gX19nZXRfdm1fYXJlYV9jYWxsZXIoc2l6
ZSwgMCwgUEhCX0lPX0JBU0UsIFBIQl9JT19FTkQsCisJCQkJICAgIF9fYnVpbHRpbl9yZXR1cm5f
YWRkcmVzcygwKSk7CiAJaWYgKCFhcmVhKQogCQlyZXR1cm4gTlVMTDsKIApkaWZmIC0tZ2l0IGEv
YXJjaC9zaC9rZXJuZWwvY3B1L3NoNC9zcS5jIGIvYXJjaC9zaC9rZXJuZWwvY3B1L3NoNC9zcS5j
CmluZGV4IDkzNGZmODQ4NDRmYS4uZDQzMjE2NGIyM2I3IDEwMDY0NAotLS0gYS9hcmNoL3NoL2tl
cm5lbC9jcHUvc2g0L3NxLmMKKysrIGIvYXJjaC9zaC9rZXJuZWwvY3B1L3NoNC9zcS5jCkBAIC0x
MDMsNyArMTAzLDggQEAgc3RhdGljIGludCBfX3NxX3JlbWFwKHN0cnVjdCBzcV9tYXBwaW5nICpt
YXAsIHBncHJvdF90IHByb3QpCiAjaWYgZGVmaW5lZChDT05GSUdfTU1VKQogCXN0cnVjdCB2bV9z
dHJ1Y3QgKnZtYTsKIAotCXZtYSA9IF9fZ2V0X3ZtX2FyZWEobWFwLT5zaXplLCBWTV9BTExPQywg
bWFwLT5zcV9hZGRyLCBTUV9BRERSTUFYKTsKKwl2bWEgPSBfX2dldF92bV9hcmVhX2NhbGxlciht
YXAtPnNpemUsIFZNX0FMTE9DLCBtYXAtPnNxX2FkZHIsCisJCQlTUV9BRERSTUFYLCBfX2J1aWx0
aW5fcmV0dXJuX2FkZHJlc3MoMCkpOwogCWlmICghdm1hKQogCQlyZXR1cm4gLUVOT01FTTsKIApk
aWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC92bWFsbG9jLmggYi9pbmNsdWRlL2xpbnV4L3ZtYWxs
b2MuaAppbmRleCAwNTA3YTE2MmNjZDAuLjMwNzBiNGRiYzJkOSAxMDA2NDQKLS0tIGEvaW5jbHVk
ZS9saW51eC92bWFsbG9jLmgKKysrIGIvaW5jbHVkZS9saW51eC92bWFsbG9jLmgKQEAgLTE2MSw4
ICsxNjEsNiBAQCBzdGF0aWMgaW5saW5lIHNpemVfdCBnZXRfdm1fYXJlYV9zaXplKGNvbnN0IHN0
cnVjdCB2bV9zdHJ1Y3QgKmFyZWEpCiBleHRlcm4gc3RydWN0IHZtX3N0cnVjdCAqZ2V0X3ZtX2Fy
ZWEodW5zaWduZWQgbG9uZyBzaXplLCB1bnNpZ25lZCBsb25nIGZsYWdzKTsKIGV4dGVybiBzdHJ1
Y3Qgdm1fc3RydWN0ICpnZXRfdm1fYXJlYV9jYWxsZXIodW5zaWduZWQgbG9uZyBzaXplLAogCQkJ
CQl1bnNpZ25lZCBsb25nIGZsYWdzLCBjb25zdCB2b2lkICpjYWxsZXIpOwotZXh0ZXJuIHN0cnVj
dCB2bV9zdHJ1Y3QgKl9fZ2V0X3ZtX2FyZWEodW5zaWduZWQgbG9uZyBzaXplLCB1bnNpZ25lZCBs
b25nIGZsYWdzLAotCQkJCQl1bnNpZ25lZCBsb25nIHN0YXJ0LCB1bnNpZ25lZCBsb25nIGVuZCk7
CiBleHRlcm4gc3RydWN0IHZtX3N0cnVjdCAqX19nZXRfdm1fYXJlYV9jYWxsZXIodW5zaWduZWQg
bG9uZyBzaXplLAogCQkJCQl1bnNpZ25lZCBsb25nIGZsYWdzLAogCQkJCQl1bnNpZ25lZCBsb25n
IHN0YXJ0LCB1bnNpZ25lZCBsb25nIGVuZCwKZGlmZiAtLWdpdCBhL21tL3ZtYWxsb2MuYyBiL21t
L3ZtYWxsb2MuYwppbmRleCAzOTlmMjE5NTQ0ZjcuLmQxNTM0ZDYxMGI0OCAxMDA2NDQKLS0tIGEv
bW0vdm1hbGxvYy5jCisrKyBiL21tL3ZtYWxsb2MuYwpAQCAtMjEyNywxNCArMjEyNyw2IEBAIHN0
YXRpYyBzdHJ1Y3Qgdm1fc3RydWN0ICpfX2dldF92bV9hcmVhX25vZGUodW5zaWduZWQgbG9uZyBz
aXplLAogCXJldHVybiBhcmVhOwogfQogCi1zdHJ1Y3Qgdm1fc3RydWN0ICpfX2dldF92bV9hcmVh
KHVuc2lnbmVkIGxvbmcgc2l6ZSwgdW5zaWduZWQgbG9uZyBmbGFncywKLQkJCQl1bnNpZ25lZCBs
b25nIHN0YXJ0LCB1bnNpZ25lZCBsb25nIGVuZCkKLXsKLQlyZXR1cm4gX19nZXRfdm1fYXJlYV9u
b2RlKHNpemUsIDEsIGZsYWdzLCBzdGFydCwgZW5kLCBOVU1BX05PX05PREUsCi0JCQkJICBHRlBf
S0VSTkVMLCBfX2J1aWx0aW5fcmV0dXJuX2FkZHJlc3MoMCkpOwotfQotRVhQT1JUX1NZTUJPTF9H
UEwoX19nZXRfdm1fYXJlYSk7Ci0KIHN0cnVjdCB2bV9zdHJ1Y3QgKl9fZ2V0X3ZtX2FyZWFfY2Fs
bGVyKHVuc2lnbmVkIGxvbmcgc2l6ZSwgdW5zaWduZWQgbG9uZyBmbGFncywKIAkJCQkgICAgICAg
dW5zaWduZWQgbG9uZyBzdGFydCwgdW5zaWduZWQgbG9uZyBlbmQsCiAJCQkJICAgICAgIGNvbnN0
IHZvaWQgKmNhbGxlcikKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbmFyby1tbS1zaWcK

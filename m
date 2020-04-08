Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 25FDF1B6D73
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 07:48:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3F9E0619B7
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 05:48:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2E8AC619C4; Fri, 24 Apr 2020 05:48:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A6F9F66528;
	Fri, 24 Apr 2020 05:29:59 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 839EF66611
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:01:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 645E366626; Wed,  8 Apr 2020 12:01:18 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id 259E266627
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:01:13 +0000 (UTC)
Received: from [2001:4bb8:180:5765:65b6:f11e:f109:b151] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9Nz-0005ff-AR; Wed, 08 Apr 2020 12:00:51 +0000
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
Date: Wed,  8 Apr 2020 13:59:21 +0200
Message-Id: <20200408115926.1467567-24-hch@lst.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200408115926.1467567-1-hch@lst.de>
References: <20200408115926.1467567-1-hch@lst.de>
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
Subject: [Linaro-mm-sig] [PATCH 23/28] mm: remove __vmalloc_node_flags_caller
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

SnVzdCB1c2UgX192bWFsbG9jX25vZGUgaW5zdGVhZCB3aGljaCBnZXRzIGFuZCBleHRyYSBhcmd1
bWVudC4gIFRvIGJlCmFibGUgdG8gdG8gdXNlIF9fdm1hbGxvY19ub2RlIGluIGFsbCBjYWxsZXIg
bWFrZSBpdCBhdmFpbGFibGUgb3V0c2lkZQpvZiB2bWFsbG9jIGFuZCBpbXBsZW1lbnQgaXQgaW4g
bm9tbXUuYy4KClNpZ25lZC1vZmYtYnk6IENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPgot
LS0KIGluY2x1ZGUvbGludXgvdm1hbGxvYy5oIHwgIDQgKystLQoga2VybmVsL2JwZi9zeXNjYWxs
LmMgICAgfCAgNSArKy0tLQogbW0vbm9tbXUuYyAgICAgICAgICAgICAgfCAgNCArKy0tCiBtbS91
dGlsLmMgICAgICAgICAgICAgICB8ICAyICstCiBtbS92bWFsbG9jLmMgICAgICAgICAgICB8IDEw
ICstLS0tLS0tLS0KIDUgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAxNyBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L3ZtYWxsb2MuaCBiL2luY2x1ZGUvbGlu
dXgvdm1hbGxvYy5oCmluZGV4IDRhNDZkMjk2ZTcwZC4uMTA4ZjQ5YjQ3NzU2IDEwMDY0NAotLS0g
YS9pbmNsdWRlL2xpbnV4L3ZtYWxsb2MuaAorKysgYi9pbmNsdWRlL2xpbnV4L3ZtYWxsb2MuaApA
QCAtMTE1LDggKzExNSw4IEBAIGV4dGVybiB2b2lkICpfX3ZtYWxsb2Nfbm9kZV9yYW5nZSh1bnNp
Z25lZCBsb25nIHNpemUsIHVuc2lnbmVkIGxvbmcgYWxpZ24sCiAJCQl1bnNpZ25lZCBsb25nIHN0
YXJ0LCB1bnNpZ25lZCBsb25nIGVuZCwgZ2ZwX3QgZ2ZwX21hc2ssCiAJCQlwZ3Byb3RfdCBwcm90
LCB1bnNpZ25lZCBsb25nIHZtX2ZsYWdzLCBpbnQgbm9kZSwKIAkJCWNvbnN0IHZvaWQgKmNhbGxl
cik7Ci1leHRlcm4gdm9pZCAqX192bWFsbG9jX25vZGVfZmxhZ3NfY2FsbGVyKHVuc2lnbmVkIGxv
bmcgc2l6ZSwKLQkJCQkJIGludCBub2RlLCBnZnBfdCBmbGFncywgdm9pZCAqY2FsbGVyKTsKK3Zv
aWQgKl9fdm1hbGxvY19ub2RlKHVuc2lnbmVkIGxvbmcgc2l6ZSwgdW5zaWduZWQgbG9uZyBhbGln
biwgZ2ZwX3QgZ2ZwX21hc2ssCisJCWludCBub2RlLCBjb25zdCB2b2lkICpjYWxsZXIpOwogCiBl
eHRlcm4gdm9pZCB2ZnJlZShjb25zdCB2b2lkICphZGRyKTsKIGV4dGVybiB2b2lkIHZmcmVlX2F0
b21pYyhjb25zdCB2b2lkICphZGRyKTsKZGlmZiAtLWdpdCBhL2tlcm5lbC9icGYvc3lzY2FsbC5j
IGIva2VybmVsL2JwZi9zeXNjYWxsLmMKaW5kZXggNjQ3ODNkYTM0MjAyLi40OGQ5OGVhOGZhZDYg
MTAwNjQ0Ci0tLSBhL2tlcm5lbC9icGYvc3lzY2FsbC5jCisrKyBiL2tlcm5lbC9icGYvc3lzY2Fs
bC5jCkBAIC0yOTksOSArMjk5LDggQEAgc3RhdGljIHZvaWQgKl9fYnBmX21hcF9hcmVhX2FsbG9j
KHU2NCBzaXplLCBpbnQgbnVtYV9ub2RlLCBib29sIG1tYXBhYmxlKQogCQlyZXR1cm4gdm1hbGxv
Y191c2VyX25vZGVfZmxhZ3Moc2l6ZSwgbnVtYV9ub2RlLCBHRlBfS0VSTkVMIHwKIAkJCQkJICAg
ICAgIF9fR0ZQX1JFVFJZX01BWUZBSUwgfCBmbGFncyk7CiAJfQotCXJldHVybiBfX3ZtYWxsb2Nf
bm9kZV9mbGFnc19jYWxsZXIoc2l6ZSwgbnVtYV9ub2RlLAotCQkJCQkgICBHRlBfS0VSTkVMIHwg
X19HRlBfUkVUUllfTUFZRkFJTCB8Ci0JCQkJCSAgIGZsYWdzLCBfX2J1aWx0aW5fcmV0dXJuX2Fk
ZHJlc3MoMCkpOworCXJldHVybiBfX3ZtYWxsb2Nfbm9kZShzaXplLCAxLCBHRlBfS0VSTkVMIHwg
X19HRlBfUkVUUllfTUFZRkFJTCB8IGZsYWdzLAorCQkJICAgICAgbnVtYV9ub2RlLCBfX2J1aWx0
aW5fcmV0dXJuX2FkZHJlc3MoMCkpOwogfQogCiB2b2lkICpicGZfbWFwX2FyZWFfYWxsb2ModTY0
IHNpemUsIGludCBudW1hX25vZGUpCmRpZmYgLS1naXQgYS9tbS9ub21tdS5jIGIvbW0vbm9tbXUu
YwppbmRleCA5NTUzZWZhNTk3ODcuLjgxYTg2Y2Q4NTg5MyAxMDA2NDQKLS0tIGEvbW0vbm9tbXUu
YworKysgYi9tbS9ub21tdS5jCkBAIC0xNTAsOCArMTUwLDggQEAgdm9pZCAqX192bWFsbG9jKHVu
c2lnbmVkIGxvbmcgc2l6ZSwgZ2ZwX3QgZ2ZwX21hc2spCiB9CiBFWFBPUlRfU1lNQk9MKF9fdm1h
bGxvYyk7CiAKLXZvaWQgKl9fdm1hbGxvY19ub2RlX2ZsYWdzX2NhbGxlcih1bnNpZ25lZCBsb25n
IHNpemUsIGludCBub2RlLCBnZnBfdCBmbGFncywKLQkJdm9pZCAqY2FsbGVyKQordm9pZCAqX192
bWFsbG9jX25vZGUodW5zaWduZWQgbG9uZyBzaXplLCB1bnNpZ25lZCBsb25nIGFsaWduLCBnZnBf
dCBnZnBfbWFzaywKKwkJaW50IG5vZGUsIGNvbnN0IHZvaWQgKmNhbGxlcikKIHsKIAlyZXR1cm4g
X192bWFsbG9jKHNpemUsIGZsYWdzKTsKIH0KZGlmZiAtLWdpdCBhL21tL3V0aWwuYyBiL21tL3V0
aWwuYwppbmRleCA5ODhkMTFlNmMxN2MuLjZkNTg2OGFkYmUxOCAxMDA2NDQKLS0tIGEvbW0vdXRp
bC5jCisrKyBiL21tL3V0aWwuYwpAQCAtNTgwLDcgKzU4MCw3IEBAIHZvaWQgKmt2bWFsbG9jX25v
ZGUoc2l6ZV90IHNpemUsIGdmcF90IGZsYWdzLCBpbnQgbm9kZSkKIAlpZiAocmV0IHx8IHNpemUg
PD0gUEFHRV9TSVpFKQogCQlyZXR1cm4gcmV0OwogCi0JcmV0dXJuIF9fdm1hbGxvY19ub2RlX2Zs
YWdzX2NhbGxlcihzaXplLCBub2RlLCBmbGFncywKKwlyZXR1cm4gX192bWFsbG9jX25vZGUoc2l6
ZSwgMSwgZmxhZ3MsIG5vZGUsCiAJCQlfX2J1aWx0aW5fcmV0dXJuX2FkZHJlc3MoMCkpOwogfQog
RVhQT1JUX1NZTUJPTChrdm1hbGxvY19ub2RlKTsKZGlmZiAtLWdpdCBhL21tL3ZtYWxsb2MuYyBi
L21tL3ZtYWxsb2MuYwppbmRleCAzZDU5ZDg0OGFkNDguLmFlODI0OWVmNTgyMSAxMDA2NDQKLS0t
IGEvbW0vdm1hbGxvYy5jCisrKyBiL21tL3ZtYWxsb2MuYwpAQCAtMjQwMCw4ICsyNDAwLDYgQEAg
dm9pZCAqdm1hcChzdHJ1Y3QgcGFnZSAqKnBhZ2VzLCB1bnNpZ25lZCBpbnQgY291bnQsCiB9CiBF
WFBPUlRfU1lNQk9MKHZtYXApOwogCi1zdGF0aWMgdm9pZCAqX192bWFsbG9jX25vZGUodW5zaWdu
ZWQgbG9uZyBzaXplLCB1bnNpZ25lZCBsb25nIGFsaWduLAotCQkJICAgIGdmcF90IGdmcF9tYXNr
LCBpbnQgbm9kZSwgY29uc3Qgdm9pZCAqY2FsbGVyKTsKIHN0YXRpYyB2b2lkICpfX3ZtYWxsb2Nf
YXJlYV9ub2RlKHN0cnVjdCB2bV9zdHJ1Y3QgKmFyZWEsIGdmcF90IGdmcF9tYXNrLAogCQkJCSBw
Z3Byb3RfdCBwcm90LCBpbnQgbm9kZSkKIHsKQEAgLTI1NTIsNyArMjU1MCw3IEBAIEVYUE9SVF9T
WU1CT0xfR1BMKF9fdm1hbGxvY19ub2RlX3JhbmdlKTsKICAqCiAgKiBSZXR1cm46IHBvaW50ZXIg
dG8gdGhlIGFsbG9jYXRlZCBtZW1vcnkgb3IgJU5VTEwgb24gZXJyb3IKICAqLwotc3RhdGljIHZv
aWQgKl9fdm1hbGxvY19ub2RlKHVuc2lnbmVkIGxvbmcgc2l6ZSwgdW5zaWduZWQgbG9uZyBhbGln
biwKK3ZvaWQgKl9fdm1hbGxvY19ub2RlKHVuc2lnbmVkIGxvbmcgc2l6ZSwgdW5zaWduZWQgbG9u
ZyBhbGlnbiwKIAkJCSAgICBnZnBfdCBnZnBfbWFzaywgaW50IG5vZGUsIGNvbnN0IHZvaWQgKmNh
bGxlcikKIHsKIAlyZXR1cm4gX192bWFsbG9jX25vZGVfcmFuZ2Uoc2l6ZSwgYWxpZ24sIFZNQUxM
T0NfU1RBUlQsIFZNQUxMT0NfRU5ELApAQCAtMjU2NiwxMiArMjU2NCw2IEBAIHZvaWQgKl9fdm1h
bGxvYyh1bnNpZ25lZCBsb25nIHNpemUsIGdmcF90IGdmcF9tYXNrKQogfQogRVhQT1JUX1NZTUJP
TChfX3ZtYWxsb2MpOwogCi12b2lkICpfX3ZtYWxsb2Nfbm9kZV9mbGFnc19jYWxsZXIodW5zaWdu
ZWQgbG9uZyBzaXplLCBpbnQgbm9kZSwgZ2ZwX3QgZmxhZ3MsCi0JCQkJICB2b2lkICpjYWxsZXIp
Ci17Ci0JcmV0dXJuIF9fdm1hbGxvY19ub2RlKHNpemUsIDEsIGZsYWdzLCBub2RlLCBjYWxsZXIp
OwotfQotCiAvKioKICAqIHZtYWxsb2MgLSBhbGxvY2F0ZSB2aXJ0dWFsbHkgY29udGlndW91cyBt
ZW1vcnkKICAqIEBzaXplOiAgICBhbGxvY2F0aW9uIHNpemUKLS0gCjIuMjUuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGlu
YXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

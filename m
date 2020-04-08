Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E334D1B6D77
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 07:49:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0FC356199D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 05:49:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0257E619D7; Fri, 24 Apr 2020 05:49:53 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 91DA166054;
	Fri, 24 Apr 2020 05:30:01 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 85E8B66611
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:01:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 74E9066614; Wed,  8 Apr 2020 12:01:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id A00B366614
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:01:18 +0000 (UTC)
Received: from [2001:4bb8:180:5765:65b6:f11e:f109:b151] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9O5-0005mY-W5; Wed, 08 Apr 2020 12:00:58 +0000
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
Date: Wed,  8 Apr 2020 13:59:23 +0200
Message-Id: <20200408115926.1467567-26-hch@lst.de>
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
Subject: [Linaro-mm-sig] [PATCH 25/28] mm: remove vmalloc_user_node_flags
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

T3BlbiBjb2RlIGl0IGluIF9fYnBmX21hcF9hcmVhX2FsbG9jLCB3aGljaCBpcyB0aGUgb25seSBj
YWxsZXIuICBBbHNvCmNsZWFuIHVwIF9fYnBmX21hcF9hcmVhX2FsbG9jIHRvIGhhdmUgYSBzaW5n
bGUgdm1hbGxvYyBjYWxsIHdpdGgKc2xpZ2h0bHkgZGlmZmVyZW50IGZsYWdzIGluc3RlYWQgb2Yg
dGhlIGN1cnJlbnQgdHdvIGRpZmZlcmVudCBjYWxscy4KCkZvciB0aGlzIHRvIGNvbXBpbGUgZm9y
IHRoZSBub21tdSBjYXNlIGFkZCBhIF9fdm1hbGxvY19ub2RlX3JhbmdlIHN0dWIKdG8gbm9tbXUu
Yy4KClNpZ25lZC1vZmYtYnk6IENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPgotLS0KIGlu
Y2x1ZGUvbGludXgvdm1hbGxvYy5oIHwgIDEgLQoga2VybmVsL2JwZi9zeXNjYWxsLmMgICAgfCAy
MyArKysrKysrKysrKysrLS0tLS0tLS0tLQogbW0vbm9tbXUuYyAgICAgICAgICAgICAgfCAxNCAr
KysrKysrKy0tLS0tLQogbW0vdm1hbGxvYy5jICAgICAgICAgICAgfCAyMCAtLS0tLS0tLS0tLS0t
LS0tLS0tLQogNCBmaWxlcyBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspLCAzNyBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L3ZtYWxsb2MuaCBiL2luY2x1ZGUvbGludXgv
dm1hbGxvYy5oCmluZGV4IDEwOGY0OWI0Nzc1Ni4uZjkwZjI5NDZhYWMyIDEwMDY0NAotLS0gYS9p
bmNsdWRlL2xpbnV4L3ZtYWxsb2MuaAorKysgYi9pbmNsdWRlL2xpbnV4L3ZtYWxsb2MuaApAQCAt
MTA2LDcgKzEwNiw2IEBAIGV4dGVybiB2b2lkICp2emFsbG9jKHVuc2lnbmVkIGxvbmcgc2l6ZSk7
CiBleHRlcm4gdm9pZCAqdm1hbGxvY191c2VyKHVuc2lnbmVkIGxvbmcgc2l6ZSk7CiBleHRlcm4g
dm9pZCAqdm1hbGxvY19ub2RlKHVuc2lnbmVkIGxvbmcgc2l6ZSwgaW50IG5vZGUpOwogZXh0ZXJu
IHZvaWQgKnZ6YWxsb2Nfbm9kZSh1bnNpZ25lZCBsb25nIHNpemUsIGludCBub2RlKTsKLWV4dGVy
biB2b2lkICp2bWFsbG9jX3VzZXJfbm9kZV9mbGFncyh1bnNpZ25lZCBsb25nIHNpemUsIGludCBu
b2RlLCBnZnBfdCBmbGFncyk7CiBleHRlcm4gdm9pZCAqdm1hbGxvY19leGVjKHVuc2lnbmVkIGxv
bmcgc2l6ZSk7CiBleHRlcm4gdm9pZCAqdm1hbGxvY18zMih1bnNpZ25lZCBsb25nIHNpemUpOwog
ZXh0ZXJuIHZvaWQgKnZtYWxsb2NfMzJfdXNlcih1bnNpZ25lZCBsb25nIHNpemUpOwpkaWZmIC0t
Z2l0IGEva2VybmVsL2JwZi9zeXNjYWxsLmMgYi9rZXJuZWwvYnBmL3N5c2NhbGwuYwppbmRleCA0
OGQ5OGVhOGZhZDYuLjI0OWQ5YmQ0MzMyMSAxMDA2NDQKLS0tIGEva2VybmVsL2JwZi9zeXNjYWxs
LmMKKysrIGIva2VybmVsL2JwZi9zeXNjYWxsLmMKQEAgLTI4MSwyNiArMjgxLDI5IEBAIHN0YXRp
YyB2b2lkICpfX2JwZl9tYXBfYXJlYV9hbGxvYyh1NjQgc2l6ZSwgaW50IG51bWFfbm9kZSwgYm9v
bCBtbWFwYWJsZSkKIAkgKiBfX0dGUF9SRVRSWV9NQVlGQUlMIHRvIGF2b2lkIHN1Y2ggc2l0dWF0
aW9ucy4KIAkgKi8KIAotCWNvbnN0IGdmcF90IGZsYWdzID0gX19HRlBfTk9XQVJOIHwgX19HRlBf
WkVSTzsKKwljb25zdCBnZnBfdCBnZnAgPSBfX0dGUF9OT1dBUk4gfCBfX0dGUF9aRVJPOworCXVu
c2lnbmVkIGludCBmbGFncyA9IDA7CisJdW5zaWduZWQgbG9uZyBhbGlnbiA9IDE7CiAJdm9pZCAq
YXJlYTsKIAogCWlmIChzaXplID49IFNJWkVfTUFYKQogCQlyZXR1cm4gTlVMTDsKIAogCS8qIGtt
YWxsb2MoKSdlZCBtZW1vcnkgY2FuJ3QgYmUgbW1hcCgpJ2VkICovCi0JaWYgKCFtbWFwYWJsZSAm
JiBzaXplIDw9IChQQUdFX1NJWkUgPDwgUEFHRV9BTExPQ19DT1NUTFlfT1JERVIpKSB7Ci0JCWFy
ZWEgPSBrbWFsbG9jX25vZGUoc2l6ZSwgR0ZQX1VTRVIgfCBfX0dGUF9OT1JFVFJZIHwgZmxhZ3Ms
CisJaWYgKG1tYXBhYmxlKSB7CisJCUJVR19PTighUEFHRV9BTElHTkVEKHNpemUpKTsKKwkJYWxp
Z24gPSBTSE1MQkE7CisJCWZsYWdzID0gVk1fVVNFUk1BUDsKKwl9IGVsc2UgaWYgKHNpemUgPD0g
KFBBR0VfU0laRSA8PCBQQUdFX0FMTE9DX0NPU1RMWV9PUkRFUikpIHsKKwkJYXJlYSA9IGttYWxs
b2Nfbm9kZShzaXplLCBnZnAgfCBHRlBfVVNFUiB8IF9fR0ZQX05PUkVUUlksCiAJCQkJICAgIG51
bWFfbm9kZSk7CiAJCWlmIChhcmVhICE9IE5VTEwpCiAJCQlyZXR1cm4gYXJlYTsKIAl9Ci0JaWYg
KG1tYXBhYmxlKSB7Ci0JCUJVR19PTighUEFHRV9BTElHTkVEKHNpemUpKTsKLQkJcmV0dXJuIHZt
YWxsb2NfdXNlcl9ub2RlX2ZsYWdzKHNpemUsIG51bWFfbm9kZSwgR0ZQX0tFUk5FTCB8Ci0JCQkJ
CSAgICAgICBfX0dGUF9SRVRSWV9NQVlGQUlMIHwgZmxhZ3MpOwotCX0KLQlyZXR1cm4gX192bWFs
bG9jX25vZGUoc2l6ZSwgMSwgR0ZQX0tFUk5FTCB8IF9fR0ZQX1JFVFJZX01BWUZBSUwgfCBmbGFn
cywKLQkJCSAgICAgIG51bWFfbm9kZSwgX19idWlsdGluX3JldHVybl9hZGRyZXNzKDApKTsKKwor
CXJldHVybiBfX3ZtYWxsb2Nfbm9kZV9yYW5nZShzaXplLCBhbGlnbiwgVk1BTExPQ19TVEFSVCwg
Vk1BTExPQ19FTkQsCisJCQlnZnAgfCBHRlBfS0VSTkVMIHwgX19HRlBfUkVUUllfTUFZRkFJTCwg
UEFHRV9LRVJORUwsCisJCQlmbGFncywgbnVtYV9ub2RlLCBfX2J1aWx0aW5fcmV0dXJuX2FkZHJl
c3MoMCkpOwogfQogCiB2b2lkICpicGZfbWFwX2FyZWFfYWxsb2ModTY0IHNpemUsIGludCBudW1h
X25vZGUpCmRpZmYgLS1naXQgYS9tbS9ub21tdS5jIGIvbW0vbm9tbXUuYwppbmRleCA4MWE4NmNk
ODU4OTMuLmI0MmNkNjAwM2Q3ZCAxMDA2NDQKLS0tIGEvbW0vbm9tbXUuYworKysgYi9tbS9ub21t
dS5jCkBAIC0xNTAsNiArMTUwLDE0IEBAIHZvaWQgKl9fdm1hbGxvYyh1bnNpZ25lZCBsb25nIHNp
emUsIGdmcF90IGdmcF9tYXNrKQogfQogRVhQT1JUX1NZTUJPTChfX3ZtYWxsb2MpOwogCit2b2lk
ICpfX3ZtYWxsb2Nfbm9kZV9yYW5nZSh1bnNpZ25lZCBsb25nIHNpemUsIHVuc2lnbmVkIGxvbmcg
YWxpZ24sCisJCXVuc2lnbmVkIGxvbmcgc3RhcnQsIHVuc2lnbmVkIGxvbmcgZW5kLCBnZnBfdCBn
ZnBfbWFzaywKKwkJcGdwcm90X3QgcHJvdCwgdW5zaWduZWQgbG9uZyB2bV9mbGFncywgaW50IG5v
ZGUsCisJCWNvbnN0IHZvaWQgKmNhbGxlcikKK3sKKwlyZXR1cm4gX192bWFsbG9jKHNpemUsIGZs
YWdzKTsKK30KKwogdm9pZCAqX192bWFsbG9jX25vZGUodW5zaWduZWQgbG9uZyBzaXplLCB1bnNp
Z25lZCBsb25nIGFsaWduLCBnZnBfdCBnZnBfbWFzaywKIAkJaW50IG5vZGUsIGNvbnN0IHZvaWQg
KmNhbGxlcikKIHsKQEAgLTE4MCwxMiArMTg4LDYgQEAgdm9pZCAqdm1hbGxvY191c2VyKHVuc2ln
bmVkIGxvbmcgc2l6ZSkKIH0KIEVYUE9SVF9TWU1CT0wodm1hbGxvY191c2VyKTsKIAotdm9pZCAq
dm1hbGxvY191c2VyX25vZGVfZmxhZ3ModW5zaWduZWQgbG9uZyBzaXplLCBpbnQgbm9kZSwgZ2Zw
X3QgZmxhZ3MpCi17Ci0JcmV0dXJuIF9fdm1hbGxvY191c2VyX2ZsYWdzKHNpemUsIGZsYWdzIHwg
X19HRlBfWkVSTyk7Ci19Ci1FWFBPUlRfU1lNQk9MKHZtYWxsb2NfdXNlcl9ub2RlX2ZsYWdzKTsK
LQogc3RydWN0IHBhZ2UgKnZtYWxsb2NfdG9fcGFnZShjb25zdCB2b2lkICphZGRyKQogewogCXJl
dHVybiB2aXJ0X3RvX3BhZ2UoYWRkcik7CmRpZmYgLS1naXQgYS9tbS92bWFsbG9jLmMgYi9tbS92
bWFsbG9jLmMKaW5kZXggMzMzZmJlNzcyNTVhLi5mNmYyYWNkYWY3MGMgMTAwNjQ0Ci0tLSBhL21t
L3ZtYWxsb2MuYworKysgYi9tbS92bWFsbG9jLmMKQEAgLTI2NTgsMjYgKzI2NTgsNiBAQCB2b2lk
ICp2emFsbG9jX25vZGUodW5zaWduZWQgbG9uZyBzaXplLCBpbnQgbm9kZSkKIH0KIEVYUE9SVF9T
WU1CT0wodnphbGxvY19ub2RlKTsKIAotLyoqCi0gKiB2bWFsbG9jX3VzZXJfbm9kZV9mbGFncyAt
IGFsbG9jYXRlIG1lbW9yeSBmb3IgdXNlcnNwYWNlIG9uIGEgc3BlY2lmaWMgbm9kZQotICogQHNp
emU6IGFsbG9jYXRpb24gc2l6ZQotICogQG5vZGU6IG51bWEgbm9kZQotICogQGZsYWdzOiBmbGFn
cyBmb3IgdGhlIHBhZ2UgbGV2ZWwgYWxsb2NhdG9yCi0gKgotICogVGhlIHJlc3VsdGluZyBtZW1v
cnkgYXJlYSBpcyB6ZXJvZWQgc28gaXQgY2FuIGJlIG1hcHBlZCB0byB1c2Vyc3BhY2UKLSAqIHdp
dGhvdXQgbGVha2luZyBkYXRhLgotICoKLSAqIFJldHVybjogcG9pbnRlciB0byB0aGUgYWxsb2Nh
dGVkIG1lbW9yeSBvciAlTlVMTCBvbiBlcnJvcgotICovCi12b2lkICp2bWFsbG9jX3VzZXJfbm9k
ZV9mbGFncyh1bnNpZ25lZCBsb25nIHNpemUsIGludCBub2RlLCBnZnBfdCBmbGFncykKLXsKLQly
ZXR1cm4gX192bWFsbG9jX25vZGVfcmFuZ2Uoc2l6ZSwgU0hNTEJBLCAgVk1BTExPQ19TVEFSVCwg
Vk1BTExPQ19FTkQsCi0JCQkJICAgIGZsYWdzIHwgX19HRlBfWkVSTywgUEFHRV9LRVJORUwsCi0J
CQkJICAgIFZNX1VTRVJNQVAsIG5vZGUsCi0JCQkJICAgIF9fYnVpbHRpbl9yZXR1cm5fYWRkcmVz
cygwKSk7Ci19Ci1FWFBPUlRfU1lNQk9MKHZtYWxsb2NfdXNlcl9ub2RlX2ZsYWdzKTsKLQogLyoq
CiAgKiB2bWFsbG9jX2V4ZWMgLSBhbGxvY2F0ZSB2aXJ0dWFsbHkgY29udGlndW91cywgZXhlY3V0
YWJsZSBtZW1vcnkKICAqIEBzaXplOgkgIGFsbG9jYXRpb24gc2l6ZQotLSAKMi4yNS4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0
cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

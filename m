Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id F14CC1B6E05
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 08:19:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1AD6C619C1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 06:19:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0BF0C619C4; Fri, 24 Apr 2020 06:19:11 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0E96F666F4;
	Fri, 24 Apr 2020 05:30:30 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CC36166047
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:15:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C148E6604B; Tue, 14 Apr 2020 13:15:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id 6814B6605A
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:15:32 +0000 (UTC)
Received: from [2001:4bb8:180:384b:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLPG-0000Nu-Up; Tue, 14 Apr 2020 13:15:15 +0000
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
Date: Tue, 14 Apr 2020 15:13:43 +0200
Message-Id: <20200414131348.444715-25-hch@lst.de>
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
Subject: [Linaro-mm-sig] [PATCH 24/29] mm: remove __vmalloc_node_flags_caller
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
bm9tbXUuYy4KClNpZ25lZC1vZmYtYnk6IENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPgpB
Y2tlZC1ieTogUGV0ZXIgWmlqbHN0cmEgKEludGVsKSA8cGV0ZXJ6QGluZnJhZGVhZC5vcmc+Ci0t
LQogaW5jbHVkZS9saW51eC92bWFsbG9jLmggfCAgNCArKy0tCiBrZXJuZWwvYnBmL3N5c2NhbGwu
YyAgICB8ICA1ICsrLS0tCiBtbS9ub21tdS5jICAgICAgICAgICAgICB8ICA0ICsrLS0KIG1tL3V0
aWwuYyAgICAgICAgICAgICAgIHwgIDIgKy0KIG1tL3ZtYWxsb2MuYyAgICAgICAgICAgIHwgMTAg
Ky0tLS0tLS0tLQogNSBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDE3IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvdm1hbGxvYy5oIGIvaW5jbHVkZS9saW51
eC92bWFsbG9jLmgKaW5kZXggNGE0NmQyOTZlNzBkLi4xMDhmNDliNDc3NTYgMTAwNjQ0Ci0tLSBh
L2luY2x1ZGUvbGludXgvdm1hbGxvYy5oCisrKyBiL2luY2x1ZGUvbGludXgvdm1hbGxvYy5oCkBA
IC0xMTUsOCArMTE1LDggQEAgZXh0ZXJuIHZvaWQgKl9fdm1hbGxvY19ub2RlX3JhbmdlKHVuc2ln
bmVkIGxvbmcgc2l6ZSwgdW5zaWduZWQgbG9uZyBhbGlnbiwKIAkJCXVuc2lnbmVkIGxvbmcgc3Rh
cnQsIHVuc2lnbmVkIGxvbmcgZW5kLCBnZnBfdCBnZnBfbWFzaywKIAkJCXBncHJvdF90IHByb3Qs
IHVuc2lnbmVkIGxvbmcgdm1fZmxhZ3MsIGludCBub2RlLAogCQkJY29uc3Qgdm9pZCAqY2FsbGVy
KTsKLWV4dGVybiB2b2lkICpfX3ZtYWxsb2Nfbm9kZV9mbGFnc19jYWxsZXIodW5zaWduZWQgbG9u
ZyBzaXplLAotCQkJCQkgaW50IG5vZGUsIGdmcF90IGZsYWdzLCB2b2lkICpjYWxsZXIpOwordm9p
ZCAqX192bWFsbG9jX25vZGUodW5zaWduZWQgbG9uZyBzaXplLCB1bnNpZ25lZCBsb25nIGFsaWdu
LCBnZnBfdCBnZnBfbWFzaywKKwkJaW50IG5vZGUsIGNvbnN0IHZvaWQgKmNhbGxlcik7CiAKIGV4
dGVybiB2b2lkIHZmcmVlKGNvbnN0IHZvaWQgKmFkZHIpOwogZXh0ZXJuIHZvaWQgdmZyZWVfYXRv
bWljKGNvbnN0IHZvaWQgKmFkZHIpOwpkaWZmIC0tZ2l0IGEva2VybmVsL2JwZi9zeXNjYWxsLmMg
Yi9rZXJuZWwvYnBmL3N5c2NhbGwuYwppbmRleCA2NDc4M2RhMzQyMDIuLjQ4ZDk4ZWE4ZmFkNiAx
MDA2NDQKLS0tIGEva2VybmVsL2JwZi9zeXNjYWxsLmMKKysrIGIva2VybmVsL2JwZi9zeXNjYWxs
LmMKQEAgLTI5OSw5ICsyOTksOCBAQCBzdGF0aWMgdm9pZCAqX19icGZfbWFwX2FyZWFfYWxsb2Mo
dTY0IHNpemUsIGludCBudW1hX25vZGUsIGJvb2wgbW1hcGFibGUpCiAJCXJldHVybiB2bWFsbG9j
X3VzZXJfbm9kZV9mbGFncyhzaXplLCBudW1hX25vZGUsIEdGUF9LRVJORUwgfAogCQkJCQkgICAg
ICAgX19HRlBfUkVUUllfTUFZRkFJTCB8IGZsYWdzKTsKIAl9Ci0JcmV0dXJuIF9fdm1hbGxvY19u
b2RlX2ZsYWdzX2NhbGxlcihzaXplLCBudW1hX25vZGUsCi0JCQkJCSAgIEdGUF9LRVJORUwgfCBf
X0dGUF9SRVRSWV9NQVlGQUlMIHwKLQkJCQkJICAgZmxhZ3MsIF9fYnVpbHRpbl9yZXR1cm5fYWRk
cmVzcygwKSk7CisJcmV0dXJuIF9fdm1hbGxvY19ub2RlKHNpemUsIDEsIEdGUF9LRVJORUwgfCBf
X0dGUF9SRVRSWV9NQVlGQUlMIHwgZmxhZ3MsCisJCQkgICAgICBudW1hX25vZGUsIF9fYnVpbHRp
bl9yZXR1cm5fYWRkcmVzcygwKSk7CiB9CiAKIHZvaWQgKmJwZl9tYXBfYXJlYV9hbGxvYyh1NjQg
c2l6ZSwgaW50IG51bWFfbm9kZSkKZGlmZiAtLWdpdCBhL21tL25vbW11LmMgYi9tbS9ub21tdS5j
CmluZGV4IDk1NTNlZmE1OTc4Ny4uODFhODZjZDg1ODkzIDEwMDY0NAotLS0gYS9tbS9ub21tdS5j
CisrKyBiL21tL25vbW11LmMKQEAgLTE1MCw4ICsxNTAsOCBAQCB2b2lkICpfX3ZtYWxsb2ModW5z
aWduZWQgbG9uZyBzaXplLCBnZnBfdCBnZnBfbWFzaykKIH0KIEVYUE9SVF9TWU1CT0woX192bWFs
bG9jKTsKIAotdm9pZCAqX192bWFsbG9jX25vZGVfZmxhZ3NfY2FsbGVyKHVuc2lnbmVkIGxvbmcg
c2l6ZSwgaW50IG5vZGUsIGdmcF90IGZsYWdzLAotCQl2b2lkICpjYWxsZXIpCit2b2lkICpfX3Zt
YWxsb2Nfbm9kZSh1bnNpZ25lZCBsb25nIHNpemUsIHVuc2lnbmVkIGxvbmcgYWxpZ24sIGdmcF90
IGdmcF9tYXNrLAorCQlpbnQgbm9kZSwgY29uc3Qgdm9pZCAqY2FsbGVyKQogewogCXJldHVybiBf
X3ZtYWxsb2Moc2l6ZSwgZmxhZ3MpOwogfQpkaWZmIC0tZ2l0IGEvbW0vdXRpbC5jIGIvbW0vdXRp
bC5jCmluZGV4IDk4OGQxMWU2YzE3Yy4uNmQ1ODY4YWRiZTE4IDEwMDY0NAotLS0gYS9tbS91dGls
LmMKKysrIGIvbW0vdXRpbC5jCkBAIC01ODAsNyArNTgwLDcgQEAgdm9pZCAqa3ZtYWxsb2Nfbm9k
ZShzaXplX3Qgc2l6ZSwgZ2ZwX3QgZmxhZ3MsIGludCBub2RlKQogCWlmIChyZXQgfHwgc2l6ZSA8
PSBQQUdFX1NJWkUpCiAJCXJldHVybiByZXQ7CiAKLQlyZXR1cm4gX192bWFsbG9jX25vZGVfZmxh
Z3NfY2FsbGVyKHNpemUsIG5vZGUsIGZsYWdzLAorCXJldHVybiBfX3ZtYWxsb2Nfbm9kZShzaXpl
LCAxLCBmbGFncywgbm9kZSwKIAkJCV9fYnVpbHRpbl9yZXR1cm5fYWRkcmVzcygwKSk7CiB9CiBF
WFBPUlRfU1lNQk9MKGt2bWFsbG9jX25vZGUpOwpkaWZmIC0tZ2l0IGEvbW0vdm1hbGxvYy5jIGIv
bW0vdm1hbGxvYy5jCmluZGV4IDNkNTlkODQ4YWQ0OC4uYWU4MjQ5ZWY1ODIxIDEwMDY0NAotLS0g
YS9tbS92bWFsbG9jLmMKKysrIGIvbW0vdm1hbGxvYy5jCkBAIC0yNDAwLDggKzI0MDAsNiBAQCB2
b2lkICp2bWFwKHN0cnVjdCBwYWdlICoqcGFnZXMsIHVuc2lnbmVkIGludCBjb3VudCwKIH0KIEVY
UE9SVF9TWU1CT0wodm1hcCk7CiAKLXN0YXRpYyB2b2lkICpfX3ZtYWxsb2Nfbm9kZSh1bnNpZ25l
ZCBsb25nIHNpemUsIHVuc2lnbmVkIGxvbmcgYWxpZ24sCi0JCQkgICAgZ2ZwX3QgZ2ZwX21hc2ss
IGludCBub2RlLCBjb25zdCB2b2lkICpjYWxsZXIpOwogc3RhdGljIHZvaWQgKl9fdm1hbGxvY19h
cmVhX25vZGUoc3RydWN0IHZtX3N0cnVjdCAqYXJlYSwgZ2ZwX3QgZ2ZwX21hc2ssCiAJCQkJIHBn
cHJvdF90IHByb3QsIGludCBub2RlKQogewpAQCAtMjU1Miw3ICsyNTUwLDcgQEAgRVhQT1JUX1NZ
TUJPTF9HUEwoX192bWFsbG9jX25vZGVfcmFuZ2UpOwogICoKICAqIFJldHVybjogcG9pbnRlciB0
byB0aGUgYWxsb2NhdGVkIG1lbW9yeSBvciAlTlVMTCBvbiBlcnJvcgogICovCi1zdGF0aWMgdm9p
ZCAqX192bWFsbG9jX25vZGUodW5zaWduZWQgbG9uZyBzaXplLCB1bnNpZ25lZCBsb25nIGFsaWdu
LAordm9pZCAqX192bWFsbG9jX25vZGUodW5zaWduZWQgbG9uZyBzaXplLCB1bnNpZ25lZCBsb25n
IGFsaWduLAogCQkJICAgIGdmcF90IGdmcF9tYXNrLCBpbnQgbm9kZSwgY29uc3Qgdm9pZCAqY2Fs
bGVyKQogewogCXJldHVybiBfX3ZtYWxsb2Nfbm9kZV9yYW5nZShzaXplLCBhbGlnbiwgVk1BTExP
Q19TVEFSVCwgVk1BTExPQ19FTkQsCkBAIC0yNTY2LDEyICsyNTY0LDYgQEAgdm9pZCAqX192bWFs
bG9jKHVuc2lnbmVkIGxvbmcgc2l6ZSwgZ2ZwX3QgZ2ZwX21hc2spCiB9CiBFWFBPUlRfU1lNQk9M
KF9fdm1hbGxvYyk7CiAKLXZvaWQgKl9fdm1hbGxvY19ub2RlX2ZsYWdzX2NhbGxlcih1bnNpZ25l
ZCBsb25nIHNpemUsIGludCBub2RlLCBnZnBfdCBmbGFncywKLQkJCQkgIHZvaWQgKmNhbGxlcikK
LXsKLQlyZXR1cm4gX192bWFsbG9jX25vZGUoc2l6ZSwgMSwgZmxhZ3MsIG5vZGUsIGNhbGxlcik7
Ci19Ci0KIC8qKgogICogdm1hbGxvYyAtIGFsbG9jYXRlIHZpcnR1YWxseSBjb250aWd1b3VzIG1l
bW9yeQogICogQHNpemU6ICAgIGFsbG9jYXRpb24gc2l6ZQotLSAKMi4yNS4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5h
cm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

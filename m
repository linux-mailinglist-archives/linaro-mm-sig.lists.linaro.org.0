Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A7D1B6D75
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 07:49:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4E441619C4
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 05:49:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3F8BA619D6; Fri, 24 Apr 2020 05:49:04 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 631656652F;
	Fri, 24 Apr 2020 05:30:00 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5E025665FF
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:01:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4FC9D66611; Wed,  8 Apr 2020 12:01:18 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id 591C166614
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:01:10 +0000 (UTC)
Received: from [2001:4bb8:180:5765:65b6:f11e:f109:b151] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9Nt-0005Yi-9h; Wed, 08 Apr 2020 12:00:45 +0000
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
Date: Wed,  8 Apr 2020 13:59:19 +0200
Message-Id: <20200408115926.1467567-22-hch@lst.de>
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
Subject: [Linaro-mm-sig] [PATCH 21/28] mm: remove the prot argument to
	__vmalloc_node
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

VGhpcyBpcyBhbHdheXMgUEFHRV9LRVJORUwgbm93LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0b3Bo
IEhlbGx3aWcgPGhjaEBsc3QuZGU+Ci0tLQogbW0vdm1hbGxvYy5jIHwgMzUgKysrKysrKysrKysr
KystLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCsp
LCAyMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9tbS92bWFsbG9jLmMgYi9tbS92bWFsbG9j
LmMKaW5kZXggNDY2YTQ0OWIzYTE1Li5kZTc5NTI5NTllODIgMTAwNjQ0Ci0tLSBhL21tL3ZtYWxs
b2MuYworKysgYi9tbS92bWFsbG9jLmMKQEAgLTI0MDEsOCArMjQwMSw3IEBAIHZvaWQgKnZtYXAo
c3RydWN0IHBhZ2UgKipwYWdlcywgdW5zaWduZWQgaW50IGNvdW50LAogRVhQT1JUX1NZTUJPTCh2
bWFwKTsKIAogc3RhdGljIHZvaWQgKl9fdm1hbGxvY19ub2RlKHVuc2lnbmVkIGxvbmcgc2l6ZSwg
dW5zaWduZWQgbG9uZyBhbGlnbiwKLQkJCSAgICBnZnBfdCBnZnBfbWFzaywgcGdwcm90X3QgcHJv
dCwKLQkJCSAgICBpbnQgbm9kZSwgY29uc3Qgdm9pZCAqY2FsbGVyKTsKKwkJCSAgICBnZnBfdCBn
ZnBfbWFzaywgaW50IG5vZGUsIGNvbnN0IHZvaWQgKmNhbGxlcik7CiBzdGF0aWMgdm9pZCAqX192
bWFsbG9jX2FyZWFfbm9kZShzdHJ1Y3Qgdm1fc3RydWN0ICphcmVhLCBnZnBfdCBnZnBfbWFzaywK
IAkJCQkgcGdwcm90X3QgcHJvdCwgaW50IG5vZGUpCiB7CkBAIC0yNDIwLDcgKzI0MTksNyBAQCBz
dGF0aWMgdm9pZCAqX192bWFsbG9jX2FyZWFfbm9kZShzdHJ1Y3Qgdm1fc3RydWN0ICphcmVhLCBn
ZnBfdCBnZnBfbWFzaywKIAkvKiBQbGVhc2Ugbm90ZSB0aGF0IHRoZSByZWN1cnNpb24gaXMgc3Ry
aWN0bHkgYm91bmRlZC4gKi8KIAlpZiAoYXJyYXlfc2l6ZSA+IFBBR0VfU0laRSkgewogCQlwYWdl
cyA9IF9fdm1hbGxvY19ub2RlKGFycmF5X3NpemUsIDEsIG5lc3RlZF9nZnB8aGlnaG1lbV9tYXNr
LAotCQkJCVBBR0VfS0VSTkVMLCBub2RlLCBhcmVhLT5jYWxsZXIpOworCQkJCW5vZGUsIGFyZWEt
PmNhbGxlcik7CiAJfSBlbHNlIHsKIAkJcGFnZXMgPSBrbWFsbG9jX25vZGUoYXJyYXlfc2l6ZSwg
bmVzdGVkX2dmcCwgbm9kZSk7CiAJfQpAQCAtMjUzOSwxMyArMjUzOCwxMSBAQCBFWFBPUlRfU1lN
Qk9MX0dQTChfX3ZtYWxsb2Nfbm9kZV9yYW5nZSk7CiAgKiBAc2l6ZToJICAgIGFsbG9jYXRpb24g
c2l6ZQogICogQGFsaWduOgkgICAgZGVzaXJlZCBhbGlnbm1lbnQKICAqIEBnZnBfbWFzazoJICAg
IGZsYWdzIGZvciB0aGUgcGFnZSBsZXZlbCBhbGxvY2F0b3IKLSAqIEBwcm90OgkgICAgcHJvdGVj
dGlvbiBtYXNrIGZvciB0aGUgYWxsb2NhdGVkIHBhZ2VzCiAgKiBAbm9kZToJICAgIG5vZGUgdG8g
dXNlIGZvciBhbGxvY2F0aW9uIG9yIE5VTUFfTk9fTk9ERQogICogQGNhbGxlcjoJICAgIGNhbGxl
cidzIHJldHVybiBhZGRyZXNzCiAgKgotICogQWxsb2NhdGUgZW5vdWdoIHBhZ2VzIHRvIGNvdmVy
IEBzaXplIGZyb20gdGhlIHBhZ2UgbGV2ZWwKLSAqIGFsbG9jYXRvciB3aXRoIEBnZnBfbWFzayBm
bGFncy4gIE1hcCB0aGVtIGludG8gY29udGlndW91cwotICoga2VybmVsIHZpcnR1YWwgc3BhY2Us
IHVzaW5nIGEgcGFnZXRhYmxlIHByb3RlY3Rpb24gb2YgQHByb3QuCisgKiBBbGxvY2F0ZSBlbm91
Z2ggcGFnZXMgdG8gY292ZXIgQHNpemUgZnJvbSB0aGUgcGFnZSBsZXZlbCBhbGxvY2F0b3Igd2l0
aAorICogQGdmcF9tYXNrIGZsYWdzLiAgTWFwIHRoZW0gaW50byBjb250aWd1b3VzIGtlcm5lbCB2
aXJ0dWFsIHNwYWNlLgogICoKICAqIFJlY2xhaW0gbW9kaWZpZXJzIGluIEBnZnBfbWFzayAtIF9f
R0ZQX05PUkVUUlksIF9fR0ZQX1JFVFJZX01BWUZBSUwKICAqIGFuZCBfX0dGUF9OT0ZBSUwgYXJl
IG5vdCBzdXBwb3J0ZWQKQEAgLTI1NTYsMTYgKzI1NTMsMTUgQEAgRVhQT1JUX1NZTUJPTF9HUEwo
X192bWFsbG9jX25vZGVfcmFuZ2UpOwogICogUmV0dXJuOiBwb2ludGVyIHRvIHRoZSBhbGxvY2F0
ZWQgbWVtb3J5IG9yICVOVUxMIG9uIGVycm9yCiAgKi8KIHN0YXRpYyB2b2lkICpfX3ZtYWxsb2Nf
bm9kZSh1bnNpZ25lZCBsb25nIHNpemUsIHVuc2lnbmVkIGxvbmcgYWxpZ24sCi0JCQkgICAgZ2Zw
X3QgZ2ZwX21hc2ssIHBncHJvdF90IHByb3QsCi0JCQkgICAgaW50IG5vZGUsIGNvbnN0IHZvaWQg
KmNhbGxlcikKKwkJCSAgICBnZnBfdCBnZnBfbWFzaywgaW50IG5vZGUsIGNvbnN0IHZvaWQgKmNh
bGxlcikKIHsKIAlyZXR1cm4gX192bWFsbG9jX25vZGVfcmFuZ2Uoc2l6ZSwgYWxpZ24sIFZNQUxM
T0NfU1RBUlQsIFZNQUxMT0NfRU5ELAotCQkJCWdmcF9tYXNrLCBwcm90LCAwLCBub2RlLCBjYWxs
ZXIpOworCQkJCWdmcF9tYXNrLCBQQUdFX0tFUk5FTCwgMCwgbm9kZSwgY2FsbGVyKTsKIH0KIAog
dm9pZCAqX192bWFsbG9jKHVuc2lnbmVkIGxvbmcgc2l6ZSwgZ2ZwX3QgZ2ZwX21hc2spCiB7Ci0J
cmV0dXJuIF9fdm1hbGxvY19ub2RlKHNpemUsIDEsIGdmcF9tYXNrLCBQQUdFX0tFUk5FTCwgTlVN
QV9OT19OT0RFLAorCXJldHVybiBfX3ZtYWxsb2Nfbm9kZShzaXplLCAxLCBnZnBfbWFzaywgTlVN
QV9OT19OT0RFLAogCQkJCV9fYnVpbHRpbl9yZXR1cm5fYWRkcmVzcygwKSk7CiB9CiBFWFBPUlRf
U1lNQk9MKF9fdm1hbGxvYyk7CkBAIC0yNTczLDE1ICsyNTY5LDE1IEBAIEVYUE9SVF9TWU1CT0wo
X192bWFsbG9jKTsKIHN0YXRpYyBpbmxpbmUgdm9pZCAqX192bWFsbG9jX25vZGVfZmxhZ3ModW5z
aWduZWQgbG9uZyBzaXplLAogCQkJCQlpbnQgbm9kZSwgZ2ZwX3QgZmxhZ3MpCiB7Ci0JcmV0dXJu
IF9fdm1hbGxvY19ub2RlKHNpemUsIDEsIGZsYWdzLCBQQUdFX0tFUk5FTCwKLQkJCQkJbm9kZSwg
X19idWlsdGluX3JldHVybl9hZGRyZXNzKDApKTsKKwlyZXR1cm4gX192bWFsbG9jX25vZGUoc2l6
ZSwgMSwgZmxhZ3MsIG5vZGUsCisJCQkJX19idWlsdGluX3JldHVybl9hZGRyZXNzKDApKTsKIH0K
IAogCiB2b2lkICpfX3ZtYWxsb2Nfbm9kZV9mbGFnc19jYWxsZXIodW5zaWduZWQgbG9uZyBzaXpl
LCBpbnQgbm9kZSwgZ2ZwX3QgZmxhZ3MsCiAJCQkJICB2b2lkICpjYWxsZXIpCiB7Ci0JcmV0dXJu
IF9fdm1hbGxvY19ub2RlKHNpemUsIDEsIGZsYWdzLCBQQUdFX0tFUk5FTCwgbm9kZSwgY2FsbGVy
KTsKKwlyZXR1cm4gX192bWFsbG9jX25vZGUoc2l6ZSwgMSwgZmxhZ3MsIG5vZGUsIGNhbGxlcik7
CiB9CiAKIC8qKgpAQCAtMjY1Niw4ICsyNjUyLDggQEAgRVhQT1JUX1NZTUJPTCh2bWFsbG9jX3Vz
ZXIpOwogICovCiB2b2lkICp2bWFsbG9jX25vZGUodW5zaWduZWQgbG9uZyBzaXplLCBpbnQgbm9k
ZSkKIHsKLQlyZXR1cm4gX192bWFsbG9jX25vZGUoc2l6ZSwgMSwgR0ZQX0tFUk5FTCwgUEFHRV9L
RVJORUwsCi0JCQkJCW5vZGUsIF9fYnVpbHRpbl9yZXR1cm5fYWRkcmVzcygwKSk7CisJcmV0dXJu
IF9fdm1hbGxvY19ub2RlKHNpemUsIDEsIEdGUF9LRVJORUwsIG5vZGUsCisJCQlfX2J1aWx0aW5f
cmV0dXJuX2FkZHJlc3MoMCkpOwogfQogRVhQT1JUX1NZTUJPTCh2bWFsbG9jX25vZGUpOwogCkBA
IC0yNjcwLDkgKzI2NjYsNiBAQCBFWFBPUlRfU1lNQk9MKHZtYWxsb2Nfbm9kZSk7CiAgKiBhbGxv
Y2F0b3IgYW5kIG1hcCB0aGVtIGludG8gY29udGlndW91cyBrZXJuZWwgdmlydHVhbCBzcGFjZS4K
ICAqIFRoZSBtZW1vcnkgYWxsb2NhdGVkIGlzIHNldCB0byB6ZXJvLgogICoKLSAqIEZvciB0aWdo
dCBjb250cm9sIG92ZXIgcGFnZSBsZXZlbCBhbGxvY2F0b3IgYW5kIHByb3RlY3Rpb24gZmxhZ3MK
LSAqIHVzZSBfX3ZtYWxsb2Nfbm9kZSgpIGluc3RlYWQuCi0gKgogICogUmV0dXJuOiBwb2ludGVy
IHRvIHRoZSBhbGxvY2F0ZWQgbWVtb3J5IG9yICVOVUxMIG9uIGVycm9yCiAgKi8KIHZvaWQgKnZ6
YWxsb2Nfbm9kZSh1bnNpZ25lZCBsb25nIHNpemUsIGludCBub2RlKQpAQCAtMjc0NSw4ICsyNzM4
LDggQEAgdm9pZCAqdm1hbGxvY19leGVjKHVuc2lnbmVkIGxvbmcgc2l6ZSkKICAqLwogdm9pZCAq
dm1hbGxvY18zMih1bnNpZ25lZCBsb25nIHNpemUpCiB7Ci0JcmV0dXJuIF9fdm1hbGxvY19ub2Rl
KHNpemUsIDEsIEdGUF9WTUFMTE9DMzIsIFBBR0VfS0VSTkVMLAotCQkJICAgICAgTlVNQV9OT19O
T0RFLCBfX2J1aWx0aW5fcmV0dXJuX2FkZHJlc3MoMCkpOworCXJldHVybiBfX3ZtYWxsb2Nfbm9k
ZShzaXplLCAxLCBHRlBfVk1BTExPQzMyLCBOVU1BX05PX05PREUsCisJCQlfX2J1aWx0aW5fcmV0
dXJuX2FkZHJlc3MoMCkpOwogfQogRVhQT1JUX1NZTUJPTCh2bWFsbG9jXzMyKTsKIAotLSAKMi4y
NS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0
cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

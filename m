Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C52201B6DF6
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 08:17:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DAE4A66030
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 06:17:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id CCF8266033; Fri, 24 Apr 2020 06:17:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CF419666EE;
	Fri, 24 Apr 2020 05:30:28 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9651F66047
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:15:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 87B5C6604B; Tue, 14 Apr 2020 13:15:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id 1C7D46604C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:15:32 +0000 (UTC)
Received: from [2001:4bb8:180:384b:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLP9-0007sF-W9; Tue, 14 Apr 2020 13:15:08 +0000
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
Date: Tue, 14 Apr 2020 15:13:41 +0200
Message-Id: <20200414131348.444715-23-hch@lst.de>
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
Subject: [Linaro-mm-sig] [PATCH 22/29] mm: remove the prot argument to
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
IEhlbGx3aWcgPGhjaEBsc3QuZGU+CkFja2VkLWJ5OiBQZXRlciBaaWpsc3RyYSAoSW50ZWwpIDxw
ZXRlcnpAaW5mcmFkZWFkLm9yZz4KLS0tCiBtbS92bWFsbG9jLmMgfCAzNSArKysrKysrKysrKysr
Ky0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyks
IDIxIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL21tL3ZtYWxsb2MuYyBiL21tL3ZtYWxsb2Mu
YwppbmRleCA0NjZhNDQ5YjNhMTUuLmRlNzk1Mjk1OWU4MiAxMDA2NDQKLS0tIGEvbW0vdm1hbGxv
Yy5jCisrKyBiL21tL3ZtYWxsb2MuYwpAQCAtMjQwMSw4ICsyNDAxLDcgQEAgdm9pZCAqdm1hcChz
dHJ1Y3QgcGFnZSAqKnBhZ2VzLCB1bnNpZ25lZCBpbnQgY291bnQsCiBFWFBPUlRfU1lNQk9MKHZt
YXApOwogCiBzdGF0aWMgdm9pZCAqX192bWFsbG9jX25vZGUodW5zaWduZWQgbG9uZyBzaXplLCB1
bnNpZ25lZCBsb25nIGFsaWduLAotCQkJICAgIGdmcF90IGdmcF9tYXNrLCBwZ3Byb3RfdCBwcm90
LAotCQkJICAgIGludCBub2RlLCBjb25zdCB2b2lkICpjYWxsZXIpOworCQkJICAgIGdmcF90IGdm
cF9tYXNrLCBpbnQgbm9kZSwgY29uc3Qgdm9pZCAqY2FsbGVyKTsKIHN0YXRpYyB2b2lkICpfX3Zt
YWxsb2NfYXJlYV9ub2RlKHN0cnVjdCB2bV9zdHJ1Y3QgKmFyZWEsIGdmcF90IGdmcF9tYXNrLAog
CQkJCSBwZ3Byb3RfdCBwcm90LCBpbnQgbm9kZSkKIHsKQEAgLTI0MjAsNyArMjQxOSw3IEBAIHN0
YXRpYyB2b2lkICpfX3ZtYWxsb2NfYXJlYV9ub2RlKHN0cnVjdCB2bV9zdHJ1Y3QgKmFyZWEsIGdm
cF90IGdmcF9tYXNrLAogCS8qIFBsZWFzZSBub3RlIHRoYXQgdGhlIHJlY3Vyc2lvbiBpcyBzdHJp
Y3RseSBib3VuZGVkLiAqLwogCWlmIChhcnJheV9zaXplID4gUEFHRV9TSVpFKSB7CiAJCXBhZ2Vz
ID0gX192bWFsbG9jX25vZGUoYXJyYXlfc2l6ZSwgMSwgbmVzdGVkX2dmcHxoaWdobWVtX21hc2ss
Ci0JCQkJUEFHRV9LRVJORUwsIG5vZGUsIGFyZWEtPmNhbGxlcik7CisJCQkJbm9kZSwgYXJlYS0+
Y2FsbGVyKTsKIAl9IGVsc2UgewogCQlwYWdlcyA9IGttYWxsb2Nfbm9kZShhcnJheV9zaXplLCBu
ZXN0ZWRfZ2ZwLCBub2RlKTsKIAl9CkBAIC0yNTM5LDEzICsyNTM4LDExIEBAIEVYUE9SVF9TWU1C
T0xfR1BMKF9fdm1hbGxvY19ub2RlX3JhbmdlKTsKICAqIEBzaXplOgkgICAgYWxsb2NhdGlvbiBz
aXplCiAgKiBAYWxpZ246CSAgICBkZXNpcmVkIGFsaWdubWVudAogICogQGdmcF9tYXNrOgkgICAg
ZmxhZ3MgZm9yIHRoZSBwYWdlIGxldmVsIGFsbG9jYXRvcgotICogQHByb3Q6CSAgICBwcm90ZWN0
aW9uIG1hc2sgZm9yIHRoZSBhbGxvY2F0ZWQgcGFnZXMKICAqIEBub2RlOgkgICAgbm9kZSB0byB1
c2UgZm9yIGFsbG9jYXRpb24gb3IgTlVNQV9OT19OT0RFCiAgKiBAY2FsbGVyOgkgICAgY2FsbGVy
J3MgcmV0dXJuIGFkZHJlc3MKICAqCi0gKiBBbGxvY2F0ZSBlbm91Z2ggcGFnZXMgdG8gY292ZXIg
QHNpemUgZnJvbSB0aGUgcGFnZSBsZXZlbAotICogYWxsb2NhdG9yIHdpdGggQGdmcF9tYXNrIGZs
YWdzLiAgTWFwIHRoZW0gaW50byBjb250aWd1b3VzCi0gKiBrZXJuZWwgdmlydHVhbCBzcGFjZSwg
dXNpbmcgYSBwYWdldGFibGUgcHJvdGVjdGlvbiBvZiBAcHJvdC4KKyAqIEFsbG9jYXRlIGVub3Vn
aCBwYWdlcyB0byBjb3ZlciBAc2l6ZSBmcm9tIHRoZSBwYWdlIGxldmVsIGFsbG9jYXRvciB3aXRo
CisgKiBAZ2ZwX21hc2sgZmxhZ3MuICBNYXAgdGhlbSBpbnRvIGNvbnRpZ3VvdXMga2VybmVsIHZp
cnR1YWwgc3BhY2UuCiAgKgogICogUmVjbGFpbSBtb2RpZmllcnMgaW4gQGdmcF9tYXNrIC0gX19H
RlBfTk9SRVRSWSwgX19HRlBfUkVUUllfTUFZRkFJTAogICogYW5kIF9fR0ZQX05PRkFJTCBhcmUg
bm90IHN1cHBvcnRlZApAQCAtMjU1NiwxNiArMjU1MywxNSBAQCBFWFBPUlRfU1lNQk9MX0dQTChf
X3ZtYWxsb2Nfbm9kZV9yYW5nZSk7CiAgKiBSZXR1cm46IHBvaW50ZXIgdG8gdGhlIGFsbG9jYXRl
ZCBtZW1vcnkgb3IgJU5VTEwgb24gZXJyb3IKICAqLwogc3RhdGljIHZvaWQgKl9fdm1hbGxvY19u
b2RlKHVuc2lnbmVkIGxvbmcgc2l6ZSwgdW5zaWduZWQgbG9uZyBhbGlnbiwKLQkJCSAgICBnZnBf
dCBnZnBfbWFzaywgcGdwcm90X3QgcHJvdCwKLQkJCSAgICBpbnQgbm9kZSwgY29uc3Qgdm9pZCAq
Y2FsbGVyKQorCQkJICAgIGdmcF90IGdmcF9tYXNrLCBpbnQgbm9kZSwgY29uc3Qgdm9pZCAqY2Fs
bGVyKQogewogCXJldHVybiBfX3ZtYWxsb2Nfbm9kZV9yYW5nZShzaXplLCBhbGlnbiwgVk1BTExP
Q19TVEFSVCwgVk1BTExPQ19FTkQsCi0JCQkJZ2ZwX21hc2ssIHByb3QsIDAsIG5vZGUsIGNhbGxl
cik7CisJCQkJZ2ZwX21hc2ssIFBBR0VfS0VSTkVMLCAwLCBub2RlLCBjYWxsZXIpOwogfQogCiB2
b2lkICpfX3ZtYWxsb2ModW5zaWduZWQgbG9uZyBzaXplLCBnZnBfdCBnZnBfbWFzaykKIHsKLQly
ZXR1cm4gX192bWFsbG9jX25vZGUoc2l6ZSwgMSwgZ2ZwX21hc2ssIFBBR0VfS0VSTkVMLCBOVU1B
X05PX05PREUsCisJcmV0dXJuIF9fdm1hbGxvY19ub2RlKHNpemUsIDEsIGdmcF9tYXNrLCBOVU1B
X05PX05PREUsCiAJCQkJX19idWlsdGluX3JldHVybl9hZGRyZXNzKDApKTsKIH0KIEVYUE9SVF9T
WU1CT0woX192bWFsbG9jKTsKQEAgLTI1NzMsMTUgKzI1NjksMTUgQEAgRVhQT1JUX1NZTUJPTChf
X3ZtYWxsb2MpOwogc3RhdGljIGlubGluZSB2b2lkICpfX3ZtYWxsb2Nfbm9kZV9mbGFncyh1bnNp
Z25lZCBsb25nIHNpemUsCiAJCQkJCWludCBub2RlLCBnZnBfdCBmbGFncykKIHsKLQlyZXR1cm4g
X192bWFsbG9jX25vZGUoc2l6ZSwgMSwgZmxhZ3MsIFBBR0VfS0VSTkVMLAotCQkJCQlub2RlLCBf
X2J1aWx0aW5fcmV0dXJuX2FkZHJlc3MoMCkpOworCXJldHVybiBfX3ZtYWxsb2Nfbm9kZShzaXpl
LCAxLCBmbGFncywgbm9kZSwKKwkJCQlfX2J1aWx0aW5fcmV0dXJuX2FkZHJlc3MoMCkpOwogfQog
CiAKIHZvaWQgKl9fdm1hbGxvY19ub2RlX2ZsYWdzX2NhbGxlcih1bnNpZ25lZCBsb25nIHNpemUs
IGludCBub2RlLCBnZnBfdCBmbGFncywKIAkJCQkgIHZvaWQgKmNhbGxlcikKIHsKLQlyZXR1cm4g
X192bWFsbG9jX25vZGUoc2l6ZSwgMSwgZmxhZ3MsIFBBR0VfS0VSTkVMLCBub2RlLCBjYWxsZXIp
OworCXJldHVybiBfX3ZtYWxsb2Nfbm9kZShzaXplLCAxLCBmbGFncywgbm9kZSwgY2FsbGVyKTsK
IH0KIAogLyoqCkBAIC0yNjU2LDggKzI2NTIsOCBAQCBFWFBPUlRfU1lNQk9MKHZtYWxsb2NfdXNl
cik7CiAgKi8KIHZvaWQgKnZtYWxsb2Nfbm9kZSh1bnNpZ25lZCBsb25nIHNpemUsIGludCBub2Rl
KQogewotCXJldHVybiBfX3ZtYWxsb2Nfbm9kZShzaXplLCAxLCBHRlBfS0VSTkVMLCBQQUdFX0tF
Uk5FTCwKLQkJCQkJbm9kZSwgX19idWlsdGluX3JldHVybl9hZGRyZXNzKDApKTsKKwlyZXR1cm4g
X192bWFsbG9jX25vZGUoc2l6ZSwgMSwgR0ZQX0tFUk5FTCwgbm9kZSwKKwkJCV9fYnVpbHRpbl9y
ZXR1cm5fYWRkcmVzcygwKSk7CiB9CiBFWFBPUlRfU1lNQk9MKHZtYWxsb2Nfbm9kZSk7CiAKQEAg
LTI2NzAsOSArMjY2Niw2IEBAIEVYUE9SVF9TWU1CT0wodm1hbGxvY19ub2RlKTsKICAqIGFsbG9j
YXRvciBhbmQgbWFwIHRoZW0gaW50byBjb250aWd1b3VzIGtlcm5lbCB2aXJ0dWFsIHNwYWNlLgog
ICogVGhlIG1lbW9yeSBhbGxvY2F0ZWQgaXMgc2V0IHRvIHplcm8uCiAgKgotICogRm9yIHRpZ2h0
IGNvbnRyb2wgb3ZlciBwYWdlIGxldmVsIGFsbG9jYXRvciBhbmQgcHJvdGVjdGlvbiBmbGFncwot
ICogdXNlIF9fdm1hbGxvY19ub2RlKCkgaW5zdGVhZC4KLSAqCiAgKiBSZXR1cm46IHBvaW50ZXIg
dG8gdGhlIGFsbG9jYXRlZCBtZW1vcnkgb3IgJU5VTEwgb24gZXJyb3IKICAqLwogdm9pZCAqdnph
bGxvY19ub2RlKHVuc2lnbmVkIGxvbmcgc2l6ZSwgaW50IG5vZGUpCkBAIC0yNzQ1LDggKzI3Mzgs
OCBAQCB2b2lkICp2bWFsbG9jX2V4ZWModW5zaWduZWQgbG9uZyBzaXplKQogICovCiB2b2lkICp2
bWFsbG9jXzMyKHVuc2lnbmVkIGxvbmcgc2l6ZSkKIHsKLQlyZXR1cm4gX192bWFsbG9jX25vZGUo
c2l6ZSwgMSwgR0ZQX1ZNQUxMT0MzMiwgUEFHRV9LRVJORUwsCi0JCQkgICAgICBOVU1BX05PX05P
REUsIF9fYnVpbHRpbl9yZXR1cm5fYWRkcmVzcygwKSk7CisJcmV0dXJuIF9fdm1hbGxvY19ub2Rl
KHNpemUsIDEsIEdGUF9WTUFMTE9DMzIsIE5VTUFfTk9fTk9ERSwKKwkJCV9fYnVpbHRpbl9yZXR1
cm5fYWRkcmVzcygwKSk7CiB9CiBFWFBPUlRfU1lNQk9MKHZtYWxsb2NfMzIpOwogCi0tIAoyLjI1
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRw
czovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

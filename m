Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF4C1B6DC4
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 08:04:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 35CDE619C4
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 06:04:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 25479619E9; Fri, 24 Apr 2020 06:04:13 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CC946665EF;
	Fri, 24 Apr 2020 05:30:16 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C1020616DC
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:14:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B54296604E; Tue, 14 Apr 2020 13:14:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id 5D7E8616DC
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:14:47 +0000 (UTC)
Received: from [2001:4bb8:180:384b:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLOU-0006eH-Ny; Tue, 14 Apr 2020 13:14:27 +0000
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
Date: Tue, 14 Apr 2020 15:13:29 +0200
Message-Id: <20200414131348.444715-11-hch@lst.de>
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
Subject: [Linaro-mm-sig] [PATCH 10/29] mm: rename CONFIG_PGTABLE_MAPPING to
	CONFIG_ZSMALLOC_PGTABLE_MAPPING
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

UmVuYW1lIHRoZSBLY29uZmlnIHZhcmlhYmxlIHRvIGNsYXJpZnkgdGhlIHNjb3BlLgoKU2lnbmVk
LW9mZi1ieTogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+CkFja2VkLWJ5OiBNaW5jaGFu
IEtpbSA8bWluY2hhbkBrZXJuZWwub3JnPgpBY2tlZC1ieTogUGV0ZXIgWmlqbHN0cmEgKEludGVs
KSA8cGV0ZXJ6QGluZnJhZGVhZC5vcmc+Ci0tLQogYXJjaC9hcm0vY29uZmlncy9vbWFwMnBsdXNf
ZGVmY29uZmlnIHwgMiArLQogaW5jbHVkZS9saW51eC96c21hbGxvYy5oICAgICAgICAgICAgIHwg
MiArLQogbW0vS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMiArLQogbW0venNt
YWxsb2MuYyAgICAgICAgICAgICAgICAgICAgICAgIHwgOCArKysrLS0tLQogNCBmaWxlcyBjaGFu
Z2VkLCA3IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9h
cm0vY29uZmlncy9vbWFwMnBsdXNfZGVmY29uZmlnIGIvYXJjaC9hcm0vY29uZmlncy9vbWFwMnBs
dXNfZGVmY29uZmlnCmluZGV4IDNjYzNjYTVmYTAyNy4uNTgzZDhhYmQ4MGE0IDEwMDY0NAotLS0g
YS9hcmNoL2FybS9jb25maWdzL29tYXAycGx1c19kZWZjb25maWcKKysrIGIvYXJjaC9hcm0vY29u
Zmlncy9vbWFwMnBsdXNfZGVmY29uZmlnCkBAIC04MSw3ICs4MSw3IEBAIENPTkZJR19QQVJUSVRJ
T05fQURWQU5DRUQ9eQogQ09ORklHX0JJTkZNVF9NSVNDPXkKIENPTkZJR19DTUE9eQogQ09ORklH
X1pTTUFMTE9DPW0KLUNPTkZJR19QR1RBQkxFX01BUFBJTkc9eQorQ09ORklHX1pTTUFMTE9DX1BH
VEFCTEVfTUFQUElORz15CiBDT05GSUdfTkVUPXkKIENPTkZJR19QQUNLRVQ9eQogQ09ORklHX1VO
SVg9eQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC96c21hbGxvYy5oIGIvaW5jbHVkZS9saW51
eC96c21hbGxvYy5oCmluZGV4IDIyMTljY2U4MWNhNC4uMGZkYmY2NTNiMTczIDEwMDY0NAotLS0g
YS9pbmNsdWRlL2xpbnV4L3pzbWFsbG9jLmgKKysrIGIvaW5jbHVkZS9saW51eC96c21hbGxvYy5o
CkBAIC0yMCw3ICsyMCw3IEBACiAgKiB6c21hbGxvYyBtYXBwaW5nIG1vZGVzCiAgKgogICogTk9U
RTogVGhlc2Ugb25seSBtYWtlIGEgZGlmZmVyZW5jZSB3aGVuIGEgbWFwcGVkIG9iamVjdCBzcGFu
cyBwYWdlcy4KLSAqIFRoZXkgYWxzbyBoYXZlIG5vIGVmZmVjdCB3aGVuIFBHVEFCTEVfTUFQUElO
RyBpcyBzZWxlY3RlZC4KKyAqIFRoZXkgYWxzbyBoYXZlIG5vIGVmZmVjdCB3aGVuIFpTTUFMTE9D
X1BHVEFCTEVfTUFQUElORyBpcyBzZWxlY3RlZC4KICAqLwogZW51bSB6c19tYXBtb2RlIHsKIAla
U19NTV9SVywgLyogbm9ybWFsIHJlYWQtd3JpdGUgbWFwcGluZyAqLwpkaWZmIC0tZ2l0IGEvbW0v
S2NvbmZpZyBiL21tL0tjb25maWcKaW5kZXggYzFhY2MzNGMxYzM1Li4wOWE5ZWRmYjg0NjEgMTAw
NjQ0Ci0tLSBhL21tL0tjb25maWcKKysrIGIvbW0vS2NvbmZpZwpAQCAtNzA1LDcgKzcwNSw3IEBA
IGNvbmZpZyBaU01BTExPQwogCSAgcmV0dXJuZWQgYnkgYW4gYWxsb2MoKS4gIFRoaXMgaGFuZGxl
IG11c3QgYmUgbWFwcGVkIGluIG9yZGVyIHRvCiAJICBhY2Nlc3MgdGhlIGFsbG9jYXRlZCBzcGFj
ZS4KIAotY29uZmlnIFBHVEFCTEVfTUFQUElORworY29uZmlnIFpTTUFMTE9DX1BHVEFCTEVfTUFQ
UElORwogCWJvb2wgIlVzZSBwYWdlIHRhYmxlIG1hcHBpbmcgdG8gYWNjZXNzIG9iamVjdCBpbiB6
c21hbGxvYyIKIAlkZXBlbmRzIG9uIFpTTUFMTE9DCiAJaGVscApkaWZmIC0tZ2l0IGEvbW0venNt
YWxsb2MuYyBiL21tL3pzbWFsbG9jLmMKaW5kZXggMmY4MzZhMmI5OTNmLi5hYzA1MjQzMzBiOWIg
MTAwNjQ0Ci0tLSBhL21tL3pzbWFsbG9jLmMKKysrIGIvbW0venNtYWxsb2MuYwpAQCAtMjkzLDcg
KzI5Myw3IEBAIHN0cnVjdCB6c3BhZ2UgewogfTsKIAogc3RydWN0IG1hcHBpbmdfYXJlYSB7Ci0j
aWZkZWYgQ09ORklHX1BHVEFCTEVfTUFQUElORworI2lmZGVmIENPTkZJR19aU01BTExPQ19QR1RB
QkxFX01BUFBJTkcKIAlzdHJ1Y3Qgdm1fc3RydWN0ICp2bTsgLyogdm0gYXJlYSBmb3IgbWFwcGlu
ZyBvYmplY3QgdGhhdCBzcGFuIHBhZ2VzICovCiAjZWxzZQogCWNoYXIgKnZtX2J1ZjsgLyogY29w
eSBidWZmZXIgZm9yIG9iamVjdHMgdGhhdCBzcGFuIHBhZ2VzICovCkBAIC0xMTEzLDcgKzExMTMs
NyBAQCBzdGF0aWMgc3RydWN0IHpzcGFnZSAqZmluZF9nZXRfenNwYWdlKHN0cnVjdCBzaXplX2Ns
YXNzICpjbGFzcykKIAlyZXR1cm4genNwYWdlOwogfQogCi0jaWZkZWYgQ09ORklHX1BHVEFCTEVf
TUFQUElORworI2lmZGVmIENPTkZJR19aU01BTExPQ19QR1RBQkxFX01BUFBJTkcKIHN0YXRpYyBp
bmxpbmUgaW50IF9fenNfY3B1X3VwKHN0cnVjdCBtYXBwaW5nX2FyZWEgKmFyZWEpCiB7CiAJLyoK
QEAgLTExNTEsNyArMTE1MSw3IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBfX3pzX3VubWFwX29iamVj
dChzdHJ1Y3QgbWFwcGluZ19hcmVhICphcmVhLAogCXVubWFwX2tlcm5lbF9yYW5nZShhZGRyLCBQ
QUdFX1NJWkUgKiAyKTsKIH0KIAotI2Vsc2UgLyogQ09ORklHX1BHVEFCTEVfTUFQUElORyAqLwor
I2Vsc2UgLyogQ09ORklHX1pTTUFMTE9DX1BHVEFCTEVfTUFQUElORyAqLwogCiBzdGF0aWMgaW5s
aW5lIGludCBfX3pzX2NwdV91cChzdHJ1Y3QgbWFwcGluZ19hcmVhICphcmVhKQogewpAQCAtMTIz
Myw3ICsxMjMzLDcgQEAgc3RhdGljIHZvaWQgX196c191bm1hcF9vYmplY3Qoc3RydWN0IG1hcHBp
bmdfYXJlYSAqYXJlYSwKIAlwYWdlZmF1bHRfZW5hYmxlKCk7CiB9CiAKLSNlbmRpZiAvKiBDT05G
SUdfUEdUQUJMRV9NQVBQSU5HICovCisjZW5kaWYgLyogQ09ORklHX1pTTUFMTE9DX1BHVEFCTEVf
TUFQUElORyAqLwogCiBzdGF0aWMgaW50IHpzX2NwdV9wcmVwYXJlKHVuc2lnbmVkIGludCBjcHUp
CiB7Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8t
bW0tc2lnCg==

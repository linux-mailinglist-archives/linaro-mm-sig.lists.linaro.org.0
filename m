Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D5DE01B6D66
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 07:41:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0AED8619D7
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 05:41:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id ED003622F4; Fri, 24 Apr 2020 05:41:37 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 91242661C5;
	Fri, 24 Apr 2020 05:29:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 187A36661F
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:01:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 09DCB66626; Wed,  8 Apr 2020 12:01:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id 1F751666D5
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:00:36 +0000 (UTC)
Received: from [2001:4bb8:180:5765:65b6:f11e:f109:b151] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9N9-000292-L0; Wed, 08 Apr 2020 12:00:00 +0000
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
Date: Wed,  8 Apr 2020 13:59:07 +0200
Message-Id: <20200408115926.1467567-10-hch@lst.de>
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
Subject: [Linaro-mm-sig] [PATCH 09/28] mm: rename CONFIG_PGTABLE_MAPPING to
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
LW9mZi1ieTogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+Ci0tLQogYXJjaC9hcm0vY29u
Zmlncy9vbWFwMnBsdXNfZGVmY29uZmlnIHwgMiArLQogaW5jbHVkZS9saW51eC96c21hbGxvYy5o
ICAgICAgICAgICAgIHwgMiArLQogbW0vS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAgICAg
IHwgMiArLQogbW0venNtYWxsb2MuYyAgICAgICAgICAgICAgICAgICAgICAgIHwgOCArKysrLS0t
LQogNCBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvYXJjaC9hcm0vY29uZmlncy9vbWFwMnBsdXNfZGVmY29uZmlnIGIvYXJjaC9hcm0v
Y29uZmlncy9vbWFwMnBsdXNfZGVmY29uZmlnCmluZGV4IDNjYzNjYTVmYTAyNy4uNTgzZDhhYmQ4
MGE0IDEwMDY0NAotLS0gYS9hcmNoL2FybS9jb25maWdzL29tYXAycGx1c19kZWZjb25maWcKKysr
IGIvYXJjaC9hcm0vY29uZmlncy9vbWFwMnBsdXNfZGVmY29uZmlnCkBAIC04MSw3ICs4MSw3IEBA
IENPTkZJR19QQVJUSVRJT05fQURWQU5DRUQ9eQogQ09ORklHX0JJTkZNVF9NSVNDPXkKIENPTkZJ
R19DTUE9eQogQ09ORklHX1pTTUFMTE9DPW0KLUNPTkZJR19QR1RBQkxFX01BUFBJTkc9eQorQ09O
RklHX1pTTUFMTE9DX1BHVEFCTEVfTUFQUElORz15CiBDT05GSUdfTkVUPXkKIENPTkZJR19QQUNL
RVQ9eQogQ09ORklHX1VOSVg9eQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC96c21hbGxvYy5o
IGIvaW5jbHVkZS9saW51eC96c21hbGxvYy5oCmluZGV4IDIyMTljY2U4MWNhNC4uMGZkYmY2NTNi
MTczIDEwMDY0NAotLS0gYS9pbmNsdWRlL2xpbnV4L3pzbWFsbG9jLmgKKysrIGIvaW5jbHVkZS9s
aW51eC96c21hbGxvYy5oCkBAIC0yMCw3ICsyMCw3IEBACiAgKiB6c21hbGxvYyBtYXBwaW5nIG1v
ZGVzCiAgKgogICogTk9URTogVGhlc2Ugb25seSBtYWtlIGEgZGlmZmVyZW5jZSB3aGVuIGEgbWFw
cGVkIG9iamVjdCBzcGFucyBwYWdlcy4KLSAqIFRoZXkgYWxzbyBoYXZlIG5vIGVmZmVjdCB3aGVu
IFBHVEFCTEVfTUFQUElORyBpcyBzZWxlY3RlZC4KKyAqIFRoZXkgYWxzbyBoYXZlIG5vIGVmZmVj
dCB3aGVuIFpTTUFMTE9DX1BHVEFCTEVfTUFQUElORyBpcyBzZWxlY3RlZC4KICAqLwogZW51bSB6
c19tYXBtb2RlIHsKIAlaU19NTV9SVywgLyogbm9ybWFsIHJlYWQtd3JpdGUgbWFwcGluZyAqLwpk
aWZmIC0tZ2l0IGEvbW0vS2NvbmZpZyBiL21tL0tjb25maWcKaW5kZXggNjkxMDIxNDkyZTc4Li4z
Njk0OWE5NDI1YjggMTAwNjQ0Ci0tLSBhL21tL0tjb25maWcKKysrIGIvbW0vS2NvbmZpZwpAQCAt
NzAwLDcgKzcwMCw3IEBAIGNvbmZpZyBaU01BTExPQwogCSAgcmV0dXJuZWQgYnkgYW4gYWxsb2Mo
KS4gIFRoaXMgaGFuZGxlIG11c3QgYmUgbWFwcGVkIGluIG9yZGVyIHRvCiAJICBhY2Nlc3MgdGhl
IGFsbG9jYXRlZCBzcGFjZS4KIAotY29uZmlnIFBHVEFCTEVfTUFQUElORworY29uZmlnIFpTTUFM
TE9DX1BHVEFCTEVfTUFQUElORwogCWJvb2wgIlVzZSBwYWdlIHRhYmxlIG1hcHBpbmcgdG8gYWNj
ZXNzIG9iamVjdCBpbiB6c21hbGxvYyIKIAlkZXBlbmRzIG9uIFpTTUFMTE9DCiAJaGVscApkaWZm
IC0tZ2l0IGEvbW0venNtYWxsb2MuYyBiL21tL3pzbWFsbG9jLmMKaW5kZXggMmY4MzZhMmI5OTNm
Li5hYzA1MjQzMzBiOWIgMTAwNjQ0Ci0tLSBhL21tL3pzbWFsbG9jLmMKKysrIGIvbW0venNtYWxs
b2MuYwpAQCAtMjkzLDcgKzI5Myw3IEBAIHN0cnVjdCB6c3BhZ2UgewogfTsKIAogc3RydWN0IG1h
cHBpbmdfYXJlYSB7Ci0jaWZkZWYgQ09ORklHX1BHVEFCTEVfTUFQUElORworI2lmZGVmIENPTkZJ
R19aU01BTExPQ19QR1RBQkxFX01BUFBJTkcKIAlzdHJ1Y3Qgdm1fc3RydWN0ICp2bTsgLyogdm0g
YXJlYSBmb3IgbWFwcGluZyBvYmplY3QgdGhhdCBzcGFuIHBhZ2VzICovCiAjZWxzZQogCWNoYXIg
KnZtX2J1ZjsgLyogY29weSBidWZmZXIgZm9yIG9iamVjdHMgdGhhdCBzcGFuIHBhZ2VzICovCkBA
IC0xMTEzLDcgKzExMTMsNyBAQCBzdGF0aWMgc3RydWN0IHpzcGFnZSAqZmluZF9nZXRfenNwYWdl
KHN0cnVjdCBzaXplX2NsYXNzICpjbGFzcykKIAlyZXR1cm4genNwYWdlOwogfQogCi0jaWZkZWYg
Q09ORklHX1BHVEFCTEVfTUFQUElORworI2lmZGVmIENPTkZJR19aU01BTExPQ19QR1RBQkxFX01B
UFBJTkcKIHN0YXRpYyBpbmxpbmUgaW50IF9fenNfY3B1X3VwKHN0cnVjdCBtYXBwaW5nX2FyZWEg
KmFyZWEpCiB7CiAJLyoKQEAgLTExNTEsNyArMTE1MSw3IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBf
X3pzX3VubWFwX29iamVjdChzdHJ1Y3QgbWFwcGluZ19hcmVhICphcmVhLAogCXVubWFwX2tlcm5l
bF9yYW5nZShhZGRyLCBQQUdFX1NJWkUgKiAyKTsKIH0KIAotI2Vsc2UgLyogQ09ORklHX1BHVEFC
TEVfTUFQUElORyAqLworI2Vsc2UgLyogQ09ORklHX1pTTUFMTE9DX1BHVEFCTEVfTUFQUElORyAq
LwogCiBzdGF0aWMgaW5saW5lIGludCBfX3pzX2NwdV91cChzdHJ1Y3QgbWFwcGluZ19hcmVhICph
cmVhKQogewpAQCAtMTIzMyw3ICsxMjMzLDcgQEAgc3RhdGljIHZvaWQgX196c191bm1hcF9vYmpl
Y3Qoc3RydWN0IG1hcHBpbmdfYXJlYSAqYXJlYSwKIAlwYWdlZmF1bHRfZW5hYmxlKCk7CiB9CiAK
LSNlbmRpZiAvKiBDT05GSUdfUEdUQUJMRV9NQVBQSU5HICovCisjZW5kaWYgLyogQ09ORklHX1pT
TUFMTE9DX1BHVEFCTEVfTUFQUElORyAqLwogCiBzdGF0aWMgaW50IHpzX2NwdV9wcmVwYXJlKHVu
c2lnbmVkIGludCBjcHUpCiB7Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW5hcm8tbW0tc2lnCg==

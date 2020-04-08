Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B737F1B6D7C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 07:50:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DAE656199D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 05:50:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C75DF619F3; Fri, 24 Apr 2020 05:50:32 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AB2B9664FE;
	Fri, 24 Apr 2020 05:30:02 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8E27066611
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:01:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8139B66614; Wed,  8 Apr 2020 12:01:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id 506F266628
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:01:13 +0000 (UTC)
Received: from [2001:4bb8:180:5765:65b6:f11e:f109:b151] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9O2-0005jC-NA; Wed, 08 Apr 2020 12:00:55 +0000
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
Date: Wed,  8 Apr 2020 13:59:22 +0200
Message-Id: <20200408115926.1467567-25-hch@lst.de>
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
Subject: [Linaro-mm-sig] [PATCH 24/28] mm: switch the test_vmalloc module to
	use __vmalloc_node
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

Tm8gbmVlZCB0byBleHBvcnQgdGhlIHZlcnkgbG93LWxldmVsIF9fdm1hbGxvY19ub2RlX3Jhbmdl
IHdoZW4gdGhlCnRlc3QgbW9kdWxlIGNhbiB1c2UgYSBzbGlnaHRseSBoaWdoZXIgbGV2ZWwgdmFy
aWFudC4KClNpZ25lZC1vZmYtYnk6IENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPgotLS0K
IGxpYi90ZXN0X3ZtYWxsb2MuYyB8IDI2ICsrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tCiBtbS92
bWFsbG9jLmMgICAgICAgfCAxNyArKysrKysrKy0tLS0tLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCAx
NSBpbnNlcnRpb25zKCspLCAyOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9saWIvdGVzdF92
bWFsbG9jLmMgYi9saWIvdGVzdF92bWFsbG9jLmMKaW5kZXggOGJiZWZjYWRkZmU4Li5jZDZhZWYw
NWRmYjQgMTAwNjQ0Ci0tLSBhL2xpYi90ZXN0X3ZtYWxsb2MuYworKysgYi9saWIvdGVzdF92bWFs
bG9jLmMKQEAgLTkxLDEyICs5MSw4IEBAIHN0YXRpYyBpbnQgcmFuZG9tX3NpemVfYWxpZ25fYWxs
b2NfdGVzdCh2b2lkKQogCQkgKi8KIAkJc2l6ZSA9ICgocm5kICUgMTApICsgMSkgKiBQQUdFX1NJ
WkU7CiAKLQkJcHRyID0gX192bWFsbG9jX25vZGVfcmFuZ2Uoc2l6ZSwgYWxpZ24sCi0JCSAgIFZN
QUxMT0NfU1RBUlQsIFZNQUxMT0NfRU5ELAotCQkgICBHRlBfS0VSTkVMIHwgX19HRlBfWkVSTywK
LQkJICAgUEFHRV9LRVJORUwsCi0JCSAgIDAsIDAsIF9fYnVpbHRpbl9yZXR1cm5fYWRkcmVzcygw
KSk7Ci0KKwkJcHRyID0gX192bWFsbG9jX25vZGUoc2l6ZSwgYWxpZ24sIEdGUF9LRVJORUwgfCBf
X0dGUF9aRVJPLAorCQkJCV9fYnVpbHRpbl9yZXR1cm5fYWRkcmVzcygwKSk7CiAJCWlmICghcHRy
KQogCQkJcmV0dXJuIC0xOwogCkBAIC0xMTgsMTIgKzExNCw4IEBAIHN0YXRpYyBpbnQgYWxpZ25f
c2hpZnRfYWxsb2NfdGVzdCh2b2lkKQogCWZvciAoaSA9IDA7IGkgPCBCSVRTX1BFUl9MT05HOyBp
KyspIHsKIAkJYWxpZ24gPSAoKHVuc2lnbmVkIGxvbmcpIDEpIDw8IGk7CiAKLQkJcHRyID0gX192
bWFsbG9jX25vZGVfcmFuZ2UoUEFHRV9TSVpFLCBhbGlnbiwKLQkJCVZNQUxMT0NfU1RBUlQsIFZN
QUxMT0NfRU5ELAotCQkJR0ZQX0tFUk5FTCB8IF9fR0ZQX1pFUk8sCi0JCQlQQUdFX0tFUk5FTCwK
LQkJCTAsIDAsIF9fYnVpbHRpbl9yZXR1cm5fYWRkcmVzcygwKSk7Ci0KKwkJcHRyID0gX192bWFs
bG9jX25vZGUoUEFHRV9TSVpFLCBhbGlnbiwgR0ZQX0tFUk5FTCB8IF9fR0ZQX1pFUk8sCisJCQkJ
X19idWlsdGluX3JldHVybl9hZGRyZXNzKDApKTsKIAkJaWYgKCFwdHIpCiAJCQlyZXR1cm4gLTE7
CiAKQEAgLTEzOSwxMyArMTMxLDkgQEAgc3RhdGljIGludCBmaXhfYWxpZ25fYWxsb2NfdGVzdCh2
b2lkKQogCWludCBpOwogCiAJZm9yIChpID0gMDsgaSA8IHRlc3RfbG9vcF9jb3VudDsgaSsrKSB7
Ci0JCXB0ciA9IF9fdm1hbGxvY19ub2RlX3JhbmdlKDUgKiBQQUdFX1NJWkUsCi0JCQlUSFJFQURf
QUxJR04gPDwgMSwKLQkJCVZNQUxMT0NfU1RBUlQsIFZNQUxMT0NfRU5ELAotCQkJR0ZQX0tFUk5F
TCB8IF9fR0ZQX1pFUk8sCi0JCQlQQUdFX0tFUk5FTCwKLQkJCTAsIDAsIF9fYnVpbHRpbl9yZXR1
cm5fYWRkcmVzcygwKSk7Ci0KKwkJcHRyID0gX192bWFsbG9jX25vZGUoNSAqIFBBR0VfU0laRSwg
VEhSRUFEX0FMSUdOIDw8IDEsCisJCQkJR0ZQX0tFUk5FTCB8IF9fR0ZQX1pFUk8sCisJCQkJX19i
dWlsdGluX3JldHVybl9hZGRyZXNzKDApKTsKIAkJaWYgKCFwdHIpCiAJCQlyZXR1cm4gLTE7CiAK
ZGlmZiAtLWdpdCBhL21tL3ZtYWxsb2MuYyBiL21tL3ZtYWxsb2MuYwppbmRleCBhZTgyNDllZjU4
MjEuLjMzM2ZiZTc3MjU1YSAxMDA2NDQKLS0tIGEvbW0vdm1hbGxvYy5jCisrKyBiL21tL3ZtYWxs
b2MuYwpAQCAtMjUyMiwxNSArMjUyMiw2IEBAIHZvaWQgKl9fdm1hbGxvY19ub2RlX3JhbmdlKHVu
c2lnbmVkIGxvbmcgc2l6ZSwgdW5zaWduZWQgbG9uZyBhbGlnbiwKIAlyZXR1cm4gTlVMTDsKIH0K
IAotLyoKLSAqIFRoaXMgaXMgb25seSBmb3IgcGVyZm9ybWFuY2UgYW5hbHlzaXMgb2Ygdm1hbGxv
YyBhbmQgc3RyZXNzIHB1cnBvc2UuCi0gKiBJdCBpcyByZXF1aXJlZCBieSB2bWFsbG9jIHRlc3Qg
bW9kdWxlLCB0aGVyZWZvcmUgZG8gbm90IHVzZSBpdCBvdGhlcgotICogdGhhbiB0aGF0LgotICov
Ci0jaWZkZWYgQ09ORklHX1RFU1RfVk1BTExPQ19NT0RVTEUKLUVYUE9SVF9TWU1CT0xfR1BMKF9f
dm1hbGxvY19ub2RlX3JhbmdlKTsKLSNlbmRpZgotCiAvKioKICAqIF9fdm1hbGxvY19ub2RlIC0g
YWxsb2NhdGUgdmlydHVhbGx5IGNvbnRpZ3VvdXMgbWVtb3J5CiAgKiBAc2l6ZToJICAgIGFsbG9j
YXRpb24gc2l6ZQpAQCAtMjU1Niw2ICsyNTQ3LDE0IEBAIHZvaWQgKl9fdm1hbGxvY19ub2RlKHVu
c2lnbmVkIGxvbmcgc2l6ZSwgdW5zaWduZWQgbG9uZyBhbGlnbiwKIAlyZXR1cm4gX192bWFsbG9j
X25vZGVfcmFuZ2Uoc2l6ZSwgYWxpZ24sIFZNQUxMT0NfU1RBUlQsIFZNQUxMT0NfRU5ELAogCQkJ
CWdmcF9tYXNrLCBQQUdFX0tFUk5FTCwgMCwgbm9kZSwgY2FsbGVyKTsKIH0KKy8qCisgKiBUaGlz
IGlzIG9ubHkgZm9yIHBlcmZvcm1hbmNlIGFuYWx5c2lzIG9mIHZtYWxsb2MgYW5kIHN0cmVzcyBw
dXJwb3NlLgorICogSXQgaXMgcmVxdWlyZWQgYnkgdm1hbGxvYyB0ZXN0IG1vZHVsZSwgdGhlcmVm
b3JlIGRvIG5vdCB1c2UgaXQgb3RoZXIKKyAqIHRoYW4gdGhhdC4KKyAqLworI2lmZGVmIENPTkZJ
R19URVNUX1ZNQUxMT0NfTU9EVUxFCitFWFBPUlRfU1lNQk9MX0dQTChfX3ZtYWxsb2Nfbm9kZSk7
CisjZW5kaWYKIAogdm9pZCAqX192bWFsbG9jKHVuc2lnbmVkIGxvbmcgc2l6ZSwgZ2ZwX3QgZ2Zw
X21hc2spCiB7Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW5hcm8tbW0tc2lnCg==

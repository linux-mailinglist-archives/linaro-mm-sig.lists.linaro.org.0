Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD031A1AE1
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Apr 2020 06:21:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 002156621A
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Apr 2020 04:21:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E52B5664EB; Wed,  8 Apr 2020 04:21:17 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SUSPICIOUS_RECIPS autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 78657664E8;
	Wed,  8 Apr 2020 04:20:43 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A24E26621A
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 04:20:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8B4F4664E8; Wed,  8 Apr 2020 04:20:40 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id 75B166621A
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 04:20:39 +0000 (UTC)
Received: from [2601:1c0:6280:3f0:897c:6038:c71d:ecac]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM2Ca-0004vT-R1; Wed, 08 Apr 2020 04:20:36 +0000
To: LKML <linux-kernel@vger.kernel.org>,
 linux-media <linux-media@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <7bcbe6fe-0b4b-87da-d003-b68a26eb4cf0@infradead.org>
Date: Tue, 7 Apr 2020 21:20:34 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>
Subject: [Linaro-mm-sig] [PATCH -next] dma-buf: fix documentation build
	warnings
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

RnJvbTogUmFuZHkgRHVubGFwIDxyZHVubGFwQGluZnJhZGVhZC5vcmc+CgpGaXggZG9jdW1lbnRh
dGlvbiB3YXJuaW5ncyBpbiBkbWEtYnVmLltoY106CgouLi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1
Zi5jOjY3ODogd2FybmluZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1lbWJlciAnaW1wb3J0ZXJf
b3BzJyBub3QgZGVzY3JpYmVkIGluICdkbWFfYnVmX2R5bmFtaWNfYXR0YWNoJwouLi9kcml2ZXJz
L2RtYS1idWYvZG1hLWJ1Zi5jOjY3ODogd2FybmluZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1l
bWJlciAnaW1wb3J0ZXJfcHJpdicgbm90IGRlc2NyaWJlZCBpbiAnZG1hX2J1Zl9keW5hbWljX2F0
dGFjaCcKLi4vaW5jbHVkZS9saW51eC9kbWEtYnVmLmg6MzM5OiB3YXJuaW5nOiBJbmNvcnJlY3Qg
dXNlIG9mIGtlcm5lbC1kb2MgZm9ybWF0OiAgICAgICAgICAqIEBtb3ZlX25vdGlmeQoKU2lnbmVk
LW9mZi1ieTogUmFuZHkgRHVubGFwIDxyZHVubGFwQGluZnJhZGVhZC5vcmc+CkNjOiBTdW1pdCBT
ZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgpDYzogbGludXgtbWVkaWFAdmdlci5rZXJu
ZWwub3JnCkNjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKLS0tCiBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIHwgICAg
NCArKy0tCiBpbmNsdWRlL2xpbnV4L2RtYS1idWYuaCAgIHwgICAgMyArLS0KIDIgZmlsZXMgY2hh
bmdlZCwgMyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKLS0tIGxpbnV4LW5leHQtMjAy
MDA0MDcub3JpZy9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCisrKyBsaW51eC1uZXh0LTIwMjAw
NDA3L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKQEAgLTY1NSw4ICs2NTUsOCBAQCBFWFBPUlRf
U1lNQk9MX0dQTChkbWFfYnVmX3B1dCk7CiAgKiBjYWxscyBhdHRhY2goKSBvZiBkbWFfYnVmX29w
cyB0byBhbGxvdyBkZXZpY2Utc3BlY2lmaWMgYXR0YWNoIGZ1bmN0aW9uYWxpdHkKICAqIEBkbWFi
dWY6CQlbaW5dCWJ1ZmZlciB0byBhdHRhY2ggZGV2aWNlIHRvLgogICogQGRldjoJCVtpbl0JZGV2
aWNlIHRvIGJlIGF0dGFjaGVkLgotICogQGltcG9ydGVyX29wcwlbaW5dCWltcG9ydGVyIG9wZXJh
dGlvbnMgZm9yIHRoZSBhdHRhY2htZW50Ci0gKiBAaW1wb3J0ZXJfcHJpdglbaW5dCWltcG9ydGVy
IHByaXZhdGUgcG9pbnRlciBmb3IgdGhlIGF0dGFjaG1lbnQKKyAqIEBpbXBvcnRlcl9vcHM6CVtp
bl0JaW1wb3J0ZXIgb3BlcmF0aW9ucyBmb3IgdGhlIGF0dGFjaG1lbnQKKyAqIEBpbXBvcnRlcl9w
cml2OglbaW5dCWltcG9ydGVyIHByaXZhdGUgcG9pbnRlciBmb3IgdGhlIGF0dGFjaG1lbnQKICAq
CiAgKiBSZXR1cm5zIHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgcG9pbnRlciBmb3IgdGhpcyBh
dHRhY2htZW50LiBBdHRhY2htZW50cwogICogbXVzdCBiZSBjbGVhbmVkIHVwIGJ5IGNhbGxpbmcg
ZG1hX2J1Zl9kZXRhY2goKS4KLS0tIGxpbnV4LW5leHQtMjAyMDA0MDcub3JpZy9pbmNsdWRlL2xp
bnV4L2RtYS1idWYuaAorKysgbGludXgtbmV4dC0yMDIwMDQwNy9pbmNsdWRlL2xpbnV4L2RtYS1i
dWYuaApAQCAtMzI5LDEzICszMjksMTIgQEAgc3RydWN0IGRtYV9idWYgewogCiAvKioKICAqIHN0
cnVjdCBkbWFfYnVmX2F0dGFjaF9vcHMgLSBpbXBvcnRlciBvcGVyYXRpb25zIGZvciBhbiBhdHRh
Y2htZW50Ci0gKiBAbW92ZV9ub3RpZnk6IFtvcHRpb25hbF0gbm90aWZpY2F0aW9uIHRoYXQgdGhl
IERNQS1idWYgaXMgbW92aW5nCiAgKgogICogQXR0YWNobWVudCBvcGVyYXRpb25zIGltcGxlbWVu
dGVkIGJ5IHRoZSBpbXBvcnRlci4KICAqLwogc3RydWN0IGRtYV9idWZfYXR0YWNoX29wcyB7CiAJ
LyoqCi0JICogQG1vdmVfbm90aWZ5CisJICogQG1vdmVfbm90aWZ5OiBbb3B0aW9uYWxdIG5vdGlm
aWNhdGlvbiB0aGF0IHRoZSBETUEtYnVmIGlzIG1vdmluZwogCSAqCiAJICogSWYgdGhpcyBjYWxs
YmFjayBpcyBwcm92aWRlZCB0aGUgZnJhbWV3b3JrIGNhbiBhdm9pZCBwaW5uaW5nIHRoZQogCSAq
IGJhY2tpbmcgc3RvcmUgd2hpbGUgbWFwcGluZ3MgZXhpc3RzLgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QK
TGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

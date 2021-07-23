Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 802BA3D35C9
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Jul 2021 09:59:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2BC14631B3
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Jul 2021 07:59:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E46476314A; Fri, 23 Jul 2021 07:59:07 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 661D7606A3;
	Fri, 23 Jul 2021 07:59:04 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2EE656057D
 for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Jul 2021 07:59:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 21845606A3; Fri, 23 Jul 2021 07:59:02 +0000 (UTC)
Received: from netline-mail3.netline.ch (mail.netline.ch [148.251.143.180])
 by lists.linaro.org (Postfix) with ESMTP id D5ECE6057D
 for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Jul 2021 07:58:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by netline-mail3.netline.ch (Postfix) with ESMTP id B409920201B;
 Fri, 23 Jul 2021 09:58:58 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at netline-mail3.netline.ch
Received: from netline-mail3.netline.ch ([127.0.0.1])
 by localhost (netline-mail3.netline.ch [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id QA7ph4I77QHY; Fri, 23 Jul 2021 09:58:58 +0200 (CEST)
Received: from kaveri (24.99.2.85.dynamic.wline.res.cust.swisscom.ch
 [85.2.99.24])
 by netline-mail3.netline.ch (Postfix) with ESMTPA id 6202F20201A;
 Fri, 23 Jul 2021 09:58:58 +0200 (CEST)
Received: from daenzer by kaveri with local (Exim 4.94.2)
 (envelope-from <michel@daenzer.net>)
 id 1m6q5B-00014N-F3; Fri, 23 Jul 2021 09:58:57 +0200
From: =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>
To: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Fri, 23 Jul 2021 09:58:57 +0200
Message-Id: <20210723075857.4065-1-michel@daenzer.net>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH] dma-buf/poll: Get a file reference for
 outstanding fence callbacks
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
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
Cc: linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

RnJvbTogTWljaGVsIETDpG56ZXIgPG1kYWVuemVyQHJlZGhhdC5jb20+CgpUaGlzIG1ha2VzIHN1
cmUgd2UgZG9uJ3QgaGl0IHRoZQoKCUJVR19PTihkbWFidWYtPmNiX2luLmFjdGl2ZSB8fCBkbWFi
dWYtPmNiX291dC5hY3RpdmUpOwoKaW4gZG1hX2J1Zl9yZWxlYXNlLCB3aGljaCBjb3VsZCBiZSB0
cmlnZ2VyZWQgYnkgdXNlciBzcGFjZSBjbG9zaW5nIHRoZQpkbWEtYnVmIGZpbGUgZGVzY3JpcHRp
b24gd2hpbGUgdGhlcmUgYXJlIG91dHN0YW5kaW5nIGZlbmNlIGNhbGxiYWNrcwpmcm9tIGRtYV9i
dWZfcG9sbC4KCkNjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnClNpZ25lZC1vZmYtYnk6IE1pY2hl
bCBEw6RuemVyIDxtZGFlbnplckByZWRoYXQuY29tPgotLS0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEt
YnVmLmMgfCAxOCArKysrKysrKysrKystLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRp
b25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
YnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCmluZGV4IDZjNTIwYzliZDkzYy4uZWMy
NTQ5OGE5NzFmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCisrKyBiL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKQEAgLTY1LDEyICs2NSw5IEBAIHN0YXRpYyB2b2lkIGRt
YV9idWZfcmVsZWFzZShzdHJ1Y3QgZGVudHJ5ICpkZW50cnkpCiAJQlVHX09OKGRtYWJ1Zi0+dm1h
cHBpbmdfY291bnRlcik7CiAKIAkvKgotCSAqIEFueSBmZW5jZXMgdGhhdCBhIGRtYS1idWYgcG9s
bCBjYW4gd2FpdCBvbiBzaG91bGQgYmUgc2lnbmFsZWQKLQkgKiBiZWZvcmUgcmVsZWFzaW5nIGRt
YS1idWYuIFRoaXMgaXMgdGhlIHJlc3BvbnNpYmlsaXR5IG9mIGVhY2gKLQkgKiBkcml2ZXIgdGhh
dCB1c2VzIHRoZSByZXNlcnZhdGlvbiBvYmplY3RzLgotCSAqCi0JICogSWYgeW91IGhpdCB0aGlz
IEJVRygpIGl0IG1lYW5zIHNvbWVvbmUgZHJvcHBlZCB0aGVpciByZWYgdG8gdGhlCi0JICogZG1h
LWJ1ZiB3aGlsZSBzdGlsbCBoYXZpbmcgcGVuZGluZyBvcGVyYXRpb24gdG8gdGhlIGJ1ZmZlci4K
KwkgKiBJZiB5b3UgaGl0IHRoaXMgQlVHKCkgaXQgY291bGQgbWVhbjoKKwkgKiAqIFRoZXJlJ3Mg
YSBmaWxlIHJlZmVyZW5jZSBpbWJhbGFuY2UgaW4gZG1hX2J1Zl9wb2xsIC8gZG1hX2J1Zl9wb2xs
X2NiIG9yIHNvbWV3aGVyZSBlbHNlCisJICogKiBkbWFidWYtPmNiX2luL291dC5hY3RpdmUgYXJl
IG5vbi0wIGRlc3BpdGUgbm8gcGVuZGluZyBmZW5jZSBjYWxsYmFjawogCSAqLwogCUJVR19PTihk
bWFidWYtPmNiX2luLmFjdGl2ZSB8fCBkbWFidWYtPmNiX291dC5hY3RpdmUpOwogCkBAIC0xOTYs
NiArMTkzLDcgQEAgc3RhdGljIGxvZmZfdCBkbWFfYnVmX2xsc2VlayhzdHJ1Y3QgZmlsZSAqZmls
ZSwgbG9mZl90IG9mZnNldCwgaW50IHdoZW5jZSkKIHN0YXRpYyB2b2lkIGRtYV9idWZfcG9sbF9j
YihzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgc3RydWN0IGRtYV9mZW5jZV9jYiAqY2IpCiB7CiAJ
c3RydWN0IGRtYV9idWZfcG9sbF9jYl90ICpkY2IgPSAoc3RydWN0IGRtYV9idWZfcG9sbF9jYl90
ICopY2I7CisJc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiA9IGNvbnRhaW5lcl9vZihkY2ItPnBvbGws
IHN0cnVjdCBkbWFfYnVmLCBwb2xsKTsKIAl1bnNpZ25lZCBsb25nIGZsYWdzOwogCiAJc3Bpbl9s
b2NrX2lycXNhdmUoJmRjYi0+cG9sbC0+bG9jaywgZmxhZ3MpOwpAQCAtMjAzLDYgKzIwMSw4IEBA
IHN0YXRpYyB2b2lkIGRtYV9idWZfcG9sbF9jYihzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgc3Ry
dWN0IGRtYV9mZW5jZV9jYiAqY2IpCiAJZGNiLT5hY3RpdmUgPSAwOwogCXNwaW5fdW5sb2NrX2ly
cXJlc3RvcmUoJmRjYi0+cG9sbC0+bG9jaywgZmxhZ3MpOwogCWRtYV9mZW5jZV9wdXQoZmVuY2Up
OworCS8qIFBhaXJlZCB3aXRoIGdldF9maWxlIGluIGRtYV9idWZfcG9sbCAqLworCWZwdXQoZG1h
YnVmLT5maWxlKTsKIH0KIAogc3RhdGljIGJvb2wgZG1hX2J1Zl9wb2xsX3NoYXJlZChzdHJ1Y3Qg
ZG1hX3Jlc3YgKnJlc3YsCkBAIC0yNzgsNiArMjc4LDkgQEAgc3RhdGljIF9fcG9sbF90IGRtYV9i
dWZfcG9sbChzdHJ1Y3QgZmlsZSAqZmlsZSwgcG9sbF90YWJsZSAqcG9sbCkKIAkJc3Bpbl91bmxv
Y2tfaXJxKCZkbWFidWYtPnBvbGwubG9jayk7CiAKIAkJaWYgKGV2ZW50cyAmIEVQT0xMT1VUKSB7
CisJCQkvKiBQYWlyZWQgd2l0aCBmcHV0IGluIGRtYV9idWZfcG9sbF9jYiAqLworCQkJZ2V0X2Zp
bGUoZG1hYnVmLT5maWxlKTsKKwogCQkJaWYgKCFkbWFfYnVmX3BvbGxfc2hhcmVkKHJlc3YsIGRj
YikgJiYKIAkJCSAgICAhZG1hX2J1Zl9wb2xsX2V4Y2wocmVzdiwgZGNiKSkKIAkJCQkvKiBObyBj
YWxsYmFjayBxdWV1ZWQsIHdha2UgdXAgYW55IG90aGVyIHdhaXRlcnMgKi8KQEAgLTI5OSw2ICsz
MDIsOSBAQCBzdGF0aWMgX19wb2xsX3QgZG1hX2J1Zl9wb2xsKHN0cnVjdCBmaWxlICpmaWxlLCBw
b2xsX3RhYmxlICpwb2xsKQogCQlzcGluX3VubG9ja19pcnEoJmRtYWJ1Zi0+cG9sbC5sb2NrKTsK
IAogCQlpZiAoZXZlbnRzICYgRVBPTExJTikgeworCQkJLyogUGFpcmVkIHdpdGggZnB1dCBpbiBk
bWFfYnVmX3BvbGxfY2IgKi8KKwkJCWdldF9maWxlKGRtYWJ1Zi0+ZmlsZSk7CisKIAkJCWlmICgh
ZG1hX2J1Zl9wb2xsX2V4Y2wocmVzdiwgZGNiKSkKIAkJCQkvKiBObyBjYWxsYmFjayBxdWV1ZWQs
IHdha2UgdXAgYW55IG90aGVyIHdhaXRlcnMgKi8KIAkJCQlkbWFfYnVmX3BvbGxfY2IoTlVMTCwg
JmRjYi0+Y2IpOwotLSAKMi4zMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8v
bGluYXJvLW1tLXNpZwo=

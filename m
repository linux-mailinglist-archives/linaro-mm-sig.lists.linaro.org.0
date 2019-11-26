Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D68D10A035
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Nov 2019 15:25:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BD7C060C0E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Nov 2019 14:25:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B158361504; Tue, 26 Nov 2019 14:25:54 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 12C0361503;
	Tue, 26 Nov 2019 14:25:28 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id ECC5360C0E
 for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Nov 2019 14:25:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id DDA6D60EFE; Tue, 26 Nov 2019 14:25:24 +0000 (UTC)
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by lists.linaro.org (Postfix) with ESMTPS id D295A60EFE
 for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Nov 2019 14:25:19 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Tue, 26 Nov 2019 15:25:16 +0100
Message-Id: <20191126142516.630200-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH] udmabuf: Remove deleted map/unmap handlers.
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

Q29tbWl0IDdmMGRlOGQ4MDgxNiAoImRtYS1idWY6IERyb3AgZG1hX2J1Zl9rKHVuKW1hcCIpIHJl
bW92ZWQgbWFwL3VubWFwCmhhbmRsZXJzLCBidXQgdGhleSBzdGlsbCBleGlzdGVkIGluIHVkbWFi
dWYuIFJlbW92ZSB0aGVtIHRoZXJlIGFzIHdlbGwKClNpZ25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFu
a2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CkZpeGVzOiA3ZjBkZThk
ODA4MTYgKCJkbWEtYnVmOiBEcm9wIGRtYV9idWZfayh1biltYXAiKQpDYzogU3VtaXQgU2Vtd2Fs
IDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0
ZXJAaW50ZWwuY29tPgpDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCkNjOiBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKLS0tCiBkcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jIHwgMTYgLS0tLS0tLS0tLS0tLS0tLQog
MSBmaWxlIGNoYW5nZWQsIDE2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1h
LWJ1Zi91ZG1hYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jCmluZGV4IDk2MzU4OTc0
NThhMC4uOWRlNTM5YzFkZWY0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5j
CisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMKQEAgLTkzLDI2ICs5MywxMCBAQCBzdGF0
aWMgdm9pZCByZWxlYXNlX3VkbWFidWYoc3RydWN0IGRtYV9idWYgKmJ1ZikKIAlrZnJlZSh1YnVm
KTsKIH0KIAotc3RhdGljIHZvaWQgKmttYXBfdWRtYWJ1ZihzdHJ1Y3QgZG1hX2J1ZiAqYnVmLCB1
bnNpZ25lZCBsb25nIHBhZ2VfbnVtKQotewotCXN0cnVjdCB1ZG1hYnVmICp1YnVmID0gYnVmLT5w
cml2OwotCXN0cnVjdCBwYWdlICpwYWdlID0gdWJ1Zi0+cGFnZXNbcGFnZV9udW1dOwotCi0JcmV0
dXJuIGttYXAocGFnZSk7Ci19Ci0KLXN0YXRpYyB2b2lkIGt1bm1hcF91ZG1hYnVmKHN0cnVjdCBk
bWFfYnVmICpidWYsIHVuc2lnbmVkIGxvbmcgcGFnZV9udW0sCi0JCQkgICB2b2lkICp2YWRkcikK
LXsKLQlrdW5tYXAodmFkZHIpOwotfQotCiBzdGF0aWMgY29uc3Qgc3RydWN0IGRtYV9idWZfb3Bz
IHVkbWFidWZfb3BzID0gewogCS5tYXBfZG1hX2J1ZgkgID0gbWFwX3VkbWFidWYsCiAJLnVubWFw
X2RtYV9idWYJICA9IHVubWFwX3VkbWFidWYsCiAJLnJlbGVhc2UJICA9IHJlbGVhc2VfdWRtYWJ1
ZiwKLQkubWFwCQkgID0ga21hcF91ZG1hYnVmLAotCS51bm1hcAkJICA9IGt1bm1hcF91ZG1hYnVm
LAogCS5tbWFwCQkgID0gbW1hcF91ZG1hYnVmLAogfTsKIAotLSAKMi4yNC4wCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5h
cm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

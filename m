Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A1F1F5060
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2020 10:34:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 92A6D6171B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2020 08:34:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 855E7617EB; Wed, 10 Jun 2020 08:34:30 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE,SUBJ_OBFU_PUNCT_FEW,SUBJ_OBFU_PUNCT_MANY
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 48D5C61726;
	Wed, 10 Jun 2020 08:33:49 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8393E616DC
 for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jun 2020 08:33:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6E96761726; Wed, 10 Jun 2020 08:33:45 +0000 (UTC)
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by lists.linaro.org (Postfix) with ESMTPS id 17D51616DC
 for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jun 2020 08:33:44 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id jz3so573717pjb.0
 for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jun 2020 01:33:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=viTnGVmiLyU57YRhDhN8zDuiG6dPY/rXax8ClQE3VoA=;
 b=nL+KKso6Ld8Et7vKA/oSM/wRGd5kmDoiFS6Hi8fTG8jz8tXbTeBWicEdREvhNRvGt5
 0qrofQylx6fRK4pqT1Ogrol84zGLWqgayfnMePSWp688hGebFggMilf7LaphE/Q9sLjt
 iLqpEFU8af3Ptp+vWDzuSvyyPHmRRWLbJtG4P8GgCJxECLLyA5VAYHxTgfc/BnGqj9A/
 TUdBYWy93kSPNhUVL5q/CsQxTMyfQguS5qYrr6yx5Azd8FOEpHzO2T7O1CvO3Dy98pcU
 jIYiu1wKq2mdCBvd+sGtjpqO2GYX7XidBTtA2VtiCxMVqwxfAajht3WRXSfX6fu0gaf0
 4Ovw==
X-Gm-Message-State: AOAM533RN/nzMebSRGOqh8jdDMM4jzq0dcKWAw2ayexoRBCQG6uyjBYJ
 BCzzTFxMRbCMsSi5DEukWZG7PP7J
X-Google-Smtp-Source: ABdhPJwfZ7TDmgfra7WP8ts+VSQ6aJltH1PLOXX3lLF1IcXFnAO/Bem91V9zrOxF2Zp3LKeY29dLIw==
X-Received: by 2002:a17:90b:190e:: with SMTP id
 mp14mr1931900pjb.198.1591778023046; 
 Wed, 10 Jun 2020 01:33:43 -0700 (PDT)
Received: from nagraj.local ([49.206.21.239])
 by smtp.gmail.com with ESMTPSA id w18sm12231562pfq.121.2020.06.10.01.33.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 01:33:42 -0700 (PDT)
From: Sumit Semwal <sumit.semwal@linaro.org>
To: linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 10 Jun 2020 14:03:33 +0530
Message-Id: <20200610083333.455-1-sumit.semwal@linaro.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Arnd Bergmann <arnd@arndb.de>, Chenbo Feng <fengc@google.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org,
 syzbot+3643a18836bce555bff6@syzkaller.appspotmail.com,
 Charan Teja Reddy <charante@codeaurora.org>
Subject: [Linaro-mm-sig] [PATCH] dma-buf: Move dma_buf_release() from fops
	to dentry_ops
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

Q2hhcmFuIFRlamEgcmVwb3J0ZWQgYSAndXNlLWFmdGVyLWZyZWUnIGluIGRtYWJ1ZmZzX2RuYW1l
IFsxXSwgd2hpY2gKaGFwcGVucyBpZiB0aGUgZG1hX2J1Zl9yZWxlYXNlKCkgaXMgY2FsbGVkIHdo
aWxlIHRoZSB1c2Vyc3BhY2UgaXMKYWNjZXNzaW5nIHRoZSBkbWFfYnVmIHBzZXVkbyBmcydzIGRt
YWJ1ZmZzX2RuYW1lKCkgaW4gYW5vdGhlciBwcm9jZXNzLAphbmQgZG1hX2J1Zl9yZWxlYXNlKCkg
cmVsZWFzZXMgdGhlIGRtYWJ1ZiBvYmplY3Qgd2hlbiB0aGUgbGFzdCByZWZlcmVuY2UKdG8gdGhl
IHN0cnVjdCBmaWxlIGdvZXMgYXdheS4KCkkgZGlzY3Vzc2VkIHdpdGggQXJuZCBCZXJnbWFubiwg
YW5kIGhlIHN1Z2dlc3RlZCB0aGF0IHJhdGhlciB0aGFuIHR5aW5nCnRoZSBkbWFfYnVmX3JlbGVh
c2UoKSB0byB0aGUgZmlsZV9vcGVyYXRpb25zJyByZWxlYXNlKCksIHdlIGNhbiB0aWUgaXQgdG8K
dGhlIGRlbnRyeV9vcGVyYXRpb25zJyBkX3JlbGVhc2UoKSwgd2hpY2ggd2lsbCBiZSBjYWxsZWQg
d2hlbiB0aGUgbGFzdCByZWYKdG8gdGhlIGRlbnRyeSBpcyByZW1vdmVkLgoKVGhlIHBhdGggZXhl
cmNpc2VkIGJ5IF9fZnB1dCgpIGNhbGxzIGZfb3AtPnJlbGVhc2UoKSBmaXJzdCwgYW5kIHRoZW4g
Y2FsbHMKZHB1dCwgd2hpY2ggZXZlbnR1YWxseSBjYWxscyBkX29wLT5kX3JlbGVhc2UoKS4KCklu
IHRoZSAnbm9ybWFsJyBjYXNlLCB3aGVuIG5vIHVzZXJzcGFjZSBhY2Nlc3MgaXMgaGFwcGVuaW5n
IHZpYSBkbWFfYnVmCnBzZXVkbyBmcywgdGhlcmUgc2hvdWxkIGJlIGV4YWN0bHkgb25lIGZkLCBm
aWxlLCBkZW50cnkgYW5kIGlub2RlLCBzbwpjbG9zaW5nIHRoZSBmZCB3aWxsIGtpbGwgb2YgZXZl
cnl0aGluZyByaWdodCBhd2F5LgoKSW4gdGhlIHByZXNlbnRlZCBjYXNlLCB0aGUgZGVudHJ5J3Mg
ZF9yZWxlYXNlKCkgd2lsbCBiZSBjYWxsZWQgb25seSB3aGVuCnRoZSBkZW50cnkncyBsYXN0IHJl
ZiBpcyByZWxlYXNlZC4KClRoZXJlZm9yZSwgbGV0cyBtb3ZlIGRtYV9idWZfcmVsZWFzZSgpIGZy
b20gZm9wcy0+cmVsZWFzZSgpIHRvCmRfb3BzLT5kX3JlbGVhc2UoKS4KCk1hbnkgdGhhbmtzIHRv
IEFybmQgZm9yIGhpcyBGUyBpbnNpZ2h0cyA6KQoKWzFdOiBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9wYXRjaHdvcmsvcGF0Y2gvMTIzODI3OC8KCkZpeGVzOiBiYjJiYjkwMzA0MjUgKCJkbWEtYnVm
OiBhZGQgRE1BX0JVRl9TRVRfTkFNRSBpb2N0bHMiKQpSZXBvcnRlZC1ieTogc3l6Ym90KzM2NDNh
MTg4MzZiY2U1NTViZmY2QHN5emthbGxlci5hcHBzcG90bWFpbC5jb20KQ2M6IDxzdGFibGVAdmdl
ci5rZXJuZWwub3JnPiBbNS4zK10KQ2M6IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+ClJl
cG9ydGVkLWJ5OiBDaGFyYW4gVGVqYSBSZWRkeSA8Y2hhcmFudGVAY29kZWF1cm9yYS5vcmc+ClNp
Z25lZC1vZmYtYnk6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+Ci0tLQog
ZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyB8IDEzICsrKysrKystLS0tLS0KIDEgZmlsZSBjaGFu
Z2VkLCA3IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKaW5kZXggMDFj
ZTEyNWY4ZThkLi45MmJhNGI2ZWYzZTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
YnVmLmMKKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwpAQCAtNTQsOCArNTQsMTEgQEAg
c3RhdGljIGNoYXIgKmRtYWJ1ZmZzX2RuYW1lKHN0cnVjdCBkZW50cnkgKmRlbnRyeSwgY2hhciAq
YnVmZmVyLCBpbnQgYnVmbGVuKQogCQkJICAgICBkZW50cnktPmRfbmFtZS5uYW1lLCByZXQgPiAw
ID8gbmFtZSA6ICIiKTsKIH0KIAorc3RhdGljIHZvaWQgZG1hX2J1Zl9yZWxlYXNlKHN0cnVjdCBk
ZW50cnkgKmRlbnRyeSk7CisKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZGVudHJ5X29wZXJhdGlvbnMg
ZG1hX2J1Zl9kZW50cnlfb3BzID0gewogCS5kX2RuYW1lID0gZG1hYnVmZnNfZG5hbWUsCisJLmRf
cmVsZWFzZSA9IGRtYV9idWZfcmVsZWFzZSwKIH07CiAKIHN0YXRpYyBzdHJ1Y3QgdmZzbW91bnQg
KmRtYV9idWZfbW50OwpAQCAtNzcsMTQgKzgwLDE0IEBAIHN0YXRpYyBzdHJ1Y3QgZmlsZV9zeXN0
ZW1fdHlwZSBkbWFfYnVmX2ZzX3R5cGUgPSB7CiAJLmtpbGxfc2IgPSBraWxsX2Fub25fc3VwZXIs
CiB9OwogCi1zdGF0aWMgaW50IGRtYV9idWZfcmVsZWFzZShzdHJ1Y3QgaW5vZGUgKmlub2RlLCBz
dHJ1Y3QgZmlsZSAqZmlsZSkKK3N0YXRpYyB2b2lkIGRtYV9idWZfcmVsZWFzZShzdHJ1Y3QgZGVu
dHJ5ICpkZW50cnkpCiB7CiAJc3RydWN0IGRtYV9idWYgKmRtYWJ1ZjsKIAotCWlmICghaXNfZG1h
X2J1Zl9maWxlKGZpbGUpKQotCQlyZXR1cm4gLUVJTlZBTDsKKwlpZiAoZGVudHJ5LT5kX29wICE9
ICZkbWFfYnVmX2RlbnRyeV9vcHMpCisJCXJldHVybjsKIAotCWRtYWJ1ZiA9IGZpbGUtPnByaXZh
dGVfZGF0YTsKKwlkbWFidWYgPSBkZW50cnktPmRfZnNkYXRhOwogCiAJQlVHX09OKGRtYWJ1Zi0+
dm1hcHBpbmdfY291bnRlcik7CiAKQEAgLTExMCw3ICsxMTMsNiBAQCBzdGF0aWMgaW50IGRtYV9i
dWZfcmVsZWFzZShzdHJ1Y3QgaW5vZGUgKmlub2RlLCBzdHJ1Y3QgZmlsZSAqZmlsZSkKIAltb2R1
bGVfcHV0KGRtYWJ1Zi0+b3duZXIpOwogCWtmcmVlKGRtYWJ1Zi0+bmFtZSk7CiAJa2ZyZWUoZG1h
YnVmKTsKLQlyZXR1cm4gMDsKIH0KIAogc3RhdGljIGludCBkbWFfYnVmX21tYXBfaW50ZXJuYWwo
c3RydWN0IGZpbGUgKmZpbGUsIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hKQpAQCAtNDEyLDcg
KzQxNCw2IEBAIHN0YXRpYyB2b2lkIGRtYV9idWZfc2hvd19mZGluZm8oc3RydWN0IHNlcV9maWxl
ICptLCBzdHJ1Y3QgZmlsZSAqZmlsZSkKIH0KIAogc3RhdGljIGNvbnN0IHN0cnVjdCBmaWxlX29w
ZXJhdGlvbnMgZG1hX2J1Zl9mb3BzID0gewotCS5yZWxlYXNlCT0gZG1hX2J1Zl9yZWxlYXNlLAog
CS5tbWFwCQk9IGRtYV9idWZfbW1hcF9pbnRlcm5hbCwKIAkubGxzZWVrCQk9IGRtYV9idWZfbGxz
ZWVrLAogCS5wb2xsCQk9IGRtYV9idWZfcG9sbCwKLS0gCjIuMjcuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

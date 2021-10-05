Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E252B422569
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 13:40:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B2A9F63239
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 11:40:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 78B6A6085A; Tue,  5 Oct 2021 11:40:09 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1DBD06A901;
	Tue,  5 Oct 2021 11:40:02 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5131A60561
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:38:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C2B5A66C0F; Tue,  5 Oct 2021 11:38:09 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
 [209.85.128.53])
 by lists.linaro.org (Postfix) with ESMTPS id 47713607A0
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:38:03 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id z2so16087426wmc.3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 05 Oct 2021 04:38:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=y78+lw9uajwG2nya7zXv9lL0eVUeHEAbTx0GIeLnzI0=;
 b=e4mi27Oq3YlVEcrneTSljO0iFxdWD6NSy7KfjN6JQzzLGENydQHNaD5ZXlQNS57HXg
 V6z+uw0e0WrbV6rjdUVYQ1M3TZiMjwZMhAhjobIbwwweFSgEYjaLcoaVRp1L7qfsgkhx
 pHuB/6uOZNkks6QAEIKvILbDhp9bZ2a1bzk1ZHDeAjkpfO+UEAYayUqsMxyZ6vMZERDW
 U6+s+HZwqPFEhr+hCCx8eWYBtMD0yLyGaCxdH+UlZZkePyis8FO3AGhEqsypTsfJB7ys
 HiOciUOxMqeoI+29d1rYnMnm3gLDtMsNw4nwwEwx3422rr1jLyzstXRF5n3smYVo49lr
 g9rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=y78+lw9uajwG2nya7zXv9lL0eVUeHEAbTx0GIeLnzI0=;
 b=HfwYiOGwMS6sjr3dy8lPpmYcGVSbr4ZMS5mWqfMnBil9V8IDSncLU2NKOmxvzAtFpx
 X9vrfIu3NsWy/w8oEeROK6d7mBX/SvTPy9FoPgOkbu6A6CCePdgr4pWmbyJDXPF/ueFs
 691KGJD45VW8lWwMsN2FP0G8ODRb8KKmY5O0iTpfLBGaM0fZ8QoFL/tMWPX1Jcrtqta+
 XJJ3SuUBOj/2+0MgOl9BVJCx6+yObaYw1eNyhI36XhmIrLPexdZVbyHUr49i2LO2H6fB
 itSbRcgJdr3dzzmhqvyWOdFCtBsrxvfwKmVXCtwFVOrPOjUfXLdbZaDcMhMHvlO27xMS
 ITPw==
X-Gm-Message-State: AOAM532SOkOWYOAz0lMvluuSZsh96X47y0upeQKZr0JnbedeUrGnWtOi
 o3QwmE+6l+osd2+DaCVAsNf0N1xoeEw=
X-Google-Smtp-Source: ABdhPJyslNVLhU/j3RKfrcNX0BbLvueb4NTsL8tx8+qiCeSNd6VOcfLk+ssWP2IJh2hj44goc3yijg==
X-Received: by 2002:a7b:c932:: with SMTP id h18mr2861064wml.41.1633433882153; 
 Tue, 05 Oct 2021 04:38:02 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c5sm1739912wml.9.2021.10.05.04.38.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Oct 2021 04:38:01 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Tue,  5 Oct 2021 13:37:33 +0200
Message-Id: <20211005113742.1101-20-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211005113742.1101-1-christian.koenig@amd.com>
References: <20211005113742.1101-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 19/28] drm/i915: use the new iterator in
 i915_request_await_object v2
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
Cc: tvrtko.ursulin@linux.intel.com, daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgp2MjogYWRkIG1pc3NpbmcgcmN1X3JlYWRfbG9j
aygpL3JjdV9yZWFkX3VubG9jaygpCnYzOiB1c2UgZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2UgaW5z
dGVhZAoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0Bh
bWQuY29tPgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyB8IDM0ICsrKysr
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCsp
LCAyOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlcXVlc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCmluZGV4IGNl
NDQ2NzE2ZDA5Mi4uMzgzOTcxMmViZDIzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlcXVlc3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3Qu
YwpAQCAtMTUwOSwzOCArMTUwOSwxNCBAQCBpOTE1X3JlcXVlc3RfYXdhaXRfb2JqZWN0KHN0cnVj
dCBpOTE1X3JlcXVlc3QgKnRvLAogCQkJICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2Jq
LAogCQkJICBib29sIHdyaXRlKQogewotCXN0cnVjdCBkbWFfZmVuY2UgKmV4Y2w7CisJc3RydWN0
IGRtYV9yZXN2X2l0ZXIgY3Vyc29yOworCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwogCWludCBy
ZXQgPSAwOwogCi0JaWYgKHdyaXRlKSB7Ci0JCXN0cnVjdCBkbWFfZmVuY2UgKipzaGFyZWQ7Ci0J
CXVuc2lnbmVkIGludCBjb3VudCwgaTsKLQotCQlyZXQgPSBkbWFfcmVzdl9nZXRfZmVuY2VzKG9i
ai0+YmFzZS5yZXN2LCAmZXhjbCwgJmNvdW50LAotCQkJCQkgICZzaGFyZWQpOworCWRtYV9yZXN2
X2Zvcl9lYWNoX2ZlbmNlKCZjdXJzb3IsIG9iai0+YmFzZS5yZXN2LCB3cml0ZSwgZmVuY2UpIHsK
KwkJcmV0ID0gaTkxNV9yZXF1ZXN0X2F3YWl0X2RtYV9mZW5jZSh0bywgZmVuY2UpOwogCQlpZiAo
cmV0KQotCQkJcmV0dXJuIHJldDsKLQotCQlmb3IgKGkgPSAwOyBpIDwgY291bnQ7IGkrKykgewot
CQkJcmV0ID0gaTkxNV9yZXF1ZXN0X2F3YWl0X2RtYV9mZW5jZSh0bywgc2hhcmVkW2ldKTsKLQkJ
CWlmIChyZXQpCi0JCQkJYnJlYWs7Ci0KLQkJCWRtYV9mZW5jZV9wdXQoc2hhcmVkW2ldKTsKLQkJ
fQotCi0JCWZvciAoOyBpIDwgY291bnQ7IGkrKykKLQkJCWRtYV9mZW5jZV9wdXQoc2hhcmVkW2ld
KTsKLQkJa2ZyZWUoc2hhcmVkKTsKLQl9IGVsc2UgewotCQlleGNsID0gZG1hX3Jlc3ZfZ2V0X2V4
Y2xfdW5sb2NrZWQob2JqLT5iYXNlLnJlc3YpOwotCX0KLQotCWlmIChleGNsKSB7Ci0JCWlmIChy
ZXQgPT0gMCkKLQkJCXJldCA9IGk5MTVfcmVxdWVzdF9hd2FpdF9kbWFfZmVuY2UodG8sIGV4Y2wp
OwotCi0JCWRtYV9mZW5jZV9wdXQoZXhjbCk7CisJCQlicmVhazsKIAl9CiAKIAlyZXR1cm4gcmV0
OwotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1t
LXNpZwo=

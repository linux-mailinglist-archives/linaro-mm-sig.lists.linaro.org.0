Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2168C4177DA
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 17:33:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B63A26242B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 15:33:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 92E7961ECD; Fri, 24 Sep 2021 15:33:29 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DF26361ECD;
	Fri, 24 Sep 2021 15:33:22 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5790A60F1F
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 15:31:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id F123261A49; Fri, 24 Sep 2021 15:31:42 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by lists.linaro.org (Postfix) with ESMTPS id 039E86341F
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 15:31:36 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id w29so28588877wra.8
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 08:31:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=y78+lw9uajwG2nya7zXv9lL0eVUeHEAbTx0GIeLnzI0=;
 b=iO4CmtdNAnL4uuv8xgnCB16BsxNVtl9ibKpLd6ayJybZbrebzBGngjD239pa1XN9vn
 RESwql8n+MLOmofxMqnr5ZJtbNSAjAp+LM1rba73yQYAR1d5zQk62rr2v+ZChdv+v2FW
 kXM2uIQd8P2iXiVKkNl5y2xUHltmfphvSXBvVHTeJT5fXvF5sIpXasUG3dj9Vmy65iyf
 U8FM+VLTayiyUbzxVG95NIo/rcX9u6mCgbf+aTdIM6NaghwdvhA2Qe7bm3HpjQ/3aKqY
 XtZZiHLMMT2B/EsfYvK+8RPtydU7Hu9eflzOgSMklpRKcaX7bf6c4qX5jQ3lwBpwOPtR
 Fi3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=y78+lw9uajwG2nya7zXv9lL0eVUeHEAbTx0GIeLnzI0=;
 b=1KhacQxN3kHzqxFTMESFB5nhu7IsGAyQDFVvyjPR0Kf0INgIdsIvLE+4scrDKSbnlJ
 klHZz8T0lHQ7sW0DCCNdLAn6BrrFpV/Bg9azc4hS06+/k8QfjG4hPyT7fzcLot2EINwx
 nlMxpq1aMLqaKdZTHbvhqzyicLlUUrD+Mwog7nelUWD6JEqoOu36Pj+cO5U9spROZy4+
 78jLdbkz/j/28CgbERNut8QH8pFVvIrI7rnPnqVUftV98A5JawxL44/16/JkTTR4Ta9b
 Wk+NDlvQBLjP4MHTcFODAxxPl5V9jtBxhAPaDrKbX+/IoQgHD/CwK5xsyGhos2hb6d0Q
 9pig==
X-Gm-Message-State: AOAM533ptfUF/8e3TILG82yEfe8sjNAfbj+CyAIAOxTX2+gmCkRng9eH
 8i/TzVMxhvrfmtlOJ6BHOGmUqIpkmZE=
X-Google-Smtp-Source: ABdhPJyxcD57OlJxWG3U4RdnHWzhMBXfGvx5jpnBs0+/4OjO0WJtsxhWnDdkItuAS//GCUb3gqE/Gg==
X-Received: by 2002:a5d:460a:: with SMTP id t10mr12532920wrq.145.1632497495158; 
 Fri, 24 Sep 2021 08:31:35 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 u25sm9902248wmm.5.2021.09.24.08.31.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Sep 2021 08:31:34 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 24 Sep 2021 17:31:04 +0200
Message-Id: <20210924153113.2159-18-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210924153113.2159-1-christian.koenig@amd.com>
References: <20210924153113.2159-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 18/27] drm/i915: use the new iterator in
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

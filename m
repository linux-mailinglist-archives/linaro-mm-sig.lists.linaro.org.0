Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id ED94741EAA9
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 12:09:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D23286A98F
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 10:09:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 835A76A929; Fri,  1 Oct 2021 10:08:37 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 07F5763525;
	Fri,  1 Oct 2021 10:08:31 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 470D061ED8
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 58E836117A; Fri,  1 Oct 2021 10:06:39 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by lists.linaro.org (Postfix) with ESMTPS id DC3E660EFF
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:30 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id x20so14590319wrg.10
 for <linaro-mm-sig@lists.linaro.org>; Fri, 01 Oct 2021 03:06:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=y78+lw9uajwG2nya7zXv9lL0eVUeHEAbTx0GIeLnzI0=;
 b=BP6jRFQE6j4XrQH1SqYs4MKpf087zibEfrPSq4Yl8tJ6hUX1Ct8GXdHKSdGUctrhzh
 MCea6G8WbuliBoevLNWxXBhVNzlhG2fB8TysQ0cz+JfdOUNjAHSFtknVTzVLnzXbNIrM
 RJDLwKb7N7t0O42P4/jYaZhwS7L6jGYoqgNLG4KXhMjl1BMQ5dNJ53PFlPZ8UH1D7x/V
 b5wgjp0a/CSZvGmOUZ7r4lnSgUdFysONd3bqENiql/yc76UMLPs6yWx1kCY6xZYKWsoc
 S+X/uiLbvXDSgVKviXTmawH8Q6LDskU/tJu/MnrL459scjRVUXqQuN4zsoiS29dOKwYT
 zb8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=y78+lw9uajwG2nya7zXv9lL0eVUeHEAbTx0GIeLnzI0=;
 b=jgN06uON2hsXA2Mk4VyAhrYnfkGYihlHtzPgKoukzE9qliwxhqCt45fnnJcbm8Eri7
 1juqo8iUo4L/+B12tLB3DDtm0JSguNpoph4CGwAW6bZZqiNiQz9od/J+/Esa8gjzq7OV
 /5GzMwVdYCY8bB/FuUzPlUGcpTMsn4hy2O/T0mEL/fig7dZss7u8fgLfG3ospF11//nX
 F27qyXcfCw2VESptdBKZ5vEpetiEvBgKHzzIZyNH37GimVd3etTgZO3YjTIjDeh1FXJE
 4JufTa0kCASCzOx5PuIpSrW7bYwEGczolvXAhKazU7zmOY0eYmTYUPo6CBbe4+ITW36x
 jTQg==
X-Gm-Message-State: AOAM531eudR/zmkHRrU2vGFhm5/YRdm6YrmxKgwhtLAcKFoou1hmDk10
 Ld1ILlwVriZg0jGUZf82r1Eg/1NGDZw=
X-Google-Smtp-Source: ABdhPJxfUTaPbuI7VagQKKHsUlhxfQWHViZmyo/qnbH0HU/kn19HyeiJwQKHXYxtIJ5amoCPz2Lb6Q==
X-Received: by 2002:a5d:6ace:: with SMTP id u14mr11639570wrw.206.1633082789927; 
 Fri, 01 Oct 2021 03:06:29 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 v17sm5746069wro.34.2021.10.01.03.06.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Oct 2021 03:06:29 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri,  1 Oct 2021 12:06:01 +0200
Message-Id: <20211001100610.2899-20-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211001100610.2899-1-christian.koenig@amd.com>
References: <20211001100610.2899-1-christian.koenig@amd.com>
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

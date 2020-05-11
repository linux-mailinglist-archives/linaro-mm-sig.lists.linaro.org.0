Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E6E1CD49A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 May 2020 11:12:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 86E81617CC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 May 2020 09:12:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7250C6183D; Mon, 11 May 2020 09:12:36 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8F4D6617CF;
	Mon, 11 May 2020 09:12:00 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B6BE161778
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2020 09:11:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A9B47617CF; Mon, 11 May 2020 09:11:56 +0000 (UTC)
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by lists.linaro.org (Postfix) with ESMTPS id 1F71D617CC
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2020 09:11:55 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id l18so9917596wrn.6
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2020 02:11:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Q7OJr2fNjgGIcJIqqF9ej5dw8+vyB2iSNpGREcUJdJ8=;
 b=IHHHpk4ohOsbLhB7Kn7j8ekVVxF+zm4oH1jY1AwXLjfWBF4J2bNITwbUi2bP5y9K6c
 6eP2eUsvHcahucPT4tvFO96TuKf145XDNRYTDzaDqG+iUvM8oclMsI3ZBj1RjSXGRTSY
 fn6u1CgBDsBk7kDeqQ5V+zGPIiDpU0n8Tmm8k6wSP6fcUcYsvK0YBdQ8Dci6xoT8jGap
 oxSe33yOEcyphu8iAesG1Nt5H6xuZ0gB3u/IidZBBf0YttXz43t33l9x4Xh7YIkFLhW7
 gyY73TeRa9JCn1QuF/AuV2cDy0Hyp2OL3NR0AMo3AbjYZ4VMkv9Ymho/sUCc4afrt0Zx
 Gk+g==
X-Gm-Message-State: AGi0PuaxF/AZKMfYGpqRwG2f43naG2B3bg3suW/bx2Ya9WBeZIGskcxI
 N7ZpZO3hjH942pVZs2zst+5n1A==
X-Google-Smtp-Source: APiQypKTOisFnohd+WRO0Z88W2Yg66YiWX7rj46BoIw2L57BnjAgP/PH17CP0/qQS37ikw0XH2izsw==
X-Received: by 2002:adf:f3cc:: with SMTP id g12mr6637314wrp.427.1589188314245; 
 Mon, 11 May 2020 02:11:54 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id t4sm17506299wri.54.2020.05.11.02.11.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 02:11:53 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Mon, 11 May 2020 11:11:41 +0200
Message-Id: <20200511091142.208787-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200511091142.208787-1-daniel.vetter@ffwll.ch>
References: <20200511091142.208787-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH 2/3] dma-fence: use default wait function
	for mock fences
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

Tm8gbmVlZCB0byBtaWNyby1vcHRtaXplIHdoZW4gd2UncmUgd2FpdGluZyBpbiBhIG1vY2tlZCBv
YmplY3QgLi4uCgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGlu
dGVsLmNvbT4KQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+CkNjOiBs
aW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwotLS0KIGRyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UuYyB8IDQxIC0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0MSBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLmMgYi9kcml2ZXJzL2Rt
YS1idWYvc3QtZG1hLWZlbmNlLmMKaW5kZXggZTU5MzA2NDM0MWM4Li44MTY2ZDI5ODQ3MDIgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UuYworKysgYi9kcml2ZXJzL2Rt
YS1idWYvc3QtZG1hLWZlbmNlLmMKQEAgLTMzLDUwICszMyw5IEBAIHN0YXRpYyB2b2lkIG1vY2tf
ZmVuY2VfcmVsZWFzZShzdHJ1Y3QgZG1hX2ZlbmNlICpmKQogCWttZW1fY2FjaGVfZnJlZShzbGFi
X2ZlbmNlcywgdG9fbW9ja19mZW5jZShmKSk7CiB9CiAKLXN0cnVjdCB3YWl0X2NiIHsKLQlzdHJ1
Y3QgZG1hX2ZlbmNlX2NiIGNiOwotCXN0cnVjdCB0YXNrX3N0cnVjdCAqdGFzazsKLX07Ci0KLXN0
YXRpYyB2b2lkIG1vY2tfd2FrZXVwKHN0cnVjdCBkbWFfZmVuY2UgKmYsIHN0cnVjdCBkbWFfZmVu
Y2VfY2IgKmNiKQotewotCXdha2VfdXBfcHJvY2Vzcyhjb250YWluZXJfb2YoY2IsIHN0cnVjdCB3
YWl0X2NiLCBjYiktPnRhc2spOwotfQotCi1zdGF0aWMgbG9uZyBtb2NrX3dhaXQoc3RydWN0IGRt
YV9mZW5jZSAqZiwgYm9vbCBpbnRyLCBsb25nIHRpbWVvdXQpCi17Ci0JY29uc3QgaW50IHN0YXRl
ID0gaW50ciA/IFRBU0tfSU5URVJSVVBUSUJMRSA6IFRBU0tfVU5JTlRFUlJVUFRJQkxFOwotCXN0
cnVjdCB3YWl0X2NiIGNiID0geyAudGFzayA9IGN1cnJlbnQgfTsKLQotCWlmIChkbWFfZmVuY2Vf
YWRkX2NhbGxiYWNrKGYsICZjYi5jYiwgbW9ja193YWtldXApKQotCQlyZXR1cm4gdGltZW91dDsK
LQotCXdoaWxlICh0aW1lb3V0KSB7Ci0JCXNldF9jdXJyZW50X3N0YXRlKHN0YXRlKTsKLQotCQlp
ZiAodGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdfU0lHTkFMRURfQklULCAmZi0+ZmxhZ3MpKQotCQkJ
YnJlYWs7Ci0KLQkJaWYgKHNpZ25hbF9wZW5kaW5nX3N0YXRlKHN0YXRlLCBjdXJyZW50KSkKLQkJ
CWJyZWFrOwotCi0JCXRpbWVvdXQgPSBzY2hlZHVsZV90aW1lb3V0KHRpbWVvdXQpOwotCX0KLQlf
X3NldF9jdXJyZW50X3N0YXRlKFRBU0tfUlVOTklORyk7Ci0KLQlpZiAoIWRtYV9mZW5jZV9yZW1v
dmVfY2FsbGJhY2soZiwgJmNiLmNiKSkKLQkJcmV0dXJuIHRpbWVvdXQ7Ci0KLQlpZiAoc2lnbmFs
X3BlbmRpbmdfc3RhdGUoc3RhdGUsIGN1cnJlbnQpKQotCQlyZXR1cm4gLUVSRVNUQVJUU1lTOwot
Ci0JcmV0dXJuIC1FVElNRTsKLX0KLQogc3RhdGljIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3Bz
IG1vY2tfb3BzID0gewogCS5nZXRfZHJpdmVyX25hbWUgPSBtb2NrX25hbWUsCiAJLmdldF90aW1l
bGluZV9uYW1lID0gbW9ja19uYW1lLAotCS53YWl0ID0gbW9ja193YWl0LAogCS5yZWxlYXNlID0g
bW9ja19mZW5jZV9yZWxlYXNlLAogfTsKIAotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApM
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21h
aWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

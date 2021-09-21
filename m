Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E5E41388E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 19:37:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A89536141E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 17:37:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 22C8461653; Tue, 21 Sep 2021 17:37:27 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 752EF61A4B;
	Tue, 21 Sep 2021 17:37:23 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 61BAE611B2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5AEFB61725; Tue, 21 Sep 2021 17:37:10 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by lists.linaro.org (Postfix) with ESMTPS id 2B88C611B2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:07 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id t7so8354505wrw.13
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 10:37:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SwDNgKjUSiYIEL26gGmtpWr9N6eJiYIUhyirBhMCihg=;
 b=JEwHcAATh1ZpVoSYXKBWXuAXv1bDr2J7b1IMtXHoKp7ruPrV27iGamsLCvXNTFzUph
 Ax+xnc41BDjb7Wxh7GLs+N2cLpi/bwC5HRrK8ZAxLL14aBe+do6D4SaahPyqLWVpI2n4
 PS+kbBoK9o1+h7GSltEEY+XOWEmLvqZulKRSyWH59COMP8ipIE5UebYjTOs/1uvXC0tx
 K74qTo+G8Siq0Y/Q2CBa49Kt7VgUCiJ7BmnCWyIhevGvNeah8viF6gaXjiJXxLLRbPQ8
 5geDWgaBA1ccACP4EBanSi9kms7y5yHqIg15A4kfuV03bmnXfYh1gXU2ydlVWJ/RavYR
 h8Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SwDNgKjUSiYIEL26gGmtpWr9N6eJiYIUhyirBhMCihg=;
 b=fyWxAwouzpnJcLT3QCY8/VfrTb+Gr5+07dzlGhBR6fYTJJbjlNeRryBO2Gp8odkut/
 NEur2lliiQPwujNeGpHSKw3+02ZTNM3uqp9otDLCDQOapADrXmyJmPLWqrTnZTJf1Dnt
 7PG07lsSeUh7s06xOvZv2/H3e7mOd0HoQTU8qswizsNcET45Lp5L+7cCPRFmg0UqqN4b
 haB1CpoaUuGDIFFah+D6BaIV8RHeYKwsOrzhUoqf81/zhwQvgOiLIbZVsz3IF9ve1+RI
 ukekLH2K82kPa8a3Ub+r0F+5ivG05oOr/B37xZP7ItEauFiw5k7A0hE1UAcbeYUxRkZ4
 4Y2Q==
X-Gm-Message-State: AOAM531v6ETFKCL3jaSYdvcjh8qNGEEHgqnK0+LwJopTovbUXS8/uI1v
 har7peBRqQU7vhuAYNqnXJqnWBE3sl4=
X-Google-Smtp-Source: ABdhPJyyOj/FTXHy67QtzwEuti9n5GDcIx4xSLf3NFAF5Pl2imrTWFT1+eKloNSlxJUiqK4LP4YdTA==
X-Received: by 2002:a5d:6944:: with SMTP id r4mr36619835wrw.186.1632245826275; 
 Tue, 21 Sep 2021 10:37:06 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 z13sm23310477wrs.90.2021.09.21.10.37.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Sep 2021 10:37:05 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: ckoenig.leichtzumerken@gmail.com, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Date: Tue, 21 Sep 2021 19:36:38 +0200
Message-Id: <20210921173659.246165-5-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210921173659.246165-1-christian.koenig@amd.com>
References: <20210921173659.246165-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 05/26] dma-buf: use new iterator in
 dma_resv_wait_timeout
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

VGhpcyBtYWtlcyB0aGUgZnVuY3Rpb24gbXVjaCBzaW1wbGVyIHNpbmNlIHRoZSBjb21wbGV4CnJl
dHJ5IGxvZ2ljIGlzIG5vdyBoYW5kbGVkIGVsc2V3aGVyZS4KClNpZ25lZC1vZmYtYnk6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KUmV2aWV3ZWQtYnk6IERhbmll
bCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+Ci0tLQogZHJpdmVycy9kbWEtYnVmL2Rt
YS1yZXN2LmMgfCA2OSArKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgNjEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3Yu
YwppbmRleCAyYjc0OWNkY2JhMDIuLjgzMzFlNmU0ZjlmYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9k
bWEtYnVmL2RtYS1yZXN2LmMKKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKQEAgLTYx
MSw3NCArNjExLDIxIEBAIGxvbmcgZG1hX3Jlc3Zfd2FpdF90aW1lb3V0KHN0cnVjdCBkbWFfcmVz
diAqb2JqLCBib29sIHdhaXRfYWxsLCBib29sIGludHIsCiAJCQkgICB1bnNpZ25lZCBsb25nIHRp
bWVvdXQpCiB7CiAJbG9uZyByZXQgPSB0aW1lb3V0ID8gdGltZW91dCA6IDE7Ci0JdW5zaWduZWQg
aW50IHNlcSwgc2hhcmVkX2NvdW50OworCXN0cnVjdCBkbWFfcmVzdl9pdGVyIGN1cnNvcjsKIAlz
dHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKLQlpbnQgaTsKLQotcmV0cnk6Ci0Jc2hhcmVkX2NvdW50
ID0gMDsKLQlzZXEgPSByZWFkX3NlcWNvdW50X2JlZ2luKCZvYmotPnNlcSk7Ci0JcmN1X3JlYWRf
bG9jaygpOwotCWkgPSAtMTsKLQotCWZlbmNlID0gZG1hX3Jlc3ZfZXhjbF9mZW5jZShvYmopOwot
CWlmIChmZW5jZSAmJiAhdGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdfU0lHTkFMRURfQklULCAmZmVu
Y2UtPmZsYWdzKSkgewotCQlpZiAoIWRtYV9mZW5jZV9nZXRfcmN1KGZlbmNlKSkKLQkJCWdvdG8g
dW5sb2NrX3JldHJ5OwotCi0JCWlmIChkbWFfZmVuY2VfaXNfc2lnbmFsZWQoZmVuY2UpKSB7Ci0J
CQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsKLQkJCWZlbmNlID0gTlVMTDsKLQkJfQotCi0JfSBlbHNl
IHsKLQkJZmVuY2UgPSBOVUxMOwotCX0KLQotCWlmICh3YWl0X2FsbCkgewotCQlzdHJ1Y3QgZG1h
X3Jlc3ZfbGlzdCAqZm9iaiA9IGRtYV9yZXN2X3NoYXJlZF9saXN0KG9iaik7Ci0KLQkJaWYgKGZv
YmopCi0JCQlzaGFyZWRfY291bnQgPSBmb2JqLT5zaGFyZWRfY291bnQ7Ci0KLQkJZm9yIChpID0g
MDsgIWZlbmNlICYmIGkgPCBzaGFyZWRfY291bnQ7ICsraSkgewotCQkJc3RydWN0IGRtYV9mZW5j
ZSAqbGZlbmNlOwogCi0JCQlsZmVuY2UgPSByY3VfZGVyZWZlcmVuY2UoZm9iai0+c2hhcmVkW2ld
KTsKLQkJCWlmICh0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19TSUdOQUxFRF9CSVQsCi0JCQkJICAg
ICAmbGZlbmNlLT5mbGFncykpCi0JCQkJY29udGludWU7Ci0KLQkJCWlmICghZG1hX2ZlbmNlX2dl
dF9yY3UobGZlbmNlKSkKLQkJCQlnb3RvIHVubG9ja19yZXRyeTsKLQotCQkJaWYgKGRtYV9mZW5j
ZV9pc19zaWduYWxlZChsZmVuY2UpKSB7Ci0JCQkJZG1hX2ZlbmNlX3B1dChsZmVuY2UpOwotCQkJ
CWNvbnRpbnVlOwotCQkJfQorCWRtYV9yZXN2X2l0ZXJfYmVnaW4oJmN1cnNvciwgb2JqLCB3YWl0
X2FsbCk7CisJZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2VfdW5sb2NrZWQoJmN1cnNvciwgZmVuY2Up
IHsKIAotCQkJZmVuY2UgPSBsZmVuY2U7Ci0JCQlicmVhazsKKwkJcmV0ID0gZG1hX2ZlbmNlX3dh
aXRfdGltZW91dChmZW5jZSwgaW50ciwgcmV0KTsKKwkJaWYgKHJldCA8PSAwKSB7CisJCQlkbWFf
cmVzdl9pdGVyX2VuZCgmY3Vyc29yKTsKKwkJCXJldHVybiByZXQ7CiAJCX0KIAl9CisJZG1hX3Jl
c3ZfaXRlcl9lbmQoJmN1cnNvcik7CiAKLQlyY3VfcmVhZF91bmxvY2soKTsKLQlpZiAoZmVuY2Up
IHsKLQkJaWYgKHJlYWRfc2VxY291bnRfcmV0cnkoJm9iai0+c2VxLCBzZXEpKSB7Ci0JCQlkbWFf
ZmVuY2VfcHV0KGZlbmNlKTsKLQkJCWdvdG8gcmV0cnk7Ci0JCX0KLQotCQlyZXQgPSBkbWFfZmVu
Y2Vfd2FpdF90aW1lb3V0KGZlbmNlLCBpbnRyLCByZXQpOwotCQlkbWFfZmVuY2VfcHV0KGZlbmNl
KTsKLQkJaWYgKHJldCA+IDAgJiYgd2FpdF9hbGwgJiYgKGkgKyAxIDwgc2hhcmVkX2NvdW50KSkK
LQkJCWdvdG8gcmV0cnk7Ci0JfQogCXJldHVybiByZXQ7Ci0KLXVubG9ja19yZXRyeToKLQlyY3Vf
cmVhZF91bmxvY2soKTsKLQlnb3RvIHJldHJ5OwogfQogRVhQT1JUX1NZTUJPTF9HUEwoZG1hX3Jl
c3Zfd2FpdF90aW1lb3V0KTsKIAotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4v
bGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

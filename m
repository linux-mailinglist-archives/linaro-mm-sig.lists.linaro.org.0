Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 778AC45A56E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 15:22:35 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6B15762FAF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 14:22:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 165C462CFB; Tue, 23 Nov 2021 14:22:19 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2D67763136;
	Tue, 23 Nov 2021 14:22:15 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BD8C860BE6
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:21:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 91F746216C; Tue, 23 Nov 2021 14:21:34 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by lists.linaro.org (Postfix) with ESMTPS id 681C7622B0
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:21:32 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id a18so2696915wrn.6
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 06:21:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dLcViOC9XeBrn0i9874Oh2sdjjvie7K1Wv9yyTZ+XyU=;
 b=akxICZXzLT9qtfacHcLRkxnnH4e1GhkjSh2NfXBDrFUxWDM0CP1y0XpXg/zOJaAQqS
 CkuBD1CEOo8tlhe2JFZ8flhAhx/8iEmveVxWH9XRkXbyQBfJaXJ4XwExglAnvBW+M9Hf
 RUtoSugHiY20kI7TAookU8Wudy+fiUsIek1LKBiRBjvlRXt8Wsr2R0Gczi1efK7I2jni
 fEPCuI+Gbme2NajqmrMc75CrMDBp9o/EXq1SnV6tq0h9HikqCjIIKg1ChE+71uWgOGxZ
 aGOnwEt0w9P+DIXzmzPYZcCrd+6e7gxjwuUcfTLFUyoS9eflr6A04/T4A/QQGPDpFT67
 UBLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dLcViOC9XeBrn0i9874Oh2sdjjvie7K1Wv9yyTZ+XyU=;
 b=LAa4dGx2/1nnLZ/BBN9wpXjTTUFPgLHNETqwTWrw/vbXH5ts70Hzo9MIJzMGgGqNzr
 MW1LfyXaev9Ni7ma36RqNVUC/+W3XgRo2hC9c5OFSP5MWVJyrWl/uHgG/XAoE/IW/hcJ
 0NhMQd88+ToZUih50KvvDxtFhb2w0VdBhgPB6k9RoNAo00tEgCzMvFksmLKRf0KfXPgF
 khfaqQoi5eMDp83hAGimXUWLBQTlt7EDINbpUFDjl3DdJU+fXfutrTbesjZkQ5Za1foO
 kXjsMvwRkKsRotZQF+y8b68PAv1DCNXBoMhNfE2eRFe+STMA6vmEpPsIj2RNR9w9K+38
 w8mg==
X-Gm-Message-State: AOAM531Nq9HyIm9SNX/iKN8RK9wzGX+wmqZojU1SImwAoXX9z6CBWofb
 ZUgvGKwxkhOIqHb9lUrz0So=
X-Google-Smtp-Source: ABdhPJwL0j2p6QTFl0fJ4Pb+Hz/6hTqyAYg8+HAIBA7AcBESaZ9Hk4Pop+uh7AuarwcCBR/GqvX45g==
X-Received: by 2002:adf:d1e2:: with SMTP id g2mr7509995wrd.179.1637677291125; 
 Tue, 23 Nov 2021 06:21:31 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id t8sm1645928wmq.32.2021.11.23.06.21.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Nov 2021 06:21:30 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	daniel@ffwll.ch
Date: Tue, 23 Nov 2021 15:20:54 +0100
Message-Id: <20211123142111.3885-10-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211123142111.3885-1-christian.koenig@amd.com>
References: <20211123142111.3885-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 09/26] RDMA: use dma_resv_wait() instead of
 extracting the fence
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
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

VXNlIGRtYV9yZXN2X3dhaXQoKSBpbnN0ZWFkIG9mIGV4dHJhY3RpbmcgdGhlIGV4Y2x1c2l2ZSBm
ZW5jZSBhbmQKd2FpdGluZyBvbiBpdCBtYW51YWxseS4KClNpZ25lZC1vZmYtYnk6IENocmlzdGlh
biBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2luZmluaWJh
bmQvY29yZS91bWVtX2RtYWJ1Zi5jIHwgOCArKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5z
ZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2luZmluaWJh
bmQvY29yZS91bWVtX2RtYWJ1Zi5jIGIvZHJpdmVycy9pbmZpbmliYW5kL2NvcmUvdW1lbV9kbWFi
dWYuYwppbmRleCBmMDc2MDc0MWYyODEuLmQzMmNkNzUzODgzNSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9pbmZpbmliYW5kL2NvcmUvdW1lbV9kbWFidWYuYworKysgYi9kcml2ZXJzL2luZmluaWJhbmQv
Y29yZS91bWVtX2RtYWJ1Zi5jCkBAIC0xNiw3ICsxNiw2IEBAIGludCBpYl91bWVtX2RtYWJ1Zl9t
YXBfcGFnZXMoc3RydWN0IGliX3VtZW1fZG1hYnVmICp1bWVtX2RtYWJ1ZikKIHsKIAlzdHJ1Y3Qg
c2dfdGFibGUgKnNndDsKIAlzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnNnOwotCXN0cnVjdCBkbWFfZmVu
Y2UgKmZlbmNlOwogCXVuc2lnbmVkIGxvbmcgc3RhcnQsIGVuZCwgY3VyID0gMDsKIAl1bnNpZ25l
ZCBpbnQgbm1hcCA9IDA7CiAJaW50IGk7CkBAIC02OCwxMSArNjcsOCBAQCBpbnQgaWJfdW1lbV9k
bWFidWZfbWFwX3BhZ2VzKHN0cnVjdCBpYl91bWVtX2RtYWJ1ZiAqdW1lbV9kbWFidWYpCiAJICog
bWF5IGJlIG5vdCB1cC10by1kYXRlLiBXYWl0IGZvciB0aGUgZXhwb3J0ZXIgdG8gZmluaXNoCiAJ
ICogdGhlIG1pZ3JhdGlvbi4KIAkgKi8KLQlmZW5jZSA9IGRtYV9yZXN2X2V4Y2xfZmVuY2UodW1l
bV9kbWFidWYtPmF0dGFjaC0+ZG1hYnVmLT5yZXN2KTsKLQlpZiAoZmVuY2UpCi0JCXJldHVybiBk
bWFfZmVuY2Vfd2FpdChmZW5jZSwgZmFsc2UpOwotCi0JcmV0dXJuIDA7CisJcmV0dXJuIGRtYV9y
ZXN2X3dhaXRfdGltZW91dCh1bWVtX2RtYWJ1Zi0+YXR0YWNoLT5kbWFidWYtPnJlc3YsIGZhbHNl
LAorCQkJCSAgICAgZmFsc2UsIE1BWF9TQ0hFRFVMRV9USU1FT1VUKTsKIH0KIEVYUE9SVF9TWU1C
T0woaWJfdW1lbV9kbWFidWZfbWFwX3BhZ2VzKTsKIAotLSAKMi4yNS4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8u
b3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

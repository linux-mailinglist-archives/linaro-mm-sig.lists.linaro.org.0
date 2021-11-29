Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B37246149F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 13:08:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0171E611B3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 12:08:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 713AA61A3D; Mon, 29 Nov 2021 12:07:54 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E014D61A48;
	Mon, 29 Nov 2021 12:07:47 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4F61162A45
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C3ED060EA6; Mon, 29 Nov 2021 12:07:18 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
 [209.85.128.52])
 by lists.linaro.org (Postfix) with ESMTPS id 1D72961B00
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:14 +0000 (UTC)
Received: by mail-wm1-f52.google.com with SMTP id
 az34-20020a05600c602200b0033bf8662572so12258485wmb.0
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 04:07:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dLcViOC9XeBrn0i9874Oh2sdjjvie7K1Wv9yyTZ+XyU=;
 b=UABOkQkMsx3b8AE1aqUWcIzMoJSnDFss/wAcVi7moSF4GxMLp+EGkwq9yFczUrxQUu
 ePKRe8KRkZwHXSxu/iKJJ+JXX+Kr1G+tOfUivTevI2h1ca7+vY0BCRGUuLmtZAm9dRfz
 dxXy+b9K058OCKnr6fxX1f28InMGiYiFU1PLQYpOL0tyPsc2TH9+KzngzqH+sIVrzPha
 7N4moqf9vms6aJuwP1TpZepoG78hnC77m6g8m1TGudoROpZuCEq6A+cd3lwztJoJ80iH
 BpCCWqRTbpNQd7kA9KHboKit7cxBHAM1uD6h7Z39RLgvhVp4rXLKKvLhPIL1pGRoRLjW
 lXhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dLcViOC9XeBrn0i9874Oh2sdjjvie7K1Wv9yyTZ+XyU=;
 b=bgNn350UbnHEb3KiwZtVb3XjaRijXV1Xye90nTsifz+1o93WOxH1imN452n2nIWAIs
 VlpBb/Po8vvPDzF2DgujbLscCDiKBuuAhoZR5OQjw5MWnymrPSXq60B58VTxstZswdvW
 f9Rmsude93YOVo+8jlrnkI5ylbq0aKBNl2V5eWglaMTZNpivlBqwvLa50JhBDqTjm7LP
 kNFMDN2Eyg9z+k8SU++MsPVjXeaxRxev+J5A965OkrKlJCaaxeeyyFx+eCevbnhB3U7b
 cZhzzUOvfxlWCy0IR4lNrcLG/JVq2BeuK3hVp+zSp72PxTc/cDsaeXFSRWxSVYV9HWcn
 hAgw==
X-Gm-Message-State: AOAM5325TAH0hxwAHp1peS78JsPrkJVg5Za7bS3nW2PirvI514t9IhBV
 ZmpaIjUQbkps1NmtaDZAGw0=
X-Google-Smtp-Source: ABdhPJyBuq2+7jBLai2fJFG+lkGEmimW29kV0AHD/bcGITv/dKdippw+QrURG+ltqW7PdZ7iFqd+Jg==
X-Received: by 2002:a1c:9d48:: with SMTP id g69mr37049157wme.188.1638187630956; 
 Mon, 29 Nov 2021 04:07:10 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id b6sm20415234wmq.45.2021.11.29.04.07.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Nov 2021 04:07:10 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch
Date: Mon, 29 Nov 2021 13:06:40 +0100
Message-Id: <20211129120659.1815-10-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211129120659.1815-1-christian.koenig@amd.com>
References: <20211129120659.1815-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 09/28] RDMA: use dma_resv_wait() instead of
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

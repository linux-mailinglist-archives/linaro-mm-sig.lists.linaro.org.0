Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F01E46BB4C
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Dec 2021 13:35:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 83C1C62C93
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Dec 2021 12:35:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9753D62D32; Tue,  7 Dec 2021 12:34:46 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 00B0260B41;
	Tue,  7 Dec 2021 12:34:41 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2850060AAA
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Dec 2021 12:34:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 235D761A36; Tue,  7 Dec 2021 12:34:22 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by lists.linaro.org (Postfix) with ESMTPS id F1E3260AAA
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Dec 2021 12:34:19 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id a9so29093871wrr.8
 for <linaro-mm-sig@lists.linaro.org>; Tue, 07 Dec 2021 04:34:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=dLcViOC9XeBrn0i9874Oh2sdjjvie7K1Wv9yyTZ+XyU=;
 b=ksASwDpOozDKfkgmuhUobuf5S+I3igKxv057Mq0YdeUClMti17zjuyO0dtPhIazBsa
 K0CQ6idQkVK53Ighc4orZ61bwrxnVYlaJaNvTiNLm2zT4WyZ1+Vg63hBQxfJwbvIYdgH
 p3wRzx+xtLq68nkO/8Xa5tCLVOrk/XLVqG9ZOBWN7hC945PoSsvp4WzQOBE8wsEGnH++
 6gMVexLIrOGxz0r/ppgDu+yCTAaxb0+Y7nnZ4+HFF1AhVI/8Da63+d8K41B+MZXyyqHW
 8o3spLKQIYxFAipICqIkNy+m6bO+YYK2AIpJaTQEQ2Nk3QfHBjrk/NWgJ9vv+y0WgmRx
 PE8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dLcViOC9XeBrn0i9874Oh2sdjjvie7K1Wv9yyTZ+XyU=;
 b=uCBp1umcRBX2GqZZYGyzs+fi0HdO8h4uOLulNZ3RkNTwh6o0QWTv9CMitL6/F0T9W4
 feK0QJ8xh9EdFxGWO6TRbzBDt5Yp3JFnAsj3SZnaVcouMuGtZA50ypD9fbnAsGxn/6sM
 wa+qWCK1jhv2MCQytddb3/CI03Gtjlv2UdT866yGjxYGwsEGESWh5cPGBxxbrYs/kRGD
 3q4ezYWjY3fz5bhJW2mITq5TQJugnXewHS21DSl1qT6whKf/lHyh+B9FZcUJwZ9p2T1D
 I9TacTPEW18/srxW3F+DnfxbhRIfs1JbsmECvEDVCnC0/CYMUTwYiLTkpv2ASc34w+eJ
 7Mhw==
X-Gm-Message-State: AOAM532IUDVqQlekk2I5CuRY3sjSltrtDYLSmTpqk0xMTkShxaqmaovU
 6FR3N1YsTmMxav8qUAU3v8U=
X-Google-Smtp-Source: ABdhPJzmkbXp8UBZZZZabjHsDdIHC7Z8dlHeQlWcOGJ0jrJG4Bh/1ieAer3oIVyym2DfcGtOqSssTw==
X-Received: by 2002:a5d:5888:: with SMTP id n8mr50578793wrf.234.1638880459108; 
 Tue, 07 Dec 2021 04:34:19 -0800 (PST)
Received: from abel.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
 by smtp.gmail.com with ESMTPSA id f19sm2802203wmq.34.2021.12.07.04.34.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Dec 2021 04:34:18 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Date: Tue,  7 Dec 2021 13:33:52 +0100
Message-Id: <20211207123411.167006-6-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211207123411.167006-1-christian.koenig@amd.com>
References: <20211207123411.167006-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 05/24] RDMA: use dma_resv_wait() instead of
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

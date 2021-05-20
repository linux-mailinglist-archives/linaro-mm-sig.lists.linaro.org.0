Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CBA53919E2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 16:20:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9E85E61502
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 14:20:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 79F02604FC; Wed, 26 May 2021 14:20:04 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 13CD0604F1;
	Wed, 26 May 2021 14:19:58 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7A735605C8
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:03:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 65AFC61174; Thu, 20 May 2021 12:03:37 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 by lists.linaro.org (Postfix) with ESMTPS id EB363605C8
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:03:34 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id n2so17469668wrm.0
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 05:03:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X9eczHip+J0dwqD8Nynlf0SQVH9uQ9i0PT+0Vah0Gl0=;
 b=EBBm/BAj9BTJp956f9eBv+yUCERX2gUNVAM6K/5E4csMp3i8GsP0qbgOm0BU51QRPT
 6nZwAPPp4tiz1c50sSMPznww3MHbW2TC23YqcXaF+HTp7ZnZ9HSGMonK8a1ZKw5SrLH5
 oJpnp4A7uLGuhrKjG6xl92kK2l3WXZ9+gU6bOrPj+wQ1mvnabg1GgtQs7S7B30Y19HIE
 MCTWxGCtlQMnK/H+JaYrycrc2+WEVxcDH//S1RDdP5XUC7hL8qakz0B2Bpve4HW+1qd5
 tu8gFTy3HGzvAwq/DnIU51mjniWNYmOd2pDlwG3048bxvSJ0F4DAUgCO+tlb+dlgUz9Y
 6ckA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X9eczHip+J0dwqD8Nynlf0SQVH9uQ9i0PT+0Vah0Gl0=;
 b=oTNRyGbfAfOHEp/2dUozJ0Xp6wF4KLtXe/ZYw+WpCtM9gdYXICFvb9dOJw5WgoAjkZ
 ghlUDLDfKwGJmxZuSJcF66J3nPkal/u9BrSAYfQRlAjcaJbXb9K6QPcS5g/w3CAPkq5e
 QMSGmYpyXKQw2J47fHIwufh8VbweWEuKGPblXo7mNllVOtQ9mUcY7RuFlh11n3zpj5l/
 Ail/HTXlYY5XPgMNDlfRWJ+MVcBSC99epMxE0IKLboDLMBYCaesPE+o3auEuesLAREuJ
 RI97dr7ZrchzwVi5OymMnDa+GyG+MtSNXJfjnGJmYp5Ji4SpO0kI9o3xUaw58QP352JX
 QUVw==
X-Gm-Message-State: AOAM5335STcdVG1Ozh0r+eozC3U22YwEUZPARoPyizHCUSByPzMV6eIU
 IPgEt6x10U8ewPunudaTx1TXb+9S
X-Google-Smtp-Source: ABdhPJyRIxha+2unj4GubwBfRPOO/kKMbHctRfrTKSCS4y70HgOgR3Rv8Bl0IBQd/a0bAg1psWp//Q==
X-Received: by 2002:adf:ed47:: with SMTP id u7mr3957954wro.254.1621512214037; 
 Thu, 20 May 2021 05:03:34 -0700 (PDT)
Received: from dell.default ([91.110.221.215])
 by smtp.gmail.com with ESMTPSA id j10sm2886332wrt.32.2021.05.20.05.03.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 May 2021 05:03:33 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Date: Thu, 20 May 2021 13:02:42 +0100
Message-Id: <20210520120248.3464013-33-lee.jones@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210520120248.3464013-1-lee.jones@linaro.org>
References: <20210520120248.3464013-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Wed, 26 May 2021 14:18:46 +0000
Subject: [Linaro-mm-sig] [PATCH 32/38] drm/amd/amdgpu/sdma_v4_0: Realign
 functions with their headers
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
Cc: David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 amd-gfx@lists.freedesktop.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Rml4ZXMgdGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdhcm5pbmcocyk6CgogZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvc2RtYV92NF8wLmM6NzY0OiB3YXJuaW5nOiBleHBlY3Rpbmcg
cHJvdG90eXBlIGZvciBzZG1hX3Y0XzBfcGFnZV9yaW5nX3NldF93cHRyKCkuIFByb3RvdHlwZSB3
YXMgZm9yIHNkbWFfdjRfMF9yaW5nX3NldF93cHRyKCkgaW5zdGVhZAogZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvc2RtYV92NF8wLmM6ODMwOiB3YXJuaW5nOiBleHBlY3RpbmcgcHJvdG90eXBl
IGZvciBzZG1hX3Y0XzBfcmluZ19zZXRfd3B0cigpLiBQcm90b3R5cGUgd2FzIGZvciBzZG1hX3Y0
XzBfcGFnZV9yaW5nX3NldF93cHRyKCkgaW5zdGVhZAoKQ2M6IEFsZXggRGV1Y2hlciA8YWxleGFu
ZGVyLmRldWNoZXJAYW1kLmNvbT4KQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtv
ZW5pZ0BhbWQuY29tPgpDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGxpbnV4LmllPgpDYzogRGFu
aWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgpDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13
YWxAbGluYXJvLm9yZz4KQ2M6IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBkcmkt
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5v
cmcKQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpTaWduZWQtb2ZmLWJ5OiBMZWUg
Sm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L3NkbWFfdjRfMC5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L3NkbWFfdjRfMC5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvc2RtYV92NF8wLmMKaW5k
ZXggZDE5NzE4NWY3Nzg5MC4uYWU1NDY0ZTI1MzVhOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvc2RtYV92NF8wLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvc2RtYV92NF8wLmMKQEAgLTc1NCw3ICs3NTQsNyBAQCBzdGF0aWMgdWludDY0X3Qgc2RtYV92
NF8wX3JpbmdfZ2V0X3dwdHIoc3RydWN0IGFtZGdwdV9yaW5nICpyaW5nKQogfQogCiAvKioKLSAq
IHNkbWFfdjRfMF9wYWdlX3Jpbmdfc2V0X3dwdHIgLSBjb21taXQgdGhlIHdyaXRlIHBvaW50ZXIK
KyAqIHNkbWFfdjRfMF9yaW5nX3NldF93cHRyIC0gY29tbWl0IHRoZSB3cml0ZSBwb2ludGVyCiAg
KgogICogQHJpbmc6IGFtZGdwdSByaW5nIHBvaW50ZXIKICAqCkBAIC04MjAsNyArODIwLDcgQEAg
c3RhdGljIHVpbnQ2NF90IHNkbWFfdjRfMF9wYWdlX3JpbmdfZ2V0X3dwdHIoc3RydWN0IGFtZGdw
dV9yaW5nICpyaW5nKQogfQogCiAvKioKLSAqIHNkbWFfdjRfMF9yaW5nX3NldF93cHRyIC0gY29t
bWl0IHRoZSB3cml0ZSBwb2ludGVyCisgKiBzZG1hX3Y0XzBfcGFnZV9yaW5nX3NldF93cHRyIC0g
Y29tbWl0IHRoZSB3cml0ZSBwb2ludGVyCiAgKgogICogQHJpbmc6IGFtZGdwdSByaW5nIHBvaW50
ZXIKICAqCi0tIAoyLjMxLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5h
cm8tbW0tc2lnCg==

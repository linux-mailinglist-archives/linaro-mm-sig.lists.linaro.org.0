Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 176D2113741
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Dec 2019 22:51:42 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DB6DE6175A
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Dec 2019 21:51:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id CE67461778; Wed,  4 Dec 2019 21:51:40 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SUBJ_OBFU_PUNCT_FEW,
	SUBJ_OBFU_PUNCT_MANY autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D4B4B6176E;
	Wed,  4 Dec 2019 21:51:15 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5616061754
 for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Dec 2019 21:51:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3E44F6176E; Wed,  4 Dec 2019 21:51:13 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by lists.linaro.org (Postfix) with ESMTPS id E829561754
 for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Dec 2019 21:51:11 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id y23so5821316wma.0
 for <linaro-mm-sig@lists.linaro.org>; Wed, 04 Dec 2019 13:51:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DineaCUxtXZyF5eVfdeaHcVkj+3QG5rCu+T6TpNdzNc=;
 b=roUIE7B7M1oEPX/OATSaUC8H/8YWy8pyfZzCRwdCzeOg1/ZfAyYXIbpvz/TsZfwADL
 n8bpohRNIAWB5gBbFqAmzvE6k4pEmS8dLDWg/SmFtGFVRW0w6s7Y4IQ75tn1Nv3IZ/Xg
 QYazNbj+T7b7d/bXzdEj7ZV9HqMsFoPafIjRnRNKqhRdx0xs17VmKFdHnG0BCA0OqmcY
 rBdhFrS5kg01PaB6BC4jjXtELyCSFmuEBQOVfXXkH+tzcGvWxzhyegTPsYta6gRdqwcf
 3IOSANzfoYdQIIBzSpgiq7HzLhgiiQwuJKqmbQfYWzA0Hh5soAXjQXU+q5epDHCQC48l
 PXZw==
X-Gm-Message-State: APjAAAUjSSXf3e036AT57i6ahH53dxDl+ZZng7ZwwORVprMaTJWqD12c
 IzG1ZMwPMLTXMa8bid+iuh8wPA==
X-Google-Smtp-Source: APXvYqyveN/NM/BqCSvK0XZhdEBxg9tIPSZ8AR1TcT/KyNPk7ZmH1z0FdS7gJAgyQXflfUm0wgxS1A==
X-Received: by 2002:a7b:c183:: with SMTP id y3mr1816299wmi.0.1575496271035;
 Wed, 04 Dec 2019 13:51:11 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id q6sm10409464wrx.72.2019.12.04.13.51.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 13:51:10 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed,  4 Dec 2019 22:51:05 +0100
Message-Id: <20191204215105.874074-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Rob Herring <robh@kernel.org>, linaro-mm-sig@lists.linaro.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH] MAINTAINERS: Match on dma_buf|fence|resv
	anywhere
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

SSd2ZSBzcGVudCBhIGJpdCB0b28gbXVjaCB0aW1lIHJldmlld2luZyBhbGwga2luZHMgb2YgdXNl
cnMgYWxsIG92ZXIKdGhlIGtlcm5lbCBmb3IgdGhpcyBidWZmZXIgc2hhcmluZyBpbmZyYXN0cnVj
dHVyZS4gQW5kIHNvbWUgb2YgaXQgaXMKYXQgbGVhc3QgcXVlc3Rpb25hYmxlLgoKTWFrZSBzdXJl
IHdlIGF0IGxlYXN0IHNlZSB3aGVuIHRoaXMgc3R1ZmYgZmxpZXMgYnkuCgpBY2tlZC1ieTogRGF2
ZSBBaXJsaWUgPGFpcmxpZWRAZ21haWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVy
IDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2Fs
QGxpbmFyby5vcmc+CkNjOiBNYXVybyBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIrc2Ftc3VuZ0Br
ZXJuZWwub3JnPgpDYzogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9u
Lm9yZz4KQ2M6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+CkNjOiBsaW51eC1tZWRpYUB2
Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwotLS0KIE1B
SU5UQUlORVJTIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1n
aXQgYS9NQUlOVEFJTkVSUyBiL01BSU5UQUlORVJTCmluZGV4IDM3NWRiZWE4YmM4OC4uYzFlM2Rh
MmMxOTQ3IDEwMDY0NAotLS0gYS9NQUlOVEFJTkVSUworKysgYi9NQUlOVEFJTkVSUwpAQCAtNDk0
MSw2ICs0OTQxLDcgQEAgRjoJaW5jbHVkZS9saW51eC9kbWEtYnVmKgogRjoJaW5jbHVkZS9saW51
eC9yZXNlcnZhdGlvbi5oCiBGOglpbmNsdWRlL2xpbnV4LypmZW5jZS5oCiBGOglEb2N1bWVudGF0
aW9uL2RyaXZlci1hcGkvZG1hLWJ1Zi5yc3QKK0s6CWRtYV8oYnVmfGZlbmNlfHJlc3YpCiBUOgln
aXQgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZHJtL2RybS1taXNjCiAKIERNQSBHRU5F
UklDIE9GRkxPQUQgRU5HSU5FIFNVQlNZU1RFTQotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3Jn
L21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

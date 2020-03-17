Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 62BDE187A39
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 Mar 2020 08:16:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 94AB46195A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 Mar 2020 07:16:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 818306199C; Tue, 17 Mar 2020 07:16:26 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SUBJ_OBFU_PUNCT_FEW,
	SUBJ_OBFU_PUNCT_MANY autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BD80D6180F;
	Tue, 17 Mar 2020 07:15:58 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id F406560F21
 for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Mar 2020 07:15:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E5CBE6180F; Tue, 17 Mar 2020 07:15:55 +0000 (UTC)
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by lists.linaro.org (Postfix) with ESMTPS id B64A560F21
 for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Mar 2020 07:15:54 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id m3so20661185wmi.0
 for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Mar 2020 00:15:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MFz/fOJixvWzcvSU4go/rFHGmxjYPGKF/Ch+nsy/6+A=;
 b=Cqi96HbAk0KuidvKuGe1mnwhWy98hz18pTfADx+c9leyV0p4tx5Ri5HPAq589UuXP8
 uxUHTt7gH7uN0eNwhbKky+zQL972TanEN8s6xIfIupr/roRON67yCvgbNk1SLfY5j2q2
 f0px4pm3KHtE1+CcDohfK8ytWb9hV4W4Hh15orwgeWGfUN41pQ/rPeE38tQdIKqYggnm
 l8W+3ODCsbKmuRUZ6oJv6DKyc0k5wp665lOEXxoxoaSSo6rDKfurXhcahZyh7lDfjx10
 pD8rAnYFte1cf+VnEEM6X6ADQftVTtegtwYAPvqhxqtB1X6lZISw4neDgj0z3OUemDAS
 lCbA==
X-Gm-Message-State: ANhLgQ2UTYkUW9zFLd8Zs5+nImhDXvLEGfREAXKFFTsNmzAsO0jKwsO7
 k0+Wi3pdUZ3DdeO04qMHwfbPwQ==
X-Google-Smtp-Source: ADFU+vshR5dL7XEFTVt5fsXsNS9srnBWqq1zc+uhfogGkq31eM9oA0HMTXTh3QU5dIxWcXYALTZGrQ==
X-Received: by 2002:a05:600c:2250:: with SMTP id
 a16mr3486950wmm.57.1584429353745; 
 Tue, 17 Mar 2020 00:15:53 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 9sm2707769wmx.32.2020.03.17.00.15.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Mar 2020 00:15:53 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Tue, 17 Mar 2020 08:15:47 +0100
Message-Id: <20200317071547.1008622-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Joe Perches <joe@perches.com>, Daniel Vetter <daniel.vetter@intel.com>,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH] MAINTAINERS: Better regex for
	dma_buf|fence|resv
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

V2UncmUgZ2V0dGluZyBzb21lIHJhbmRvbSBvdGhlciBzdHVmZiB0aGF0IHdlJ3JlIG5vdCByZWxs
eSBpbnRlcmVzdGVkCmluLCBzbyBtYXRjaCBvbmx5IHdvcmQgYm91bmRhcmllcy4gQWxzbyBhdm9p
ZCB0aGUgY2FwdHVyZSBncm91cCB3aGlsZQphdCBpdC4KClN1Z2dlc3RlZCBieSBKb2UgUGVyY2hl
cy4KCkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGRyaS1kZXZlbEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpDYzogSm9l
IFBlcmNoZXMgPGpvZUBwZXJjaGVzLmNvbT4KQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2Fs
QGxpbmFyby5vcmc+ClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJA
aW50ZWwuY29tPgotLS0KIE1BSU5UQUlORVJTIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvTUFJTlRBSU5FUlMgYi9NQUlO
VEFJTkVSUwppbmRleCAzMDA1YmU2MzhjMmMuLmZjNWQ1YWE1MzE0NyAxMDA2NDQKLS0tIGEvTUFJ
TlRBSU5FUlMKKysrIGIvTUFJTlRBSU5FUlMKQEAgLTUwMjUsNyArNTAyNSw3IEBAIEY6CWluY2x1
ZGUvbGludXgvZG1hLWJ1ZioKIEY6CWluY2x1ZGUvbGludXgvcmVzZXJ2YXRpb24uaAogRjoJaW5j
bHVkZS9saW51eC8qZmVuY2UuaAogRjoJRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL2RtYS1idWYu
cnN0Ci1LOglkbWFfKGJ1ZnxmZW5jZXxyZXN2KQorSzoJJ1xiZG1hXyg/OmJ1ZnxmZW5jZXxyZXN2
KVxiJwogVDoJZ2l0IGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2RybS9kcm0tbWlzYwog
CiBETUEtQlVGIEhFQVBTIEZSQU1FV09SSwotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApM
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21h
aWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

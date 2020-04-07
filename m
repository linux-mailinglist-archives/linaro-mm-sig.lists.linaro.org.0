Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8CC1A0E63
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Apr 2020 15:30:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4967F66098
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Apr 2020 13:30:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3C698661C5; Tue,  7 Apr 2020 13:30:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2638666169;
	Tue,  7 Apr 2020 13:30:13 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1D42066098
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Apr 2020 13:30:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id F2CCA66169; Tue,  7 Apr 2020 13:30:09 +0000 (UTC)
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by lists.linaro.org (Postfix) with ESMTPS id A044866098
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Apr 2020 13:30:08 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id z7so1758622wmk.1
 for <linaro-mm-sig@lists.linaro.org>; Tue, 07 Apr 2020 06:30:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UOi57oHr5s/5E0FnEyTsvZU+8lzzIWA8Vs7n3i5sOy8=;
 b=LpZPcpxbCbZsPZBRkOD3Spy3+zajAxAZH+BshU1xGsOna+4oIokpif+tsapLzJ6xJM
 ssNRKl5j6oqcjohrO1FgNkCo6/1Bqqg0KvbYPJ2g1eFGEmxSQTiEjxBaaI/7VlSmdoR0
 MFrONYEROui27kIv1mkkPbAr9pp/xgS5CfCopmCJFFoedo70dDn4aGCh7YjmCamquIck
 kWoRMFUiDaygovqZLHKfdMFGY8ZiSIhho7nLrjdmgNhW2V98FoyJMN5wATuwqqG/s+0g
 S+7IPwi3YyaluMqGSoIrtIFPIB7mTYLI22m96VTSMkm1pVrQvTsEdO5zDiZCu4n7WIXg
 cXMg==
X-Gm-Message-State: AGi0PuamOcKTVcg1OCA13uEtzU3WFMBONosdyL377Za87t1NZCPvTLUw
 7/KDwMF0BzplaUDGBmGQCcqDaQ==
X-Google-Smtp-Source: APiQypLvHOdwXjsCrF5+Tv9IInpboZOwQ/KzmNwLIRILJMk/8AWfgULjQ2vlsEce0SADJExSiixc9g==
X-Received: by 2002:a1c:e1c1:: with SMTP id y184mr2451445wmg.143.1586266207750; 
 Tue, 07 Apr 2020 06:30:07 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j11sm2446877wmi.33.2020.04.07.06.30.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 06:30:07 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  7 Apr 2020 15:30:02 +0200
Message-Id: <20200407133002.3486387-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Chenbo Feng <fengc@google.com>, Greg Hackmann <ghackmann@google.com>,
 linaro-mm-sig@lists.linaro.org, minchan@kernel.org, jenhaochen@google.com,
 Daniel Vetter <daniel.vetter@intel.com>, Martin Liu <liumartin@google.com>,
 surenb@google.com, linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH] dma-buf: Fix SET_NAME ioctl uapi
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

VGhlIHVhcGkgaXMgdGhlIHNhbWUgb24gMzIgYW5kIDY0IGJpdCwgYnV0IHRoZSBudW1iZXIgaXNu
dC4gRXZlcnlvbmUKd2hvIGJvdGNoZWQgdGhpcyBwbGVhc2UgcmUtcmVhZDoKCmh0dHBzOi8vd3d3
Lmtlcm5lbC5vcmcvZG9jL2h0bWwvdjUuNC1wcmVwcmMtY3B1L2lvY3RsL2JvdGNoaW5nLXVwLWlv
Y3Rscy5odG1sCgpBbHNvLCB0aGUgdHlwZSBhcmd1bWVudCBmb3IgdGhlIGlvY3RsIG1hY3JvcyBp
cyBmb3IgdGhlIHR5cGUgdGhlIHZvaWQKX191c2VyICphcmcgcG9pbnRlciBwb2ludHMgYXQsIHdo
aWNoIGluIHRoaXMgY2FzZSB3b3VsZCBiZSB0aGUKdmFyaWFibGUtc2l6ZWQgY2hhcltdIG9mIGEg
MCB0ZXJtaW5hdGVkIHN0cmluZy4gU28gdGhpcyB3YXMgYm90Y2hlZCBpbgptb3JlIHRoYW4ganVz
dCB0aGUgdXN1YWwgd2F5cy4KCkNjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8u
b3JnPgpDYzogQ2hlbmJvIEZlbmcgPGZlbmdjQGdvb2dsZS5jb20+CkNjOiBHcmVnIEhhY2ttYW5u
IDxnaGFja21hbm5AZ29vZ2xlLmNvbT4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJA
ZmZ3bGwuY2g+CkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpDYzogbWluY2hhbkBrZXJuZWwub3JnCkNjOiBzdXJlbmJAZ29v
Z2xlLmNvbQpDYzogamVuaGFvY2hlbkBnb29nbGUuY29tCkNjOiBNYXJ0aW4gTGl1IDxsaXVtYXJ0
aW5AZ29vZ2xlLmNvbT4KU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRl
ckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyAgICB8IDMgKystCiBp
bmNsdWRlL3VhcGkvbGludXgvZG1hLWJ1Zi5oIHwgNCArKysrCiAyIGZpbGVzIGNoYW5nZWQsIDYg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCmluZGV4IDU3MGM5MjMwMjNl
Ni4uMWQ5MjNiOGU0YzU5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCisr
KyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKQEAgLTM4OCw3ICszODgsOCBAQCBzdGF0aWMg
bG9uZyBkbWFfYnVmX2lvY3RsKHN0cnVjdCBmaWxlICpmaWxlLAogCiAJCXJldHVybiByZXQ7CiAK
LQljYXNlIERNQV9CVUZfU0VUX05BTUU6CisJY2FzZSBETUFfQlVGX1NFVF9OQU1FX0E6CisJY2Fz
ZSBETUFfQlVGX1NFVF9OQU1FX0I6CiAJCXJldHVybiBkbWFfYnVmX3NldF9uYW1lKGRtYWJ1Ziwg
KGNvbnN0IGNoYXIgX191c2VyICopYXJnKTsKIAogCWRlZmF1bHQ6CmRpZmYgLS1naXQgYS9pbmNs
dWRlL3VhcGkvbGludXgvZG1hLWJ1Zi5oIGIvaW5jbHVkZS91YXBpL2xpbnV4L2RtYS1idWYuaApp
bmRleCBkYmM3MDkyZTA0YjUuLjIxZGZhYzgxNWRjMCAxMDA2NDQKLS0tIGEvaW5jbHVkZS91YXBp
L2xpbnV4L2RtYS1idWYuaAorKysgYi9pbmNsdWRlL3VhcGkvbGludXgvZG1hLWJ1Zi5oCkBAIC0z
OSw2ICszOSwxMCBAQCBzdHJ1Y3QgZG1hX2J1Zl9zeW5jIHsKIAogI2RlZmluZSBETUFfQlVGX0JB
U0UJCSdiJwogI2RlZmluZSBETUFfQlVGX0lPQ1RMX1NZTkMJX0lPVyhETUFfQlVGX0JBU0UsIDAs
IHN0cnVjdCBkbWFfYnVmX3N5bmMpCisvKiAzMi82NGJpdG5lc3Mgb2YgdGhpcyB1YXBpIHdhcyBi
b3RjaGVkIGluIGFuZHJvaWQsIHRoZXJlJ3Mgbm8gZGlmZmVyZW5jZQorICogYmV0d2VlbiB0aGVt
IGluIGFjdHVhbCB1YXBpLCB0aGV5J3JlIGp1c3QgZGlmZmVyZW50IG51bWJlcnMuICovCiAjZGVm
aW5lIERNQV9CVUZfU0VUX05BTUUJX0lPVyhETUFfQlVGX0JBU0UsIDEsIGNvbnN0IGNoYXIgKikK
KyNkZWZpbmUgRE1BX0JVRl9TRVRfTkFNRV9BCV9JT1coRE1BX0JVRl9CQVNFLCAxLCB1MzIpCisj
ZGVmaW5lIERNQV9CVUZfU0VUX05BTUVfQglfSU9XKERNQV9CVUZfQkFTRSwgMSwgdTY0KQogCiAj
ZW5kaWYKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFy
by1tbS1zaWcK

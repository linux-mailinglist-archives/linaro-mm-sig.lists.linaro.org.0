Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F00188FE5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 Mar 2020 21:57:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 74A7360820
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 Mar 2020 20:57:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 647966097D; Tue, 17 Mar 2020 20:57:56 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,
	SUBJ_OBFU_PUNCT_FEW,SUBJ_OBFU_PUNCT_MANY autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 61E8C60850;
	Tue, 17 Mar 2020 20:57:08 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 86D5D6080D
 for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Mar 2020 20:56:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 782DD60820; Tue, 17 Mar 2020 20:56:57 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by lists.linaro.org (Postfix) with ESMTPS id C204060820
 for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Mar 2020 20:56:50 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id f7so836282wml.4
 for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Mar 2020 13:56:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=E11XKxa+99XAxvsaAYOAf6rfWCpejdmI/dGXHU0ftc4=;
 b=ofjKXlrGLcrN6IYYHRtx4g5R07A4p6mksg15/sUsCz8itzUAAdse6WAzowLuoPr4WV
 c4tkNMNiRl6dbXQVa3iecoqGPuZYS08HGgLGyq45xg4CPS0RE9wG7EFiYXpaM/KdGMpI
 6+VwvDwuyjfaA7D18Z2nFcL97eFS9URF75J/B82lT1vn8QItbLVoIH1gnDaQfTAbSWha
 Hu6np0sqZruA5yjLPHrt4owzit2XQhHSwfrZgwvHIC6GUeikAoSVoef/QedJbdgx8qd6
 BD/F0LoFXQnsUDGrHeBU6pmsBiPN4u5h1x+TYjTw+G5LqeBbjvYvTy3NyPRcjPqovLXw
 46fg==
X-Gm-Message-State: ANhLgQ1RHND9+9IAnIMl8Es1fqx9fkJuTAiwyyhBuVQUFzlddsioXLbS
 VYdTfXcXVXwezznh2ku5c0VnAw==
X-Google-Smtp-Source: ADFU+vuxLqsX9OOC+HCC5UGSBRT3kQGp9W/anxdsF8DdeGYqstJOLR7/CQB+Sbpa2yhBPeKJsCDERA==
X-Received: by 2002:a05:600c:14d5:: with SMTP id
 i21mr894439wmh.82.1584478609782; 
 Tue, 17 Mar 2020 13:56:49 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id a73sm703837wme.47.2020.03.17.13.56.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Mar 2020 13:56:48 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Tue, 17 Mar 2020 21:56:43 +0100
Message-Id: <20200317205643.1028398-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Joe Perches <joe@perches.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Sam Ravnborg <sam@ravnborg.org>, linux-media@vger.kernel.org
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

V2UncmUgZ2V0dGluZyBzb21lIHJhbmRvbSBvdGhlciBzdHVmZiB0aGF0IHdlJ3JlIG5vdCByZWFs
bHkgaW50ZXJlc3RlZAppbiwgc28gbWF0Y2ggb25seSB3b3JkIGJvdW5kYXJpZXMuIEFsc28gYXZv
aWQgdGhlIGNhcHR1cmUgZ3JvdXAgd2hpbGUKYXQgaXQuCgpTdWdnZXN0ZWQgYnkgSm9lIFBlcmNo
ZXMuCgpDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCkNjOiBkcmktZGV2ZWxAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKQ2M6IEpv
ZSBQZXJjaGVzIDxqb2VAcGVyY2hlcy5jb20+CkNjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdh
bEBsaW5hcm8ub3JnPgpDYzogU2FtIFJhdm5ib3JnIDxzYW1AcmF2bmJvcmcub3JnPgpTaWduZWQt
b2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KLS0tCnYyOiBO
byBzaW5nbGUgcXVvdGVzIGluIE1BSU5UQUlORVJTIChKb2UpCnYzOiBGaXggdHlwbyBpbiBjb21t
aXQgbWVzc2FnZSAoU2FtKQotLS0KIE1BSU5UQUlORVJTIHwgMiArLQogMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvTUFJTlRBSU5FUlMg
Yi9NQUlOVEFJTkVSUwppbmRleCAzMDA1YmU2MzhjMmMuLmVkNjA4OGEwMWJmZSAxMDA2NDQKLS0t
IGEvTUFJTlRBSU5FUlMKKysrIGIvTUFJTlRBSU5FUlMKQEAgLTUwMjUsNyArNTAyNSw3IEBAIEY6
CWluY2x1ZGUvbGludXgvZG1hLWJ1ZioKIEY6CWluY2x1ZGUvbGludXgvcmVzZXJ2YXRpb24uaAog
RjoJaW5jbHVkZS9saW51eC8qZmVuY2UuaAogRjoJRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL2Rt
YS1idWYucnN0Ci1LOglkbWFfKGJ1ZnxmZW5jZXxyZXN2KQorSzoJXGJkbWFfKD86YnVmfGZlbmNl
fHJlc3YpXGIKIFQ6CWdpdCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9kcm0vZHJtLW1p
c2MKIAogRE1BLUJVRiBIRUFQUyBGUkFNRVdPUksKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

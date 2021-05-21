Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF3638C1BC
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 May 2021 10:25:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 07F916174E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 May 2021 08:25:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 847DA6176E; Fri, 21 May 2021 08:25:29 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A4258616BF;
	Fri, 21 May 2021 08:25:26 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9305A6167A
 for <linaro-mm-sig@lists.linaro.org>; Fri, 21 May 2021 08:25:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 87DEE616BF; Fri, 21 May 2021 08:25:24 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
 [209.85.128.46])
 by lists.linaro.org (Postfix) with ESMTPS id 7FB956167A
 for <linaro-mm-sig@lists.linaro.org>; Fri, 21 May 2021 08:25:22 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id
 z19-20020a7bc7d30000b029017521c1fb75so6899760wmk.0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 21 May 2021 01:25:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VuTwYX4Q26caaR9IN1tjc2go7zoMoQua0a3RckpZLx0=;
 b=L+KIDk7nhsI/m97OqsOzeJ8QOYgeF4E8st1gFL5OjUrpBEbmbjBBlvXrkC2k+ne5cW
 8TG39wbXCJd0f3YENUG4pgtsG9qpmPNOKeJrwZthCU6t6An4NNLqCyq48XvZhhdgmdOn
 oFA8Yrr8BXuUxqaJzwl9FiwGJK3ll7uvJ3+1Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VuTwYX4Q26caaR9IN1tjc2go7zoMoQua0a3RckpZLx0=;
 b=Yo2VQMvyATZfQBQKNdEWRCB+hPPtWWqzffzY9//vK/XDhLlvQ6Lj69BNTfKjHWG8EZ
 cQLWUTMnp95X0YX3E75m0RcQchHUG/HN3Tgb+/lk88zmPSfgy7N7Bwrdz2eq5s8HNjvr
 ucwUnvogk1jbwVWNOqvdXLSRQPMfHHxwHFKizdoeFGyfnE/XaeGsiz9M6Xp+LFTw9PFK
 fzym8Dp+N2o3QrOCZUh1hdkQ+QJlb6BAGbvxmM4cDFMS0RTGzUWvupjnRx9Qbj1RvBMi
 EZJxKwzWWNQ9RA6/khyK4dc+SrlUfxUUizq9fp0Uaxp1m7EIsMm+tY7vKjhxS0ubzH2m
 Pvwg==
X-Gm-Message-State: AOAM532+7iGFIMoeOTNEZRKbMTC3sU8vUY5avgf8SCA/b8b6E35biGtU
 ACCTeirf0GMVXaQ7Kxz5bBpdcg==
X-Google-Smtp-Source: ABdhPJwpq8MvTk0i71/cS6Xwd8UgAniNeakCY1BQO7ahoqJqMzvB7DSqVR/JYfS3O+UIO1Toqi+nCQ==
X-Received: by 2002:a05:600c:2c1:: with SMTP id 1mr147948wmn.93.1621585521662; 
 Fri, 21 May 2021 01:25:21 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id n13sm1250976wrg.75.2021.05.21.01.25.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 May 2021 01:25:21 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 21 May 2021 10:24:57 +0200
Message-Id: <20210521082457.1656333-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH] drm/doc: Includ fence chain api
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
Cc: linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

V2UgaGF2ZSB0aGlzIG5pY2Uga2VybmVsZG9jLCBidXQgZm9yZ290IHRvIGluY2x1ZGUgaXQuCgpT
aWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6
IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+CkNjOiAiQ2hyaXN0aWFuIEvD
tm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2Vy
bmVsLm9yZwpDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCi0tLQogRG9jdW1lbnRh
dGlvbi9kcml2ZXItYXBpL2RtYS1idWYucnN0IHwgOSArKysrKysrKysKIDEgZmlsZSBjaGFuZ2Vk
LCA5IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RyaXZlci1hcGkv
ZG1hLWJ1Zi5yc3QgYi9Eb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvZG1hLWJ1Zi5yc3QKaW5kZXgg
N2YzN2VjMzBkOWZkLi43ZjIxNDI1ZDk0MzUgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZHJp
dmVyLWFwaS9kbWEtYnVmLnJzdAorKysgYi9Eb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvZG1hLWJ1
Zi5yc3QKQEAgLTE3OCw2ICsxNzgsMTUgQEAgRE1BIEZlbmNlIEFycmF5CiAuLiBrZXJuZWwtZG9j
OjogaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtYXJyYXkuaAogICAgOmludGVybmFsOgogCitETUEg
RmVuY2UgQ2hhaW4KK35+fn5+fn5+fn5+fn5+fgorCisuLiBrZXJuZWwtZG9jOjogZHJpdmVycy9k
bWEtYnVmL2RtYS1mZW5jZS1jaGFpbi5jCisgICA6ZXhwb3J0OgorCisuLiBrZXJuZWwtZG9jOjog
aW5jbHVkZS9saW51eC9kbWEtZmVuY2UtY2hhaW4uaAorICAgOmludGVybmFsOgorCiBETUEgRmVu
Y2UgdUFCSS9TeW5jIEZpbGUKIH5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgogCi0tIAoyLjMxLjAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczov
L2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

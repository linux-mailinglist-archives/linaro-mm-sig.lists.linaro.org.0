Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 83CB82D7A60
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Dec 2020 17:02:00 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A04A566710
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Dec 2020 16:01:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9210366715; Fri, 11 Dec 2020 16:01:59 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9B30F66721;
	Fri, 11 Dec 2020 15:59:16 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9295E6670D
 for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Dec 2020 15:58:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8500D66714; Fri, 11 Dec 2020 15:58:58 +0000 (UTC)
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by lists.linaro.org (Postfix) with ESMTPS id 9C35C6670D
 for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Dec 2020 15:58:52 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id w5so5795718wrm.11
 for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Dec 2020 07:58:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eI9svEscFFEDHjZ/6rb7PQ6fCEwvLqPuRGZ41CR0IOE=;
 b=s3CLPSgqg4VHLZY1tLxKH6hiEkpvLUcKeCXUrzDXL0gf7/OuJKLQ/KtjU/8lpuHIR9
 EE8k9KUN+mKBMRny1wrv4Re0wdPOXqInRjL4jFD8k+NQvAh5Laxtl6dTuz+HAxLWvOtG
 gKbwn855RLzGCiiIC1MZ+PAvhFKvvgIXxedxV+M0AH52AjXWqY+JznwlklMImOAZqTYW
 GmSjDNsyielH18oq9mj2sJoyjfQMHBhjH48pAmQf9jM50eG0bMoVTVCfEvvCywtfFnFt
 S9k8MmmuP1PklwLgT9zWvxenxBEPVI4CO9TetJxi8gaBfW4XzrekZCNkVou01VWuLxPO
 3/Yg==
X-Gm-Message-State: AOAM532qLRG8X/vbucMFVCLApOnPKwEl6Id6t/Lf8wPQKOgp/gzlSFLT
 4GqQ1wD1/BAA4mFnjbSQZusMag==
X-Google-Smtp-Source: ABdhPJyFxZCqemzt/g6P2XoqMBFJ21XrRke48okT8FQRyUvc+wuGP5q3+cNwooS9ousLaFZvzrTnDw==
X-Received: by 2002:a5d:4a10:: with SMTP id m16mr14958011wrq.18.1607702331851; 
 Fri, 11 Dec 2020 07:58:51 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z21sm14828241wmk.20.2020.12.11.07.58.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Dec 2020 07:58:51 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 11 Dec 2020 16:58:42 +0100
Message-Id: <20201211155843.3348718-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201211155843.3348718-1-daniel.vetter@ffwll.ch>
References: <20201211155843.3348718-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH 3/4] dma-buf: begin/end_cpu might lock the
	dma_resv lock
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

QXQgbGVhc3QgYW1kZ3B1IGFuZCBpOTE1IGRvLCBzbyBsZXRzIGp1c3QgZG9jdW1lbnQgdGhpcyBh
cyB0aGUgcnVsZS4KClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJA
aW50ZWwuY29tPgpDYzogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+CkNj
OiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgpDYzogIkNocmlzdGlhbiBL
w7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+CkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtl
cm5lbC5vcmcKQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwotLS0KIGRyaXZlcnMv
ZG1hLWJ1Zi9kbWEtYnVmLmMgfCA0ICsrKysKIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEt
YnVmL2RtYS1idWYuYwppbmRleCBlMWZhNmM2ZjAyYzQuLjAwZDVhZmU5MDRjYyAxMDA2NDQKLS0t
IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYworKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1
Zi5jCkBAIC0xMTE4LDYgKzExMTgsOCBAQCBpbnQgZG1hX2J1Zl9iZWdpbl9jcHVfYWNjZXNzKHN0
cnVjdCBkbWFfYnVmICpkbWFidWYsCiAJaWYgKFdBUk5fT04oIWRtYWJ1ZikpCiAJCXJldHVybiAt
RUlOVkFMOwogCisJbWlnaHRfbG9jaygmZG1hX2J1Zi0+cmVzdi5sb2NrKTsKKwogCWlmIChkbWFi
dWYtPm9wcy0+YmVnaW5fY3B1X2FjY2VzcykKIAkJcmV0ID0gZG1hYnVmLT5vcHMtPmJlZ2luX2Nw
dV9hY2Nlc3MoZG1hYnVmLCBkaXJlY3Rpb24pOwogCkBAIC0xMTUxLDYgKzExNTMsOCBAQCBpbnQg
ZG1hX2J1Zl9lbmRfY3B1X2FjY2VzcyhzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLAogCiAJV0FSTl9P
TighZG1hYnVmKTsKIAorCW1pZ2h0X2xvY2soJmRtYV9idWYtPnJlc3YubG9jayk7CisKIAlpZiAo
ZG1hYnVmLT5vcHMtPmVuZF9jcHVfYWNjZXNzKQogCQlyZXQgPSBkbWFidWYtPm9wcy0+ZW5kX2Nw
dV9hY2Nlc3MoZG1hYnVmLCBkaXJlY3Rpb24pOwogCi0tIAoyLjI5LjIKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

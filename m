Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 35FBF4177D8
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 17:33:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1AAA161A49
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 15:33:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 689D06216E; Fri, 24 Sep 2021 15:33:30 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E32FF61E96;
	Fri, 24 Sep 2021 15:33:21 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 63DB06241C
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 15:31:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4528A6242A; Fri, 24 Sep 2021 15:31:49 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by lists.linaro.org (Postfix) with ESMTPS id 5D43D62CF6
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 15:31:44 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id w29so28590147wra.8
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 08:31:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vDNZbZcYoW7IFr6lQi88QIbXjkbY+ZD5EoDTFjlvddA=;
 b=qcTCwplmusmyAvJ40fwoarKDm4FklaUId8KuFdmldXBzzf7vYkFVTyGyrhxR1exe+a
 Ti7FFhKsfqQldIbzHeSQHl/TSs9QBtevczGTSyno+qKVRsDPyPX660zU8DjZofoZojaW
 FNBfpXcAWhbxnD1RL0eiFC5NIsuYG9iBDJwWGfziefGeY7RRSGCSKm29W/jS4EI+WeOC
 x2TjnDEX7xTqdcQVq/6V1GNr8UvayIb2+zzF730lCN0tXYiLqK7eUMVsXcW0Dw6sWMCg
 O6fFa1PsdYFIB+Ok6yr8Da4ddQbOIw3OET21Mtlp0kAmgPA7Jzw4pdmsBA8BV/ZPCGtt
 Cf9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vDNZbZcYoW7IFr6lQi88QIbXjkbY+ZD5EoDTFjlvddA=;
 b=fHmW1EpCwIKB+l75UB4OSJfcGlmrGjPfjK7GvXZo+P27xVgv3cKN/IxOCa4nk0xozw
 2sBHsj9coI8qAQUPszsgzxJyxzpJA/QHPuUc02xzAcgm3DZsVpMNIBtbZEmmClpUR/rq
 oFGgTb5vc07/Z8ME2YJZIjplh+AIAQD5JucxmcrTZiUn7jRpTE3APn3i29pv/qPMhYqQ
 9vuuJZ8HahqWO75tqADvQiGHMSyA/lQNHh/sXM/2PNtlzeFxAlX3DDv/H44loFhNaqRv
 RXI8urJRWxnIgfh1X4ZXTlMpBrnjJk/u++VlQjuNTS6wS+LFzqZalRFxoNQYDoCxkTrs
 HnYg==
X-Gm-Message-State: AOAM5317JrNzF0D//wWG0QVuGNq2S0wFhbBoVGre1+ZCDqp3yM7od5h/
 /1axyvlwEYC+ZjvaLX8iE3pHXIBUmgs=
X-Google-Smtp-Source: ABdhPJxH7t42u6+VO/+NY11r/YcaQHT6Oijj6TbR+5kXQxpt0qv0iqBvhkcje1t5rM51uMyYkthXsg==
X-Received: by 2002:a5d:618c:: with SMTP id j12mr11983777wru.189.1632497503516; 
 Fri, 24 Sep 2021 08:31:43 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 u25sm9902248wmm.5.2021.09.24.08.31.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Sep 2021 08:31:43 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 24 Sep 2021 17:31:13 +0200
Message-Id: <20210924153113.2159-27-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210924153113.2159-1-christian.koenig@amd.com>
References: <20210924153113.2159-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 27/27] drm/etnaviv: replace
 dma_resv_get_excl_unlocked
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
Cc: tvrtko.ursulin@linux.intel.com, daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

V2UgY2VydGFpbmx5IGhvbGQgdGhlIHJlc2VydmF0aW9uIGxvY2sgaGVyZSwgbm8gbmVlZCBmb3Ig
dGhlIFJDVSBkYW5jZS4KClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dl
bV9zdWJtaXQuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxl
dGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfZ2Vt
X3N1Ym1pdC5jIGIvZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW1fc3VibWl0LmMK
aW5kZXggNGRkN2Q5ZDU0MWMwLi43ZTE3YmMyYjVkZjEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9ldG5hdml2L2V0bmF2aXZfZ2VtX3N1Ym1pdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9l
dG5hdml2L2V0bmF2aXZfZ2VtX3N1Ym1pdC5jCkBAIC0xOTUsNyArMTk1LDcgQEAgc3RhdGljIGlu
dCBzdWJtaXRfZmVuY2Vfc3luYyhzdHJ1Y3QgZXRuYXZpdl9nZW1fc3VibWl0ICpzdWJtaXQpCiAJ
CQlpZiAocmV0KQogCQkJCXJldHVybiByZXQ7CiAJCX0gZWxzZSB7Ci0JCQliby0+ZXhjbCA9IGRt
YV9yZXN2X2dldF9leGNsX3VubG9ja2VkKHJvYmopOworCQkJYm8tPmV4Y2wgPSBkbWFfZmVuY2Vf
Z2V0KGRtYV9yZXN2X2V4Y2xfZmVuY2Uocm9iaikpOwogCQl9CiAKIAl9Ci0tIAoyLjI1LjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xp
c3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

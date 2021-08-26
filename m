Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8703F84A0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Aug 2021 11:33:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C3AD961C3D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Aug 2021 09:33:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B631F61F0E; Thu, 26 Aug 2021 09:33:48 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 299496050C;
	Thu, 26 Aug 2021 09:33:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2FF88603EB
 for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Aug 2021 09:33:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2DAD16050C; Thu, 26 Aug 2021 09:33:43 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 by lists.linaro.org (Postfix) with ESMTPS id 252FE603EB
 for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Aug 2021 09:33:41 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id
 79-20020a1c0452000000b002e6cf79e572so6419745wme.1
 for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Aug 2021 02:33:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JJwF0PYPmqolDQLzp/yyP0Yq0kNRDALRe2iRCTul0qQ=;
 b=SH0mRD4lFXjf5zfnArdRmdr/H92IkTiRG83+lu46nthRk6g7hsBLFtgm+PlV987nZb
 8qS0NSbfSQEVvJHrd9UuRQQZyRYMk9Om3DXftZgrjCWaMM58LLL7moZvaOPhHV2P6OQY
 zlQ0dHofnwILHwlhcoYEc4vFcvIjxdR6txsQc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JJwF0PYPmqolDQLzp/yyP0Yq0kNRDALRe2iRCTul0qQ=;
 b=O0URvMF3L9E/hSKaF1Rc/xlUJSvon62Uox1lHLCYMq82DEyzMUVzh8WtrA9Fc5e3jE
 YXUNkmafeOgHijcUD4o3gdRWCi++hZF2/2Llx2BprjjkqSVeoUebyWfIQua7U0rWZSAC
 NM3/1E7Q+u0tFgL1xk+vkAFyx8rZLzI+287BMn+ShgjYFKFPD0qH/DTFFnKnHTlskNYA
 0uSbkD0AXHAemQdlJKEM33vlDkZarOV+F3B07m6xYF4ELy5VqGJLo47ACuMIaa+uFz2u
 +F7FfFbjkEWB/p8LlKwqDUa9slxcxC6uMXhuFCWEseTchbFyoziw+wUQ5zOiyhQsdPM6
 L+Fg==
X-Gm-Message-State: AOAM531mRaWzC56vpuvb/0SBdYo1cY2iSsFdhOGZiGsH8jylItLyLYbW
 vk3D7AK9I+bNhZ888lUTPQdo9Q==
X-Google-Smtp-Source: ABdhPJzc23DuJoTC8nNJ25VQNbiKhhUYQ5XEsHa4ESe0XB/c1un0JqfR7O83A2HYXCq/etCBggdOqg==
X-Received: by 2002:a05:600c:1d27:: with SMTP id
 l39mr2677127wms.146.1629970420205; 
 Thu, 26 Aug 2021 02:33:40 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z6sm2088220wmp.1.2021.08.26.02.33.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Aug 2021 02:33:39 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu, 26 Aug 2021 11:33:34 +0200
Message-Id: <20210826093334.1117944-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210817085308.3557257-1-daniel.vetter@ffwll.ch>
References: <20210817085308.3557257-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH] drm/msm: Improve drm/sched point of no
 return rules
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
Cc: Rob Clark <robdclark@chromium.org>, freedreno@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, Rob Clark <robdclark@gmail.com>,
 linux-arm-msm@vger.kernel.org, Daniel Vetter <daniel.vetter@intel.com>,
 Sean Paul <sean@poorly.run>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T3JpZ2luYWxseSBkcm1fc2NoZWRfam9iX2luaXQgd2FzIHRoZSBwb2ludCBvZiBubyByZXR1cm4s
IGFmdGVyIHdoaWNoCmRyaXZlcnMgcmVhbGx5IHNob3VsZCBzdWJtaXQgYSBqb2IuIEkndmUgc3Bs
aXQgdGhhdCB1cCwgd2hpY2ggYWxsb3dzCnVzIHRvIGZpeCB0aGlzIGlzc3VlIHByZXR0eSBlYXNp
bHkuCgpPbmx5IHRoaW5nIHdlIGhhdmUgdG8gdGFrZSBjYXJlIG9mIGlzIHRvIG5vdCBza2lwIHRv
IGVycm9yIHBhdGhzIGFmdGVyCnRoYXQuIE90aGVyIGRyaXZlcnMgZG8gdGhpcyB0aGUgc2FtZSBm
b3Igb3V0LWZlbmNlIGFuZCBzaW1pbGFyIHRoaW5ncy4KCnYyOiBJdCdzIG5vdCByZWFsbHkgYSBi
dWdmaXgsIGp1c3QgYW4gaW1wcm92ZW1lbnQsIHNpbmNlIGFsbApkcm1fc2NoZWRfam9iX2FybSBk
b2VzIGlzIHJlc2VydmUgdGhlIGZlbmNlIG51bWJlci4gQW5kIGdhcHMgc2hvdWxkIGJlCmZpbmUs
IGFzIGxvbmcgYXMgdGhlIGRybV9zY2hlZF9qb2IgZG9lc24ndCBlc2NhcGUgYW55d2hlcmUgYXQg
YWxsLgoKRm9yIHJvYnVzdG5lc3MgaXQncyBzdGlsbCBiZXR0ZXIgdG8gYWxpZ24gd2l0aCBvdGhl
ciBkcml2ZXJzIGhlcmUgYW5kCm5vdCBiYWlsIG91dCBhZnRlciBqb2JfYXJtKCkuCgp2MzogSSBt
aXNwbGFjZWQgZHJtX3NjaGVkX2pvYl9hcm0gYnkgX29uZV8gbGluZSEgVGhhbmtzIHRvIFJvYiBm
b3IKdGVzdGluZyBhbmQgZGVidWcgaGVscC4KCkNjOiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJv
bWl1bS5vcmc+CkNjOiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BnbWFpbC5jb20+CkNjOiBTZWFuIFBh
dWwgPHNlYW5AcG9vcmx5LnJ1bj4KQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFy
by5vcmc+CkNjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4K
Q2M6IGxpbnV4LWFybS1tc21Admdlci5rZXJuZWwub3JnCkNjOiBkcmktZGV2ZWxAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCkNjOiBmcmVlZHJlbm9AbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBsaW51
eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW1fc3VibWl0LmMgfCAxMyArKysrKystLS0t
LS0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbV9zdWJtaXQuYyBiL2RyaXZlcnMv
Z3B1L2RybS9tc20vbXNtX2dlbV9zdWJtaXQuYwppbmRleCA0ZDFjNGQ1ZjZhMmEuLjcxYjhjOGY3
NTJhMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtX3N1Ym1pdC5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbV9zdWJtaXQuYwpAQCAtNTIsOCArNTIsNiBA
QCBzdGF0aWMgc3RydWN0IG1zbV9nZW1fc3VibWl0ICpzdWJtaXRfY3JlYXRlKHN0cnVjdCBkcm1f
ZGV2aWNlICpkZXYsCiAJCXJldHVybiBFUlJfUFRSKHJldCk7CiAJfQogCi0JZHJtX3NjaGVkX2pv
Yl9hcm0oJmpvYi0+YmFzZSk7Ci0KIAl4YV9pbml0X2ZsYWdzKCZzdWJtaXQtPmRlcHMsIFhBX0ZM
QUdTX0FMTE9DKTsKIAogCWtyZWZfaW5pdCgmc3VibWl0LT5yZWYpOwpAQCAtODgwLDYgKzg3OCw4
IEBAIGludCBtc21faW9jdGxfZ2VtX3N1Ym1pdChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lk
ICpkYXRhLAogCiAJc3VibWl0LT5ucl9jbWRzID0gaTsKIAorCWRybV9zY2hlZF9qb2JfYXJtKCZz
dWJtaXQtPmJhc2UpOworCiAJc3VibWl0LT51c2VyX2ZlbmNlID0gZG1hX2ZlbmNlX2dldCgmc3Vi
bWl0LT5iYXNlLnNfZmVuY2UtPmZpbmlzaGVkKTsKIAogCS8qCkBAIC04OTEsMTcgKzg5MSwxNiBA
QCBpbnQgbXNtX2lvY3RsX2dlbV9zdWJtaXQoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAq
ZGF0YSwKIAlpZiAoc3VibWl0LT5mZW5jZV9pZCA8IDApIHsKIAkJcmV0ID0gc3VibWl0LT5mZW5j
ZV9pZCA9IDA7CiAJCXN1Ym1pdC0+ZmVuY2VfaWQgPSAwOwotCQlnb3RvIG91dDsKIAl9CiAKLQlp
ZiAoYXJncy0+ZmxhZ3MgJiBNU01fU1VCTUlUX0ZFTkNFX0ZEX09VVCkgeworCWlmIChyZXQgPT0g
MCAmJiBhcmdzLT5mbGFncyAmIE1TTV9TVUJNSVRfRkVOQ0VfRkRfT1VUKSB7CiAJCXN0cnVjdCBz
eW5jX2ZpbGUgKnN5bmNfZmlsZSA9IHN5bmNfZmlsZV9jcmVhdGUoc3VibWl0LT51c2VyX2ZlbmNl
KTsKIAkJaWYgKCFzeW5jX2ZpbGUpIHsKIAkJCXJldCA9IC1FTk9NRU07Ci0JCQlnb3RvIG91dDsK
KwkJfSBlbHNlIHsKKwkJCWZkX2luc3RhbGwob3V0X2ZlbmNlX2ZkLCBzeW5jX2ZpbGUtPmZpbGUp
OworCQkJYXJncy0+ZmVuY2VfZmQgPSBvdXRfZmVuY2VfZmQ7CiAJCX0KLQkJZmRfaW5zdGFsbChv
dXRfZmVuY2VfZmQsIHN5bmNfZmlsZS0+ZmlsZSk7Ci0JCWFyZ3MtPmZlbmNlX2ZkID0gb3V0X2Zl
bmNlX2ZkOwogCX0KIAogCXN1Ym1pdF9hdHRhY2hfb2JqZWN0X2ZlbmNlcyhzdWJtaXQpOwotLSAK
Mi4zMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
aHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

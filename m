Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B004F3E1309
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 Aug 2021 12:47:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D7E5E62164
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 Aug 2021 10:47:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 608E5619D4; Thu,  5 Aug 2021 10:47:38 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 05ACE634DD;
	Thu,  5 Aug 2021 10:47:32 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id DEF176314C
 for <linaro-mm-sig@lists.linaro.org>; Thu,  5 Aug 2021 10:47:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id DD92161A43; Thu,  5 Aug 2021 10:47:22 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com
 [209.85.218.47])
 by lists.linaro.org (Postfix) with ESMTPS id E059B61A4B
 for <linaro-mm-sig@lists.linaro.org>; Thu,  5 Aug 2021 10:47:19 +0000 (UTC)
Received: by mail-ej1-f47.google.com with SMTP id zb12so4006352ejb.5
 for <linaro-mm-sig@lists.linaro.org>; Thu, 05 Aug 2021 03:47:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=R7FRzFn+3bOqW5k/RlK+Qi1RBn9846dunMWgTD41oxg=;
 b=G/BLtpp/N6RvEE/jwPRm2hU4oWm01qvUFTWsg0ns/TWLxtm5hxzj3TH0CVghO4hegZ
 TLToDLTmF27+QdccU88mEdoc/IVzdG9zDPtMD0/+ilYxrJ2y6FdP9IYEEsT4v23Nfye+
 CdoLd0Xxa6xgsBJqpQHYGjQSokWg0gQAy/PgY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=R7FRzFn+3bOqW5k/RlK+Qi1RBn9846dunMWgTD41oxg=;
 b=bP8MM8jJ+QQ4TGyX9qWOCaMtoSpHuvJ/1h7zD94BNueqWetl8qnqUeP+TpAnWtDNTw
 6moWebTvoRi/IOYhypMMoLE9ONQo5UVHbTd02S7p3GMgQ5MohONu7A4NUilYwC4ouovM
 uD/BhoE5svWOMm7xHMhxDHxr9979nl+2DOzrLzapAXbQg7VsV04k1qC0vvN3n8bJBDK7
 NxfUOCbVJtgcMGLroKc3zVnyjTzEN7hx20epYVEXcI8PEiEW3DELMcMaWYP009WtgRTA
 PBvmLi/o22oExbEMkEiL2oWrR5OXo9ifnAihrWcge5SvNOZwCrtd5You5FjTpB/LHS68
 vUYA==
X-Gm-Message-State: AOAM532Dndbtl2OiJxZAGOFup6/QVHpBvFqrWlhfoGqbibRuX3yZM3u7
 BXZLFeOJuDKZl3ts84IjOBoR4Q==
X-Google-Smtp-Source: ABdhPJwa3WKwZA5kKMU6enAzHf/lI37YHpURmmY1zTbkiaRQLs0fy3Fys/wNWxlo7jId+efob6unzw==
X-Received: by 2002:a17:907:7faa:: with SMTP id
 qk42mr4182248ejc.291.1628160438862; 
 Thu, 05 Aug 2021 03:47:18 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p5sm1578809ejl.73.2021.08.05.03.47.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Aug 2021 03:47:18 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu,  5 Aug 2021 12:46:53 +0200
Message-Id: <20210805104705.862416-9-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
References: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH v5 08/20] drm/lima: use scheduler dependency
 tracking
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
Cc: lima@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, Qiang Yu <yuq825@gmail.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Tm90aGluZyBzcGVjaWFsIGdvaW5nIG9uIGhlcmUuCgpBc2lkZSByZXZpZXdpbmcgdGhlIGNvZGUs
IGl0IHNlZW1zIGxpa2UgZHJtX3NjaGVkX2pvYl9hcm0oKSBzaG91bGQgYmUKbW92ZWQgaW50byBs
aW1hX3NjaGVkX2NvbnRleHRfcXVldWVfdGFzayBhbmQgcHV0IHVuZGVyIHNvbWUgbXV0ZXgKdG9n
ZXRoZXIgd2l0aCBkcm1fc2NoZWRfcHVzaF9qb2IoKS4gU2VlIHRoZSBrZXJuZWxkb2MgZm9yCmRy
bV9zY2hlZF9wdXNoX2pvYigpLgoKdjI6IFJlYmFzZSBvdmVyIHJlbmFtZWQgZnVuY3Rpb25zIHRv
IGFkZCBkZXBlbmRlbmNpZXMuCgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwu
dmV0dGVyQGludGVsLmNvbT4KQ2M6IFFpYW5nIFl1IDx5dXE4MjVAZ21haWwuY29tPgpDYzogU3Vt
aXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4KQ2M6ICJDaHJpc3RpYW4gS8O2bmln
IiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgpDYzogbGltYUBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwpDYzogbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnCi0tLQogZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV9nZW0uYyAgIHwgIDYg
KysrKy0tCiBkcml2ZXJzL2dwdS9kcm0vbGltYS9saW1hX3NjaGVkLmMgfCAyMSAtLS0tLS0tLS0t
LS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFfc2NoZWQuaCB8ICAzIC0tLQog
MyBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDI2IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0v
bGltYS9saW1hX2dlbS5jCmluZGV4IGM1MjhmNDA5ODFiYi4uNjQwYWNjMDYwNDY3IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vbGltYS9saW1hX2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9saW1hL2xpbWFfZ2VtLmMKQEAgLTI2Nyw3ICsyNjcsOSBAQCBzdGF0aWMgaW50IGxpbWFfZ2Vt
X3N5bmNfYm8oc3RydWN0IGxpbWFfc2NoZWRfdGFzayAqdGFzaywgc3RydWN0IGxpbWFfYm8gKmJv
LAogCWlmIChleHBsaWNpdCkKIAkJcmV0dXJuIDA7CiAKLQlyZXR1cm4gZHJtX2dlbV9mZW5jZV9h
cnJheV9hZGRfaW1wbGljaXQoJnRhc2stPmRlcHMsICZiby0+YmFzZS5iYXNlLCB3cml0ZSk7CisJ
cmV0dXJuIGRybV9zY2hlZF9qb2JfYWRkX2ltcGxpY2l0X2RlcGVuZGVuY2llcygmdGFzay0+YmFz
ZSwKKwkJCQkJCSAgICAgICAmYm8tPmJhc2UuYmFzZSwKKwkJCQkJCSAgICAgICB3cml0ZSk7CiB9
CiAKIHN0YXRpYyBpbnQgbGltYV9nZW1fYWRkX2RlcHMoc3RydWN0IGRybV9maWxlICpmaWxlLCBz
dHJ1Y3QgbGltYV9zdWJtaXQgKnN1Ym1pdCkKQEAgLTI4NSw3ICsyODcsNyBAQCBzdGF0aWMgaW50
IGxpbWFfZ2VtX2FkZF9kZXBzKHN0cnVjdCBkcm1fZmlsZSAqZmlsZSwgc3RydWN0IGxpbWFfc3Vi
bWl0ICpzdWJtaXQpCiAJCWlmIChlcnIpCiAJCQlyZXR1cm4gZXJyOwogCi0JCWVyciA9IGRybV9n
ZW1fZmVuY2VfYXJyYXlfYWRkKCZzdWJtaXQtPnRhc2stPmRlcHMsIGZlbmNlKTsKKwkJZXJyID0g
ZHJtX3NjaGVkX2pvYl9hZGRfZGVwZW5kZW5jeSgmc3VibWl0LT50YXNrLT5iYXNlLCBmZW5jZSk7
CiAJCWlmIChlcnIpIHsKIAkJCWRtYV9mZW5jZV9wdXQoZmVuY2UpOwogCQkJcmV0dXJuIGVycjsK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFfc2NoZWQuYyBiL2RyaXZlcnMv
Z3B1L2RybS9saW1hL2xpbWFfc2NoZWQuYwppbmRleCBlOTY4YjVhOGYwYjAuLjk5ZDVmNmYxYTg4
MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV9zY2hlZC5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9saW1hL2xpbWFfc2NoZWQuYwpAQCAtMTM0LDI0ICsxMzQsMTUgQEAgaW50
IGxpbWFfc2NoZWRfdGFza19pbml0KHN0cnVjdCBsaW1hX3NjaGVkX3Rhc2sgKnRhc2ssCiAJdGFz
ay0+bnVtX2JvcyA9IG51bV9ib3M7CiAJdGFzay0+dm0gPSBsaW1hX3ZtX2dldCh2bSk7CiAKLQl4
YV9pbml0X2ZsYWdzKCZ0YXNrLT5kZXBzLCBYQV9GTEFHU19BTExPQyk7Ci0KIAlyZXR1cm4gMDsK
IH0KIAogdm9pZCBsaW1hX3NjaGVkX3Rhc2tfZmluaShzdHJ1Y3QgbGltYV9zY2hlZF90YXNrICp0
YXNrKQogewotCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwotCXVuc2lnbmVkIGxvbmcgaW5kZXg7
CiAJaW50IGk7CiAKIAlkcm1fc2NoZWRfam9iX2NsZWFudXAoJnRhc2stPmJhc2UpOwogCi0JeGFf
Zm9yX2VhY2goJnRhc2stPmRlcHMsIGluZGV4LCBmZW5jZSkgewotCQlkbWFfZmVuY2VfcHV0KGZl
bmNlKTsKLQl9Ci0JeGFfZGVzdHJveSgmdGFzay0+ZGVwcyk7Ci0KIAlpZiAodGFzay0+Ym9zKSB7
CiAJCWZvciAoaSA9IDA7IGkgPCB0YXNrLT5udW1fYm9zOyBpKyspCiAJCQlkcm1fZ2VtX29iamVj
dF9wdXQoJnRhc2stPmJvc1tpXS0+YmFzZS5iYXNlKTsKQEAgLTE4NiwxNyArMTc3LDYgQEAgc3Ry
dWN0IGRtYV9mZW5jZSAqbGltYV9zY2hlZF9jb250ZXh0X3F1ZXVlX3Rhc2soc3RydWN0IGxpbWFf
c2NoZWRfdGFzayAqdGFzaykKIAlyZXR1cm4gZmVuY2U7CiB9CiAKLXN0YXRpYyBzdHJ1Y3QgZG1h
X2ZlbmNlICpsaW1hX3NjaGVkX2RlcGVuZGVuY3koc3RydWN0IGRybV9zY2hlZF9qb2IgKmpvYiwK
LQkJCQkJICAgICAgIHN0cnVjdCBkcm1fc2NoZWRfZW50aXR5ICplbnRpdHkpCi17Ci0Jc3RydWN0
IGxpbWFfc2NoZWRfdGFzayAqdGFzayA9IHRvX2xpbWFfdGFzayhqb2IpOwotCi0JaWYgKCF4YV9l
bXB0eSgmdGFzay0+ZGVwcykpCi0JCXJldHVybiB4YV9lcmFzZSgmdGFzay0+ZGVwcywgdGFzay0+
bGFzdF9kZXArKyk7Ci0KLQlyZXR1cm4gTlVMTDsKLX0KLQogc3RhdGljIGludCBsaW1hX3BtX2J1
c3koc3RydWN0IGxpbWFfZGV2aWNlICpsZGV2KQogewogCWludCByZXQ7CkBAIC00NzIsNyArNDUy
LDYgQEAgc3RhdGljIHZvaWQgbGltYV9zY2hlZF9mcmVlX2pvYihzdHJ1Y3QgZHJtX3NjaGVkX2pv
YiAqam9iKQogfQogCiBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9zY2hlZF9iYWNrZW5kX29wcyBs
aW1hX3NjaGVkX29wcyA9IHsKLQkuZGVwZW5kZW5jeSA9IGxpbWFfc2NoZWRfZGVwZW5kZW5jeSwK
IAkucnVuX2pvYiA9IGxpbWFfc2NoZWRfcnVuX2pvYiwKIAkudGltZWRvdXRfam9iID0gbGltYV9z
Y2hlZF90aW1lZG91dF9qb2IsCiAJLmZyZWVfam9iID0gbGltYV9zY2hlZF9mcmVlX2pvYiwKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFfc2NoZWQuaCBiL2RyaXZlcnMvZ3B1
L2RybS9saW1hL2xpbWFfc2NoZWQuaAppbmRleCBhYzcwMDA2YjBlMjYuLjZhMTE3NjRkODdiMyAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV9zY2hlZC5oCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9saW1hL2xpbWFfc2NoZWQuaApAQCAtMjMsOSArMjMsNiBAQCBzdHJ1Y3QgbGlt
YV9zY2hlZF90YXNrIHsKIAlzdHJ1Y3QgbGltYV92bSAqdm07CiAJdm9pZCAqZnJhbWU7CiAKLQlz
dHJ1Y3QgeGFycmF5IGRlcHM7Ci0JdW5zaWduZWQgbG9uZyBsYXN0X2RlcDsKLQogCXN0cnVjdCBs
aW1hX2JvICoqYm9zOwogCWludCBudW1fYm9zOwogCi0tIAoyLjMyLjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

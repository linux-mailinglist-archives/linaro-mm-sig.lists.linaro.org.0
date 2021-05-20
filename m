Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E233919D3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 16:19:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DFFB461407
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 14:19:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C508361455; Wed, 26 May 2021 14:19:03 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AF96C61500;
	Wed, 26 May 2021 14:18:58 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3A140605C8
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:02:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2D51361161; Thu, 20 May 2021 12:02:58 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41])
 by lists.linaro.org (Postfix) with ESMTPS id 195C9605C8
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:02:56 +0000 (UTC)
Received: by mail-wm1-f41.google.com with SMTP id z130so9024846wmg.2
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 05:02:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lGLjcLP6XbktLbs6h51Tzfo9UCd4ALnwNCABJxfHlD8=;
 b=RswVceEghKvRou9H+Y+n/4SGLr0iHCK4YwE3OtciUiXOYGX33RrcazH0XHhG0gM+FR
 gDrggVWuc+eJ1ovzgkuY+nVHRfRMrHXKxfrg+GjAq4UJ/sIPYyWgLURB/U1ydhi+rjL4
 a0gT7DPM+iyP3Hdl+CY7cNrDKLkgXD97xlVuD0YpS0TAa4vANNYC4IZAtHLY7yOiIGnZ
 TsXH7/P3K+/tLqt6ivBjAxI4vTZTF19wicEn7EeqL1MYCjzYWyLcJe3EkWuV3k4dV2u7
 WSngNPnxaWDxif2K48yALBZJ+wpI3RYui68JmuoX7vY6B1uSkUmP+m9gPbGh1rpieE3S
 mQ5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lGLjcLP6XbktLbs6h51Tzfo9UCd4ALnwNCABJxfHlD8=;
 b=TK54an/eInCaRm4dRaj44e4UguF1KeJA8rQzsxPe6rh/YIA/EcsfwNu6f34eRTuE1a
 XZEWnpswIMAvwr2WHjwpdPBhTm8+dm7hZSZpSBAc938D+OVrAHzDL9XslPBv7vNcB+99
 TtbIgJdYhVIzR0GkcYlFycOrn+r8Yln1FAqUAU0Z0YpCwF/B4XMR+oirnqWQZ+I3wNYW
 3HnDr6l/9fLY0TQOJZSGpK45Wr+AcMzqnu7bqZLvpayP64VAk+Ap7WMmX/PRCcFZ6W4d
 oAjwjlL59WvvvQTAw+CK5yRP8TTgwKq5g4Y9vdohdSMZZAAF2G4lZmWP4TTnOFO8FCxv
 7mBw==
X-Gm-Message-State: AOAM531EFRNfvrzgdKNJ9ASZlJEBfgR7B7rPevOQ+UUE5X7q7Ry7/85b
 W5+FgxR9csjWgG6Q6VWreEM+iZyW
X-Google-Smtp-Source: ABdhPJxYJE37rXT7HUjUcMLnTidaMQQQNRQYf0bEaPu9Z9ouJiVKZK37ju5F7bwa1KL/1nYfylvzFg==
X-Received: by 2002:a1c:e241:: with SMTP id z62mr3728499wmg.135.1621512175250; 
 Thu, 20 May 2021 05:02:55 -0700 (PDT)
Received: from dell.default ([91.110.221.215])
 by smtp.gmail.com with ESMTPSA id j10sm2886332wrt.32.2021.05.20.05.02.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 May 2021 05:02:54 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Date: Thu, 20 May 2021 13:02:13 +0100
Message-Id: <20210520120248.3464013-4-lee.jones@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210520120248.3464013-1-lee.jones@linaro.org>
References: <20210520120248.3464013-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Wed, 26 May 2021 14:18:46 +0000
Subject: [Linaro-mm-sig] [PATCH 03/38] drm/radeon/radeon_cs: Fix incorrectly
 documented function 'radeon_cs_parser_fini'
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
 linaro-mm-sig@lists.linaro.org, Jerome Glisse <glisse@freedesktop.org>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Alex Deucher <alexander.deucher@amd.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Rml4ZXMgdGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdhcm5pbmcocyk6CgogZHJpdmVy
cy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fY3MuYzo0MTc6IHdhcm5pbmc6IGV4cGVjdGluZyBwcm90
b3R5cGUgZm9yIGNzX3BhcnNlcl9maW5pKCkuIFByb3RvdHlwZSB3YXMgZm9yIHJhZGVvbl9jc19w
YXJzZXJfZmluaSgpIGluc3RlYWQKCkNjOiBBbGV4IERldWNoZXIgPGFsZXhhbmRlci5kZXVjaGVy
QGFtZC5jb20+CkNjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNv
bT4KQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT4KQ2M6IERhbmllbCBWZXR0ZXIg
PGRhbmllbEBmZndsbC5jaD4KQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5v
cmc+CkNjOiBKZXJvbWUgR2xpc3NlIDxnbGlzc2VAZnJlZWRlc2t0b3Aub3JnPgpDYzogYW1kLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwpDYzogbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClNpZ25lZC1vZmYtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5v
cmc+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fY3MuYyB8IDIgKy0KIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2NzLmMgYi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9u
L3JhZGVvbl9jcy5jCmluZGV4IDQ4MTYyNTAxYzFlZTYuLjgwYTNiZWU5MzNkNmQgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2NzLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL3JhZGVvbi9yYWRlb25fY3MuYwpAQCAtNDA1LDcgKzQwNSw3IEBAIHN0YXRpYyBpbnQgY21w
X3NpemVfc21hbGxlcl9maXJzdCh2b2lkICpwcml2LCBjb25zdCBzdHJ1Y3QgbGlzdF9oZWFkICph
LAogfQogCiAvKioKLSAqIGNzX3BhcnNlcl9maW5pKCkgLSBjbGVhbiBwYXJzZXIgc3RhdGVzCisg
KiByYWRlb25fY3NfcGFyc2VyX2ZpbmkoKSAtIGNsZWFuIHBhcnNlciBzdGF0ZXMKICAqIEBwYXJz
ZXI6CXBhcnNlciBzdHJ1Y3R1cmUgaG9sZGluZyBwYXJzaW5nIGNvbnRleHQuCiAgKiBAZXJyb3I6
CWVycm9yIG51bWJlcgogICogQGJhY2tvZmY6CWluZGljYXRvciB0byBiYWNrb2ZmIHRoZSByZXNl
cnZhdGlvbgotLSAKMi4zMS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
YXJvLW1tLXNpZwo=

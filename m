Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9945A3919E1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 16:20:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0848761504
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 14:20:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 418A761447; Wed, 26 May 2021 14:19:58 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4E0E16144F;
	Wed, 26 May 2021 14:19:55 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 655506115E
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:03:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6066A61174; Thu, 20 May 2021 12:03:36 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
 [209.85.128.44])
 by lists.linaro.org (Postfix) with ESMTPS id 1809761160
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:03:34 +0000 (UTC)
Received: by mail-wm1-f44.google.com with SMTP id
 l11-20020a05600c4f0bb029017a7cd488f5so2425449wmq.0
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 05:03:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nynxxR/OsBCzgQqs0HwpEzxLm2OUnGw35ueUBnmCZ5g=;
 b=UVushAvSHMxa0C5XeIr0bdnDeei0Y1WMhTJYIgy8dRMkWcdNb44elX1h9GjF+D91/g
 3k64urbysVJKIrBU6PzA9VQ3NsXOwtgj13lRJYOyJYsJA3e0j/9qshxBzBZ6TtR5YRPe
 y/FRBOgs+Ef7wwJovho+qJW4lgNU1EePROSRQxihFEpoh+ATXkOFcIUpzwu4AUnPeVOm
 EeRD4yDhkcOrQtK2qkzw9DlMihFqF2Kcnh/TOt5xZU2mcps7qvrMLId8Ald+2NeO/5nr
 4koCiRAM+2HJ0uXudQpe77PWXptcGWavHthevwz9C/nmG0EBxHYBX7QkwZ5OVHTnadHs
 /Pkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nynxxR/OsBCzgQqs0HwpEzxLm2OUnGw35ueUBnmCZ5g=;
 b=oAfZdUSu8belvxinZjJDCEC5U7ddJtbJOyut0ZN3L4XrG+1wEn4/FGyF0IpQpaEEKa
 K56V92KFaM3dIk4YOG43m3wV7vRmbv3sCbPOGSyT1PZp82jNq8xBJowsad7JSjLU2EFt
 514fWoaQnqPWbNYBXxiF9iylG9lc8CdaD66ZQou0F2RHKpL9IJRUqhb06pZGLp17XF1f
 G4Xi+BWdpj4Aji4lIbXl4yoNYjGZ8WDYrhcnOb+gEiwQ5O9N5XO55OGkb3Wl/G9r43oQ
 IViRYw1hl1gB3V3HQ4S0bA8kDIQoAeo/+IMnnYZVV7Twel8aZR8G2AdpLxA+253RZ918
 uQwg==
X-Gm-Message-State: AOAM530uduc5KD2Am97OKw4mBO0t1Js+vY1eFkvF+MSPtCMx26uTDywi
 Lnq/UVWdM5uyYuvRTlsOIQd4YQHF
X-Google-Smtp-Source: ABdhPJwMr2S46p+INbbf4IlG3gi+W3uNAXiPXWi5P3w8PnLPD7lw+1iFRHCGlUXFBNZ3FsCYsPxzCA==
X-Received: by 2002:a1c:f30a:: with SMTP id q10mr3317496wmq.138.1621512213083; 
 Thu, 20 May 2021 05:03:33 -0700 (PDT)
Received: from dell.default ([91.110.221.215])
 by smtp.gmail.com with ESMTPSA id j10sm2886332wrt.32.2021.05.20.05.03.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 May 2021 05:03:32 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Date: Thu, 20 May 2021 13:02:41 +0100
Message-Id: <20210520120248.3464013-32-lee.jones@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210520120248.3464013-1-lee.jones@linaro.org>
References: <20210520120248.3464013-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Wed, 26 May 2021 14:18:46 +0000
Subject: [Linaro-mm-sig] [PATCH 31/38] drm/amd/amdgpu/sdma_v2_4: Correct
 misnamed function 'sdma_v2_4_ring_emit_hdp_flush()'
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
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Rml4ZXMgdGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdhcm5pbmcocyk6CgogZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvc2RtYV92Ml80LmM6MjgxOiB3YXJuaW5nOiBleHBlY3Rpbmcg
cHJvdG90eXBlIGZvciBzZG1hX3YyXzRfaGRwX2ZsdXNoX3JpbmdfZW1pdCgpLiBQcm90b3R5cGUg
d2FzIGZvciBzZG1hX3YyXzRfcmluZ19lbWl0X2hkcF9mbHVzaCgpIGluc3RlYWQKCkNjOiBBbGV4
IERldWNoZXIgPGFsZXhhbmRlci5kZXVjaGVyQGFtZC5jb20+CkNjOiAiQ2hyaXN0aWFuIEvDtm5p
ZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBs
aW51eC5pZT4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KQ2M6IFN1bWl0IFNl
bXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+CkNjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogbGludXgtbWVk
aWFAdmdlci5rZXJuZWwub3JnCkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKU2ln
bmVkLW9mZi1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9zZG1hX3YyXzQuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L3NkbWFfdjJfNC5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvc2Rt
YV92Ml80LmMKaW5kZXggOWYwZGRhMDQwZWM4OC4uNDUwOWJkNGNjZTJkNiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvc2RtYV92Ml80LmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvc2RtYV92Ml80LmMKQEAgLTI3MSw3ICsyNzEsNyBAQCBzdGF0aWMgdm9p
ZCBzZG1hX3YyXzRfcmluZ19lbWl0X2liKHN0cnVjdCBhbWRncHVfcmluZyAqcmluZywKIH0KIAog
LyoqCi0gKiBzZG1hX3YyXzRfaGRwX2ZsdXNoX3JpbmdfZW1pdCAtIGVtaXQgYW4gaGRwIGZsdXNo
IG9uIHRoZSBETUEgcmluZworICogc2RtYV92Ml80X3JpbmdfZW1pdF9oZHBfZmx1c2ggLSBlbWl0
IGFuIGhkcCBmbHVzaCBvbiB0aGUgRE1BIHJpbmcKICAqCiAgKiBAcmluZzogYW1kZ3B1IHJpbmcg
cG9pbnRlcgogICoKLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbmFyby1tbS1zaWcK

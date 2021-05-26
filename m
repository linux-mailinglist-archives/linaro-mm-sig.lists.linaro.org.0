Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 46BBE391A02
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 16:21:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5DEEE61468
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 14:21:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 591D061457; Wed, 26 May 2021 14:21:16 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0C756618A3;
	Wed, 26 May 2021 14:21:11 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 557036137E
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 May 2021 08:47:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 536D961391; Wed, 26 May 2021 08:47:53 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
 [209.85.128.43])
 by lists.linaro.org (Postfix) with ESMTPS id 4CE056137E
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 May 2021 08:47:51 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id
 l11-20020a05600c4f0bb029017a7cd488f5so54828wmq.0
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 May 2021 01:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GJer5W/toWhPsUhogBXg4zIXSRSHg7fRSySLo0mmvxU=;
 b=c4kUnaRXN1uSNT9CNqKjLxGgwMYV5KPLAkWSyqK5DOgFijFCdPEer5ag+RhVskDw8W
 xD5Wm1G3uhkJQFCh9CEozH8HaqWRsKb3lQa6A8QKchsv4XF45F0g4L4kIRz9YnJzeM6J
 R9O4BkOK8yTJg2L9Eh3RQJB2LisUZWeHoD0TKD7j6TAOWauUevORNcMzXlaLCANb+nWS
 vhmPGu+ZC+SIosHydMuuyePzdK5IqegCQydfd8NglfJf/fOqcywr3kvB2QvDWBTF3LPY
 XXV0kLgr0qrY8mZm+YmZwRmFB/vZoQRUvj0bOzwp3/0UAd60jYd5IU8l8stUaFHUn7kj
 YJkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GJer5W/toWhPsUhogBXg4zIXSRSHg7fRSySLo0mmvxU=;
 b=hltceuTEY17Bp1DftlBmp1j0R9y44R3fSDQ3vPqlPb/uHk2uJxE/XCUrEqxD5ldGaL
 THIK2xKtfUNQ2A0UyJnQ5nle79ETyX63x+N+YpkI9cmeLAcEim9hbKxyuJ55tmmUj0EO
 EHEVvTZaKHoj7xxbSmps5zpLwTS/4U62F2kKoe7ceS3aS/8mKIQXqRpxMVorBkRuPDGA
 gufY6vg4tPi5+zJhleTobaurlVydBKKS2+UFKWddiASLtSJSCaCg/oTDL5h/9jprzddU
 7qAjlrd64fGRFpm2cqu937i1M+UjPt6bqtG3lXFjQNyyZhlSRIaoj3NRa9/+LUhowo9k
 kTUw==
X-Gm-Message-State: AOAM533ZajUqaYCRYPBFkMpMLM+4g0G/hhaYqXSjMmzS4GAQ5TABs13P
 S/uRWzqzoSZHspYzB0IaQpegWPs7
X-Google-Smtp-Source: ABdhPJwHBmPkTr0OwYKxXZYQj65BdllZ8Ja6Z0GE6xo0CnlLEphmyzg+9I2oJbQU8XCK/MwCALnPqg==
X-Received: by 2002:a1c:e284:: with SMTP id z126mr1717895wmg.108.1622018870506; 
 Wed, 26 May 2021 01:47:50 -0700 (PDT)
Received: from dell.default ([91.110.221.223])
 by smtp.gmail.com with ESMTPSA id l18sm18911918wrt.97.2021.05.26.01.47.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 May 2021 01:47:50 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Date: Wed, 26 May 2021 09:47:11 +0100
Message-Id: <20210526084726.552052-20-lee.jones@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210526084726.552052-1-lee.jones@linaro.org>
References: <20210526084726.552052-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Wed, 26 May 2021 14:18:46 +0000
Subject: [Linaro-mm-sig] [PATCH 19/34] drm/amd/amdgpu/amdgpu_device: Make
 local function static
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
cy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RldmljZS5jOjQ2MjQ6Njogd2FybmluZzogbm8g
cHJldmlvdXMgcHJvdG90eXBlIGZvciDigJhhbWRncHVfZGV2aWNlX3JlY2hlY2tfZ3VpbHR5X2pv
YnPigJkgWy1XbWlzc2luZy1wcm90b3R5cGVzXQoKQ2M6IEFsZXggRGV1Y2hlciA8YWxleGFuZGVy
LmRldWNoZXJAYW1kLmNvbT4KQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5p
Z0BhbWQuY29tPgpDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGxpbnV4LmllPgpDYzogRGFuaWVs
IFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgpDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxA
bGluYXJvLm9yZz4KQ2M6IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBkcmktZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcK
Q2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpTaWduZWQtb2ZmLWJ5OiBMZWUgSm9u
ZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV9kZXZpY2UuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV9kZXZpY2UuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kZXZpY2Uu
YwppbmRleCA0YTA0MGY4OWNhNWFhLi5mMTVlMTgwNzYyZDJlIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGV2aWNlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X2RldmljZS5jCkBAIC00NjkyLDcgKzQ2OTIsNyBAQCBzdGF0aWMg
aW50IGFtZGdwdV9kZXZpY2Vfc3VzcGVuZF9kaXNwbGF5X2F1ZGlvKHN0cnVjdCBhbWRncHVfZGV2
aWNlICphZGV2KQogCXJldHVybiAwOwogfQogCi12b2lkIGFtZGdwdV9kZXZpY2VfcmVjaGVja19n
dWlsdHlfam9icygKK3N0YXRpYyB2b2lkIGFtZGdwdV9kZXZpY2VfcmVjaGVja19ndWlsdHlfam9i
cygKIAlzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiwgc3RydWN0IGxpc3RfaGVhZCAqZGV2aWNl
X2xpc3RfaGFuZGxlLAogCXN0cnVjdCBhbWRncHVfcmVzZXRfY29udGV4dCAqcmVzZXRfY29udGV4
dCkKIHsKLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFy
by1tbS1zaWcK

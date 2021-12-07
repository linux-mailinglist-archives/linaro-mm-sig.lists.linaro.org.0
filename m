Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E746646BB56
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Dec 2021 13:35:18 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 91CC660E24
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Dec 2021 12:35:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0F05A61ED8; Tue,  7 Dec 2021 12:35:05 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7CFA362172;
	Tue,  7 Dec 2021 12:34:59 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 66C3D62D45
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Dec 2021 12:34:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 66FB461EF7; Tue,  7 Dec 2021 12:34:30 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by lists.linaro.org (Postfix) with ESMTPS id 1550462C9F
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Dec 2021 12:34:27 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id o13so29094049wrs.12
 for <linaro-mm-sig@lists.linaro.org>; Tue, 07 Dec 2021 04:34:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=qBmtGbBu1QXhKmWazU6APumSvKhR6nIEoW+jVAv5tCQ=;
 b=QwBunLudp2fNnhqh0C3i8MGxJCiP4HIIJR+mb6SEKM/E/BZRboaVHzJMjzH1mU/KrC
 WB706L4RKisaLGsADGr+EGp6uLKpCXx9Coasat+wqpKYkyzoOEWPlC2gAjIQ+bgHykI0
 I1g9OLQdbNKdtkdtV2dpg+rv66lu7EehhAWfNuhrBlBF9XFeAu5l3xcho9vE/d0exYA7
 Vx9WmIbaRvlIow3dIkddGQ6fyU7ojmx4C9GwGOj60yaC/9aU3lzWrN1N1Wzg7+W9BQbs
 4JeAEL7CyInO20KsSUUcLziUDsjutmfXflX+S8RlpZPOEYsS4kUQnl95UtKEKj9VlACw
 ckyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qBmtGbBu1QXhKmWazU6APumSvKhR6nIEoW+jVAv5tCQ=;
 b=XW2OWBjrcN9w/e1NyBK+gzx+SJm55YH0t9LAWtGuAT7Wf0fzAsrnOK3AYDxM7GmjMy
 OHX2IEQq1QkB9Y0YMp500/Ooo8LAPiv2tQ8ITzTXGyz5CGTQ99mjQqW9/zIO9T0fhNuN
 gcjF1IhM7zpmcWuSyIR5CyKjeNqkCBlCYJXQwg3oLIHe+ATbw3RKqESSRXT25klG1Dqj
 xOIs0HnBdswYv/N7basDiiIY7LaO/m6lQ5T+5EKD6duoHOA88LHRKyPyvjs+zDnusoy3
 Bv+0kWojyfBj+fYCmhi7yBsmkZPuhpsu4iaawSUReD62JxwHtaxXKGi64C5FV1fNqCti
 TB7g==
X-Gm-Message-State: AOAM530ISBU/wkSw+516BSAWVxrdTi2IXZ3gUE7hhRRSeDrB5A5kRno/
 /1euqMw3PWxEd98tydfcymw=
X-Google-Smtp-Source: ABdhPJzwKHHcoAbsPn2oATffQ0unLZveUQ5OcXQeALH7NvSGcbQLiqMCCR2sb33IOf0mHKWheZOnBw==
X-Received: by 2002:a5d:4b41:: with SMTP id w1mr50950945wrs.537.1638880465980; 
 Tue, 07 Dec 2021 04:34:25 -0800 (PST)
Received: from abel.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
 by smtp.gmail.com with ESMTPSA id f19sm2802203wmq.34.2021.12.07.04.34.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Dec 2021 04:34:25 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Date: Tue,  7 Dec 2021 13:33:58 +0100
Message-Id: <20211207123411.167006-12-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211207123411.167006-1-christian.koenig@amd.com>
References: <20211207123411.167006-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 11/24] drm/amdgpu: use
 dma_resv_for_each_fence for CS workaround
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

R2V0IHRoZSB3cml0ZSBmZW5jZSB1c2luZyBkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZSBpbnN0ZWFk
IG9mIGFjY2Vzc2luZwppdCBtYW51YWxseS4KClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7Zu
aWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9hbWRncHVfY3MuYyB8IDkgKysrKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRp
b25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV9jcy5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Nz
LmMKaW5kZXggNTNlNDA3ZWE0Yzg5Li43ZmFjZDYxNGU1MGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9jcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV9jcy5jCkBAIC0xMjY4LDYgKzEyNjgsOCBAQCBzdGF0aWMgaW50IGFtZGdw
dV9jc19zdWJtaXQoc3RydWN0IGFtZGdwdV9jc19wYXJzZXIgKnAsCiAJYW1kZ3B1X2JvX2xpc3Rf
Zm9yX2VhY2hfZW50cnkoZSwgcC0+Ym9fbGlzdCkgewogCQlzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3Yg
PSBlLT50di5iby0+YmFzZS5yZXN2OwogCQlzdHJ1Y3QgZG1hX2ZlbmNlX2NoYWluICpjaGFpbiA9
IGUtPmNoYWluOworCQlzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciBjdXJzb3I7CisJCXN0cnVjdCBkbWFf
ZmVuY2UgKmZlbmNlOwogCiAJCWlmICghY2hhaW4pCiAJCQljb250aW51ZTsKQEAgLTEyNzcsOSAr
MTI3OSwxMCBAQCBzdGF0aWMgaW50IGFtZGdwdV9jc19zdWJtaXQoc3RydWN0IGFtZGdwdV9jc19w
YXJzZXIgKnAsCiAJCSAqIHN1Ym1pc3Npb24gaW4gYSBkbWFfZmVuY2VfY2hhaW4gYW5kIGFkZCBp
dCBhcyBleGNsdXNpdmUKIAkJICogZmVuY2UuCiAJCSAqLwotCQlkbWFfZmVuY2VfY2hhaW5faW5p
dChjaGFpbiwgZG1hX3Jlc3ZfZXhjbF9mZW5jZShyZXN2KSwKLQkJCQkgICAgIGRtYV9mZW5jZV9n
ZXQocC0+ZmVuY2UpLCAxKTsKLQorCQlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZSgmY3Vyc29yLCBy
ZXN2LCBmYWxzZSwgZmVuY2UpIHsKKwkJCWJyZWFrOworCQl9CisJCWRtYV9mZW5jZV9jaGFpbl9p
bml0KGNoYWluLCBmZW5jZSwgZG1hX2ZlbmNlX2dldChwLT5mZW5jZSksIDEpOwogCQlyY3VfYXNz
aWduX3BvaW50ZXIocmVzdi0+ZmVuY2VfZXhjbCwgJmNoYWluLT5iYXNlKTsKIAkJZS0+Y2hhaW4g
PSBOVUxMOwogCX0KLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbmFyby1tbS1zaWcK

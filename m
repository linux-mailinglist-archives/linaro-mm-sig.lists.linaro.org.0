Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C53398CDB
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Jun 2021 16:33:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 73D9460FC3
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Jun 2021 14:33:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6D95B60FBF; Wed,  2 Jun 2021 14:33:30 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1F1B160752;
	Wed,  2 Jun 2021 14:33:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id ED44F60694
 for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Jun 2021 14:33:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EB2E160752; Wed,  2 Jun 2021 14:33:25 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by lists.linaro.org (Postfix) with ESMTPS id E2C7F60694
 for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Jun 2021 14:33:23 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id q5so2555513wrs.4
 for <linaro-mm-sig@lists.linaro.org>; Wed, 02 Jun 2021 07:33:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=d0nOIc1mzt8v7aTq8P9bTAYTfjAP1Kn9fRgBobUfORA=;
 b=tSzVDkn4KcWdhzDzNsZip5cu2zKF7f0SGaGpOeWTuwCH+0fxCugizjmJtvChNK7t+V
 mpDrlynprH5KJmIgn42ZQ/o5zYEvQ4vWLMnvKG8Ed2o7L7HWVaFJG8hn368YWJ1nd2LW
 4c746lB6R99b2g91Dwsihqjq/phbUmYHQmENAbEMiWVDBCMX5qsuKWp4lY775RukY5Di
 uubL1YluRv3Cs1hoU2hG30XhYEZtvTNlISLKXEeHvgS3XyefTL9FQKHXjDCT7eCskiWG
 9o1d7XI5noxEdG5lRVRx1J+GyQyt0ikUWamSHmpNQxwryL3VHl6CqkIFjXJbXNLc7HxC
 kqLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=d0nOIc1mzt8v7aTq8P9bTAYTfjAP1Kn9fRgBobUfORA=;
 b=ltT9FpSqRjLmJStrbJvsN2h7HB0xFETpis5CpfkLmWbxnLTzfYsRdy7Hu7fGrJB8Rn
 iV3HkR0GWi1Q9A71ihuG1A0GP6NtG6cwK9DxOaDKqZKaoPgRE9SR0ZrOFIcmNJfzLdgS
 Ys0DlsJG57AjUPO4sdP8mB23uwiyjtwvLssYR6dXa/k9XaIe8WiyC+UIqoUuK48NDwlh
 HUZLDenrt7SsU9ngRLQuXLW+3s4FfOkIKULTCa3T7q31dWrX+/E93TCxmCVvImxCpZ9f
 chpv56PxIWDqF/vazPQKh+kRRvTdOobmkglupQUgs2XERdgktfVLdtzDP31soHcuIU9/
 i/ww==
X-Gm-Message-State: AOAM533pS1XEIYKvCQDSZuZO8hH3DY2Oqr5t2Hyh9na77eZootRpzv9S
 yaFPrVaI7e+S9vAKpLG8PqBeUss+
X-Google-Smtp-Source: ABdhPJyuJWVPFCq8ke4Ux8r5rzSxfpfkMshp25BkWH+joTfvu5tLeJqfuuvJvUX1vOUfItFxxByl1Q==
X-Received: by 2002:adf:ef06:: with SMTP id e6mr22764784wro.393.1622644403125; 
 Wed, 02 Jun 2021 07:33:23 -0700 (PDT)
Received: from dell.default ([91.110.221.214])
 by smtp.gmail.com with ESMTPSA id o11sm132315wrq.93.2021.06.02.07.33.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Jun 2021 07:33:22 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Date: Wed,  2 Jun 2021 15:32:46 +0100
Message-Id: <20210602143300.2330146-13-lee.jones@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210602143300.2330146-1-lee.jones@linaro.org>
References: <20210602143300.2330146-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [RESEND 12/26] drm/msm/msm_gem: Demote kernel-doc
 abuses
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
Cc: freedreno@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, Rob Clark <robdclark@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sean Paul <sean@poorly.run>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Rml4ZXMgdGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdhcm5pbmcocyk6CgogZHJpdmVy
cy9ncHUvZHJtL21zbS9tc21fZ2VtLmM6MzY0OiB3YXJuaW5nOiBUaGlzIGNvbW1lbnQgc3RhcnRz
IHdpdGggJy8qKicsIGJ1dCBpc24ndCBhIGtlcm5lbC1kb2MgY29tbWVudC4gUmVmZXIgRG9jdW1l
bnRhdGlvbi9kb2MtZ3VpZGUva2VybmVsLWRvYy5yc3QKIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNt
X2dlbS5jOjc2Mzogd2FybmluZzogVGhpcyBjb21tZW50IHN0YXJ0cyB3aXRoICcvKionLCBidXQg
aXNuJ3QgYSBrZXJuZWwtZG9jIGNvbW1lbnQuIFJlZmVyIERvY3VtZW50YXRpb24vZG9jLWd1aWRl
L2tlcm5lbC1kb2MucnN0CgpDYzogUm9iIENsYXJrIDxyb2JkY2xhcmtAZ21haWwuY29tPgpDYzog
U2VhbiBQYXVsIDxzZWFuQHBvb3JseS5ydW4+CkNjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAbGlu
dXguaWU+CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+CkNjOiBTdW1pdCBTZW13
YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgpDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+CkNjOiBsaW51eC1hcm0tbXNtQHZnZXIua2VybmVsLm9yZwpD
YzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogZnJlZWRyZW5vQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCkNjOiBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKU2lnbmVkLW9mZi1ieTogTGVlIEpvbmVzIDxsZWUuam9u
ZXNAbGluYXJvLm9yZz4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0uYyB8IDQgKyst
LQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9t
c20vbXNtX2dlbS5jCmluZGV4IDU2ZGY4NmU1Zjc0MDAuLjE1NDM0ZGViMTkzMzQgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9t
c20vbXNtX2dlbS5jCkBAIC0zNzIsNyArMzcyLDcgQEAgc3RhdGljIHZvaWQgZGVsX3ZtYShzdHJ1
Y3QgbXNtX2dlbV92bWEgKnZtYSkKIAlrZnJlZSh2bWEpOwogfQogCi0vKioKKy8qCiAgKiBJZiBj
bG9zZSBpcyB0cnVlLCB0aGlzIGFsc28gY2xvc2VzIHRoZSBWTUEgKHJlbGVhc2luZyB0aGUgYWxs
b2NhdGVkCiAgKiBpb3ZhIHJhbmdlKSBpbiBhZGRpdGlvbiB0byByZW1vdmluZyB0aGUgaW9tbXUg
bWFwcGluZy4gIEluIHRoZSBldmljdGlvbgogICogY2FzZSAoIWNsb3NlKSwgd2Uga2VlcCB0aGUg
aW92YSBhbGxvY2F0ZWQsIGJ1dCBvbmx5IHJlbW92ZSB0aGUgaW9tbXUKQEAgLTc3Myw3ICs3NzMs
NyBAQCB2b2lkIG1zbV9nZW1fcHVyZ2Uoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmopCiAJCQkw
LCAobG9mZl90KS0xKTsKIH0KIAotLyoqCisvKgogICogVW5waW4gdGhlIGJhY2tpbmcgcGFnZXMg
YW5kIG1ha2UgdGhlbSBhdmFpbGFibGUgdG8gYmUgc3dhcHBlZCBvdXQuCiAgKi8KIHZvaWQgbXNt
X2dlbV9ldmljdChzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikKLS0gCjIuMzEuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMu
bGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

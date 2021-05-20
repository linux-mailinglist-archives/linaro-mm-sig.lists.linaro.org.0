Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E81A3919E0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 16:20:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 26E356144F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 14:20:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 182AE6116F; Wed, 26 May 2021 14:19:54 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ACF86613C4;
	Wed, 26 May 2021 14:19:49 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4663F6115E
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:03:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 23D0A61161; Thu, 20 May 2021 12:03:22 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by lists.linaro.org (Postfix) with ESMTPS id 9041161174
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:03:19 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id j14so15648594wrq.5
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 05:03:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Az4ajU1UenYP4llap6LwYGAmlVb81FxvttX6ntbrKHw=;
 b=V0/Xcd4FORtoMvNKBEs95Uqtk9Dfnrrj1mowrOIgtUtj97/HkDTL7uz6D69vwAGAS3
 Tdl2wWWjwYVP6GP3fWhFHoNUw4SNR/zAKwaRH3y17fCdc3FVVXkmWPvH5s1HKhZo8AYz
 4Mk9Qc9YtTJ7V88BeOccyuqk2Y4USOt8e2/PyXVwFgBMsb8T0qZ+naXe5Nd7NLVINWsw
 /kmNqlR7g9ceexOxZxdMuoQ5CnkImv246XNufxmMTy+8b/4YhcUSXFy2+gAAuFtRSykz
 YYCfLFqI/SeFI26zM5Nz8d+d1R3bfy0llGMVZDcrq4MOJfmZXYJAQ6qcf/aTPzYBpVMh
 jeOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Az4ajU1UenYP4llap6LwYGAmlVb81FxvttX6ntbrKHw=;
 b=QQHMDroYRI2KOtwRo5rB7EBFLaNdqkXP+mdme9UDwIp+HPoq9LVPseOqQkkFu7Jf2t
 k5IlxdKZ+CmklAJD4OYNHxOEyGr1Xb56McZ+JUhAq4f+jVbdPpnKRZFSiC5RnQ/BCoSO
 XIx8/I2ijB3F4vtO4ZYLp+318RqIxDACfh+rtwnRL6ECZrrft9z/npfm7tUpY+KKHHNW
 qP93rY5YEvg8MqJFduPMxNw2ulFe254U/dUMKp7imTG2Q6V8tnUbwpFUE/Zlwdfsb8YW
 nV6SFy3H9F74+I8JfurV9vJ0RtrTaFXc3kDczsisv0WxLMt0NEg7vE8efxtikYrWayz1
 QKIg==
X-Gm-Message-State: AOAM531VoF0/6KkuBlSkiysoyz5v+F259Zf0SaJlNh8Y2HEni3GOkE2S
 90aN9PfekoEP+FK26Zetgp/i02vM
X-Google-Smtp-Source: ABdhPJzvSnQab2ZlmzV8rwXYlbo6fahXqWIXfZ2GJOFB82qmSumOr0nFpfJ+gyT9ugbfaWxmxPTiug==
X-Received: by 2002:adf:fa52:: with SMTP id y18mr3880003wrr.355.1621512198612; 
 Thu, 20 May 2021 05:03:18 -0700 (PDT)
Received: from dell.default ([91.110.221.215])
 by smtp.gmail.com with ESMTPSA id j10sm2886332wrt.32.2021.05.20.05.03.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 May 2021 05:03:18 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Date: Thu, 20 May 2021 13:02:36 +0100
Message-Id: <20210520120248.3464013-27-lee.jones@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210520120248.3464013-1-lee.jones@linaro.org>
References: <20210520120248.3464013-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Wed, 26 May 2021 14:18:46 +0000
Subject: [Linaro-mm-sig] [PATCH 26/38] drm/amd/amdgpu/gmc_v10_0: Fix
 potential copy/paste issue
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
cy9ncHUvZHJtL2FtZC9hbWRncHUvZ21jX3YxMF8wLmM6OTU1OiB3YXJuaW5nOiBleHBlY3Rpbmcg
cHJvdG90eXBlIGZvciBnbWNfdjhfMF9nYXJ0X2ZpbmkoKS4gUHJvdG90eXBlIHdhcyBmb3IgZ21j
X3YxMF8wX2dhcnRfZmluaSgpIGluc3RlYWQKCkNjOiBBbGV4IERldWNoZXIgPGFsZXhhbmRlci5k
ZXVjaGVyQGFtZC5jb20+CkNjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdA
YW1kLmNvbT4KQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT4KQ2M6IERhbmllbCBW
ZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxp
bmFyby5vcmc+CkNjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogZHJpLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCkNj
OiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKU2lnbmVkLW9mZi1ieTogTGVlIEpvbmVz
IDxsZWUuam9uZXNAbGluYXJvLm9yZz4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9n
bWNfdjEwXzAuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxl
dGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2dtY192MTBf
MC5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvZ21jX3YxMF8wLmMKaW5kZXggZjAyZGM5
MDRlNGNmZS4uMTA1ZWQxYmY0YTg4YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvZ21jX3YxMF8wLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvZ21jX3Yx
MF8wLmMKQEAgLTk0Nyw3ICs5NDcsNyBAQCBzdGF0aWMgaW50IGdtY192MTBfMF9zd19pbml0KHZv
aWQgKmhhbmRsZSkKIH0KIAogLyoqCi0gKiBnbWNfdjhfMF9nYXJ0X2ZpbmkgLSB2bSBmaW5pIGNh
bGxiYWNrCisgKiBnbWNfdjEwXzBfZ2FydF9maW5pIC0gdm0gZmluaSBjYWxsYmFjawogICoKICAq
IEBhZGV2OiBhbWRncHVfZGV2aWNlIHBvaW50ZXIKICAqCi0tIAoyLjMxLjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFy
by5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

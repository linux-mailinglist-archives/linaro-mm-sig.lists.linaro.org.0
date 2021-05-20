Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 834F53919D6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 16:19:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 66EA2613E6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 14:19:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2C9136123A; Wed, 26 May 2021 14:19:18 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 23D116139D;
	Wed, 26 May 2021 14:19:14 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 22CD9605C8
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:03:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 18043607B2; Thu, 20 May 2021 12:03:06 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by lists.linaro.org (Postfix) with ESMTPS id 0B54F6115E
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:03:04 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id v12so17385724wrq.6
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 05:03:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=erxm+Xcrd7+qygxkCLKKNU6rbI+w3lNDzPu8B/httcU=;
 b=OE1cmOeal6mPQ3zY2RJYNzLtzyM0CyRa/eBZHVQFbLPbo4XxFRKmFTfyjaRvKhOasA
 hsZjqbS+YYSXLp0jBQp9nvLozK2NuK4+EZXBYKlK/zb+ZI5ALEfDhcrouqo71EsiWyGl
 dpRYBbKFuPPVmDWnZFYucI6qPiXCOW2SI0++B+paB0abLzPN8pmtpqj9s8MZBLSLa1gF
 BOS1Y4mjTQipSdmTUML3II0zTQleLPhan2VJ4IaVPVI178JIN2NNaiQYqUFo4xEbJysy
 fCafIbHV0mLWXiEuaeESdDWjMqZIMKDL2IfpqSl0N6fhknVAhAmOTzgb1DAV0LKz/mT1
 XpbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=erxm+Xcrd7+qygxkCLKKNU6rbI+w3lNDzPu8B/httcU=;
 b=FmCfJ0x6Gfl/iQvtxEBejVmIbcJFuUXHMpYwPsDY+/Bzc+/IttvLMxi1SUguiETCsu
 jS0FnALUIBfF3BDGk0F5Sg4NH8Yd18fyOLP4zRx2FDKDh3tBnjGg7YK4sDeK9TWoaMRo
 T1uZPHzFRy2Sn5GUywFrrJjOf4eiMp4rx5NrTbqBFdavi3iSOANnDhy410+3IyRHBG2C
 GS8zjF4sbH96M+Y3KD2m2Y8veOH5l+Fkbkb/PuKd8af257sgQvye1xMN8CyWyn3uRvle
 kpAE4VNW7nDOVHefoPz7CXLFh7SYFRUdMauOfUqInNaD3Fo5HuFSwxsC3F7MdTd/VECO
 GvDQ==
X-Gm-Message-State: AOAM531FUo2l4VGl7DooxofF5arfS0sAOYXU9EHUYSJr6NOdleRcLZl9
 EgTX2Im3Gvi2uz+nXdaqebqI1cLI
X-Google-Smtp-Source: ABdhPJzC65qtzUVA+gIP2kmGgel53QLMcK/7hJnqDkaigOHVU54rfgzhY6XVPlH7o1hAbiiYYuUonw==
X-Received: by 2002:a5d:50c7:: with SMTP id f7mr4037179wrt.189.1621512183252; 
 Thu, 20 May 2021 05:03:03 -0700 (PDT)
Received: from dell.default ([91.110.221.215])
 by smtp.gmail.com with ESMTPSA id j10sm2886332wrt.32.2021.05.20.05.03.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 May 2021 05:03:02 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Date: Thu, 20 May 2021 13:02:21 +0100
Message-Id: <20210520120248.3464013-12-lee.jones@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210520120248.3464013-1-lee.jones@linaro.org>
References: <20210520120248.3464013-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Wed, 26 May 2021 14:18:46 +0000
Subject: [Linaro-mm-sig] [PATCH 11/38] drm/amd/amdgpu/amdgpu_debugfs: Fix a
 couple of misnamed functions
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
cy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RlYnVnZnMuYzoxMDA0OiB3YXJuaW5nOiBleHBl
Y3RpbmcgcHJvdG90eXBlIGZvciBhbWRncHVfZGVidWdmc19yZWdzX2dmeG9mZl93cml0ZSgpLiBQ
cm90b3R5cGUgd2FzIGZvciBhbWRncHVfZGVidWdmc19nZnhvZmZfd3JpdGUoKSBpbnN0ZWFkCiBk
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGVidWdmcy5jOjEwNTM6IHdhcm5pbmc6
IGV4cGVjdGluZyBwcm90b3R5cGUgZm9yIGFtZGdwdV9kZWJ1Z2ZzX3JlZ3NfZ2Z4b2ZmX3N0YXR1
cygpLiBQcm90b3R5cGUgd2FzIGZvciBhbWRncHVfZGVidWdmc19nZnhvZmZfcmVhZCgpIGluc3Rl
YWQKCkNjOiBBbGV4IERldWNoZXIgPGFsZXhhbmRlci5kZXVjaGVyQGFtZC5jb20+CkNjOiAiQ2hy
aXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KQ2M6IERhdmlkIEFpcmxp
ZSA8YWlybGllZEBsaW51eC5pZT4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4K
Q2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+CkNjOiBhbWQtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpD
YzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKU2lnbmVkLW9mZi1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGVidWdmcy5jIHwgNCArKy0t
CiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kZWJ1Z2ZzLmMgYi9kcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGVidWdmcy5jCmluZGV4IGJjYWYyNzFiMzli
ZjUuLmE5YmJiMDAzNGUxZWMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV9kZWJ1Z2ZzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1
X2RlYnVnZnMuYwpAQCAtOTkwLDcgKzk5MCw3IEBAIHN0YXRpYyBzc2l6ZV90IGFtZGdwdV9kZWJ1
Z2ZzX2dwcl9yZWFkKHN0cnVjdCBmaWxlICpmLCBjaGFyIF9fdXNlciAqYnVmLAogfQogCiAvKioK
LSAqIGFtZGdwdV9kZWJ1Z2ZzX3JlZ3NfZ2Z4b2ZmX3dyaXRlIC0gRW5hYmxlL2Rpc2FibGUgR0ZY
T0ZGCisgKiBhbWRncHVfZGVidWdmc19nZnhvZmZfd3JpdGUgLSBFbmFibGUvZGlzYWJsZSBHRlhP
RkYKICAqCiAgKiBAZjogb3BlbiBmaWxlIGhhbmRsZQogICogQGJ1ZjogVXNlciBidWZmZXIgdG8g
d3JpdGUgZGF0YSBmcm9tCkBAIC0xMDQxLDcgKzEwNDEsNyBAQCBzdGF0aWMgc3NpemVfdCBhbWRn
cHVfZGVidWdmc19nZnhvZmZfd3JpdGUoc3RydWN0IGZpbGUgKmYsIGNvbnN0IGNoYXIgX191c2Vy
ICpidQogCiAKIC8qKgotICogYW1kZ3B1X2RlYnVnZnNfcmVnc19nZnhvZmZfc3RhdHVzIC0gcmVh
ZCBnZnhvZmYgc3RhdHVzCisgKiBhbWRncHVfZGVidWdmc19nZnhvZmZfcmVhZCAtIHJlYWQgZ2Z4
b2ZmIHN0YXR1cwogICoKICAqIEBmOiBvcGVuIGZpbGUgaGFuZGxlCiAgKiBAYnVmOiBVc2VyIGJ1
ZmZlciB0byBzdG9yZSByZWFkIGRhdGEgaW4KLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QK
TGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
